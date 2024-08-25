function onPause()
    pausenumber = math.random(1, 12)
    makeLuaSprite('marcospause', 'pause/marcospauses/marcospause' .. pausenumber, 800, 150)
    setObjectCamera('marcospause', 'other')
    runTimer('pinchetimer', 0.15)
    addLuaSprite('marcospause')
end

function onResume()
    removeLuaSprite('marcospause')
end

function onTimerCompleted(t)
    if t == 'pinchetimer' then
        doTweenX('tween2', 'marcospause', 200,0.3, 'linear')
    end
end