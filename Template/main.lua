-- File Requires --
require 'system_logic'

-- Global Variables --
IMAGE = {}

function love.load()
	IMAGE[1] = love.graphics.newImage(IMAGE_DIR .. "image.png")
end

function love.draw()
	love.graphics.setColor( 255, 255, 255, 255)
	love.graphics.draw(IMAGE[1], 0, 0)
end

function updateGame()
	
	if singleClick('l') then
		print("Left Mouse Clicked")
	end
end