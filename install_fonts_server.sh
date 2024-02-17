#!/bin/bash

# Set the directory containing font files
font_directory="/fonts"

# Start a simple web server
cd "$font_directory" || exit
python -m SimpleHTTPServer 8000
