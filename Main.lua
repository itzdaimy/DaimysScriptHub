local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local gameid = game.GameId
local placeid = game.PlaceId

-- universal scripts

local rinnshub = "https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"
local InfYield = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/infyield.lua"
local ESP = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/ESP.lua"
local darkdex = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/darkdexv4.lua"

-- blade ball scripts
local bladeballid = 13772394625
local bedolhub = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/bladeball/bedolhub.lua"

-- arsenal scripts
local arsenalid = 286090429
local tbaohub = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/arsenal/tbaohub.lua"

-- pets go scripts 
local petsgoid = 18901165922
local zaphub = "https://zaphub.xyz/Exec"

-- mvsd scripts 
local freakbobmvsd = "https://raw.githubusercontent.com/BeanBotWare/FreakBob/refs/heads/main/FreakBob"

local Window = Rayfield:CreateWindow({
   Name = "Daimys Script Hub",
   LoadingTitle = "Script hub",
   LoadingSubtitle = "by Daimy",
   Theme = "Default",
 
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "scripthubdaimy",
      FileName = "Daimy"
    },
 
   Discord = {
      Enabled = true, 
      Invite = "2hBFu2jkM7", 
      RememberJoins = true
   },

   KeySystem = true, 
   KeySettings = {
      Title = "Daimys script hub",
      Subtitle = "Key System",
      Note = "Key is found in the discord. No ads or links :)",
      FileName = "DaimyKey",
      SaveKey = true, 
      GrabKeyFromSite = true,
      Key = {"https://beamleaks.site/script_key.txt"} 
   }
})
 
local UniversalTab = Window:CreateTab("Universal", "anvil")
local TrollUnisec = UniversalTab:CreateSection("Trolling")

local Button = UniversalTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet(InfYield, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "Infinite Yield loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})

local Button = UniversalTab:CreateButton({
   Name = "ESP",
   Callback = function()
      loadstring(game:HttpGet(ESP, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "ESP loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})

local Button = UniversalTab:CreateButton({
   Name = "DARK DEX (v4)",
   Callback = function()
      loadstring(game:HttpGet(darkdex, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "DDv4 loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})

local Button = UniversalTab:CreateButton({
   Name = "Copy Game (not always suported)",
   Callback = function()
      saveinstance()
      Rayfield:Notify({
         Title = "Started..",
         Content = "Started the process (not always supported)",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})

-- blade ball
if gameid and placeid == 13772394625 then 
   local BladeballTab = Window:CreateTab("Blade Ball", "gamepad")
   local Button = BladeballTab:CreateButton({
   Name = "Bedol Hub",
   Callback = function()
      loadstring(game:HttpGet(bedolhub, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "Bedol Hub loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})
end

-- arsenal
if gameid and placeid == 286090429 then 
   local ArsenalTab = Window:CreateTab("Arsenal", "gamepad")
   local Button = ArsenalTab:CreateButton({
   Name = "Tbao Hub",
   Callback = function()
      loadstring(game:HttpGet(tbaohub, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "Tbao Hub Error!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})
end

-- pets go
if gameid and placeid == 18901165922 then 
    print("✅  |  pets go")
   local ArsenalTab = Window:CreateTab("Pets Go", "gamepad")
   local Button = ArsenalTab:CreateButton({
   Name = "Zap Hub",
   Callback = function()
      loadstring(game:HttpGet(zaphub, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "Zap Hub loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})
end

-- murder vs sherrif duels
if gameid and placeid == 12355337193 then 
   local MvdTab = Window:CreateTab("Murderers VS Sheriffs Duels", "gamepad")
   local Freakbob = MvdTab:CreateButton({
   Name = "Freakbob",
   Callback = function()
      loadstring(game:HttpGet(freakbobmvsd, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "Freakbob loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
   })
   local Rinnshub = MvdTab:CreateButton({
   Name = "Rinns Hub",
   Callback = function()
      loadstring(game:HttpGet(rinnshub, true))()
      Rayfield:Notify({
         Title = "Script Executed",
         Content = "Rinns Hub loaded!",
         Duration = 6.5,
         Image = 4483362458,
         Actions = {
            Ignore = { 
               Name = "Okay!",
               Callback = function()
                  print("Close Notification")
               end
            }
         }
      })
   end
})
end

Rayfield:LoadConfiguration()
