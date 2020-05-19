-- Configuration

function love.conf(t)
  t.title = "GS Test"
  t.version = "11.3"
  t.window.width = 320
  t.window.height = 240
  t.window.resizable = true

  t.modules.audio = true              -- Enable the audio module (boolean)
	t.modules.data = true               -- Enable the data module (boolean)
	t.modules.event = true              -- Enable the event module (boolean)
	t.modules.font = true               -- Enable the font module (boolean)
	t.modules.graphics = true           -- Enable the graphics module (boolean)
	t.modules.image = true              -- Enable the image module (boolean)
	t.modules.joystick = false          -- Enable the joystick module (boolean)
	t.modules.keyboard = true           -- Enable the keyboard module (boolean)
	t.modules.math = true               -- Enable the math module (boolean)
	t.modules.mouse = true              -- Enable the mouse module (boolean)
	t.modules.physics = true            -- Enable the physics module (boolean)
	t.modules.sound = true              -- Enable the sound module (boolean)
	t.modules.system = true             -- Enable the system module (boolean)
	t.modules.thread = true             -- Enable the thread module (boolean)
	t.modules.timer = true              -- Enable the timer module (boolean), Disabling it will result 0 delta time in love.update
	t.modules.touch = false              -- Enable the touch module (boolean)
	t.modules.video = true              -- Enable the video module (boolean)
	t.modules.window = true             -- Enable the window module (boolean)

	t.window.borderless = true         -- Make window borderless so when running the game on desktop while developing, it feels like you are on the gameshell
	t.accelerometerjoystick = false     -- false, because Gameshell doesn't have a accelerometer

  t.console = true
end
