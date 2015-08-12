local application = require "hs.application"
local window = require "hs.window"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"
local battery = require "hs.battery"
local wifi_control = require "wifi_control"
local bluetooth_control = require "bluetooth_control"

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
hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
  hs.openConsole()
end)
hotkey.bind({"cmd", "alt", "ctrl"}, "A", function()
  application.launchOrFocus("Activity Monitor")
end)
hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
  hs.caffeinate.startScreensaver()
end)

hotkey.bind({"cmd", "alt", "ctrl"}, "T", function()
  alert.show("Hello World!")
end)
hotkey.bind({"cmd", "shift"}, "I", function()
  hs.itunes.displayCurrentTrack()
end)

-- Show status
hotkey.bind({"cmd", "alt", "ctrl"}, "S", function()
  charging = battery.isCharging() or battery.isCharged()
  timeRemaining = battery.timeRemaining()
  alert.show(
  "Wi-Fi: "..wifi_control.status()..
  "\nBluetooth: "..bluetooth_control.status()..
  "\nBattery: "..battery.percentage().."% - "..
  (charging and "Charging" or "Not charging")..
  "\nTime remaining: "..((timeRemaining == -1 or timeRemaining == -2) and "?" or timeRemaining).." minutes"
  , 5)
end)

-- Toggle Bluetooth on and off
hotkey.bind({"cmd", "alt", "ctrl"}, "E", function()
  bluetooth_control.toggle()
end)

hotkey.bind({"cmd"}, "1", function()
  application.launchOrFocus("iTerm")
end)

hotkey.bind({"cmd"}, "2", function()
  if applicationRunning("Atom") then
    application.launchOrFocus("Atom")
  else
    alert.show("Atom not running")
    application.launchOrFocus("iTerm")
  end
end)
hotkey.bind({"cmd"}, "3", function()
  application.launchOrFocus("Google Chrome")
end)

hotkey.bind({"alt"}, "1", function()
  application.launchOrFocus("iTunes")
end)

hotkey.bind({"alt"}, "2", function()
  application.launchOrFocus("Slack")
end)

hotkey.bind({"alt"}, "3", function()
  application.launchOrFocus("Sunrise Calendar")
end)

hotkey.bind({"ctrl"}, "2", function()
  application.launchOrFocus("Airmail 2")
end)

hotkey.bind({"ctrl"}, "E", function()
  application.launchOrFocus("Finder")
end)

hotkey.bind({"ctrl"}, "§", function()
  application.launchOrFocus("1Password")
end)
