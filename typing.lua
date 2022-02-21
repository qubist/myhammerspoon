hyper = require 'hyper'

hyper:bind({}, 'q', function() hs.eventtap.keyStrokes('https://will.quest') end)
hyper:bind({}, 'e', function() hs.eventtap.keyStrokes('willharrisbraun@gmail.com') end)
hyper:bind({}, 'w', function() hs.eventtap.keyStrokes('Will  Harris-Braun') end)

