local menu = {}
local lg = love.graphics

menu.current = 1

menu.options = {

	{name = 'Play', func = function() state = require 'map' end},
	{name = 'Settings', func = function() state = require 'settings' end},
	{name = 'Quit', func = love.event.quit}}


--[[
menu.update = function(self, dt)

	--maybe not even needed
	
end--]] Guess what? not needed


menu.draw = function(self)

	for i, v in pairs(self.options) do
	
		local _ = self.current and lg.setColor {255,0,0} or lg.setColor {255,255,255}
		
		lg.printf(v.name, 0, 256+32*i, 800, 'center')
		
	end
	
end


menu.keypressed = function(self, k, u)

	self.current = k == 'up' and math.max(self.current-1, 1) or (k == 'down' and math.min(self.current+1, #self.options) or self.current)
	
	if k == 'return' then self.options[self.current].func() end
	
end

return menu
