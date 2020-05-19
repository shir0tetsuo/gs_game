save = {}
save.filename = "game.sav"

function save:write(gdata)
  love.filesystem.write(save.filename, table.show(gdata, "gdata"))
end

function save:load()
  chunk = love.filesystem.load(save.filename)
  return chunk
end
