require 'windows'
require 'spaces'
require 'hyper'
require 'apps'

-- Reload configuration file every time it changes
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

hyper:bind({}, 'r', nil, function()
  hs.reload()
end)

hs.alert.show("Config loaded")