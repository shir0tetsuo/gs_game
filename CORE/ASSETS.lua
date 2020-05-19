local gfx = love.graphics

gfx.setDefaultFilter("nearest", "nearest")

-- AssetHandler ----------------------------------------------------------------
shells = asset:spriteCluster({'shell_set.png'}) -- array[sprite]

gsred = asset:slice_sheet(shells[1],32,32,6)
gsyellow = asset:slice_sheet(shells[1],32,32,3)
gswhite = asset:slice_sheet(shells[1],32,32,0)

-- newAnimation(gfx.newImage('asset/SPRITES/spritesheet.png'), _WIDTH, _HEIGHT, duration)
shell_anim = newAnimation(gfx.newImage('assets/SPRITES/shell_set.png'), 32, 32, 2)
-- Font ------------------------------------------------------------------------
-- The FontStruction “Pixel UniCode” (https://fontstruct.com/fontstructions/show/908795)
-- by “ivancr72” is licensed under a Creative Commons Attribution license
-- (http://creativecommons.org/licenses/by/3.0/)
Fonts = {}
Fonts.main = gfx.newFont("assets/FONT/Pixel UniCode.ttf", 16)
Fonts.jp = gfx.newFont("assets/FONT/JPfallback.ttf", 16)
