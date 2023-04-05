local win = hs.window.focusedWindow()
if not win then return end

local winFrame = win:frame()
local rightNeighbor = nil
local minDistance = math.huge

hs.fnutils.each(hs.window.visibleWindows(), function(candidate)
    if candidate:isStandard() and candidate:application() ~= win:application() then
        local candidateFrame = candidate:frame()
        if candidateFrame.x > winFrame.x + winFrame.w * 0.5 and candidateFrame.y + candidateFrame.h > winFrame.y and candidateFrame.y < winFrame.y + winFrame.h then
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
