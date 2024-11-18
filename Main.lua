local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local gameid = game.GameId
local placeid = game.PlaceId

local InfYield = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
local ESP = "https://kiriot22.com/releases/ESP.lua"
local darkdex = "https://gist.githubusercontent.com/dannythehacker/1781582ab545302f2b34afc4ec53e811/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"

local Window = Rayfield:CreateWindow({
   Name = "Daimys Script Hub",
   LoadingTitle = "Script hub",
   LoadingSubtitle = "by Daimy",
   Theme = "Default", -- https://docs.sirius.menu/rayfield/configuration/themes
 
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
      Note = "Key in discord",
      FileName = "DaimyKey",
      SaveKey = true, 
      GrabKeyFromSite = false,
      Key = {"test"} 
   }
})
 
local UniversalTab = Window:CreateTab("Universal", "anvil")
local TrollUnisec = UniversalTab:CreateSection("Trolling")

-- Create button for Infinite Yield
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


Rayfield:LoadConfiguration()
