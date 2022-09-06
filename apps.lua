require 'hyper'

function launch(appname)
    return function()
        hs.application.launchOrFocus(appname)
        if appname == 'Finder' then
            hs.appfinder.appFromName(appname):activate()
        end
    end
end

-- Apps that I want to jump to
quickapps = {
  {'i', 'iTerm'},
  {'f', 'Arc'},
  {'s', 'Spotify'},
  {'r', 'Finder'},
  {'d', 'Discord'},
  {'z', 'zoom.us'},
  {'v', 'Visual Studio Code'},
  {'m', 'Messages'},
}

for _, app in pairs(quickapps) do
  hyper:bind({}, app[1], launch(app[2]))
end

