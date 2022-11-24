
local xx = 520;
local yy = 570;
local xx2 = 820;
local yy2 = 640;
local ofs = 15;
local followchars = true;

function onCreate()
	makeLuaSprite('sky', 'city/bg_1', -630, -200);
	setScrollFactor('sky', 0.3, 0.3);
	makeLuaSprite('bg', 'city/bg_2', -630, -200);
	makeLuaSprite('light', 'city/lens', -630, -185);
	setScrollFactor('light', 1.3, 1.3);
	setBlendMode('light', 'add');

	addLuaSprite('sky', false);
	addLuaSprite('bg', false);
	addLuaSprite('light', true);
end

function onStartCountdown()
	triggerEvent('Camera Follow Pos', xx, yy)
end

function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
               doTweenX('camFolX', 'camFollow', xx-ofs, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
               doTweenX('camFolX', 'camFollow', xx+ofs, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
               doTweenX('camFolX', 'camFollow', xx, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy-ofs, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
               doTweenX('camFolX', 'camFollow', xx, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy+ofs, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
               doTweenX('camFolX', 'camFollow', xx-ofs, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
               doTweenX('camFolX', 'camFollow', xx+ofs, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
               doTweenX('camFolX', 'camFollow', xx, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy-ofs, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
               doTweenX('camFolX', 'camFollow', xx, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy+ofs, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
               doTweenX('camFolX', 'camFollow', xx, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.08, 'circInOut')
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
               doTweenX('camFolX', 'camFollow', xx, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy, 0.08, 'circInOut')
            end
        else
    
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
               doTweenX('camFolX', 'camFollow', xx2-ofs, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2, 0.08, 'circInOut')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
               doTweenX('camFolX', 'camFollow', xx2+ofs, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2, 0.08, 'circInOut')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
               doTweenX('camFolX', 'camFollow', xx2, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2-ofs, 0.08, 'circInOut')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
               doTweenX('camFolX', 'camFollow', xx2, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2+ofs, 0.08, 'circInOut')
            end
	        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
               doTweenX('camFolX', 'camFollow', xx2, 0.08, 'circInOut')
               doTweenY('camFolY', 'camFollow', yy2, 0.08, 'circInOut')
            end
        end
    end
end