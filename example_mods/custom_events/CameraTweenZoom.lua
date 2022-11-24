function onEvent(name, value1, value2)
	if name == 'CameraTweenZoom' then
		function onUpdate()
			doTweenZoom('zooming', 'camGame', value1, value2, 'sineInOut')
		end
	end
end

