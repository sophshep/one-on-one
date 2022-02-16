#! /bin/bash

filename="meeting-notes/1on1-$NOW.md"

if [ -z "$(ls -A meeting-notes)" ]; then
   mkdir meeting-notes
fi

cat <<- EOF >> "${filename}"
## 1 on 1 - $NOW
-----

### Topics you want to cover in our 1 on 1
- [TODO]

### Tell me about last week.
- [TODO]

### What is frustrating, blocking, or confusing you?
- [TODO]

### What are your goals for the week?
- [TODO]

### What’s a recent situation you wish you handled differently? What would you change?
- [TODO]

### Do you have any feedback for me or your teammates?
- [TODO]

## Action Items
- [ ] 

EOF
