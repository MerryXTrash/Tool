local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Tools For Building Script" .. Fluent.Version,
    SubTitle = "by x2Raphae1z",
    TabWidth = 120,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    I = Window:AddTab({ Title = "Command", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "ข้อความจาก x2Raphae1z",
        Content = "ขอบคุณที่ใช้น่ะ",
        SubContent = "เริ่มสร้างสคริปต์กันเลย!", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "ขอให้โชคดี Cheater ทั้งหลาย",
        Content = ""
    })



    Tabs.Main:AddButton({
        Title = "คัดลอก CFrame",
        Description = "Click",
        Callback = function()
            Window:Dialog({
                Title = "ตงลงรึป่าว",
                Content = "คัดลอก CFrame",
                Buttons = {
                    {
                        Title = "ตกลง",
                        Callback = function()
                            setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                        end
                    },
                    {
                        Title = "ยกเลิก",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.Main:AddButton({
        Title = "คัดลอก GamePlace.ID",
        Description = "Click",
        Callback = function()
            Window:Dialog({
                Title = "ตงลงรึป่าว",
                Content = "คัดลอกเลขไอดีเกม",
                Buttons = {
                    {
                        Title = "ตกลง",
                        Callback = function()
                            local gameId = game.PlaceId

setclipboard(tostring(gameId))
                        end
                    },
                    {
                        Title = "ยกเลิก",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.Main:AddButton({
        Title = "ใช้งาน RemoteSpy",
        Description = "Click",
        Callback = function()
            Window:Dialog({
                Title = "ตงลงรึป่าว",
                Content = "เปิด SimpleSpy",
                Buttons = {
                    {
                        Title = "ตกลง",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
                        end
                    },
                    {
                        Title = "ยกเลิก",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.Main:AddButton({
        Title = "กันโดนเตะตอนใช้Rspy",
        Description = "Click",
        Callback = function()
            Window:Dialog({
                Title = "ตงลงรึป่าว",
                Content = "กันแบน",
                Buttons = {
                    {
                        Title = "ตกลง",
                        Callback = function()
                            spawn(function()
for k,v in pairs(getgc(true)) do if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and (rawget(v,"indexInstance"))[1] == "kick" then v.tvk = {"kick",function() return game.Workspace:WaitForChild("") end} end end
end)
                        end
                    },
                    {
                        Title = "ยกเลิก",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    


    Tabs.A:AddButton({
        Title = "Command",
        Description = "Click",
        Callback = function()
            Window:Dialog({
                Title = "ตงลงรึป่าว",
                Content = "เปิดใช้งาน Darkdex/olddex/rspy/Fly/More Cheat",
                Buttons = {
                    {
                        Title = "ตกลง",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                        end
                    },
                    {
                        Title = "ยกเลิก",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })



    Tabs.A:AddParagraph({
        Title = "Command guide",
        Content = ";dex ;rspy ;oldex ;fly ;tpwalk ;noclip"
    })
    
    
    
    local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.Main:AddColorpicker("TransparencyColorpicker", {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    })

    TColorpicker:OnChanged(function()
        print(
            "TColorpicker changed:", TColorpicker.Value,
            "Transparency:", TColorpicker.Transparency
        )
    end)



    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)
end


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
