function onCreate()
	makeLuaSprite('bgTxt', 'intro/bgText', 0, 0)
	makeLuaSprite('song', 'intro/song/demonrampage', 0, 0)
	setObjectCamera('bgTxt', 'hud')
	setObjectCamera('song', 'hud')
	addLuaSprite('bgTxt', true)
	addLuaSprite('song', true)
	
	close = true;
end

function onStartCountdown()
	doTweenAlpha('fade', 'bgTxt', 0, 0.01, 'linear')
	doTweenX('swipe', 'song', -1280, 0.01, 'linear')
end

function onCountdownTick(counter)
	if counter == 0 then
		doTweenAlpha('fade1', 'bgTxt', 1, 0.4, 'sineOut')
		doTweenX('swipe1', 'song', 0, 0.4, 'sineOut')
	elseif counter == 4 then
		doTweenAlpha('fade2', 'bgTxt', 0, 0.4, 'sineIn')
		doTweenX('swipe4', 'song', 1280, 0.4, 'sineIn')
	end
end