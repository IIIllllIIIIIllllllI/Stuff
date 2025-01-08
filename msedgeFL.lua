local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v8, v9)
	local v10 = {};
	for v11 = 1, #v8 do
		v6(v10, v0(v4(v1(v2(v8, v11, v11 + 1)), v1(v2(v9, 1 + (v11 % #v9), 1 + (v11 % #v9) + 1))) % 256));
	end
	return v5(v10);
end
if (game.PlaceId == (14136548306 - -176710841)) then
	local v12 = Instance.new(v7("\226\192\201\32\227\181\224\11\216", "\126\177\163\187\69\134\219\167"));
	local v13 = Instance.new(v7("\5\223\43\200\249", "\156\67\173\74\165"));
	local v14 = Instance.new(v7("\29\186\72\17\185\10\71\54\178\69", "\38\84\215\41\118\220\70"));
	local v15 = Instance.new(v7("\100\19\58\6\210\81\20\39\30", "\158\48\118\66\114"));
	v12.Name = v7("\174\119\17\44\127\183\214\157\53\3\110\125\244\250\184\12", "\155\203\68\112\86\19\197");
	v12.Parent = game.Players.LocalPlayer:WaitForChild(v7("\118\209\55\229\69\106\194\237\79", "\152\38\189\86\156\32\24\133"));
	v12.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	v13.Parent = v12;
	v13.BackgroundColor3 = Color3.fromRGB(155 + 100, 1000 - 745, 255);
	v13.BackgroundTransparency = 1 + 0;
	v13.BorderColor3 = Color3.fromRGB(0 + 0, 1055 - (87 + 968), 0 - 0);
	v13.BorderSizePixel = 0;
	v13.Size = UDim2.new(0 + 0, 226 - 126, 1413 - (447 + 966), 273 - 173);
	local function v26()
		local v39 = Instance.new(v7("\208\88\164\71\240\100\164\84\245\71\179", "\38\156\55\199"), v13);
		local v40 = game:GetService(v7("\132\116\123\32\7\125\244\68", "\35\200\29\28\72\115\20\154"));
		local v41 = game:GetService(v7("\41\179\208\198\136\62\39", "\84\121\223\177\191\237\76"));
		local v42 = v41.LocalPlayer;
		local v43 = v42.Character or v42.CharacterAdded:Wait();
		if v43:FindFirstChild(v7("\147\67\196\161\52\95\57\197", "\161\219\54\169\192\90\48\80")) then
			v43.Humanoid.Health = 0;
		end
		local v44 = Instance.new(v7("\107\78\21\55\108\68\6\32\74\86", "\69\41\34\96"));
		v44.Size = 24;
		v44.Parent = v40;
		local v47 = v42.PlayerGui:FindFirstChild(v7("\185\144\214\16\14\57\145\245\198\25\90\37\237\194\196\34", "\75\220\163\183\106\98"));
		local v48 = v47 and v47:FindFirstChildWhichIsA(v7("\54\191\147\35\245\3\184\142\59", "\185\98\218\235\87"));
		local v49 = v47 and v47:FindFirstChildWhichIsA(v7("\226\49\38\225\219\134\202\62\34\234", "\202\171\92\71\134\190"));
		task.wait(1820 - (1703 + 114));
		if v47 then
			v47:Destroy();
		end
		for v51 = 725 - (376 + 325), 0 - 0, -(2 - 1) do
			local v52 = 0 + 0;
			local v53;
			while true do
				if ((0 - 0) == v52) then
					v53 = 14 - (9 + 5);
					while true do
						if (v53 == (376 - (85 + 291))) then
							v44.Size = v51;
							if v48 then
								v48.TextTransparency = ((1289 - (243 + 1022)) - v51) / 24;
							end
							v53 = 3 - 2;
						end
						if (v53 == (1 + 0)) then
							if v49 then
								v49.ImageTransparency = ((1204 - (1123 + 57)) - v51) / (20 + 4);
							end
							task.wait(254.05 - (163 + 91));
							break;
						end
					end
					break;
				end
			end
		end
		v44:Destroy();
	end
	coroutine.wrap(v26)();
	local v27 = game:GetService(v7("\25\205\45\145\44\211\63", "\232\73\161\76"));
	local v28 = game:GetService(v7("\142\202\71\79\55\181\201\87\73\45\190\203\84\84\29\190", "\126\219\185\34\61"));
	local v29 = game:GetService(v7("\62\219\80\65\123\101\229\238\15\203", "\135\108\174\62\18\30\23\147"));
	local v30 = v27.LocalPlayer;
	local v31 = v30.Character or v30.CharacterAdded:Wait();
	local v32 = v31:WaitForChild(v7("\158\252\39\202\22\161\58\195", "\167\214\137\74\171\120\206\83"));
	local v33 = v31:WaitForChild(v7("\163\229\63\92\246\168\130\244\0\82\247\179\187\241\32\73", "\199\235\144\82\61\152"));
	local v34 = false;
	local v35 = 1980 - (1869 + 61);
	local v36 = Vector3.new(6 + 14, 20, 70 - 50);
	local v37 = 0.9 - 0;
	v28.InputBegan:Connect(function(v50)
		if (v50.KeyCode == Enum.KeyCode.Y) then
			local v57 = 0;
			while true do
				if (v57 == (1 + 0)) then
					if not v34 then
						v32.WalkSpeed = 21 - 5;
					else
						local v67 = 0 + 0;
						while true do
							if (v67 == (1474 - (1329 + 145))) then
								v32.WalkSpeed = 971 - (140 + 831);
								v32:ChangeState(Enum.HumanoidStateType.Physics);
								v67 = 1851 - (1409 + 441);
							end
							if (v67 == (719 - (15 + 703))) then
								v33.Velocity = Vector3.zero;
								break;
							end
						end
					end
					break;
				end
				if (0 == v57) then
					v34 = not v34;
					v32.PlatformStand = v34;
					v57 = 1 + 0;
				end
			end
		end
	end);
	v29.RenderStepped:Connect(function()
		if v34 then
			local v58 = Vector3.zero;
			if v28:IsKeyDown(Enum.KeyCode.W) then
				v58 = v58 + workspace.CurrentCamera.CFrame.LookVector;
			end
			if v28:IsKeyDown(Enum.KeyCode.S) then
				v58 = v58 - workspace.CurrentCamera.CFrame.LookVector;
			end
			if v28:IsKeyDown(Enum.KeyCode.A) then
				v58 = v58 - workspace.CurrentCamera.CFrame.RightVector;
			end
			if v28:IsKeyDown(Enum.KeyCode.D) then
				v58 = v58 + workspace.CurrentCamera.CFrame.RightVector;
			end
			if v28:IsKeyDown(Enum.KeyCode.Space) then
				v58 = v58 + Vector3.new(438 - (262 + 176), 1722 - (345 + 1376), 0);
			end
			if v28:IsKeyDown(Enum.KeyCode.LeftControl) then
				v58 = v58 - Vector3.new(0, 689 - (198 + 490), 0);
			end
			v33.Velocity = v58.Unit * v35;
		end
	end);
	v29.Heartbeat:Connect(function()
		for v54, v55 in pairs(v27:GetPlayers()) do
			if (v55 ~= v30) then
				local v61 = 0 - 0;
				local v62;
				while true do
					if (v61 == 0) then
						v62 = v55.Character;
						if (v62 and v62:FindFirstChild(v7("\47\3\180\42\9\25\176\47\53\25\182\63\55\23\171\63", "\75\103\118\217"))) then
							local v68 = v62.HumanoidRootPart;
							v68.Size = v36;
							v68.Transparency = v37;
							v68.CanCollide = false;
						end
						break;
					end
				end
			end
		end
	end);
	game:GetService(v7("\244\64\113\6\173\27\213\115\101\29", "\126\167\52\16\116\217")):SetCore(v7("\251\43\46\132\154\22\232\193\40\41\131\181\13\245\199\32", "\156\168\78\64\224\212\121"), {[v7("\51\231\177\194\2", "\174\103\142\197")]=v7("\101\61\92\59\32\77\235", "\152\54\72\63\88\69\62"),[v7("\224\193\246\72", "\60\180\164\142")]=v7("\107\75\6\42\34\254\1\94\75\9\37\62\173\30\87\95\1\44\35\161\82\80\95\19\44\103\235\7\86\31", "\114\56\62\101\73\71\141"),[v7("\156\252\201\197\172\224\212\202", "\164\216\137\187")]=6});
else
	local v38 = 0 - 0;
	while true do
		if (v38 == (1206 - (696 + 510))) then
			game.Players.LocalPlayer.Character.Humanoid.Health = 0 - 0;
			game:GetService(v7("\226\234\48\171\163\236\24", "\107\178\134\81\210\198\158")).LocalPlayer:Kick("[⚠️] Please join FORTLINE.");
			break;
		end
	end
end
