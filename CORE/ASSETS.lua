local gfx = love.graphics

--useful for SETS of icons.. load array of images to RAM

-- SHELLS
shells = asset:sprite({'shell_set.png'})
gsred = asset:slice_sheet(shells[1],32,32,6)

shell_anim = newAnimation(gfx.newImage('assets/SPRITES/shell_set.png'), 32, 32, 2)
