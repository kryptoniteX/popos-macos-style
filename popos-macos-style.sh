#!/bin/bash

echo "🍏 Starting minimal macOS theming for Pop!_OS..."

# Install necessary packages
sudo apt update && sudo apt install -y \
git gnome-tweaks gnome-shell-extensions plank \
fonts-inter curl unzip

# Install GTK theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh
cd ..
rm -rf WhiteSur-gtk-theme

# Install icon theme
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh
cd ..
rm -rf WhiteSur-icon-theme

# Install cursor theme
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
./install.sh
cd ..
rm -rf WhiteSur-cursors

# Move window buttons to the left
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# Enable Plank autostart
mkdir -p ~/.config/autostart
cat <<EOF > ~/.config/autostart/plank.desktop
[Desktop Entry]
Type=Application
Exec=plank
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Plank
EOF

echo "✅ Done! Open GNOME Tweaks to apply:"
echo "  - Applications: WhiteSur"
echo "  - Icons: WhiteSur"
echo "  - Cursor: WhiteSur-cursors"
echo "  - Fonts: Inter"
