function draw_boot()
  local gfx = love.graphics

  gswhite = asset:sprite({'gswhite1.png', 'gswhite2.png', 'gswhite3.png'})

  local _x,_y = 30,30
  if (TRON.state_timer>0) then
    gfx.draw(gswhite[1], _x, _y)
  elseif (TRON.state_timer>200) then
    gfx.draw(gswhite[2], _x, _y)
  elseif (TRON.state_timer>300) then
    gfx.draw(gswhite[3], _x, _y)
  elseif (TRON.state_timer>500) then
    gfx.draw(gswhite[2], _x, _y)
  end
  rt = rt + 1
  print(STATE.s, TRON.state_timer)
  if (TRON.state_timer>1000) then STATE:shift(1) end
end
