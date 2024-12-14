#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================
hooks_dir="/etc/yunohost/hooks.d/"

# Function to create directories if they don't exist
create_dirs() {
    for dir in "$@"; do
        if [ ! -d "$dir" ]; then
            mkdir -p "$dir"
            echo "Created directory: $dir"
        else
            echo "Directory already exists: $dir"
        fi
    done
}
