
local xx = 520;
local yy = 490;
local xx2 = 820;
local yy2 = 570;
local ofs = 20;
local followchars = true;

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'city/Bg', -630, -200);
	addLuaSprite('bg', false);

	makeAnimatedLuaSprite('lluvia', 'city/RAINLayer', 0, -10);
	addAnimationByPrefix('lluvia', 'idle', 'RainFirstlayer instance 1', 18, true);
	setLuaSpriteScrollFactor('lluvia', 1, 1);
	setObjectCamera('lluvia', 'camHUD');
	scaleObject('lluvia', 1.8, 1.8)
	addLuaSprite('lluvia', false);
end

function onStartCountdown()
	triggerEvent('Camera Follow Pos', xx, yy)
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
               doTweenX('camFolX', 'camFollow', xx-ofs, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
               doTweenX('camFolX', 'camFollow', xx+ofs, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
               doTweenX('camFolX', 'camFollow', xx, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy-ofs, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
               doTweenX('camFolX', 'camFollow', xx, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy+ofs, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
               doTweenX('camFolX', 'camFollow', xx-ofs, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
               doTweenX('camFolX', 'camFollow', xx+ofs, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
               doTweenX('camFolX', 'camFollow', xx, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy-ofs, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
               doTweenX('camFolX', 'camFollow', xx, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy+ofs, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
               doTweenX('camFolX', 'camFollow', xx, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.064, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
               doTweenX('camFolX', 'camFollow', xx, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.064, 'circInOut')
            end
        else
    
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
               doTweenX('camFolX', 'camFollow', xx2-ofs, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2, 0.064, 'circInOut')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
               doTweenX('camFolX', 'camFollow', xx2+ofs, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2, 0.064, 'circInOut')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
               doTweenX('camFolX', 'camFollow', xx2, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2-ofs, 0.064, 'circInOut')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
               doTweenX('camFolX', 'camFollow', xx2, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2+ofs, 0.064, 'circInOut')
            end
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
               doTweenX('camFolX', 'camFollow', xx2, 0.064, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2, 0.064, 'circInOut')
            end
        end
    end
end