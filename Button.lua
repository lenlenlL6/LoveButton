local Button = {}

function Button:new(x, y, width, height, text, buttonColor, textColor)
	local button = {}
	setmetatable(button, {__index = self})
	button.x = x
	button.y = y
	button.width = width
	button.height = height
	button.text = text
	button.buttonColor = buttonColor
	button.textColor = textColor
	button.active = true
	button.callback = nil
	return button
end

function Button:setActive(active)
	self.active = active
end

function Button:isActive()
	return self.active
end

function Button:setCallback(callback)
	self.callback = callback
end

function Button:checkClick(x, y)
	if x >= self.x and x <= self.x + self.width and y >= self.y and y <= self.y + self.height then
		if not self.callback then
			return
		end
		self.callback(x, y)
	end
end

function Button:draw()
	love.graphics.setColor(love.math.colorFromBytes(unpack(self.buttonColor)))
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
	love.graphics.setColor(love.math.colorFromBytes(unpack(self.textColor)))
	love.graphics.draw(self.text, (self.x + self.width / 2) - self.text:getWidth() / 2, (self.y + self.height / 2) - self.text:getHeight() / 2)
end

return Button