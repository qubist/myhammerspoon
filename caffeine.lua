caffeine = hs.menubar.new()
emptyImage = hs.image.imageFromPath('caffeine-inactive.png'):setSize({w=22,h=22})
fullImage = hs.image.imageFromPath('caffeine-active.png'):setSize({w=22,h=22})

function setCaffeineDisplay(state)
    if state then
        caffeine:setIcon(fullImage)
    else
        caffeine:setIcon(emptyImage)
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
