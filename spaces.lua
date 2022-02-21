hyper = require 'hyper'

-- Move spaces like on my Keyboard

function moveToSpace(num)
    return function()
        hs.eventtap.keyStroke({'ctrl'}, tostring(num))
    end
end

for i, keycode in pairs({'left','down','right'}) do
    hyper:bind({}, keycode, nil, moveToSpace(i))
end
