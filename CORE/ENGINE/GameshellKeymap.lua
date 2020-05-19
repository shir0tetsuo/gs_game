function MapKeys()
  --https://github.com/Skayo/Gameshell-Love2D-Template/blob/master/lib/keys.lua
  keys = {}

  -- A, B, X, Y
  keys.Y = 'i'
  keys.X = 'u'
  keys.A = 'j'
  keys.B = 'k'

  -- D-Pad
  keys.DPad_up =		'up'
  keys.DPad_down =	'down'
  keys.DPad_right =	'right'
  keys.DPad_left =	'left'

  -- Special Keys
  keys.Start =		'return'
  keys.Select =		'space'
  keys.Volume_down =	'kp-'
  keys.Volume_up =	'kp+'

  -- Menu
  keys.Menu = 'escape'

  -- Lightkey
  keys.LK1 = 'h'
  keys.LK2 = 'y'
  --keys.LK3 = keys.lk3 = ''  <-- Not usable, is shift
  keys.LK4 = 'o'
  keys.LK5 = 'l'
  keys.LK1_shift = 'home'
  keys.LK2_shift = 'pageup'
  --keys.LK3_shift = lk3_shift = ''  <-- Still not usable...
  keys.LK4_shift = 'pagedown'
  keys.LK5_shift = 'end'

  return keys
end
