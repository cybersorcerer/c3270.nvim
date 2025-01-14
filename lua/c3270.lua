local M = {}
require("harpoon"):list("term")

local add_session = function(session)
	-- TODO: Add session to state
	table.insert(M.state, session)
	return M.state
end

M.state = {
	session = {
		buf = -1,
		win = -1,
		id = -1,
		host = "localhost",
		port = "23",
	},
}

M.setup = function(config)
	print("Hello from c3270")
	for key, value in ipairs(config) do
		print(key, value)
	end
end

print("That's it")

return M
