local application = require "hs.application"
local hotkey = require "hs.hotkey"
local alert = require "hs.alert"

require "triggers"
require "application_watcher"
require "window_management"
require "caffeine"

alert.show("Hammerspoon loaded!")
