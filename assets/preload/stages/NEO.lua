
local xx = 520;
local yy = 490;
local xx2 = 1230;
local yy2 = 570;
local ofs = 20;
local followchars = true;

function onCreate()
	-- background shit

	makeLuaSprite('neobg','city/neobg', -420, -160);
	setScrollFactor('neobg', 0.2, 1);
	addLuaSprite('neobg', false);

	makeLuaSprite('neo_amongus','city/neo_amongus', -1100, -100);
	setScrollFactor('neo_amongus', 0.1, 0.8);
	--addLuaSprite('neo_amongus', false);

	makeLuaSprite('neo_amongus2','city/neo_amongus', -1100-2191, -100);
	setScrollFactor('neo_amongus2', 0.1, 0.8);
	--addLuaSprite('neo_amongus2', false);

	makeLuaSprite('neo_city','city/neo_city', -1200, -170);
	setScrollFactor('neo_city', 0.2, 1);
	addLuaSprite('neo_city', false);

	makeLuaSprite('neo_city2','city/neo_city', -1200-2191, -170);
	setScrollFactor('neo_city2', 0.2, 1);
	addLuaSprite('neo_city2', false);

	makeAnimatedLuaSprite('rail3','city/rail', -410, 570);
	addAnimationByPrefix('rail3','move','rail',24);
	addLuaSprite('rail3', false);
	scaleObject('rail3', 1.25, 0.6);

	makeAnimatedLuaSprite('rail2','city/rail', -410, 610);
	addAnimationByPrefix('rail2','move','rail',24);
	addLuaSprite('rail2', false);
	scaleObject('rail2', 1.25, 0.7);

	makeAnimatedLuaSprite('rail1','city/rail', -410, 666);
	addAnimationByPrefix('rail1','move','rail',24);
	addLuaSprite('rail1', false);
	scaleObject('rail1', 1.25, 0.8);
end

function onBeatHit()
	objectPlayAnim('rail1', 'move', true);

end

function onStartCountdown()
	triggerEvent('Camera Follow Pos', xx, yy)
end

function onUpdate()
	if curBeat > 0 then -- THIISSSSSSSSSSS SJAJFGSDGHFKSJHADFHJLSADHFAKJDSBJHFJDBJHFHJSDFBSDJKFBNSDJ CIT6Y CITYY CITY CITY
		doTweenX('CITY GO BRRR', 'neo_city', -1100+3800, 160, linear);
        doTweenX('CITY GO BRRR2', 'neo_city2', 200, 160, linear);
        doTweenX('CITY GO BRRR3', 'neo_amongus', -220+2891, 160, linear);
        doTweenX('CITY GO BRRR4', 'neo_amongus2', 200, 160, linear);
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