function onCreatePost()
    setProperty('camGame.angle', 90)
end

function onCreate()
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'jonathan-dead');

	-- background stuff
	makeLuaSprite('BG', 'puente', -400, -100);
        scaleObject('BG', 2.2, 1.9);
		setProperty('BG.alpha', 1)
	setScrollFactor('BG', 1, 1);
        addLuaSprite('BG', false);

		makeLuaSprite('BG2', 'fireBG', -600, -500);
        scaleObject('BG2', 2.4, 2.4);
		setProperty('BG2.alpha', 0)
	setScrollFactor('BG2', 1, 1);
        addLuaSprite('BG2', false);
		
		makeAnimatedLuaSprite('BG3', 'poder_politicoBG', -700, -300)
		addAnimationByPrefix('BG3', 'idle', 'idle', 24, true)
		setProperty('BG3.alpha', 0)
		scaleObject('BG3', 2.8, 2.8);
		addLuaSprite('BG3', false)

		makeAnimatedLuaSprite('Poderpolitico', 'todosreunidos', 50, 100)
		addAnimationByPrefix('Poderpolitico', 'idle', 'idle', 24, false)
		setProperty('Poderpolitico.alpha', 0)
		scaleObject('Poderpolitico', 2.4, 2.4);
		addLuaSprite('Poderpolitico', false)

		makeLuaSprite('imagenqliada', 'elpoderpolitico', 0, 0);
		setObjectCamera("imagenqliada", 'other')
        scaleObject('imagenqliada', 1, 1);
		setProperty('imagenqliada.alpha', 0)
	    setScrollFactor('imagenqliada', 1, 1);
        addLuaSprite('imagenqliada', false);

		makeLuaSprite('blackfuck', 'void', 0, 0);
		scaleObject('blackfuck', 36, 36);
		setProperty('blackfuck.alpha', 1);
		setObjectCamera('blackfuck','other')
		addLuaSprite('blackfuck', true);
	end

function onSongStart()
    doTweenAlpha('camgameappear', 'blackfuck', 0, 9, 'quadInOut')
    doTweenZoom('startingzoom', 'camGame', 0.85, 9, 'quadInOut');
    doTweenAngle('angleentrance', 'camGame', 0, 9, 'cubeOut')
	setProperty('defaultCamZoom', 0.85);
end

letrasalmedio = false
function onStepHit()
	if curStep == 192 then
		doTweenZoom('startingzoom', 'camGame', 1.3, 5, 'quadInOut');
		setProperty('defaultCamZoom', 1.3);
	end
	if curStep == 256 then
		setProperty('BG.alpha', 0)
		setProperty('BG2.alpha', 1)
		setProperty('camGame.alpha', 0)
		setProperty('defaultCamZoom', 0.85);
	end
	if curStep == 264 then
		setProperty('camGame.alpha', 1)
	end
	if curStep == 272 then
		setProperty('camGame.alpha', 0)
	end
	if curStep == 280 then
		setProperty('camGame.alpha', 1)
	end
	if curStep == 320 then
		setProperty('camGame.alpha', 0)
	end
	if curStep == 328 then
		setProperty('camGame.alpha', 1)
	end
	if curStep == 336 then
		setProperty('camGame.alpha', 0)
	end
	if curStep == 344 then
		setProperty('camGame.alpha', 1)
	end
	if curStep == 768 then
		doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
		noteTweenAlpha('NOTEMOVE1', 0, 0, 0.5, 'Linear')	
        noteTweenAlpha('NOTEMOVE2', 1, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE3', 2, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE4', 3, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE5', 4, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE6', 5, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE7', 6, 0, 6, 'Linear')
        noteTweenAlpha('NOTEMOVE8', 7, 0, 0.5, 'Linear')
	end
	if curStep == 1017 then
		noteTweenAlpha('NOTEMOVE5', 4, 1, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE6', 5, 1, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE7', 6, 1, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE8', 7, 1, 0.5, 'Linear')
	end
	if curStep == 1085 then
		noteTweenAlpha('NOTEMOVE1', 0, 1, 0.5, 'Linear')	
        noteTweenAlpha('NOTEMOVE2', 1, 1, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE3', 2, 1, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE4', 3, 1, 0.5, 'Linear')
	end
	if curStep == 1152 then
		doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	end
	if curStep == 1400 then
		setProperty('camGame.alpha', 0)
		setProperty('dad.alpha', 0)
		setProperty('gf.alpha', 0)
		setProperty('BG2.alpha', 0)
		setProperty('BG3.alpha', 1)
		if not middlescroll then
		noteTweenAlpha('NOTEALPHA1', 0, 0.5, 0.5, 'Linear')	
		noteTweenAlpha('NOTEALPHA2', 1, 0.5, 0.5, 'Linear')
		noteTweenAlpha('NOTEALPHA3', 2, 0.5, 0.5, 'Linear')
		noteTweenAlpha('NOTEALPHA4', 3, 0.5, 0.5, 'Linear')
		noteTweenX('numero1', 0, defaultOpponentStrumX0, 0.5, 'circOut')
		noteTweenX('numero2', 1, defaultOpponentStrumX1, 0.5, 'circOut')
		noteTweenX('numero2', 2, defaultPlayerStrumX2, 0.5, 'circOut')
		noteTweenX('numero3', 3, defaultPlayerStrumX3, 0.5, 'circOut')
		noteTweenX('numero4', 4, 412, 0.5, 'circOut')
		noteTweenX('numero5', 5, 527, 0.5, 'circOut')
		noteTweenX('numero6', 6, 643, 0.5, 'circOut')
		noteTweenX('numero8', 7, 761, 0.5, 'circOut')
	    end
	end
	if curStep == 1408 then
		setProperty('camGame.alpha', 1)
		setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'jonathanserio-dead');
	end
	if curStep == 1536 then
		setProperty('imagenqliada.alpha', 1)
		doTweenAlpha('VAMOO', 'imagenqliada', 0, 0.5)
	end
	if curStep == 1540 then
		doTweenAlpha('joderpoderpolitico', 'Poderpolitico', 1, 5)
	end
	if curStep == 1664 then
		setProperty('camGame.alpha', 0)
		doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.25)
        doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
        doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.25)
        doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.25)
        doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
        doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
        doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	end
	if curStep == 1910 then
		noteTweenAlpha('NOTEMOVE1', 0, 0, 0.5, 'Linear')	
        noteTweenAlpha('NOTEMOVE2', 1, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE3', 2, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE4', 3, 0, 0.5, 'Linear')
        noteTweenAlpha('NOTEMOVE5', 4, 0, 5, 'Linear')
        noteTweenAlpha('NOTEMOVE6', 5, 0, 5, 'Linear')
        noteTweenAlpha('NOTEMOVE7', 6, 0, 5, 'Linear')
        noteTweenAlpha('NOTEMOVE8', 7, 0, 5, 'Linear')
	end
end

function onBeatHit()
    if curBeat % 2 == 0 then
		objectPlayAnimation('Poderpolitico','idle',true)
    end
end

