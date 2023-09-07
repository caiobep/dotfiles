-- local hs = require('hs')
local prefferedIdes = {
  'IntelliJ IDEA',
  'Webstorm',
  'IDEA',
  'Intelij',
  'Xcode',
  'Code',
  'PhpStorm',
  'RubyMine',
  'PyCharm',
  'AppCode',
  'CLion',
  'GoLand',
  'DataGrip',
  'Rider'
};

local function activateAppByName(appName)
  local app = hs.application.find(appName);
  if app ~= nil and not app:isFrontmost() then
    app:activate();
    return true
  end
  return false
end

local function findIndexInArray(array, value)
  for index, arrayValue in ipairs(array) do
    if string.find(string.lower(value), string.lower(arrayValue)) then
      return index
    end
  end
  return -1
end

local function lookForNextAvailableApp(activeAppIndex)
  for nextPreferredIde = activeAppIndex + 1, #prefferedIdes do
    local isNextPreferredIdeActive = hs.application.find(prefferedIdes[nextPreferredIde])
    if isNextPreferredIdeActive ~= nil then
      return nextPreferredIde
    end
  end

  return 1
end

local function main()
  local activeApps = hs.application.runningApplications()
  local activeApp = hs.application.frontmostApplication():name()
  local activeAppIndex = findIndexInArray(prefferedIdes, activeApp)


  if activeAppIndex == -1 then
    return activateAppByName(prefferedIdes[1])
  end


  local indexOfNextPreferedIde = lookForNextAvailableApp(activeAppIndex)
  hs.application.frontmostApplication():hide()
  activateAppByName(prefferedIdes[indexOfNextPreferedIde])
end

main()
