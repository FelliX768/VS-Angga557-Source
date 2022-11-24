function onCreate()
	makeLuaSprite('up', 'intro/blackUp', 0, 0)
	makeLuaSprite('down', 'intro/blackDown', 0, 0)
	setObjectCamera('up', 'other')
	setObjectCamera('down', 'other')
	addLuaSprite('up', true)
	addLuaSprite('down', true)
end

function onCountdownTick(counter)
	if counter == 0 then
		doTweenY('swipe2', 'up', -160, 0.7, 'sineOut')
		doTweenY('swipe3', 'down', 160, 0.7, 'sineOut')
	elseif counter == 3 then
		doTweenY('swipe5', 'up', -600, 1.7, 'sineInOut')
		doTweenY('swipe6', 'down', 600, 1.7, 'sineInOut')
	end
end