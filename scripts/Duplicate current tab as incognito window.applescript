tell application "Google Chrome"
	set theURL to URL of active tab of window 1
	set incogWin to make new window with properties {mode:"incognito"}
	set incogTab to active tab of window 1
	tell incogTab
		set URL to theURL
	end tell
end tell