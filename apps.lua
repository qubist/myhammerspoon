require 'hyper'

function launch(appname)
    return function()
        hs.application.launchOrFocus(appname)
    end
end

-- Apps that I want to jump to
quickapps = {
  {'i', 'iTerm'},
  {'f', 'Firefox'},
  {'s', 'Spotify'},
  {'r', 'Finder'},
  {'d', 'Discord'},
  {'z', 'zoom.us'},
  {'v', 'Visual Studio Code'},
}

for _, app in pairs(quickapps) do
  hyper:bind({}, app[1], launch(app[2]))
end

hyper:bind({}, 'f', launch('Firefox'))
