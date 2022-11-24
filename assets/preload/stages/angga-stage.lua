--boyfriend smoothCam offset
local xx = 430.95;
local yy = 450;

--opponent smoothCam offset
local xx2 = 742.9;
local yy2 = 490;

--follow pose offset value
local ofs = 8;

--don't turnvalue to false!
local followchars = true;

function onCreate()
	makeLuaSprite('stagebg', 'test/stageback', -600, -200);
	setScrollFactor('stagebg', 0.9, 0.9);
	addLuaSprite('stagebg');
	makeLuaSprite('frnt', 'test/stagefront', -650, 600);
	setScrollFactor('frnt', 0.9, 0.9);
	addLuaSprite('frnt');
	makeLuaSprite('lght', 'test/stage_light', -125, -100);
	setScrollFactor('lgth', 1.1, 1.1);
	addLuaSprite('lgth');
	makeLuaSprite('lght1', 'test/stage_light', 1225, -100);
	setScrollFactor('lgth1', 1.1, 1.1);
	addLuaSprite('lgth1');
	makeLuaSprite('curtns', 'test/stagecurtains', -500, -300);
	setScrollFactor('curtns', 1.3, 1.3);
	addLuaSprite('curtns');
end

function onStartCountdown()
	if mustHitSection == false then
		triggerEvent('Camera Follow Pos', xx, yy)
	else
		triggerEvent('Camera Follow Pos', xx2, yy2)
	end
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
            if getProperty('boyfriend.animation.curAnim.n*zddame') == 'singUP' then
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