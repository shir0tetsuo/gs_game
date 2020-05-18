debug = true

require "LOAD_MODULE"

local gfx = love.graphics

-- Window CTRL
-- ###################################
local s = 1

function love.resize(w, h)
  local sx = w / canvas:getWidth()
  local sy = h / canvas:getHeight()
  s = sx < sy and sx or sy
end
-- ###################################

-- _LOAD
function love.load(arg)
  love.resize(gfx.getDimensions())
  LoadIcon = gfx.newImage('assets/SPRITES/gsyellow.png')
  GridIcon = LoadIcon
end

-- _UPDATE timers, controls
function love.update(dt)
  -- gamestate clock
  TRON:increment(dt)

  -- loops
  gswhite:loop(dt)

  -- debugging
  if (debug) then print('STATE ' .. STATE.s, 'TRON ' .. TRON.state_timer) end
end

-- _DRAW
function love.draw()
  ---------------------
  gfx.setCanvas(canvas)
  gfx.clear()
  camera:set()
  ---------------------

  if (STATE.s == 0) then draw_boot() end
  if (STATE.s == 1 and debug) then draw_debug() end
  --gfx.translate(-30,-30)
  ------------------------
  gfx.setCanvas()
  gfx.draw(canvas,0,0,0,s)
  camera:unset()
  ------------------------
end

function draw_debug()
  --gfx.rectangle("fill", 0, 0, 320, 240)
  camera:move(-1,-1)
  for x=0,9 do
    _x = 0 + (x * 32)
    for y=0,6 do
      _y = 0 + (y * 32)
      --love.graphics.draw(GridIcon, _x, _y)
      gfx.draw(GridIcon, _x, _y)
    end
  end
end
