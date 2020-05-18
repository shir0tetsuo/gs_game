-- Language localization loader LLL expand as needed

langs = {"en_US", "fr_CA"}
en_US,fr_CA = 1,2

function compileStringDex(locality)

  StringDex = {}

  -- Set locality information
  StringDex.loc_num = locality or 1
  StringDex.locality = langs[StringDex.loc_num]

  -- Load Locality File
  StringDex.dex = require('assets.LOCAL.'..StringDex.locality)

  StringDex.ui = {}

  StringDex.ui.OK = {'OK', 'Comprime'}
  StringDex.ui.OK = StringDex.ui.OK[StringDex.loc_num]

  return StringDex
end
