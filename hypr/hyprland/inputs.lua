hl.config({
  input = {
    kb_layout = "us",

    follow_mouse = 1,
    sensitivity = 0.25,

    scroll_method = "2fg",

  }
})

if machine ~= "desktop" then
  hl.config({
    input = {
      touchpad = {
        natural_scroll = true,
      },
    }
  })

  hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
  })
end
