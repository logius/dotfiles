local application = require "hs.application"
local window = require "hs.window"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"
local battery = require "hs.battery"

function applicationRunning(name)
  apps = application.runningApplications()
  found = false
  for i = 1, #apps do
    app = apps[i]
    if app:title() == name and (#app:allWindows() > 0 or app:mainWindow()) then
      found = true
    end
  end

  return found
end

hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
  hs.caffeinate.startScreensaver()
end)

hotkey.bind({"cmd"}, "1", function()
  application.launchOrFocus("Warp")
end)

hotkey.bind({"cmd"}, "2", function()
  if applicationRunning("Visual Studio Code") then
    application.launchOrFocus("Visual Studio Code")
  else
    alert.show("Visual Studio Code not running")
    application.launchOrFocus("Warp")
  end
end)
hotkey.bind({"cmd"}, "3", function()
  application.launchOrFocus("Google Chrome")
end)
hotkey.bind({"cmd"}, "4", function()
  application.launchOrFocus("Spotify")
end)