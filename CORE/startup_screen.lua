function draw_boot()
  local gfx = love.graphics
  local t = TRON.state_timer

  local _x,_y = 64,100
  gfx.draw(shell_anim.spriteSheet, shell_anim.quads[(math.floor(shell_anim.currentTime / shell_anim.duration * #shell_anim.quads) + 1)], _x, _y, 0, 1)

  if (TRON.state_timer>4) then STATE:shift(1) end
end
