local gfx = love.graphics

asset = {}

-- asset:sprite(array) -- where (array[1] == 'gswhite.png')
function asset:sprite(arr)
  for i=1,#arr do
    arr[i] = gfx.newImage('assets/SPRITES/' .. arr[i])
  end
  return arr
end
