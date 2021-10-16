<h1 align="center">Infinite Yield Command Line</h2>
<p align="center">Infinite Yield except it also has a command line</p>

## Script
```lua
local reqenv = function() return (getgenv() or _G) end
reqenv()["_NewPrefix"] = "'" -- change to the prefix you want
loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/Toon-arch/iy-cmdline/main/source.lua")))();
```
