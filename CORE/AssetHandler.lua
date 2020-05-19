local gfx = love.graphics

asset = {}

-- asset:sprite(array) -- where (array[1] == 'gswhite.png')
function asset:spriteCluster(arr)
  for i=1,#arr do
    arr[i] = gfx.newImage('assets/SPRITES/' .. arr[i])
  end
  return arr
end

function asset:slice_sheet(asset,_w,_h,pos)
  _pos = 0 + (pos*_w)
  return gfx.newQuad(_pos,0,_w,_h,asset:getWidth(),asset:getHeight())
end

-- Looping animation modules;
-- LOAD
-- ASSETS.lua >> gswhite = newAnimation(gfx.newImage('assets/SPRITES/gswhite_anim.png'), 32, 32, 1)
-- UPDATE
-- MAIN.lua, love.update() >> gswhite:loop(dt)
-- DRAW
-- love.graphics.draw(gswhite.spriteSheet, gswhite.quads[(math.floor(gswhite.currentTime / gswhite.duration * #gswhite.quads) + 1)], 0, 0, 0, 1)

function newAnimation(image, width, height, duration)
    local animation = {}

    --animation:loop(dt)
    function animation:loop(dt)
      self.currentTime = self.currentTime + dt
      if self.currentTime >= self.duration then
        self.currentTime = self.currentTime - self.duration
      end
    end

    animation.spriteSheet = image;
    animation.quads = {};

    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end

    animation.duration = duration or 1
    animation.currentTime = 0

    return animation
end
