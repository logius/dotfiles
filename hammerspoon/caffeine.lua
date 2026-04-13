caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
  if state then
    caffeine:setTitle("😳")
  else
    caffeine:setTitle("😵")
  end
end

function caffeineClicked()
  setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
  caffeine:setClickCallback(caffeineClicked)
  hs.caffeinate.set("displayIdle", true, true)
  setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
