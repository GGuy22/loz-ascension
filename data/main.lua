-- This is the main Lua script of your project.
-- You will probably make a title screen and then start a game.
-- See the Lua API! http://www.solarus-games.org/solarus/documentation/

-- This is just an example of quest that shows the Solarus logo
-- and then does nothing.
-- Feel free to change this!

local game_manager = require("scripts/game_manager")

function sol.main:on_started()
  -- This function is called when Solarus starts.
--  print("This is a sample quest for Solarus.")

  sol.video.set_window_size(1280, 720)

  -- Setting a language is useful to display text and dialogs.
  sol.language.set_language("en")

--  local solarus_logo = require("menus/solarus_logo")

  -- Show the Solarus logo initially.
--  sol.menu.start(self, solarus_logo)
--  solarus_logo.on_finished = function()
    -- Do whatever you want next, like showing your title screen
    -- or starting a game.
    local game = game_manager:create("save1.dat")
    game:start()
  end