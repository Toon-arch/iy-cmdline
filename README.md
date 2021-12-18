<h1 align="center">Infinite Yield Command Line</h2>
<p align="center">Infinite Yield except it also has a command line</p>

## Script
```lua
local reqenv = function() return (getgenv() or _G) end
reqenv()["_NewPrefix"] = "'" -- change to the prefix you want
loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/Toon-arch/iy-cmdline/main/source.lua")))();
```

### Images
<img src="https://github.com/Toon-arch/iy-cmdline/blob/main/images/1.png" alt="Command Line Preview">
<img src="https://github.com/Toon-arch/iy-cmdline/blob/main/images/2.png" alt="Command Line Preview">
