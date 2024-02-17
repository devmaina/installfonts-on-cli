#install-fonts on cli install_fonts.pkg
#Run install_fonts_server.sh on the server.


#!/bin/bash

# Server URL where fonts are hosted
server_url="http://your-server-address:8000"

# Function to download and install fonts
install_font() {
    font_name="$1"
    download_url="${server_url}/${font_name}"

    # Download the font
    wget "$download_url"

    # Install the font (example assumes Linux)
    cp "$font_name" ~/.fonts/  # Change this based on your system

    # Optional: Update font cache (might be necessary on some systems)
    fc-cache -f -v
}

# Install fonts based on categories
echo "Installing Web Fonts..."
install_font "web_font.ttf"

echo "Installing Design Fonts..."
install_font "design_font.ttf"
