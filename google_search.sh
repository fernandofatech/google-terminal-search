#!/bin/bash

# Concatenate all arguments into the search query
search_query="$*"

# Replace spaces with '+' to format for URL
formatted_query="${search_query// /+}"

# Use 'open' for macOS and 'xdg-open' for Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    open "https://www.google.com/search?q=$formatted_query"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open "https://www.google.com/search?q=$formatted_query"
else
    echo "Platform not supported"
    exit 1
fi
