#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/System/Applications/Launchpad.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Sublime Text.app"
dockutil --no-restart --add "/Applications/Sequel Pro.app"
dockutil --no-restart --add "/Applications/Postman.app"
dockutil --no-restart --add "/Applications/TeamViewer.app"
dockutil --no-restart --add "/Applications/FileZilla.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/System/Applications/Calendar.app"
dockutil --no-restart --add "/System/Applications/Utilities/Activity Monitor.app"

killall Dock

echo "Success! Dock is set."
