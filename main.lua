love.load = function ()
  x = 50
  y = 300
  w = 85
  h = 100
end

love.update = function (dt)

  if love.keyboard.isDown('right') then
  x = x + 6
  

  elseif love.keyboard.isDown('left') then
    x = x - 6
  end

end

love.draw = function ()
  love.graphics.rectangle('fill', x, y, w, h)
end

