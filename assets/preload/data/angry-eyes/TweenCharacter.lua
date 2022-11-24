local ofst = 18
local defaultX = 0

function onCreate()
	defaultX = getProperty('dad.x')
end

function onUpdate()
	if getProperty('dad.animation.curAnim.name') == 'idle' then
		doTweenX('dadMove', 'dad', defaultX, 0.04, 'elasticOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		doTweenX('dadMove', 'dad', defaultX-ofst, 0.04, 'elasticOut')
	end
	if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		doTweenX('dadMove', 'dad', defaultX+ofst, 0.04, 'elasticOut')
	end
end