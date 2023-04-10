function moveFocusToWindow(direction)
  if direction == "left" then
    local win = hs.window.focusedWindow()
    if not win then return end

    local winFrame = win:frame()
    local leftNeighbor = nil
    local minDistance = math.huge

    hs.fnutils.each(hs.window.visibleWindows(), function(candidate)
      if candidate:isStandard() and candidate:application() ~= win:application() then
        local candidateFrame = candidate:frame()
        if candidateFrame.x + candidateFrame.w * 0.5 < winFrame.x and candidateFrame.y + candidateFrame.h > winFrame.y
            and candidateFrame.y < winFrame.y + winFrame.h then
          local distance = winFrame.x - (candidateFrame.x + candidateFrame.w)
          if distance < minDistance then
            minDistance = distance
            leftNeighbor = candidate
          end
        end
      end
    end)

    if leftNeighbor then
      leftNeighbor:focus()
    end
  end

  if direction == "right" then
    local win = hs.window.focusedWindow()
    if not win then return end

    local winFrame = win:frame()
    local rightNeighbor = nil
    local minDistance = math.huge

    hs.fnutils.each(hs.window.visibleWindows(), function(candidate)
      if candidate:isStandard() and candidate:application() ~= win:application() then
        local candidateFrame = candidate:frame()
        if candidateFrame.x > winFrame.x + winFrame.w * 0.5 and candidateFrame.y + candidateFrame.h > winFrame.y and
            candidateFrame.y < winFrame.y + winFrame.h then
          local distance = candidateFrame.x - (winFrame.x + winFrame.w)
          if distance < minDistance then
            minDistance = distance
            rightNeighbor = candidate
          end
        end
      end
    end)

    if rightNeighbor then
      rightNeighbor:focus()
    end
  end
end
