function love.load()
	menu = require 'menu'
end

function love.update(dt)
end

function love.draw()
	menu:draw()
end

function love.keypressed(key, unicode)
	menu:keypressed(key, unicode)
end