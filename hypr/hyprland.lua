require("hyprland.localconfig")


-------------------
--- MY PROGRAMS ---
-------------------

terminal = "kitty"
fileManager = "dolphin"
menu = "wofi --show drun"
browser = "firefox"


-----------------
--- AUTOSTART ---
-----------------

hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar & hyprpaper & swaync")
  hl.exec_cmd("kwalletd5")

  if machine ~= "desktop" then
    hl.exec_cmd("hypridle")
  end
end
)


-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

hl.env("XCURSOR_SIZE","24")
hl.env("HYPRCURSOR_SIZE","24")


---------------------
--- LOOK AND FEEL ---
---------------------

require("hyprland.windows")


-------------
--- INPUT ---
-------------

require("hyprland.inputs")


-------------------
--- KEYBINDINGS ---
-------------------

require("hyprland.binds")






