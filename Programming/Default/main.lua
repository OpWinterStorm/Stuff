function love.load()
	love.filesystem.load( 'Exercises/1-Intro to Lua.lua')()
end

function love.update(dt)
	if love.keyboard.isDown( "escape" ) then love.event.quit() end
end

function love.draw()
end