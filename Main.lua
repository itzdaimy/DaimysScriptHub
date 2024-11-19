local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local gameid = game.GameId
local placeid = game.PlaceId

-- universal scripts

local InfYield = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/infyield.lua"
local ESP = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/ESP.lua"
local darkdex = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/darkdexv4.lua"

-- blade ball scripts

local bedolhub = "https://raw.githubusercontent.com/itzdaimy/DaimysScriptHub/refs/heads/main/scripts/bladeball/bedolhub.lua"

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
      GrabKeyFromSite = false,
      Key = {"test"} 
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


Rayfield:LoadConfiguration()
