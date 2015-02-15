#!/bin/sh

CMD=$(tail -n 1 ~/.bash_history)

# No arguments: rerun command if not itself
if [[ "$#" -eq 0 ]]; then
    if [[ "$CMD" != "./r" ]] && [[ "$CMD" != "r" ]]; then
        eval $CMD
    fi
    exit
fi

# Grab operator (executable) run by command
for word in $CMD; do
    FIRST=$word
    break
done

# Append all flags to new command
for var in "$@"; do
    FIRST="$FIRST $var"
done

FIRST="$FIRST $(echo "$CMD" | cut -d' ' -f2-)"

echo $FIRST
eval $FIRST
