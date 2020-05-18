TRON = {}

TRON.state_timer = 0

function TRON:reset()
  self.state_timer = 0
end

function TRON:increment(dt)
  self.state_timer = self.state_timer + dt
end
