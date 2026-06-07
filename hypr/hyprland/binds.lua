-------------------
--- KEYBINDINGS ---
-------------------

local mainMod = "ALT"
print("A")

------------
--- APPS ---
------------

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("youtube-music"))

print("B")

-------------------------
--- WINDOW MANAGEMENT ---
-------------------------

hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

print("C")

------------------------
--- POWER MANAGEMENT ---
------------------------

hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("hyprlock"))

if machine ~= "surface" then
  hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("kitty ~/.config/hypr/hyprland/power.sh"))
else
  hl.bind("XF86PowerOff", hl.dsp.exec_cmd("kitty ~/.config/hypr/hyprland/power.sh"))
end

print("D")

-------------------
--- SCREENSHOTS ---
-------------------

hl.bind("PRINT",hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("F10",hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("SHIFT + F10", hl.dsp.exec_cmd("hyprshot -m region"))

print("E")

---------------------------
--- WORSPACE MANAGEMENT ---
---------------------------

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

print("F")

-----------------------
--- MULTIMEDIA KEYS ---
-----------------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))

if machine ~= "desktop" then
  hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"))
  hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"))
end
print("t")
