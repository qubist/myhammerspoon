-- Hyper hotkey
-- The physical key for Hyper should be mapped to F19
-- with KarabinerElements

-- A global variable for the Hyper Mode
local hyper = hs.hotkey.modal.new({}, nil)

-- Enter Hyper Mode when F19 (Hyper/fn) is pressed
function enterHyperMode()
    hyper:enter()
end

-- Leave Hyper Mode when F19 (Hyper/fn) is released,
function exitHyperMode()
    hyper:exit()
end

-- Bind the hotkey to control Hyper mode
f19 = hs.hotkey.bind({}, 'f19', enterHyperMode, exitHyperMode)

-- Press `hyper+shift+R` to reload Hammerspoon configuration.
hyper:bind({'shift'}, 'r', nil, function()
    hs.reload()
end)

return hyper
