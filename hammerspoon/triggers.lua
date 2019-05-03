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
  application.launchOrFocus("iTerm")
end)

hotkey.bind({"cmd"}, "2", function()
  if applicationRunning("Sublime Text") then
    application.launchOrFocus("Sublime Text")
  else
    alert.show("Sublime Text not running")
    application.launchOrFocus("iTerm")
  end
end)
hotkey.bind({"cmd"}, "3", function()
  application.launchOrFocus("Google Chrome")
end)
