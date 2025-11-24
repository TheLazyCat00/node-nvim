# Small plugin for node functionality (for fast selections)

## Installation
lazy.nvim

```lua
{
	"TheLazyCat00/node-nvim",
	keyms = {
		--- You can use any key, here i'm using m
		{ "m", function() require("node-nvim").getCurrentNode() end, desc = "Node under cursor", mode = "o" },
		{ "m", function() require("node-nvim").getCurrentNodeVisual() end, desc = "Node under cursor", mode = "x" },
	}
}
```
