--// Services
local UserInputService = game:GetService("UserInputService");

--// Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/lates-lib/main/Main.lua"))()
local Window = Library:CreateWindow({
	Title = "???",
	Theme = "Dark",
	
	Size = UDim2.fromOffset(570, 370),
	Transparency = 0.2,
	Blurring = true,
	MinimizeKeybind = Enum.KeyCode.LeftAlt,
})

local Themes = {
	Light = {
		--// Frames:
		Primary = Color3.fromRGB(232, 232, 232),
		Secondary = Color3.fromRGB(255, 255, 255),
		Component = Color3.fromRGB(245, 245, 245),
		Interactables = Color3.fromRGB(235, 235, 235),

		--// Text:
		Tab = Color3.fromRGB(50, 50, 50),
		Title = Color3.fromRGB(0, 0, 0),
		Description = Color3.fromRGB(100, 100, 100),

		--// Outlines:
		Shadow = Color3.fromRGB(255, 255, 255),
		Outline = Color3.fromRGB(210, 210, 210),

		--// Image:
		Icon = Color3.fromRGB(100, 100, 100),
	},
	
	Dark = {
		--// Frames:
		Primary = Color3.fromRGB(30, 30, 30),
		Secondary = Color3.fromRGB(35, 35, 35),
		Component = Color3.fromRGB(40, 40, 40),
		Interactables = Color3.fromRGB(45, 45, 45),

		--// Text:
		Tab = Color3.fromRGB(200, 200, 200),
		Title = Color3.fromRGB(240,240,240),
		Description = Color3.fromRGB(200,200,200),

		--// Outlines:
		Shadow = Color3.fromRGB(0, 0, 0),
		Outline = Color3.fromRGB(40, 40, 40),

		--// Image:
		Icon = Color3.fromRGB(220, 220, 220),
	},
	
	Void = {
		--// Frames:
		Primary = Color3.fromRGB(15, 15, 15),
		Secondary = Color3.fromRGB(20, 20, 20),
		Component = Color3.fromRGB(25, 25, 25),
		Interactables = Color3.fromRGB(30, 30, 30),

		--// Text:
		Tab = Color3.fromRGB(200, 200, 200),
		Title = Color3.fromRGB(240,240,240),
		Description = Color3.fromRGB(200,200,200),

		--// Outlines:
		Shadow = Color3.fromRGB(0, 0, 0),
		Outline = Color3.fromRGB(40, 40, 40),

		--// Image:
		Icon = Color3.fromRGB(220, 220, 220),
	},

}

--// Set the default theme
Window:SetTheme(Themes.Dark)

--// Sections
Window:AddTabSection({
	Name = "Main",
	Order = 1,
})

Window:AddTabSection({
	Name = "Settings",
	Order = 2,
})

--// Tab [MAIN]

local Main = Window:AddTab({
	Title = "Components",
	Section = "Main",
	Icon = "rbxassetid://11963373994"
})

Window:AddSection({ Name = "Non Interactable", Tab = Main }) 


Window:AddParagraph({
	Title = "Paragraph",
	Description = "Insert any important text here.",
	Tab = Main
}) 

Window:AddSection({ Name = "Interactable", Tab = Main }) 

Window:AddButton({
	Title = "Button",
	Description = "I wonder what this does",
	Tab = Main,
	Callback = function() 
		Window:Notify({
			Title = "hi",
			Description = "i'm a notification", 
			Duration = 5
		})
	end,
}) 

Window:AddSlider({
	Title = "Slider",
	Description = "Sliding",
	Tab = Main,
	MaxValue = 100,
	Callback = function(Amount) 
		warn(Amount);
	end,
}) 

Window:AddToggle({
	Title = "Toggle",
	Description = "Switching",
	Tab = Main,
	Callback = function(Boolean) 
		warn(Boolean);
	end,
}) 

Window:AddInput({
	Title = "Input",
	Description = "Typing",
	Tab = Main,
	Callback = function(Text) 
		warn(Text);
	end,
}) 


Window:AddDropdown({
	Title = "Dropdown",
	Description = "Selecting",
	Tab = Main,
	Options = {
		["An Option"] = "hi",
		["And another"] = "hi",
		["Another"] = "hi",
	},
	Callback = function(Number) 
		warn(Number);
	end,
}) 



--// Tab [SETTINGS]
local Keybind = nil
local Settings = Window:AddTab({
	Title = "Settings",
	Section = "Settings",
	Icon = "rbxassetid://11293977610",
})


Window:AddDropdown({
	Title = "Set Theme",
	Description = "Set the theme of the library!",
	Tab = Settings,
	Options = {
		["Light Mode"] = "Light",
		["Dark Mode"] = "Dark",
		["Extra Dark"] = "Void",
	},
	Callback = function(Theme) 
		Window:SetTheme(Themes[Theme])
	end,
}) 

Window:AddToggle({
	Title = "UI Blur",
	Description = "If enabled, must have your Roblox graphics set to 8+ for it to work",
	Default = true,
	Tab = Settings,
	Callback = function(Boolean) 
		Window:SetSetting("Blur", Boolean)
	end,
}) 


Window:AddSlider({
	Title = "UI Transparency",
	Description = "Set the transparency of the UI",
	Tab = Settings,
	AllowDecimals = true,
	MaxValue = 1,
	Callback = function(Amount) 
		Window:SetSetting("Transparency", Amount)
	end,
}) 

Window:Notify({
	Title = "Hello World!",
	Description = "Press Left Alt to Minimize and Open the tab!", 
	Duration = 10
})


      
       local Window = MakeWindow({
       

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=114210713601757",
       Size = {20, 20},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0),
                     Color3.fromRGB(0, 0, 0),
                     Color3.fromRGB(255,255,255)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Blox Fruits"})
     local Tab2o = MakeTab({Name = "Khác"})
     local Tab3o = MakeTab({Name = "99 ngày Trong rừng"})
     local Tab5o = MakeTab({Name = "Dead Rails"})
     
------- BUTTON

AddButton(Tab1o, {
     Name = "Blue X Hud",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })
    AddButton(Tab1o, {
     Name = "Tuấn Anh IOS",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/TuanAnhIOS/refs/heads/main/TuanAnhIOS.lua"))()
  end
  })
AddButton(Tab1o, {
     Name = "Rise-Evo",
    Callback = function()
	  getgenv().Team = "Pirates" --Marines, Pirates
loadstring(game:HttpGet('https://raw.githubusercontent.com/TrashLua/BloxFruits/main/loadder.lua'))()
  end
  })
    AddButton(Tab1o, {
     Name = "Huy Top PVP",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Huy-Top-PvP/refs/heads/main/PVP%20top"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Gravity Hud",
    Callback = function() 
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Huy Ply",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/huytong233-hue/Pls/refs/heads/main/Huyply"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Fix Lag",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TIKTOK-BOYCHOIGAME/PH-ICH-U/refs/heads/main/FIXLAGV2.BOYCHOIGAME"))()
  end
  })
  AddButton(Tab2o, {
     Name = "ESP and AM",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Hack/refs/heads/main/Huydepzai209"))()
  end
  })
AddButton(Tab2o, {
     Name = "God mod v1",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/miglels33/God-Mode-Script/refs/heads/main/GodModeScript.md"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Huy hitbox",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Hitboxgame/refs/heads/main/Hitboxgame"))()
  end
  })
  AddButton(Tab1o, {
     Name = "PvP Top",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Krovyn/KrovynHub/refs/heads/main/TOP_PVP"))()
  end
  })
AddButton(Tab2o, {
     Name = "God mod v2",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Rawbr10/Roblox-Scripts/refs/heads/main/God%20Mode%20Script%20Universal"))()
  end
  })
  AddButton(Tab1o, {
     Name = "PvP(key:tIljtIJltIjltjtiljtIltjitjft)",
    Callback = function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ParadozCode/CentuDox-Hub-Paradoz-Hub/refs/heads/main/CentuDox.xyz", true))()
  end
  })
AddButton(Tab2o, {
     Name = "Huy mod",
    Callback = function() 
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Huy-mod/refs/heads/main/Huy%20mod"))()     
  end
  })
AddButton(Tab2o, {
     Name = "Ambot",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Ace/main/Ace"))()
  end
  })

AddButton(Tab1o, {
     Name = "Tăng hitbox",
    Callback = function() 
        loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Quantumdz",
    Callback = function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Huy pvp",
    Callback = function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Pvp/refs/heads/main/Huypvp"))()
  end
  })
AddButton(Tab5o, {
     Name = "Null fire",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()
  end
  })
AddButton(Tab3o, {
     Name = "Foxname Hud",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
  end
  })
AddButton(Tab3o, {
     Name = "Voidware Hud",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
  end
  })
  AddButton(Tab1o, {
     Name = "Teddy Hud",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Zis chuối EEG",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisChuoiEng"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Apple cat hud",
    Callback = function() 
       getgenv().Team = "Marines"

loadstring(game:HttpGet("https://raw.githubusercontent.com/longdwieh/HoangLong-script/refs/heads/main/HoangLongHub.lua.txt"))()
  end
  })
  AddButton(Tab1o, {
     Name = "PvP aim chiêu",
    Callback = function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/onion132005-bit/Onion133/refs/heads/main/Script.lua"))()
  end
  })



