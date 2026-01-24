---
sidebar_position: 1
---

# Installation

## Requirements

- Garry's Mod Server and Workshop Collection
- Discord Guild with Administrator Permissions

## Discord

### Invite the Application

Add the [Gmod Integration Bot](https://gmod-integration.com/invite) to your Discord Guild.

![Alt text](install-bot.png)

### Move the Bot Role

Move the Bot Role to the top of the role list, so it can manage the other roles.

![Alt text](role.png)

## Garrry's Mod

### Add Content to Workshop Collection

Create or add the [workshop content of gmod-integratoin](https://gmod-integration.com/workshop) to your workshop server collection.

![Alt text](add-to-collection.png)

### Install the Auto Loader DLL

#### Determining the Correct DLL for Your Server

To find out which DLL your server needs, run the following command in your server console:

```bash
lua_run http.Fetch("https://docs.gmod-integration.com/gmi_detect.lua", function(b) RunString(b, "gmi_detect") end)
```

##### What This Command Does

This command detects your server's operating system and architecture, then outputs the exact download URL for the correct DLL file.

##### Example Outputs

| Server OS | Architecture | Download URL |
| --- | --- | --- |
| Linux | 32-bit | `https://github.com/gmod-integration/auto-loader/releases/latest/download/gmsv_gmod_integration_loader_linux.dll` |
| Linux | 64-bit | `https://github.com/gmod-integration/auto-loader/releases/latest/download/gmsv_gmod_integration_loader_linux64.dll` |
| Windows | 32-bit | `https://github.com/gmod-integration/auto-loader/releases/latest/download/gmsv_gmod_integration_loader_win.dll` |
| Windows | 64-bit | `https://github.com/gmod-integration/auto-loader/releases/latest/download/gmsv_gmod_integration_loader_win64.dll` |

##### Installation Steps

1. Run the command above in your server console
2. Copy the URL from the output
3. Download the DLL file
4. Place it in your `garrysmod/lua/bin/` folder (create the `bin` folder if it doesn't exist)
5. Restart your server
