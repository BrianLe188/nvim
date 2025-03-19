hs.hotkey.bind({ "alt", "t" }, "T", function()
	hs.application.launchOrFocus("Ghostty")
end)

hs.hotkey.bind({ "alt", "b" }, "B", function()
	hs.application.launchOrFocus("Firefox")
end)

hs.hotkey.bind({ "alt", "m" }, "M", function()
	hs.application.launchOrFocus("MongoDB Compass")
end)

hs.hotkey.bind({ "alt" }, "Right", function()
	local win = hs.window.focusedWindow()
	if win then
		win:moveToScreen(win:screen():next())
	end
end)

hs.hotkey.bind({ "alt" }, "Left", function()
	local win = hs.window.focusedWindow()
	if win then
		win:moveToScreen(win:screen():previous())
	end
end)

function focusScreen(direction)
	local currentScreen = hs.screen.mainScreen()
	local targetScreen = direction == "left" and currentScreen:toWest() or currentScreen:toEast()

	if targetScreen then
		local windows = hs.window.orderedWindows()
		for _, win in ipairs(windows) do
			if win:screen() == targetScreen then
				win:focus()
				return
			end
		end
	end
end

hs.hotkey.bind({ "alt" }, "h", function()
	focusScreen("left")
end)
hs.hotkey.bind({ "alt" }, "l", function()
	focusScreen("right")
end)
