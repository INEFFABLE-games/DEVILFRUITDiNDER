while wait(1) do
if(game:GetService("Workspace").Env.Settings:FindFirstChild("Folder") ~= nil) then
for i,v in pairs(game:GetService("Workspace").Env.Settings.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Folder.Model:GetChildren()) do
    
if(v.ClassName == "Part") then
    for x,z in pairs(v:GetChildren()) do
                
            if(z.Name ~= "Part1Weld" and z.ClassName == "Weld" and z:FindFirstChild("Attechment") == nil) then
                print(z.Name)
                print("NEW ghsrhsdrjhsdrhsdrh")
                local beam = Instance.new("Beam")
           
                beam.Texture = "http://www.roblox.com/asset/?id=5320461870"
                beam.Color = ColorSequence.new(Color3.new(115, 0, 255))
                beam.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                local att0 = Instance.new("Attachment")
                att0.Name = "Attachment"
                att0.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                local att1 = Instance.new("Attachment")
                att1.Parent = v
                att1.Name = "Attachment"
                
                beam.Attachment0 = att0
                beam.Attachment1 = att1

                
				local sound = Instance.new("Sound")
				sound.Parent = game:GetService("Players").LocalPlayer.Character
				sound.SoundId = "rbxassetid://2174857058"
                sound.Volume = 1
				sound:Play()


                local finded = Instance.new("BoolValue")
                finded.Parent = game:GetService("Players").LocalPlayer.Character
                finded.Name = "Finded"
                finded.Value = true
            
                break
            
            end

    end
end
end
end
end