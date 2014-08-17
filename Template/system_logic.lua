__ACCUMULATOR = 0
__MOUSE_DOWN = {}

function love.update(dt)
	__ACCUMULATOR = __ACCUMULATOR + math.ceil(dt*100000)
	while __ACCUMULATOR >= math.ceil(100000/UPDATES_PER_SECOND) do
		updateGame()
		__ACCUMULATOR = __ACCUMULATOR - math.ceil(100000/UPDATES_PER_SECOND)
	end
end

function singleClick(x)
	if love.mouse.isDown(x) then
		if __MOUSE_DOWN[x] == false then
			__MOUSE_DOWN[x] = true
			return true
		end
	else
		__MOUSE_DOWN[x] = false
	end
	return false
end