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
  local dll = "gmsv_gmod_integration_loader_" .. os .. ".dll"
  local url = "https://github.com/gmod-integration/auto-loader/releases/latest/download/" .. dll

  print("Detected OS      : " .. os)
  print("Required DLL    : " .. dll)
  print("Download URL    : " .. url)
  print("Install path    : garrysmod/lua/bin/")
end

print("=================================================")
print(" ")
