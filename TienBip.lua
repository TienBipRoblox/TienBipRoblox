local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local function d(data)
	data=data:gsub('[^'..b..'=]','')
	return (data:gsub('.',function(x)
		if x=='=' then return '' end
		local r,f='',(b:find(x)-1)
		for i=6,1,-1 do
			r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0')
		end
		return r
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x)
		if #x~=8 then return '' end
		local c=0
		for i=1,8 do
			c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0)
		end
		return string.char(c)
	end))
end

local function L(x)
	loadstring(game:HttpGet(d(x)))()
end

L("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2RhdWNvYm9uaGkvVWktUmVkei1WMi9yZWZzL2hlYWRzL21haW4vVWlSRUR6VjIubHVh")

local W=MakeWindow({
	Hub={Title="LoThanh Hud(Premium)  by Tienscript",Animation="Bản premium"},
	Key={
		KeySystem=true,
		Title="Tiến Tổng Hợp",
		Description="Dùng Script Vui Vẻ",
		KeyLink="https://link4m.com/kjzVaRAh",
		Keys={""},
		Notifi={
			Notifications=true,
			CorrectKey="Hello fen",
			Incorrectkey="Bản premium có key đâu mà nhập key"
		}
	}
})

MinimizeButton({
	Image="http://www.roblox.com/asset/?id=102446486772402",
	Size={20,20},
	Color=Color3.fromRGB(10,10,10),
	Corner=true
})

local T1=MakeTab({Name="Script Blox Fruits"})
local T2=MakeTab({Name="Khác"})
local T3=MakeTab({Name="99 ngày Trong rừng"})
local T5=MakeTab({Name="deadrails"})


local BTN={
	-- TAB 1
	{T1,"Blue X Hud","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0Rldi1CbHVlWC9CbHVlWC1IdWIvcmVmcy9oZWFkcy9tYWluL01haW4ubHVh"},
	{T1,"Tuấn Anh IOS","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0FuaFR1YW5EemFpLUh1Yi9UdWFuQW5oSU9TL3JlZnMvaGVhZHMvbWFpbi9UdWFuQW5oSU9TLmx1YQ=="},
	{T1,"Rise-Evo","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RyYXNoTHVhL0Jsb3hGcnVpdHMvbWFpbi9sb2FkZGVyLmx1YQ==",true},
	{T1,"Huy Top PVP","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0h1eWxvdmVteS9IdXktVG9wLVB2UC9yZWZzL2hlYWRzL21haW4vUFZQJTIwdG9w"},
	{T1,"Gravity Hud","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0Rldi1HcmF2aXR5SHViL0Jsb3hGcnVpdC9yZWZzL2hlYWRzL21haW4vTWFpbi5sdWE="},
	{T1,"PvP Top","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0tyb3Z5bi9Lcm92eW5IdWIvcmVmcy9oZWFkcy9tYWluL1RPUF9QVlA="},
	{T1,"PvP (Key)","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1BhcmFkb3pDb2RlL0NlbnR1RG94LUh1Yi1QYXJhZG96LUh1Yi9yZWZzL2hlYWRzL21haW4vQ2VudHVEb3gueHl6"},
	{T1,"Tăng hitbox","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1ZhblRoYW5oSU9TL09uaWlDaGFuVmFuVGhhbmhJT1MvcmVmcy9oZWFkcy9tYWluL29uaWljaGFucGFrYXZhbnRoYW5oaW9z"},
	{T1,"Quantumdz","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2ZsYXpoeS9RdWFudHVtT255eC9yZWZzL2hlYWRzL21haW4vUXVhbnR1bU9ueXgubHVh"},
	{T1,"Huy pvp","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0h1eWxvdmVteS9QdnAvcmVmcy9oZWFkcy9tYWluL0h1eXB2cA=="},
	{T1,"Teddy Hud","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RlZGR5c2VldGluaC9IYWlkZXB6YWkvcmVmcy9oZWFkcy9tYWluL1RlZGR5SHViLmx1YQ=="},
	{T1,"Zis chuối EEG","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0x1YUNyYWNrL1ppcy9yZWZzL2hlYWRzL21haW4vWmlzQ2h1b2lFbmc="},
	{T1,"Apple cat hud","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2xvbmdkd2llaC9Ib2FuZ0xvbmctc2NyaXB0L3JlZnMvaGVhZHMvbWFpbi9Ib2FuZ0xvbmdIdWIubHVhLnR4dA=="},
	{T1,"PvP aim chiêu","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL29uaW9uMTMyMDA1LWJpdC9PbmlvbjEzMy9yZWZzL2hlYWRzL21haW4vU2NyaXB0Lmx1YQ=="},

	{T2,"Huy Ply","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2h1eXRvbmcxMzMtaHVlL1Bscy9yZWZzL2hlYWRzL21haW4vSHV5cGx5"},
	{T2,"Fix Lag","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RJS1RPSy1CT1lDSE9JR0FNRS9QSC1JQ0gtVS9yZWZzL2hlYWRzL21haW4vRklYTEFHVjIuQk9ZQ0hPSUdBTUU="},
	{T2,"ESP and AM","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0h1eWxvdmVteS9IYWNrL3JlZnMvaGVhZHMvbWFpbi9IdXlkZXB6YWkyMDk="},
	{T2,"God mod v1","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL21pZ2xlbHMzMy9Hb2QtTW9kZS1TY3JpcHQvcmVmcy9oZWFkcy9tYWluL0dvZE1vZGVTY3JpcHQubWQ="},
	{T2,"Huy hitbox","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0h1eWxvdmVteS9IaXRib3hnYW1lL3JlZnMvaGVhZHMvbWFpbi9IaXRib3hnYW1l"},
	{T2,"God mod v2","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1Jhd2JyMTAvUm9ibG94LVNjcmlwdHMvcmVmcy9oZWFkcy9tYWluL0dvZCUyME1vZGUlMjBTY3JpcHQlMjBVbml2ZXJzYWw="},
	{T2,"Huy mod","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0h1eWxvdmVteS9IdXktbW9kL3JlZnMvaGVhZHMvbWFpbi9IdXklMjBtb2Q="},
	{T2,"Ambot","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RvdG9jb2Vtcy9BY2UvbWFpbi9BY2U="},

	-- TAB 3 & 5
	{T3,"Foxname Hud","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2Nhb21vZDIwNzcvU2NyaXB0L3JlZnMvaGVhZHMvbWFpbi9Gb3huYW1lSHViLmx1YQ=="},
	{T5,"NullFire","aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0luZmVybmVzU2NyaXB0cy9OdWxsLUZpcmUvbWFpbi9Mb2FkZXI="},
}

for _,v in ipairs(BTN) do
	AddButton(v[1],{
		Name=v[2],
		Callback=function()
			if v[4] then getgenv().Team="Pirates" end
			L(v[3])
		end
	})
end
