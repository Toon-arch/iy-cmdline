local reqenv = function() return ((getgenv and getgenv()) or shared or _G) end
local NewPrefix = reqenv()._NewPrefix or "'"
if not reqenv().IY_LOADED then loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end
do local a=function()local b=Instance.new("Frame")local c=Instance.new("TextLabel")local d=Instance.new("TextBox")local e=Instance.new("TextLabel")local f=Instance.new("ImageLabel")b.Name="CommandBar"b.Parent=nil;b.BackgroundColor3=Color3.fromRGB(46,46,47)b.BorderSizePixel=0;b.Position=UDim2.new(0.5,-100,1,5)b.Size=UDim2.new(0,200,0,35)b.ZIndex=0;c.Name="Arrow"c.Parent=b;c.BackgroundColor3=Color3.fromRGB(255,255,255)c.BackgroundTransparency=1.000;c.BorderSizePixel=0;c.Size=UDim2.new(0,25,1,0)c.ZIndex=0;c.Font=Enum.Font.GothamSemibold;c.Text=">"c.TextColor3=Color3.fromRGB(220,224,234)c.TextSize=14.000;c.TextStrokeColor3=Color3.fromRGB(220,224,234)c.TextStrokeTransparency=0.950;d.Name="Input"d.Parent=b;d.Active=false;d.BackgroundColor3=Color3.fromRGB(255,255,255)d.BackgroundTransparency=1.000;d.BorderSizePixel=0;d.Position=UDim2.new(0,20,0,0)d.Selectable=false;d.Size=UDim2.new(1,-25,1,0)d.ZIndex=5;d.Font=Enum.Font.Gotham;d.Text=""d.TextColor3=Color3.fromRGB(220,224,234)d.TextSize=14.000;d.TextStrokeColor3=Color3.fromRGB(220,224,234)d.TextStrokeTransparency=0.950;d.TextXAlignment=Enum.TextXAlignment.Left;e.Name="Predict"e.Parent=d;e.BackgroundColor3=Color3.fromRGB(255,255,255)e.BackgroundTransparency=1.000;e.BorderSizePixel=0;e.Size=UDim2.new(1,0,1,0)e.ZIndex=0;e.Font=Enum.Font.Gotham;e.Text=""e.TextColor3=Color3.fromRGB(220,224,234)e.TextSize=14.000;e.TextStrokeColor3=Color3.fromRGB(220,224,234)e.TextTransparency=0.500;e.TextXAlignment=Enum.TextXAlignment.Left;f.Name="Shadow"f.Parent=b;f.BackgroundColor3=Color3.fromRGB(255,255,255)f.BackgroundTransparency=1.000;f.Position=UDim2.new(0,-3,0,-3)f.Size=UDim2.new(1,6,1,6)f.ZIndex=-5;f.Image="rbxassetid://222785823"f.ScaleType=Enum.ScaleType.Slice;f.SliceCenter=Rect.new(100,100,100,100)f.SliceScale=0.250;return b end;local g=a()g.Parent=PARENT;local h=function(i,j,k,l,m)local n=game:GetService("TweenService")local o=TweenInfo.new(l,Enum.EasingStyle[j],Enum.EasingDirection[k])local p=n:Create(i,o,m)p:Play()return p end;local q=function(r)if r==true then g.Input:CaptureFocus()spawn(function()repeat g.Input.Text=""until g.Input.Text==""end)spawn(function()h(g,"Quint","Out",0.5,{Position=UDim2.new(0.5,-100,1,-60)})end)end;if r==false then spawn(function()h(g,"Quint","Out",0.5,{Position=UDim2.new(0.5,-100,1,5)})end)end end;local s=function(t,u)return t==string.sub(u,1,#t)end;local v=function(w,x)if w==nil then return end;if type(w)=="table"then for y,z in ipairs(w)do if s(x,z)then return z end end end end;local A=function(B)local C=string.lower(B)local D={"all","others","random","me","nearest","farthest","allies","enemies","team","nonteam","friends","nonfriends","bacons","nearest","farthest","alive","dead"}return v(D,C)or(function()for y,z in ipairs(Players:GetPlayers())do local E=string.lower(z.Name)if s(C,E)then return E end end end)()end;local F=g.Input.Predict;local G=nil;g.Input.FocusLost:Connect(function(H)F.Text=""if G then G:Disconnect()end;if H then local I=g.Input.Text:gsub("^".."%"..NewPrefix,"")spawn(function()q(false)end)spawn(function()execCmd(I,Players.LocalPlayer,true)end)end;wait()if not g.Input:IsFocused()then g.Input.Text=""end end)g.Input:GetPropertyChangedSignal("Text"):Connect(function()g.Input.Text=string.lower(g.Input.Text)F.Text=""local J=g.Input.Text;local K=string.split(J," ")local L=cargs or{}if J==""then return end;for y,z in next,cmds do local E=z.NAME;local M=z.ALIAS;local N=false;if s(J,E)then F.Text=E;break end;for y,O in next,M do if s(J,O)then N=true;F.Text=O;break end;if N then break end end end;for P,z in next,K do if P>1 and z~=""then local e=""if#L>=1 then e=A(z)or e else e=A(z)or e end;F.Text=string.sub(J,1,#J-#K[#K])..e;local Q=z:split(",")if next(Q)then for R,O in next,Q do if R>1 and O~=""then local S=A(O)F.Text=string.sub(J,1,#J-#Q[#Q])..(S or"")end end end end end end)g.Input.Focused:Connect(function()local T=game:GetService("UserInputService")G=T.InputBegan:Connect(function(U,V)if g.Input:IsFocused()then if U.KeyCode==Enum.KeyCode.Tab then if F.Text==(""or" ")then else if string.match(F.Text," ")then g.Input.Text=F.Text;wait()g.Input.Text=g.Input.Text:gsub("\t","")g.Input.CursorPosition=#g.Input.Text+1 else g.Input.Text=F.Text.." "wait()g.Input.Text=g.Input.Text:gsub("\t","")g.Input.CursorPosition=#g.Input.Text+1 end end end else G:Disconnect()end end)end)IYMouse.KeyDown:Connect(function(W)if tostring(string.lower(W))==NewPrefix then spawn(function()q(true)end)end end) end
