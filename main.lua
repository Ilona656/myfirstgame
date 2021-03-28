love.load = function ()
  x = 50
  y = 540
  w = 130
  h = 30
  b = 100
  d = 100

bounceFloor = y-10
dy = 1
dx = -1
gravity = 200

score = 0 

end



love.update = function (dt)

-- hur platformen flyttar sig
  if love.keyboard.isDown('right') then
  x = x + 6
  

  elseif love.keyboard.isDown('left') then
    x = x - 6
  end


-- studsa på platan 
  if d > bounceFloor and b > x and b < (x + 80) then
    dy = -1
    gravity = gravity + 50
    dx = dx * 2
    score = score + 1
  elseif d < 0 then
    dy = 1
 end


-- studsa på vänster väg
  if  b < 0 then
    dx = 1
  end

-- studsa på höger väg
  if b > 800 then
    dx = -1
  end

  if d > 600 then
    love.event.quit(0)
  end

-- uppdaterar postionen för bollen
  b = b + 100 * dx * dt
  d = d + gravity * dy * dt

end



function love.conf(t)
  t.console = true
end



love.draw = function ()

  love.graphics.rectangle('fill', x, y, w, h)

  love.graphics.circle('fill', b, d, 20)

  love.graphics.setColor(1, 1, 1)
  love.graphics.print(score, 400, 15)

end

