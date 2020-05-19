function draw_boot()
  local gfx = love.graphics
  local t = TRON.state_timer

  local _x,_y = 80,64
  gfx.draw(shell_anim.spriteSheet, shell_anim.quads[(math.floor(shell_anim.currentTime / shell_anim.duration * #shell_anim.quads) + 1)], _x, _y, 0, 2)
  -- we really need to design the txtbox next
  gfx.print(StringDex.dex.startup,Fonts.main,16,148)
  if (TRON.state_timer>3) then STATE:shift(1) end
end
