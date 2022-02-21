hyper = require 'hyper'

-- Tile windows Rectangle-style
hyper:bind({}, 'h', nil, function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.w = max.w / 2
    f.h = max.h
    f.x = max.x
    f.y = max.y
    win:setFrame(f)
end)

for _, keycode in pairs({'n','l'}) do
    hyper:bind({}, keycode, nil, function()
        local win = hs.window.focusedWindow()
        local f = hs.window.focusedWindow():frame()
        local screen = win:screen()
        local max = win:screen():frame()
        f.w = max.w / 2
        f.h = max.h
        f.x = max.x + f.w
        f.y = max.y
        win:setFrame(f)
    end)
end
hyper:bind({}, 'c', nil, function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.w = max.w
    f.h = max.h / 2
    f.x = max.x
    f.y = max.y
    win:setFrame(f)
end)
hyper:bind({}, 't', nil, function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.w = max.w
    f.h = max.h / 2
    f.x = max.x
    f.y = max.y + f.h
    win:setFrame(f)
end)
hyper:bind({}, 'return', nil, function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    f.w = max.w
    f.h = max.h
    f.x = max.x
    f.y = max.y
    win:setFrame(f)
end)

hs.window.animationDuration = 0.05

