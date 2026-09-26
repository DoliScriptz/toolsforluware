if shared_info.Game ~= "Murder Mystery 2" then
    return
end

local tab = shared_info.AddTab("Example Plugin", "sparkles")
local group = shared_info.AddGroupbox(tab, "All Elements", "Left")

shared_info.AddLabel(group, "Example plugin loaded!")

local toggle = shared_info.AddToggle(group, "Example Toggle", {
    Default = false,
    Callback = function(value)
        shared_info.Notify("Toggle: " .. tostring(value), 2)
    end,
})

shared_info.AddButton(group, "Example Button", {
    Callback = function()
        shared_info.Notify("Button clicked!", 2)
        toggle:SetValue(not toggle:GetValue())
    end,
})

local slider = shared_info.AddSlider(group, "Example Slider", {
    Default = 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = "%",
    Callback = function(value)
        print("Slider changed:", value)
    end,
})

local input = shared_info.AddInput(group, "Example Input", {
    Default = "LuWare",
    Placeholder = "Type something...",
    Callback = function(value)
        print("Input changed:", value)
    end,
})

local keybind = shared_info.AddKeybind(group, "Example Keybind", {
    Default = "P",
    Mode = "Press",
    Callback = function(value)
        print("Keybind changed:", value)
    end,
})

local colorpicker = shared_info.AddColorpicker(group, "Example Color", {
    Default = Color3.fromRGB(110, 80, 255),
    Callback = function(color)
        print("Color changed:", color)
    end,
})

shared_info.AddButton(group, "Test SetValue", {
    Callback = function()
        toggle:SetValue(true)
        slider:SetValue(75)
        input:SetValue("Hello from LuWare")
        colorpicker:SetValue(Color3.fromRGB(255, 80, 80))
        keybind:SetValue("K")

        shared_info.Notify("All values updated!", 3)
    end,
})

shared_info.Notify("Example plugin loaded successfully!", 5)
