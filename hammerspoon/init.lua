local mash = {'ctrl', 'alt', 'cmd'}

-- WIP pomodoro app
local Pomo = require 'pomodoro'
hs.hotkey.bind(mash, 'U', Pomo.startNew)
hs.hotkey.bind(mash, 'I', Pomo.togglePaused)
hs.hotkey.bind(mash, 'O', Pomo.toggleLatestDisplay)

-- Reload automatically on config changes
hs.pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/', hs.reload):start()
hs.alert('🔨🥄')

hs.window.animationDuration = 0     -- Disable window animations (janky for iTerm)

local emoji = require 'emoji'
hs.hotkey.bind(mash, 'E', emoji.choose)

local mortality = require 'mortality'
local estimatedDeath = os.time{year=2067, month=5, day=18}
mortality(estimatedDeath)