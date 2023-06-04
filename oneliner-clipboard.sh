#!/bin/bash
# Run Oneliner on the text in the clipboard using xclip

clipcontent=$(xclip -selection clipboard -o)
echo $clipcontent

echo -e "$clipcontent" | sed -E 's/^[[:space:]]*//g; s/[[:space:]]*$//g' | sed -z 's/-\n//g; s/\n/ /g;' | xclip -selection clipboard
