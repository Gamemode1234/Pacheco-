function onEvent(name, value1, value2)
	if name == 'zoom' then
		zoomamount = value1;
        setProperty('defaultCamZoom',zoomamount)
		doTweenZoom('why', 'camGame', zoomamount, 0.1, 'linear')
	end
end