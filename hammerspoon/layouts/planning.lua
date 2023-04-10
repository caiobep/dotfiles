local fantastical = hs.application.get("Fantastical")
local things3 = hs.application.get("Things")
local screen = hs.screen.mainScreen():frame()
local fantasticalFrame = hs.geometry.rect(screen.w / 2, screen.y, screen.w / 2, screen.h)
local things3Frame = hs.geometry.rect(screen.x, screen.y, screen.w / 2, screen.h)

-- Launch or focus the applications and move them to the designated space
hs.application.launchOrFocus("Fantastical")
if not fantastical then
  fantastical = hs.application.get("Fantastical")
end
fantastical:moveToScreen(screen)
fantastical:move(fantasticalFrame)

hs.application.launchOrFocus("Things")
if not things3 then
  things3 = hs.application.get("Things")
end
things3:moveToScreen(screen)
things3:move(things3Frame)
