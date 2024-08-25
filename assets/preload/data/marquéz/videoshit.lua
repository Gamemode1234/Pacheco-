playVideo = true;

function onStartCountdown()
	if not isStoryMode and not seenCutscene then
		if playVideo then --Video cutscene plays first
			startVideo('dora_reaction'); --Play video file from "videos/" folder
			playVideo = false;
			return Function_Stop; --Prevents the song from starting naturally
		end
	end
	return Function_Continue; --Played video and dialogue, now the song can start normally
end


function onEvent(name, value1, value2)
    if name == 'CustomVid' then
        makeVideoSprite('ahfire', value1, 0, 0, 'camHUD', false)
        setProperty('ahfire.width', 10)
        setProperty('ahfire.height', 10)
        setObjectOrder('ahfire_video', 0)
        setProperty('ahfire_video.alpha', 1)
        setProperty('dad.visible', true)
    end
end










