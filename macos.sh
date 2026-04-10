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
defaults write -g InitialKeyRepeat -int 20 # 300ms
defaults write -g KeyRepeat -int 2 # 30ms

###############################################################################
# Keyboard Shortcuts
###############################################################################

# Disable input source switching and Spotlight keyboard shortcuts.
# Entry 60 = Select Previous Input Source (default: Cmd+Space)
# Entry 61 = Select Next Input Source (default: Ctrl+Opt+Space)
# Entry 64 = Show Spotlight search field (default: Cmd+Space)
# Entry 65 = Show Spotlight window (default: Cmd+Option+Space)
# Frees up Cmd+Space and Ctrl+Space for editor completions (Zed, VSCode, etc.)
#
# NOTE: We use Python's plistlib instead of `defaults write` because the
# latter converts booleans and integers to strings, which macOS ignores.
#
# NOTE: A LOGOUT/LOGIN is required for these changes to take effect.
# WindowServer (which manages symbolic hotkeys) only reads this plist at
# session start. Simply running this script won't apply the changes immediately.
python3 -c "
import plistlib, os
p = os.path.expanduser('~/Library/Preferences/com.apple.symbolichotkeys.plist')
d = plistlib.load(open(p, 'rb'))
for k in [60, 61, 64, 65]:
    d['AppleSymbolicHotKeys'][str(k)]['enabled'] = False
plistlib.dump(d, open(p, 'wb'))
"

# Apply keyboard shortcut changes (requires logout/login to fully take effect)
killall cfprefsd 2>/dev/null
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -forcePrefUpdate

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
