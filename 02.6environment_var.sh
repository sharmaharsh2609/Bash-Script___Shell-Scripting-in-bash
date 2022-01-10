#! /bin/bash
echo -e "set of directories to look for commands:\t $PATH"   #whenever we type any command like ls, cd etc, it searches in all these paths for that command.
echo -e "home directory: $HOME"
echo -e "$MAIL"
echo -e "present working directory: $PWD"
echo -e "primary prompt: $PS1"
echo -e "Input prompt: $PS2"
echo -e "what to treat as blanks: $IFS"
