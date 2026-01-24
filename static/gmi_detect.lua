-- gmi_detect_and_print_dll.lua

if game.SinglePlayer() then
  print("Gmod Integration is not supported in Singleplayer!")
  return
end

local function detectOS()
  if system.IsWindows() then
    return "win" .. (jit and jit.arch == "x64" and "64" or "")
  elseif system.IsLinux() then
    return "linux" .. (jit and jit.arch == "x64" and "64" or "")
  else
    return "unknown"
  end
end

local os = detectOS()


print("\n\27[36m==============================================================\27[0m")
print("\27[1;36m   Gmod Integration – Native Loader Detection & Instructions   \27[0m")
print("\27[36m==============================================================\27[0m")
print("\27[2mDocumentation: https://docs.gmod-integration.com/getting-started/installation\27[0m")
print("\27[36m--------------------------------------------------------------\27[0m\n")

if os == "unknown" then
  print("\27[31m[ERROR]\27[0m Unknown OS detected, cannot determine DLL.")
else
  local dll_loader = "gmsv_gmod_integration_loader_" .. os .. ".dll"
  local dll_core = "gmsv_gmod_integration_" .. os .. ".dll"
  local url_loader = "https://github.com/gmod-integration/auto-loader/releases/latest/download/" .. dll_loader
  local url_core = "https://github.com/gmod-integration/auto-loader/releases/latest/download/" .. dll_core

  print("\27[32m[INFO]\27[0m Detected OS: \27[1m" .. os .. "\27[0m\n")
  print("\27[1mYou need to download and install the following DLLs:\27[0m\n")
  print("  1. " .. dll_loader)
  print("     → " .. url_loader)
  print("  2. " .. dll_core)
  print("     → " .. url_core .. "\n")
  print("\27[33m[IMPORTANT]\27[0m Place both DLLs in: \27[4mgarrysmod/lua/bin/\27[0m\n")
  print("\27[2mIf the 'bin' folder does not exist, create it manually.\27[0m\n")
  print("\27[36m--------------------------------------------------------------\27[0m")
  print("For full documentation and troubleshooting, visit:")
  print("  https://docs.gmod-integration.com/getting-started/installation\n")
end

print("\27[36m==============================================================\27[0m\n")
