local current_color = {1, 1, 1, 1}

love.draw = function()
  local paddle1 = {50, 50, 50, 200, 100, 200, 100, 50}
  local paddle2 = {750, 400, 750, 550, 700, 550, 700, 400}

  love.graphics.setColor(current_color)

  love.graphics.polygon('fill', paddle1)
  love.graphics.polygon('fill', paddle2)

end


