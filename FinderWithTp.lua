local plr = game:GetService("Players").LocalPlayer
local tweening = false
--local uis = game:GetService("UserInputService")
plr.Character.FallDamage.Disabled = true

--uis.InputBegan:Connect(function(key)
--if(key.KeyCode == Enum.KeyCode.L) then print("Ended") script:Destroy() end
--end)

local Positions = {

Vector3.new(1056, 8, 1205),
Vector3.new(770, 9, 1360),
Vector3.new(939, 9, 1065),
Vector3.new(819, 45, 1498),
Vector3.new(1068, 59, 1398),

Vector3.new(-1388, 10, 1199),
Vector3.new(-1554, 74, 1204),
Vector3.new(-1590, 77, 1058),

Vector3.new(-6695, 35, 1869),
Vector3.new(-6732, 77, 1994),
Vector3.new(-6738, 77, 2155),
Vector3.new(-6416, 93, 2155),
Vector3.new(-6499, 106, 1869),
Vector3.new(-6529, 207, 2001),

Vector3.new(-4432, 7, -2462),
Vector3.new(-4556, 7, -2282),
Vector3.new(-4732, 6, -2436),
Vector3.new(-4787, 7, -2149),
Vector3.new(-4946, 6, -2325),
Vector3.new(-5139, 7, -2272),
Vector3.new(-5073, 6, -2460),
Vector3.new(-5233, 6, -2554),
Vector3.new(-5025, 7, -2632),
Vector3.new(-5114, 6, -2845),
Vector3.new(-4937, 6, -2806),
Vector3.new(-4834, 6, -2912),
Vector3.new(-4745, 7, -2723),
Vector3.new(-4583, 6, -2802),
Vector3.new(-4771, 90, -2626),
Vector3.new(-4936, 90, -2608),
Vector3.new(-4807, 90, -2455),

Vector3.new(2895.29712, 18.7515125, -990.523682),

Vector3.new(5420.51172, 15.6857033, -4905.62793),
Vector3.new(5480.33984, 91.6856003, -4949.04248),
Vector3.new(5642.95508, 126.685577, -4922.67139),
Vector3.new(5448.88574, 154.685547, -5082.07324),
Vector3.new(5343.47168, 154.685226, -5165.46143),
Vector3.new(5429.26709, 74.6856613, -5251.0249),
Vector3.new(5683.66357, 96.6856003, -5024.58691),

Vector3.new(-549.651428, 42.6233139, -4478.61084),
Vector3.new(-348.643494, 34.7474556, -4450.5874),
Vector3.new(-713.379028, 11.2474632, -4482.29834),
Vector3.new(-853.179138, 61.5010262, -4566.05518),
Vector3.new(-882.216614, 53.5082169, -4786.55127),
Vector3.new(-881.869019, 79.7474136, -4914.09766),
Vector3.new(-717.575378, 67.5473328, -5103.17432),
Vector3.new(-529.243652, 35.2474594, -5224.94336),
Vector3.new(-450.842438, 80.3018951, -5117.41797),
Vector3.new(-273.561127, 80.0473175, -5106.14795),
Vector3.new(-236.247833, 48.6472855, -4835.36475),
Vector3.new(-359.277435, 125.247391, -4781.99658),
Vector3.new(-358.800842, 148.447388, -4625.91309),
Vector3.new(-297.952393, 183.24234, -4710.67334),
Vector3.new(-575.021423, 108.747406, -4640.02197),
Vector3.new(-735.470337, 108.747406, -4695.78271),
Vector3.new(-741.977905, 108.747406, -4901.20752),
Vector3.new(-536.232849, 109.747414, -5051.95215),
Vector3.new(-588.482422, 177.747391, -4915.24023),
Vector3.new(-417.493164, 177.891068, -4851.37305),

Vector3.new(2207.03174, 413.044006, -8627.79395),

Vector3.new(-2219.24927, 7.15396118, -7698.97314),
Vector3.new(-2325.05029, 7.15396118, -7898.7041),
Vector3.new(-2283.4397, 7.15396214, -8114.33057),
Vector3.new(-2051.75195, 7.15396214, -8254.91504),
Vector3.new(-1823.05591, 7.15396118, -8193.08008),
Vector3.new(-1701.41504, 7.15396118, -7963.26074),
Vector3.new(-1794.41125, 7.15396118, -7709.03125),
Vector3.new(-2007.03711, 7.15396118, -7630.85986),

Vector3.new(-6540.16504, 42.4655609, -9967.11328),
Vector3.new(-6584.62646, 43.671051, -10242.7773),
Vector3.new(-6497.34961, 42.4655533, -10389.0176),
Vector3.new(-6305.39014, 42.4655647, -10414.0996),
Vector3.new(-6074.79785, 42.4604263, -10288.4639),
Vector3.new(-6080.97607, 42.4655533, -10025.1445),
Vector3.new(-6256.06152, 42.4655533, -9901.51074),
Vector3.new(-6271.78662, 42.4655533, -10084.9912),
Vector3.new(-6286.10254, 42.4655533, -10249.0508),
Vector3.new(-6435.67334, 42.6749458, -10145.8516),

Vector3.new(250.770447, 22.2988777, -12987.998),
Vector3.new(229.745132, 19.2988739, -13261.5488),
Vector3.new(288.401031, 12.6087723, -13495.6455),
Vector3.new(487.533844, 12.6087818, -13530.0176),
Vector3.new(719.376038, 12.6087704, -13502.2832),
Vector3.new(753.225586, 12.5930357, -13309.1494),
Vector3.new(771.655396, 16.1050644, -13098.167),
Vector3.new(724.163147, 12.5988369, -12903.6943),
Vector3.new(575.437073, 12.5988379, -13227.1367),

Vector3.new(-7017.74902, 5.59578657, -5201.21387),
Vector3.new(-7181.07568, 5.6003418, -5205.85547),
Vector3.new(-7320.05518, 5.66138744, -5249.3833),
Vector3.new(-7300.78809, 5.6003418, -5416.23389),
Vector3.new(-7210.32373, 5.6003418, -5485.12939),
Vector3.new(-7097.5415, 6.60073709, -5417.29053),
Vector3.new(-7154.82373, 5.60034132, -5279.67676),

Vector3.new(2845.63452, 49.3681564, -15717.1445),
Vector3.new(2869.68921, 41.6680603, -16077.9316),
Vector3.new(2463.72314, 15.6680689, -16033.459),
Vector3.new(2639.60522, 48.6680603, -15836.6816),

Vector3.new(9002.69336, 1438.54419, -10527.8262),
Vector3.new(9122.82324, 1472.84424, -10719.6992),
Vector3.new(9067.66309, 1457.49377, -10861.4004),
Vector3.new(8839.05273, 1437.69434, -10632.1758),
Vector3.new(9444.3291, 1541.14404, -10209.0693),
Vector3.new(9601.77539, 1552.65747, -10313.2432),
Vector3.new(9734.25781, 1698.28284, -9773.99512),
Vector3.new(9849.72852, 1698.28284, -9654.54102),
Vector3.new(10022.2539, 1742.3175, -9621.86719),
Vector3.new(9965.64551, 1701.08264, -9815.64355),
Vector3.new(10168.04, 1784.48242, -9933.1582),
Vector3.new(9377.94434, 1531.74463, -10660.5303),
Vector3.new(9246.06152, 1660.84424, -10667.0205),
Vector3.new(9262.93066, 1704.11072, -10870.0068),
Vector3.new(8989.30859, 1592.3429, -10924.6475),
Vector3.new(8177.31836, 2081.96533, -11500.666),
Vector3.new(8015.17139, 2090.25488, -11315.1494),
Vector3.new(7821.74854, 2099.73022, -11274.5791),
Vector3.new(7500.98535, 2106.24341, -11470.3877),
Vector3.new(7337.38916, 2115.71802, -11738.457),
Vector3.new(7269.77295, 2081.96509, -12042.874),
Vector3.new(7429.25928, 2116.77246, -12256.4053),
Vector3.new(7593.73486, 2116.77246, -12415.7402),
Vector3.new(7805.62793, 2081.9646, -12591.2764),
Vector3.new(8024.29688, 2081.9646, -12557.0684),
Vector3.new(8390.88184, 2081.96387, -12490.3545),
Vector3.new(8556.47656, 2124.59961, -12194.3467),
Vector3.new(8471.9873, 2123.49316, -12030.2266),
Vector3.new(8276.64941, 2081.96533, -11998.6055),
Vector3.new(7890.46582, 2067.35352, -11824.4727),
Vector3.new(7868.41699, 1985.01904, -11862.1152),
Vector3.new(8021.27002, 1959.02429, -12047.0469),
Vector3.new(7820.55957, 1960.05188, -12313.0566),
Vector3.new(7586.44873, 1959.08533, -12067.9238),
Vector3.new(7790.57666, 1958.40417, -11975.8848)
} 

function To(pos)

    tweening = true
	local position = pos
	local Chr = game.Players.LocalPlayer.Character
	if Chr ~= nil then
		local ts = game:GetService("TweenService")
		local char = game.Players.LocalPlayer.Character
		local hm = char.HumanoidRootPart
		local dist = (hm.Position - position).magnitude
		_G.tweenspeed = dist/150
		local ti = TweenInfo.new(tonumber(_G.tweenspeed), Enum.EasingStyle.Linear)
		local tp = {CFrame = CFrame.new(position)}
		local point = ts:Create(hm, ti, tp)
        
        point.Completed:Connect(function(playbackState)
            if playbackState == Enum.PlaybackState.Completed then
                if(plr.Character:FindFirstChild("Finded") ~= nil) then
                    if(plr.Character:FindFirstChild("Finded").Value == true)then
                    tweening = true
                    else
                    tweening = false
                    end
                else
                    tweening = false
                end
            end
        end)

        point:Play()
	end
end

for i = 1,#Positions,1 do
wait()
print(i.."/"..#Positions)    
To(Positions[i])
while tweening do wait() end
end