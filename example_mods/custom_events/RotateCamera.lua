function onEvent(name,value1,value2)
	if name == "RotateCamera" then
		if value1 == "flip" then
			doTweenAngle('bruh', 'camGame', 180, value2, 'backOut')
		elseif value1 == "nonflip" then
			doTweenAngle('bruh1', 'camGame', 0, value2, 'backOut')
		end
	end
end