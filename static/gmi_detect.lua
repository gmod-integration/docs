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

print(" ")
print("=================================================")
print(" Gmod Integration – Native Loader Detection")
print("=================================================")

if os == "unknown" then
  print("ERROR: Unknown OS detected, cannot determine DLL.")
else
  local dll_loader = "gmsv_gmod_integration_loader_" .. os .. ".dll"
  local dll_core = "gmsv_gmod_integration_" .. os .. ".dll"
  local url_loader = "https://github.com/gmod-integration/auto-loader/releases/latest/download/" .. dll_loader
  local url_core = "https://github.com/gmod-integration/auto-loader/releases/latest/download/" .. dll_core

  print("Detected OS      : " .. os)
  print("Required DLLs    :")
  print("  1. " .. dll_loader)
  print("     Download: " .. url_loader)
  print("  2. " .. dll_core)
  print("     Download: " .. url_core)
  print("Install path    : garrysmod/lua/bin/")
end

print("=================================================")
print(" ")
