
local xx = 520;
local yy = 490;
local xx2 = 820;
local yy2 = 570;
local ofs = 20;
local followchars = true;
local beatCam = false;

function onCreate()
	-- background shit
	makeLuaSprite('bg', 'city/Bg', -630, -200);
	addLuaSprite('bg', false);

	makeAnimatedLuaSprite('lluvia', 'city/RAINLayer', 0, -10);
	addAnimationByPrefix('lluvia', 'idle', 'RainFirstlayer instance 1', 18, true);
	setLuaSpriteScrollFactor('lluvia', 1, 1);
	setObjectCamera('lluvia', 'camHUD');
	scaleObject('lluvia', 1.8, 1.8);
	addLuaSprite('lluvia', false);

	makeLuaSprite('skay', 'city/sky', -700, -280);
	setScrollFactor('skay', 0.4, 0.4);
	scaleObject('skay', 1.4, 1.4);

	makeLuaSprite('rock1', 'city/floor3', -680, -280);
	setScrollFactor('rock1', 0.45, 0.45);
	scaleObject('rock1', 1.4, 1.4);

	makeLuaSprite('rock2', 'city/floor2', -693, -32);
	setScrollFactor('rock2', 0.58, 0.58);
	scaleObject('rock2', 1.4, 1.4);

	makeLuaSprite('floor', 'city/floor1', -940, -570);
	scaleObject('floor', 1.4, 1.4);

	makeLuaSprite('flash', 'flash', 0, 0);
	setObjectCamera('flash', 'camHUD');
end

function onStartCountdown()
	triggerEvent('Camera Follow Pos', xx, yy)
end

function onBeatHit()
	if beatCam == true then
		triggerEvent('Add Camera Zoom', 0.02, 0.03)
	end
end

function onUpdate()
	if curBeat == 32 then
		beatCam = true;
		setProperty('bg.visible', false);
		setProperty('lluvia.visible', false);
		addLuaSprite('skay', false);
		addLuaSprite('rock1', false);
		addLuaSprite('rock2', false);
		addLuaSprite('floor', false);
		addLuaSprite('flash', false);
		doTweenAlpha('boom', 'flash', 0, 0.8, 'sineOut');
		doTweenX('bruh', 'gf', 940, 1, 'sineOut');
		setProperty('defaultCamZoom', 0.5);
	elseif curBeat == 96 then
		beatCam = false;
	elseif curBeat == 224 then
		beatCam =true;
		setProperty('flash.alpha', 1);
		doTweenAlpha('boom', 'flash', 0, 0.8, 'sineOut');
	elseif curBeat == 288 then
		beatCam = false;
	elseif curBeat == 367 then
		setProperty('bg.visible', true);
		setProperty('lluvia.visible', true);
		removeLuaSprite('skay');
		removeLuaSprite('rock1');
		removeLuaSprite('rock2');
		removeLuaSprite('floor');
		setProperty('flash.alpha', 1);
		doTweenAlpha('boom', 'flash', 0, 0.8, 'sineOut');
	end

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