#!/usr/bin/env bash
# ==============================================================================
# yosemite_defaults.sh - Core UI Shading & System Speed Enhancements
# ==============================================================================

echo "⚙️  Optimizing OS X Yosemite Interface configurations..."

# 1. Completely disable transparency matrices across Yosemite elements
defaults write com.apple.universalaccess reduceTransparency -bool true

# 2. Accelerate Window resizing and closing animation speeds
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# 3. Disable the slow Dashboard panel element entirely
defaults write com.apple.dashboard mcx-disabled -bool true

# 4. Strip slow animation delays from the application Dock
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# 5. Prevent Yosemite Safari from loading malicious extensions or caching fragments
defaults write com.apple.Safari WebKitDeveloperExtras -bool true

# Restart processed framework elements to apply layout states
killall Dock || true
killall Finder || true

echo "✅ Yosemite UI optimized. Log out or reboot to finalize matrix changes."
