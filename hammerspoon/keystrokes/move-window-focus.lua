function findNeighbor(direction)
  local win = hs.window.focusedWindow()
  if not win then return nil end

  local winFrame = win:frame()
  local neighbor = nil
  local minDistance = math.huge

  hs.fnutils.each(hs.window.visibleWindows(), function(candidate)
    if candidate:isStandard() and candidate:application() ~= win:application() then
      local candidateFrame = candidate:frame()
      local validCandidate = false
      local distance = 0

      if direction == "left" and candidateFrame.x + candidateFrame.w * 0.5 < winFrame.x then
        validCandidate = candidateFrame.y + candidateFrame.h > winFrame.y and candidateFrame.y < winFrame.y + winFrame.h
        distance = winFrame.x - (candidateFrame.x + candidateFrame.w)
      elseif direction == "right" and candidateFrame.x > winFrame.x + winFrame.w * 0.5 then
        validCandidate = candidateFrame.y + candidateFrame.h > winFrame.y and candidateFrame.y < winFrame.y + winFrame.h
        distance = candidateFrame.x - (winFrame.x + winFrame.w)
      end

      if validCandidate and distance < minDistance then
        minDistance = distance
        neighbor = candidate
      end
    end
  end)

  return neighbor
end

function moveFocusToWindow(direction)
  local neighbor = findNeighbor(direction)
  if neighbor then
    neighbor:focus()
  end
end
