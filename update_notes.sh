#! /bin/bash

filename="meeting-notes/notes-$(date '+%B-%d-%Y').md"

if [ -z "$(ls -A meeting-notes)" ]; then
   mkdir meeting-notes
fi

cat <<- EOF >> "${filename}"

## $WEEK_OF

### What can we talk about?

- [TODO]

### What can we celebrate?

- [TODO]

### What is frustrating, blocking, or confusing you?

- [TODO]

### What are your goals for the week?

- [TODO]

### Do you have any feedback for me or your teammates?
- [TODO]

< -----------------|----------------- >
EOF
