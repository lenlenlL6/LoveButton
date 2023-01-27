# LoveButton
A library to help you create interactive buttons in Love2d.
### How to download ?
<sup>First, you have to download the library's source code on github, extract it to your game's directory, then require it using the following syntax:</sup>
```lua
local Button = require("libaryDirectory/Button")
```
### Create a button
<sup>To create a button, we use the following syntax:</sup>
```lua
local Button = require("libaryDirectory/Button")

function love.load()
  SCREEN_WIDTH, SCREEN_HEIGHT = love.graphics.getWidth(), love.graphics.getHeight()
  font = love.graphics.newFont("fonts/pricedown bl.otf", 20)
  button1 = Button:new(SCREEN_WIDTH / 2 - (150 / 2), SCREEN_HEIGHT / 2 - (50 / 2), 150, 50, love.graphics.newText(font, "Play Now"), {128, 128, 128}, {135, 206, 250})
end
```
