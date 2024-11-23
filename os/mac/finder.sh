## Finder

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show sidebar
defaults write com.apple.finder ShowSidebar -bool true

# Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"


killall Finder
