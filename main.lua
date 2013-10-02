function love.load()
	
	menu = require 'menu'
	state = menu
	
end


function love.update(dt)
	
	if state.update then state:update(dt) end
	
end


function love.draw()
	state:draw()
end


function love.keypressed(key, unicode)
	state:keypressed(key, unicode)
end
