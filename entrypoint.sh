#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

# Variables
MEETING_DATE=$(date -d "+1 day" +%Y-%m-%d)
MEETING_BRANCH_NAME="notes-$MEETING_DATE"
MEETING_FILE="meeting-notes/$MEETING_DATE.md"
PULLS_URI="https://api.github.com/repos/$GITHUB_REPOSITORY/pulls"
API_HEADER="Accept: application/vnd.github.shadow-cat-preview"
AUTH_HEADER="Authorization: token $GITHUB_TOKEN"
PULL_REQUEST_TITLE="1:1 notes for $MEETING_DATE"

# Create meeting notes
echo "Create meeting notes…"
cat <<-EOM > "$MEETING_FILE"
# $MEETING_DATE

### What can we talk about?
- _Anything that's on your mind! Work related or not._

### What can we celebrate?
- _Difficult task you accomplished, work you're proud of, kudos you've gotten._

### What's frustrating, blocking, or confusing you?
- _How things can go smoother, times you were annoyed, areas where clarity is needed._

### What are your goals for the week?
- _Tasks you've committed to working on within your team's radar or within your own project plan._

### Do you have any feedback for me or your teammates?

### Notes & Action items
- [ ] TODO 1
- [ ] TODO 2


EOM
echo "Created meeting notes in $MEETING_BRANCH_NAME.md" 

# Commit and push to meeting_date branch
echo "Commit and push meeting notes…"
cd "$GITHUB_WORKSPACE" || exit 1
git config user.name "$GITHUB_ACTOR"
git config user.email "$GITHUB_ACTOR@users.noreply.github.com"
git checkout -b "$MEETING_BRANCH_NAME"
git add .
git commit -m "Adds meeting notes for $MEETING_DATE"
git push --force --set-upstream origin "$MEETING_BRANCH_NAME"
echo "Pushed notes to $MEETING_BRANCH_NAME" 

# Create pull request
echo "Open pull request…"
curl -o /dev/null --data "{\"title\": \"$PULL_REQUEST_TITLE\", \"head\": \"refs/heads/$MEETING_BRANCH_NAME\", \"draft\": true, \"base\": \"master\"}" -X POST -s -H "$AUTH_HEADER" -H "$API_HEADER" "$PULLS_URI"
echo "Opened pull request"
