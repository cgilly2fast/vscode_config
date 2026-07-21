local minimizedWindows = {}

local function removeWindow(window)
  local id = window:id()

  for index = #minimizedWindows, 1, -1 do
    if minimizedWindows[index]:id() == id then
      table.remove(minimizedWindows, index)
    end
  end
end

minimizedWindowFilter = hs.window.filter.new(true)

minimizedWindowFilter:subscribe(
  {
    hs.window.filter.windowMinimized,
    hs.window.filter.windowUnminimized,
    hs.window.filter.windowDestroyed,
  },
  function(window, _, event)
    removeWindow(window)

    if event == hs.window.filter.windowMinimized then
      table.insert(minimizedWindows, window)
    end
  end
)

restoreMinimizedHotkey = hs.hotkey.bind({ "cmd", "alt" }, "m", function()
  local currentApp = hs.application.frontmostApplication()

  if not currentApp then
    return
  end

  for index, window in ipairs(minimizedWindows) do
    local windowApp = window:application()

    if windowApp
      and windowApp:pid() == currentApp:pid()
      and window:isMinimized()
    then
      table.remove(minimizedWindows, index)
      window:unminimize()
      window:focus()
      return
    end
  end

  for _, window in ipairs(hs.window.allWindows()) do
    local windowApp = window:application()

    if windowApp
      and windowApp:pid() == currentApp:pid()
      and window:isMinimized()
    then
      window:unminimize()
      window:focus()
      return
    end
  end
end)
