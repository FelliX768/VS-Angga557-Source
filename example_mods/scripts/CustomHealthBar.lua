function onCreatePost()
	makeAnimatedLuaSprite('custombar', 'coolbar', getProperty('healthBarBG.x')- 14, getProperty('healthBarBG.y')- 8)
	addAnimationByPrefix('custombar', 'bruh', 'idle', 1, true)
	objectPlayAnimation('custombar', 'bruh', false)
	setObjectCamera('custombar', 'hud')
	addLuaSprite('custombar', 'true')
	setObjectOrder('custombar', getObjectOrder('iconP1') - 1)
	setProperty('custombar.angle', getProperty('healthBarBG.angle'))
end