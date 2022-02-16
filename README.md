# Welcome to your repo

This repo will house all 1:1 notes, documented goals/growth things, and anything else important. The time you spend in 1:1s is your time and it should be valuable for you. Have a look here what this is about: https://github.com/ingka-group-digital/ansgar-managers-readme#11s

## How does it work?

Meeting notes are saved in this private repo. They are very helpful to refer back to for both of us during review season. Only the two of us have access to this repo. If you get a new manager, with your permission, I can transfer the repo over so that you can have a consistent process, and so that your new manager can have access to previous notes.

Every Tuesday, a GitHub action creates a PR within a a markdown file containing questions about the week ahead. We can each add notes to this as they come to mind, and then during our 1:1 can reference them and add new notes and to-dos. At the end of the week, you can review and merge the PR, marking the notes seen and complete. For inspiration there is also a github-issue created where three questions will be posted. You can think about these questions and we can use them as inspiration for our discussion. 

## Steps for using this repo template

1. [Create a new private repo from this template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template). (Tips: I always do this in my company's org so that it is not dependent on me or my employment. I make the repository name the IC's handle.)
2. **Make sure that the repository is just accessible by you and your co-worker**
3. Update [these](.github/workflows/1-1s.yml#L60) two [lines](.github/workflows/1-1-questions.yaml#L27) to be your handle and the IC's handle. This will assign weekly PRs to both of you so that they show up in your notifications.
4. Remove the comments [here](.github/workflows/1-1s.yml#L4) and [here](.github/workflows/1-1-questions.yaml#L4) to enable scheduled actions. 
5. Adjust the [cron-expression]( https://crontab.guru) to your needs. - The idea is that after you had your 1-on-1 you take a day to clean up your notes. The next day PRs and Issues will be automatically closed. The preparation for the next meeting starts with opening a new Issue and PR.
6. Look into the files [here](.github/workflows/1-1s.yml#L31) and [here](.github/workflows/1-1-questions.yaml#L17) to adjust the Date Setting for the next meetings. 
7. Invite the IC to the repo as an admin so they have full editing/merging permissions.
