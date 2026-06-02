completion_directory="$HOME/.config/bash/completions"

if [ -d "$completion_directory" ]; then
    for file in "$completion_directory"/*.sh; do
        [ -r "$file" ] && . "$file"
    done
fi
