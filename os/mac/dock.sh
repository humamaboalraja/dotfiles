## Dock 

# Remove all apps in Dock
defaults write com.apple.dock persistent-apps -array ""

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Set the icon size of Dock items to 70 pixels
defaults write com.apple.dock tilesize -int 70

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Add Three empty dividers
for i in {1..4}; do
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
done

# Restart the Dock
killall Dock


