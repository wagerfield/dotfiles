#!/bin/sh

# Backup macOS default settings

now=$(date -u "+%Y-%m-%d_%H-%M-%S")
printf "Backing up macOS defaults to %s.
Some changes may require a restart to take effect.\n" \
  "$HOME/Desktop/macos-defaults_$now.txt"

defaults read > "$HOME/Desktop/macos-defaults-$now.txt"

###############################################################################
# Keyboard Settings
###############################################################################

# Set fast keyboard repeat rate
defaults write -g InitialKeyRepeat -int 20
defaults write -g KeyRepeat -int 2

###############################################################################
# Keyboard Shortcuts
###############################################################################

# Disable Spotlight keyboard shortcut (CMD+SPACE)
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 '{ enabled = 0; value = { parameters = (32, 49, 1048576); type = standard; }; }'

# Disable Convert Text to Simplified Chinese (CTL+OPT+SFT+CMD+C)
# defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 69 '{ enabled = 0; value = { parameters = (116, 84, 1310720); type = standard; }; }'

# Disable Convert Text to Traditional Chinese (CTL+SFT+CMD+C)
# defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 70 '{ enabled = 0; value = { parameters = (116, 84, 1179648); type = standard; }; }'

# Kill the System UI Server to apply changes immediately
killall SystemUIServer

###############################################################################
# Finder
###############################################################################

# Make folders appear at top of Finder windows
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Show file extensions in Finder
defaults write -g AppleShowAllExtensions -bool true

# Make new Finder windows open in same location as current window
defaults write com.apple.finder NewWindowTargetPath -string "file:///${PWD}"
defaults write com.apple.finder NewWindowTarget -string "PfLo"

# Restart Finder to apply changes
killall Finder
