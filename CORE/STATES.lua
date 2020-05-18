STATE = {}
STATE.s = 0

function STATE:shift(absolute)
  self.s = math.floor(absolute)
  TRON:reset() -- reset state timer
  print("STATECHANGE ", STATE.s)
end
