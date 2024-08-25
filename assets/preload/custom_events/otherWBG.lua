DarwinIdle = true
function onCreate()
    makeLuaSprite('WBG', 'void', -2500, -1200)
    --makeGraphic('WBG',5000,5000,'ffffff')
    addLuaSprite('WBG', false)
    scaleObject('WBG', 5, 5);
    setScrollFactor('WBG', 0, 0)
    setProperty('WBG.visible', false)

    if songName == 'copycats' then
        makeAnimatedLuaSprite('nicoleimitationBG', 'NICOLE_IMITATION_ANGRY', 1060, -20)
        addAnimationByPrefix('nicoleimitationBG', 'idle','NICOLE IDLE', 24, false);
        scaleObject('nicoleimitationBG', 0.7, 0.7)

        makeAnimatedLuaSprite('nicoleBG', 'NICOLE_ANGRY', -400, 0)
        addAnimationByPrefix('nicoleBG', 'idle','NICOLE IDLE', 24, false);
        scaleObject('nicoleBG', 0.75, 0.75)

        makeAnimatedLuaSprite('richardimitationBG', 'THE_DAD', 1300, 40)
        addAnimationByPrefix('richardimitationBG', 'idle','THE DAD IDLE', 24, false);
        scaleObject('richardimitationBG', 0.55, 0.55)
        setPropertyLuaSprite('richardimitationBG', 'flipX', true)

        makeAnimatedLuaSprite('richardBG', 'Richard', -950, 60)
        addAnimationByPrefix('richardBG', 'idle','Richard', 24, false);
        scaleObject('richardBG', 0.55, 0.55)

        makeAnimatedLuaSprite('ribbitBG', 'RibbitBg', 1000, 380)
        addAnimationByPrefix('ribbitBG', 'idle','Ribbit', 24, false);
        setPropertyLuaSprite('ribbitBG', 'flipX', true)
        scaleObject('ribbitBG', 0.92, 0.92)
    
        makeAnimatedLuaSprite('darwinBG', 'darwin_copycats', -300, 380)
        addAnimationByPrefix('darwinBG', 'idle','Darwin', 24, false);
        scaleObject('darwinBG', 0.93, 0.93)
        setProperty('darwinBG.antialiasing', true)

        addLuaSprite('nicoleimitationBG', false);
        addLuaSprite('nicoleBG', false);
        addLuaSprite('richardimitationBG', false);
        addLuaSprite('richardBG', false);
        addLuaSprite('ribbitBG', false);
        addLuaSprite('darwinBG', false);
    end

    if songName == 'peanut' then
		makeAnimatedLuaSprite('darwinBG', 'DarwinP', -550, 300)
        addAnimationByPrefix('darwinBG', 'dance0','DarwinL', 24, false);
        addAnimationByIndices('darwinBG','dance1','DarwinL','12,13',24)
        addAnimationByPrefix('darwinBG', 'dance2','DarwinR', 24, false);
        addAnimationByIndices('darwinBG','dance3','DarwinR','12,13',24)
		scaleObject('darwinBG', 0.97, 0.97);
        addLuaSprite('darwinBG', true);
        setProperty('darwinBG.antialiasing', true)
        makeAnimatedLuaSprite('gumballBG', 'GumballP', -250, 250)
        addAnimationByPrefix('gumballBG', 'bounce','Gumball', 24, false);
        scaleObject('gumballBG', 0.97, 0.97);
        addLuaSprite('gumballBG', false);
        setProperty('gumballBG.antialiasing', true)
        makeAnimatedLuaSprite('bfBG', 'BFBG', 400, 240)
        addAnimationByPrefix('bfBG', 'idle','bf bg instancia 1', 24, false);
        scaleObject('bfBG', 0.65, 0.65)
        addLuaSprite('bfBG', false);
        makeAnimatedLuaSprite('titanspeakerman', 'speaker', 730, 580)
        addAnimationByPrefix('titanspeakerman', 'idle','parlante instancia 1', 24, false);
        scaleObject('titanspeakerman', 1.2, 1.2)
        addLuaSprite('titanspeakerman', false);
    end
    
    end
    
    
    function onEvent(name,value1,value2)
    if name == 'otherWBG' then
    
    if value1 == 'Won' then
    
    setProperty('WBG.colorTransform.greenOffset', 0)
    setProperty('WBG.colorTransform.redOffset', 0)
    setProperty('WBG.colorTransform.blueOffset', 0)
    
    setProperty('dad.colorTransform.greenOffset', -255)
    setProperty('dad.colorTransform.redOffset', -255)
    setProperty('dad.colorTransform.blueOffset', -255)
    
    setProperty('boyfriend.colorTransform.greenOffset', -255)
    setProperty('boyfriend.colorTransform.redOffset', -255)
    setProperty('boyfriend.colorTransform.blueOffset', -255)
    
    setProperty('gf.colorTransform.greenOffset', -255)
    setProperty('gf.colorTransform.redOffset', -255)
    setProperty('gf.colorTransform.blueOffset', -255)

    if songName == 'sarcastic' then
        setProperty('darwinBG.colorTransform.greenOffset', -255)
        setProperty('darwinBG.colorTransform.redOffset', -255)
        setProperty('darwinBG.colorTransform.blueOffset', -255)
    end
    
    setProperty('WBG.visible', true)
    setProperty('simge1.visible', false)
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('simge2.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeTxt.visible', false)
    end
    
    if value1 == 'Bon' then
    
    setProperty('WBG.colorTransform.greenOffset', -255)
    setProperty('WBG.colorTransform.redOffset', -255)
    setProperty('WBG.colorTransform.blueOffset', -255)
    
    setProperty('dad.colorTransform.greenOffset', 255)
    setProperty('dad.colorTransform.redOffset', 255)
    setProperty('dad.colorTransform.blueOffset', 255)
    
    setProperty('boyfriend.colorTransform.greenOffset', 255)
    setProperty('boyfriend.colorTransform.redOffset', 255)
    setProperty('boyfriend.colorTransform.blueOffset', 255)
    
    setProperty('gf.colorTransform.greenOffset', 255)
    setProperty('gf.colorTransform.redOffset', 255)
    setProperty('gf.colorTransform.blueOffset', 255)

    if songName == 'sarcastic' then
    setProperty('darwinBG.colorTransform.greenOffset', 255)
    setProperty('darwinBG.colorTransform.redOffset', 255)
    setProperty('darwinBG.colorTransform.blueOffset', 255)
    end

    if songName == 'peanut' then
        setProperty('darwinBG.colorTransform.greenOffset', 255)
        setProperty('darwinBG.colorTransform.redOffset', 255)
        setProperty('darwinBG.colorTransform.blueOffset', 255)
        setProperty('gumballBG.colorTransform.greenOffset', 255)
        setProperty('gumballBG.colorTransform.redOffset', 255)
        setProperty('gumballBG.colorTransform.blueOffset', 255)
        setProperty('bfBG.colorTransform.greenOffset', 255)
        setProperty('bfBG.colorTransform.redOffset', 255)
        setProperty('bfBG.colorTransform.blueOffset', 255)
        setProperty('titanspeakerman.colorTransform.greenOffset', 255)
        setProperty('titanspeakerman.colorTransform.redOffset', 255)
        setProperty('titanspeakerman.colorTransform.blueOffset', 255)
    end

    if songName == 'copycats' then
        setProperty('darwinBG.colorTransform.greenOffset', 255)
        setProperty('darwinBG.colorTransform.redOffset', 255)
        setProperty('darwinBG.colorTransform.blueOffset', 255)
        setProperty('ribbitBG.colorTransform.greenOffset', 255)
        setProperty('ribbitBG.colorTransform.redOffset', 255)
        setProperty('ribbitBG.colorTransform.blueOffset', 255)
        setProperty('nicoleimitationBG.colorTransform.greenOffset', 255)
        setProperty('nicoleimitationBG.colorTransform.redOffset', 255)
        setProperty('nicoleimitationBG.colorTransform.blueOffset', 255)
        setProperty('nicoleBG.colorTransform.greenOffset', 255)
        setProperty('nicoleBG.colorTransform.redOffset', 255)
        setProperty('nicoleBG.colorTransform.blueOffset', 255)
        setProperty('richardBG.colorTransform.greenOffset', 255)
        setProperty('richardBG.colorTransform.redOffset', 255)
        setProperty('richardBG.colorTransform.blueOffset', 255)
        setProperty('richardimitationBG.colorTransform.greenOffset', 255)
        setProperty('richardimitationBG.colorTransform.redOffset', 255)
        setProperty('richardimitationBG.colorTransform.blueOffset', 255)
    end

    if songName == 'desperation' then
        setProperty('boyfriendscary.colorTransform.greenOffset', 255)
        setProperty('boyfriendscary.colorTransform.redOffset', 255)
        setProperty('boyfriendscary.colorTransform.blueOffset', 255)
        setProperty('darwindesperation.colorTransform.greenOffset', 255)
        setProperty('darwindesperation.colorTransform.redOffset', 255)
        setProperty('darwindesperation.colorTransform.blueOffset', 255)
    end
    
    setProperty('WBG.visible', true)
    setProperty('simge1.visible', false)
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('simge2.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeTxt.visible', false)
    end
    
    if value1 == 'off' then
    setProperty('WBG.colorTransform.greenOffset', 0)
    setProperty('WBG.colorTransform.redOffset', 0)
    setProperty('WBG.colorTransform.blueOffset', 0)
    
    setProperty('dad.colorTransform.greenOffset', 0)
    setProperty('dad.colorTransform.redOffset', 0)
    setProperty('dad.colorTransform.blueOffset', 0)
    
    setProperty('gf.colorTransform.greenOffset', 0)
    setProperty('gf.colorTransform.redOffset', 0)
    setProperty('gf.colorTransform.blueOffset', 0)
    
    setProperty('boyfriend.colorTransform.greenOffset', 0)
    setProperty('boyfriend.colorTransform.redOffset', 0)
    setProperty('boyfriend.colorTransform.blueOffset', 0)

    if songName == 'sarcastic' then
        setProperty('darwinBG.colorTransform.greenOffset', 0)
        setProperty('darwinBG.colorTransform.redOffset', 0)
        setProperty('darwinBG.colorTransform.blueOffset', 0)
    end

    if songName == 'peanut' then
        setProperty('darwinBG.colorTransform.greenOffset', 0)
        setProperty('darwinBG.colorTransform.redOffset', 0)
        setProperty('darwinBG.colorTransform.blueOffset', 0)
        setProperty('gumballBG.colorTransform.greenOffset', 0)
        setProperty('gumballBG.colorTransform.redOffset', 0)
        setProperty('gumballBG.colorTransform.blueOffset', 0)
        setProperty('bfBG.colorTransform.greenOffset', 0)
        setProperty('bfBG.colorTransform.redOffset', 0)
        setProperty('bfBG.colorTransform.blueOffset', 0)
        setProperty('titanspeakerman.colorTransform.greenOffset', 0)
        setProperty('titanspeakerman.colorTransform.redOffset', 0)
        setProperty('titanspeakerman.colorTransform.blueOffset', 0)
    end

    if songName == 'copycats' then
        setProperty('darwinBG.colorTransform.greenOffset', 0)
        setProperty('darwinBG.colorTransform.redOffset', 0)
        setProperty('darwinBG.colorTransform.blueOffset', 0)
        setProperty('ribbitBG.colorTransform.greenOffset', 0)
        setProperty('ribbitBG.colorTransform.redOffset', 0)
        setProperty('ribbitBG.colorTransform.blueOffset', 0)
        setProperty('nicoleimitationBG.colorTransform.greenOffset', 0)
        setProperty('nicoleimitationBG.colorTransform.redOffset', 0)
        setProperty('nicoleimitationBG.colorTransform.blueOffset', 0)
        setProperty('nicoleBG.colorTransform.greenOffset', 0)
        setProperty('nicoleBG.colorTransform.redOffset', 0)
        setProperty('nicoleBG.colorTransform.blueOffset', 0)
        setProperty('richardBG.colorTransform.greenOffset', 0)
        setProperty('richardBG.colorTransform.redOffset', 0)
        setProperty('richardBG.colorTransform.blueOffset', 0)
        setProperty('richardimitationBG.colorTransform.greenOffset', 0)
        setProperty('richardimitationBG.colorTransform.redOffset', 0)
        setProperty('richardimitationBG.colorTransform.blueOffset', 0)
    end

    if songName == 'desperation' then
        setProperty('boyfriendscary.colorTransform.greenOffset', 0)
        setProperty('boyfriendscary.colorTransform.redOffset', 0)
        setProperty('boyfriendscary.colorTransform.blueOffset', 0)
        setProperty('darwindesperation.colorTransform.greenOffset', 0)
        setProperty('darwindesperation.colorTransform.redOffset', 0)
        setProperty('darwindesperation.colorTransform.blueOffset', 0)
    end
    
    setProperty('WBG.visible', false)
    setProperty('simge1.visible', true)
    setProperty('healthBar.visible', true)
    setProperty('healthBarBG.visible', true)
    setProperty('simge2.visible', true)
    setProperty('timeTxt.visible', true)
    setProperty('timeBar.visible', true)
    setProperty('timeBarBG.visible', true)
    setProperty('scoreTxt.visible', true)
    
    end
    end
    end

    function onBeatHit()
        if string.starts(getProperty('darwinBG.animation.curAnim.name'),'dance') then
            if DarwinIdle then objectPlayAnimation('darwinBG','dance'..curBeat % 4) end
        end
        if string.starts(getProperty('darwinBGPhantom.animation.curAnim.name'),'dance') then
            if DarwinIdle then objectPlayAnimation('darwinBGPhantom','dance'..curBeat % 4) end
        end
        if songName == 'peanut' then
            if curBeat % 2 == 0 then
                objectPlayAnimation('gumballBG','bounce',true)
                objectPlayAnimation('bfBG','idle',true)
                objectPlayAnimation('titanspeakerman','idle',true)
            end
        end
        if songName == 'copycats' then
        if curBeat % 2 == 0 then
            objectPlayAnimation('ribbitBG','idle',true)
            objectPlayAnimation('darwinBG','idle',true)
            objectPlayAnimation('nicoleimitationBG','idle',true)
            objectPlayAnimation('nicoleBG','idle',true)
            objectPlayAnimation('richardimitationBG','idle',true)
            objectPlayAnimation('richardBG','idle',true)
        end
        end
    end
    
    function string.starts(String,Start)
        return string.sub(String,1,string.len(Start))==Start
     end