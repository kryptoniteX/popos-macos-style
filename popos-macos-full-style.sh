#!/bin/bash

echo "🍏 Starting FULL macOS ULTRA Theming for Pop!_OS..."

# -------------------------------------
# 1. Install required packages
# -------------------------------------
sudo apt update && sudo apt install -y \
git gnome-tweaks gnome-shell-extensions plank \
fonts-inter curl unzip wget flatpak libglib2.0-dev-bin dconf-cli

# -------------------------------------
# 2. Install WhiteSur GTK Theme
# -------------------------------------
echo "🎨 Installing WhiteSur Theme (macOS Style)..."
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -t all -c Dark --round
cd ..
rm -rf WhiteSur-gtk-theme

# -------------------------------------
# 3. Install Icons
# -------------------------------------
echo "🎨 Installing WhiteSur Icons..."
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh -a
cd ..
rm -rf WhiteSur-icon-theme

# -------------------------------------
# 4. Install Cursor
# -------------------------------------
echo "🖱 Installing WhiteSur Cursor..."
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
./install.sh
cd ..
rm -rf WhiteSur-cursors

# -------------------------------------
# 5. Configure Left Window Buttons
# -------------------------------------
echo "🪟 Moving system buttons to left..."
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# -------------------------------------
# 6. Setup Plank Dock
# -------------------------------------
echo "🚀 Setting up Plank dock..."
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

# -------------------------------------
# 7. Install WhiteSur Wallpapers (macOS Style)
# -------------------------------------
echo "🖼 Installing WhiteSur Wallpapers..."
git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git --depth=1
cd WhiteSur-wallpapers
./install-wallpapers.sh -t whitesur -c light,dark
cd ..

# -------------------------------------
# 8. Install Ulauncher (Spotlight-style app search)
# -------------------------------------
echo "🔍 Installing Ulauncher..."
flatpak install -y flathub io.github.Ulauncher
sudo add-apt-repository -y ppa:agornostal/ulauncher
sudo apt update
sudo apt install -y ulauncher

# -------------------------------------
# 9. Optional: macOS Sound Theme (in progress)
# -------------------------------------
# Placeholder for future sound theme download & setup

# -------------------------------------
# 10. Final Instructions
# -------------------------------------
echo ""
echo "✅ THEME INSTALL COMPLETE!"
echo ""
echo "🎨 Apply via GNOME Tweaks:"
echo "   - Applications: WhiteSur-Dark"
echo "   - Icons: WhiteSur"
echo "   - Cursor: WhiteSur-cursors"
echo "   - Fonts: Inter (or manually install SF Pro)"
echo ""
echo "🖼 Wallpapers saved to ~/Pictures/macos-wallpapers"
echo "🚀 Plank will auto-launch on next boot"
echo "🔍 Launch Ulauncher from App Menu > Set shortcut to Alt+Space"
echo ""
echo "🍎 Enjoy your full macOS-style Pop!_OS!"
