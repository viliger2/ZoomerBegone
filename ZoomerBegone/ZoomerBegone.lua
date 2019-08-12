
local strings = {
	
	-- general
	[true] = "enabled",
	[false] = "disabled",
	
	-- chat header
	["zoomer_begone"] = "|cffffff00ZoomerBegone|cffffffff: ",

	-- ignore reason
	["zoomer"] = "zoomer",
	
	-- addon loeaded
	["loaded"] = "Addon loaded. Type /zb or /zoomerbegone for additional information.",
	["GlobalIgnoreList"] = "GlobalIgnoreList is detected. Extended ignore functions are enabled.",
	
	-- mode
	["mode_header"] = "Values for \"mode\"",
	["mode_tooltip_1"] = "removes emotes from the message without removing the message itself. It also hides the message if there is nothing but emotes in the message.",
	["mode_tooltip_2"] = "filters the message and hides it completely from the chat.",
	["mode_tooltip_3"] = "adds the sender to the ignore list. If GlobalIgnoreList is installed it adds additional info of why the person was ignored.",
	["mode_current_value"] = "Current value is %i.",
	["mode_short_1"] = "Remove emote",
	["mode_short_2"] = "Remove message", 
	["mode_short_3"] = "Ignore player", 
	["mode_set"] = "\"mode\" is set to %i.",
	["mode_wrong_value"] = "Please, use values from 1 to 3",
	["mode_tooltip_header"] = "Sets the filtering mode. Current mode ",
	["mode_options_header"] = "Filtering mode:",
	
	-- channels
	["channels_header"] = "Values for \"channels\"",
	["channels_channel_name_info"] = "shows if the filtering is enabled for the current channel. Adding anything after the channel name will switch the filtering. \"all\" to show status of all channels.",
	["channels_available_channels"] = "Available channels: %s",
	["channels_filtering_on"] = "Filtering for channel %s is currently enabled.",
	["channels_filtering_off"] = "Filtering for channel %s is currently disabled.",
	["channels_filtering_enabled"] = "Filtering for channel %s is now enabled.",
	["channels_filtering_disabled"] = "Filtering for channel %s is now disabled.",
	["channels_wrong_value"] = "Channel %s doesn't exist. Available channels: %s.", 
	["channels_options_header"] = "Channels:",
	["channels_current_values"] = "Filtering:",
	["channels_channel_status"] = "- %s: %s",
	
	-- channel names
	["CHANNEL"] = "General channels (General, Trade, LFG, etc.)",
	["SAY"] = "Say",
	["BATTLEGROUND"] = "Battleground",
	["BATTLEGROUND_LEADER"] = "Battleground leader",
	["EMOTE"] = "Emotes",
	["GUILD"] = "Guild",
	["OFFICER"] = "Guild officer channel",
	["PARTY"] = "Party",
	["PARTY_LEADER"] = "Party leader",
	["RAID"] = "Raid",
	["RAID_LEADER"] = "Raid leader",
	["WHISPER"] = "Whisper",
	["YELL"] = "Yell"

}

-- a list of twitch chat emotes
-- a list by no means full, but it should be enough for now
local emoticons = {
	-- twitch emotes
	"4Head",
	"ANELE",
	"ArgieB8",
	"ArigatoNas",
	"ArsonNoSexy",
	"AsexualPride",
	"AsianGlow",
	"BCWarrior",
	"BabyRage",
	"BatChest",
	"BegWan",
	"BibleThump",
	"BigBrother",
	"BigPhish",
	"BisexualPride",
	"BlargNaut",
	"BlessRNG",
	"BloodTrail",
	"BrainSlug",
	"BrokeBack",
	"BuddhaBar",
	"CarlSmile",
	"ChefFrank",
	"CoolCat",
	"CoolStoryBob",
	"CorgiDerp",
	"CrreamAwk",
	"CurseLit",
	"DAESuppy",
	"DBstyle",
	"DansGame",
	"DarkMode",
	"DatSheffy",
	"DendiFace",
	"DogFace",
	"DoritosChip",
	"DrinkPurple",
	"DxCat",
	"EarthDay",
	"EleGiggle",
	"EntropyWins",
	"FBBlock",
	"FBCatch",
	"FBChallenge",
	"FBPass",
	"FBPenalty",
	"FBRun",
	"FBSpiral",
	"FBtouchdown",
	"FUNgineer",
	"FailFish",
	"FrankerZ",
	"FreakinStinkin",
	"FutureMan",
	"GayPride",
	"GenderFluidPride",
	"GingerPower",
	"GivePLZ",
	"GrammarKing",
	"GreenTeam",
	"GunRun",
	"HSCheers",
	"HSWP",
	"HassaanChop",
	"HassanChop",
	"HeyGuys",
	"HolidayCookie",
	"HolidayLog",
	"HolidayOrnament",
	"HolidayPresent",
	"HolidaySanta",
	"HolidayTree",
	"HotPokket",
	"HumbleLife",
	"IntersexPride",
	"InuyoFace",
	"ItsBoshyTime",
	"JKanStyle",
	"Jebaited",
	"JonCarnage",
	"KAPOW",
	"Kappa",
	"KappaClaus",
	"KappaPride",
	"KappaRoss",
	"KappaWealth",
	"Kappu",
	"Keepo",
	"KevinTurtle",
	"Kippa",
	"KomodoHype",
	"KonCha",
	"Kreygasm",
	"LUL",
	"LesbianPride",
	"MVGame",
	"Mau5",
	"MaxLOL",
	"MercyWing1",
	"MercyWing2",
	"MikeHogu",
	"MingLee",
	"MorphinTime",
	"MrDestructoid",
	"NinjaGrumpy",
	"NomNom",
	"NonBinaryPride",
	"NotATK",
	"NotLikeThis",
	"OSFrog",
	"OhMyDog",
	"OneHand",
	"OpieOP",
	"OptimizePrime",
	"PJSalt",
	"PJSugar",
	"PMSTwin",
	"PRChase",
	"PanicVis",
	"PansexualPride",
	"PartyHat",
	"PartyTime",
	"PeoplesChamp",
	"PermaSmug",
	"PicoMause",
	"PinkMercy",
	"PipeHype",
	"PixelBob",
	"PogChamp",
	"Poooound",
	"PopCorn",
	"PowerUpL",
	"PowerUpR",
	"PraiseIt",
	"PrimeMe",
	"PunOko",
	"PunchTrees",
	"PurpleStar",
	"RaccAttack",
	"RalpherZ",
	"RedCoat",
	"RedTeam",
	"ResidentSleeper",
	"RitzMitz",
	"RlyTho",
	"RuleFive",
	"SMOrc",
	"SSSsss",
	"SabaPing",
	"SeemsGood",
	"SeriousSloth",
	"ShadyLulu",
	"ShazBotstix",
	"SingsMic",
	"SingsNote",
	"SmoocherZ",
	"SoBayed",
	"SoonerLater",
	"Squid1",
	"Squid2",
	"Squid3",
	"Squid4",
	"StinkyCheese",
	"StoneLightning",
	"StrawBeary",
	"SuperVinlin",
	"SwiftRage",
	"TBAngel",
	"TF2John",
	"TPFufun",
	"TPcrunchyroll",
	"TTours",
	"TakeNRG",
	"TearGlove",
	"TehePelo",
	"ThankEgg",
	"TheIlluminati",
	"TheRinger",
	"TheTarFu",
	"TheThing",
	"ThunBeast",
	"TinyFace",
	"TombRaid",
	"TooSpicy",
	"TransgenderPride",
	"TriHard",
	"TwitchLit",
	"TwitchRPG",
	"TwitchSings",
	"TwitchUnity",
	"TwitchVotes",
	"UWot",
	"UnSane",
	"UncleNox",
	"VoHiYo",
	"VoteNay",
	"VoteYea",
	"WTRuck",
	"WholeWheat",
	"WutFace",
	"YouDontSay",
	"YouWHY",
	"bleedPurple",
	"cmonBruh",
	"copyThis",
	"duDudu",
	"imGlitch",
	"mcaT",
	"panicBasket",
	"pastaThat",
	"riPepperonis",
	"twitchRaid",
	-- some of the betterttv emotes, not all, since they are user generated, just top ones
	"monkaS",
	"OMEGALUL",
	"POGGERS",
	"PepePls",
	"gachiBASS",
	"PepeHands",
	"gachiGASM",
	"Pepega",
	"RareParrot",
	"pepeJAM",
	"pepeD",
	"HYPERS",
	"ricardoFlick",
	"PepoDance",
	"AYAYA",
	"sumSmash",
	"KKool",
	"monkaSHAKE",
	"monkaX",
	"HYPERCLAP",
	"weSmart",
	"gachiHYPER",
	"monkaHmm",
	"monkaTOS",
	"monkaGun",
	"PartyParrot",
	"forsenPls",
	"blobDance",
	"COGGERS",
	"TriKool",
	"peepoHappy",
	"pepeLaugh",
	"nymnCorn",
	"pepeDS",
	"pepeJAMJAM",
	"CuteDog",
	"POGSLIDE",
	"headBang",
	"HAhaa",
	"DogePls",
	"PepoCheer",
	"ppHop",
	"Thonk",
	"hoSway",
	"KKomrade",
	"RainbowPls",
	"FeelsRareMan",
	"ZULUL",
	"FeelsSupportMan",
	"FeelsWeirdMan",
	"peepoSad",
	"bigWOW",
	"lickR",
	"pepeJAMMER",
	"pepeSmoke",
	"ImTriggered",
	"monkaW",
	"WowPls",
	"Monkas",
	"pepeClap",
	"MEGALUL",
	"lickL",
	"GachiPls",
	"LULWW",
	"FeelsRainMan",
	"WanWan",
	"FeelsOhWait"
}

-- a list of channels, it is easier to print them out and remove\add from filtering this way
local channels = {
	
	"CHANNEL", "SAY", "BATTLEGROUND", "BATTLEGROUND_LEADER", "EMOTE", "GUILD", "OFFICER", "PARTY", "PARTY_LEADER", "RAID", "RAID_LEADER", "WHISPER", "YELL"

}

-- copied from GlobalIgnoreList
-- used for handling slash commands
local function ZoomerBegone_GetWord (str, wordnumber)

	local len     = strlen(str)
	local count   = 1
	local res     = ""
	local words   = 0
	local nextInc = true
	local c
	
	while count <= len do
		if nextInc then
			words = words + 1
			
			if words > wordnumber then
				break
			end
		end
		
		c = strbyte(str, count)
		
		nextInc = (c == 32) and nextInc == false
		
		if words == wordnumber and c ~= 32 then
			res = res .. string.char(c)
		end
		
		count = count + 1
	end
	
	return res
end

-- prints the message with addon header
local function ZoomerBegone_Print(msg)

	print(strings["zoomer_begone"], msg)

end

-- sets local variables on first launch
local function ZoomerBegone_FirstLaunch()

	ZoomerBegoneVars = {
		mode = 1,
		channels = {
			CHANNEL				= true,
			SAY					= true,
			BATTLEGROUND		= true,
			BATTLEGROUND_LEADER	= true,
			EMOTE				= true,
			GUILD				= true,
			OFFICER				= true,
			PARTY				= true,
			PARTY_LEADER		= true,
			RAID				= true,
			RAID_LEADER			= true,
			WHISPER				= true,
			YELL				= true,
		}	
	}

end

-- removes a single emote from the message
local function ZoomerBegone_RemoveEmoticon(msg, emote)
	
	first, last = string.find(string.lower(msg), string.lower(emote))
	
	return string.gsub(msg, string.sub(msg, first, last), "")	

end

-- adds character to the ignore list
-- if GlobalIgnoreList is present then it uses that instead
local function ZoomerBegone_AddIgnore(author)

	loaded = IsAddOnLoaded("GlobalIgnoreList");
		
	if(loaded) then
	
		for i, character in ipairs(GlobalIgnoreDB.ignoreList) do
			if character == author then
				return
			end
		end
		
		local index = #GlobalIgnoreDB.ignoreList+1
	
		GlobalIgnoreDB.ignoreList[index] = author
		GlobalIgnoreDB.factionList[index] = UnitFactionGroup("player")
		GlobalIgnoreDB.dateList[index] = date("%d %b %Y")
		GlobalIgnoreDB.notes[index] = strings["zoomer"]
		GlobalIgnoreDB.expList[index] = GlobalIgnoreDB.defexpire
		GlobalIgnoreDB.typeList[index] = "player"
		GlobalIgnoreDB.syncInfo[index] = {}	
		
	end
	
	AddIgnore(author)

end

-- handles chat events
local function ZoomerBegone_onChatEvent(self, event, msg, author, ...)
	
	if ZoomerBegoneVars.mode == 1 then
		for i, emote in ipairs(emoticons) do
			if string.find(string.lower(msg), string.lower(emote)) then
				msg = ZoomerBegone_RemoveEmoticon(msg, emote)
			end
		end
		local tempmsg = string.gsub(msg, "%s+", "")
		if string.len(tempmsg) == 0 then
			return true;
		else
			return false, msg, author, ...
		end
	else
		for i, emote in ipairs(emoticons) do
			if string.find(string.lower(msg), string.lower(emote)) then
				if ZoomerBegoneVars.mode == 2 then
					return true;
				elseif ZoomerBegone.mode == 3 then
					ZoomerBegone_AddIgnore(author)
					return true
				end
			end
		end
	end
	
end

-- adds chat filter to the channel
local function ZoomerBegone_AddFilter(channel)
	
	if ZoomerBegoneVars.channels[channel] then
		ChatFrame_AddMessageEventFilter("CHAT_MSG_"..channel, ZoomerBegone_onChatEvent)
	end

end

-- removes chat filter from the channel
local function ZoomerBegone_RemoveFilter(channel)

	if not ZoomerBegoneVars.channels[channel] then
		ChatFrame_RemoveMessageEventFilter("CHAT_MSG_"..channel, ZoomerBegone_onChatEvent)
	end

end

-- returns a string of channel name separated by coma and single space
local function ZoomerBegone_GetStringChannelNames()
	
	local stringChannels = ""
	for i, channel in ipairs(channels) do
		if(i == 0) then
			stringChannels = channel
		else
			stringChannels = stringChannels .. ", " .. channel
		end
	end
	return stringChannels
	
end

-- return the name of the mode
local function ZoomerBegone_GetModeString(mode)

	if(mode == 1) then
		return strings["mode_short_1"]
	elseif (mode == 2) then
		return strings["mode_short_2"]
	elseif (mode == 3) then
		return strings["mode_short_3"]
	end

end

-- sets the value of "mode" and everything related to it
local function ZoomerBegone_SetMode(mode)

	ZoomerBegoneVars.mode = mode
	UIDropDownMenu_SetText(ZoomerBegone_ModeDropDown, ZoomerBegone_GetModeString(ZoomerBegoneVars.mode))
	ZoomerBegone_Print(string.format(strings["mode_set"], mode))

end

-- sets the filtering of "channel" and state of it's checkbox
local function ZoomerBegone_SetChannel(channelName, isEnabled, channelCheckBox)

	ZoomerBegoneVars.channels[channelName] = isEnabled
	if isEnabled then
		ZoomerBegone_AddFilter(channelName)
		ZoomerBegone_Print(string.format(strings["channels_filtering_enabled"], channelName))
	else
		ZoomerBegone_RemoveFilter(channelName)
		ZoomerBegone_Print(string.format(strings["channels_filtering_disabled"], channelName))
	end
	
	channelCheckBox:SetChecked(isEnabled)

end

-- handles "mode" slash command
local function ZoomerBegone_SlashMode(arg)

	if arg == nil then
		ZoomerBegone_Print(strings["mode_header"])
		ZoomerBegone_Print("- 1: "..strings["mode_tooltip_1"])
		ZoomerBegone_Print("- 2: "..strings["mode_tooltip_2"])
		ZoomerBegone_Print("- 3: "..strings["mode_tooltip_3"])
		ZoomerBegone_Print(string.format(strings["mode_current_value"], ZoomerBegoneVars.mode))
	else
		local mode = tonumber(arg)
		if(mode == 1 or mode == 2 or mode == 3) then
			ZoomerBegone_SetMode(mode)
		else
			ZoomerBegone_Print(strings["mode_wrong_value"])
		end
	end
	
end

-- gets the checkbox of the channel (hopefully it works)
local function ZoomerBegone_GetChannelCheckBox(channelName)

	if(channelName == "CHANNEL") then
		return ZoomerBegone_ChannelCheckButton
	elseif(channelName == "SAY") then
		return ZoomerBegone_SayCheckButton
	elseif(channelName == "BATTLEGROUND") then
		return ZoomerBegone_BattlegroundCheckButton
	elseif(channelName == "BATTLEGROUND_LEADER") then
		return ZoomerBegone_BattlegroundLeaderCheckButton
	elseif(channelName == "PARTY") then
		return ZoomerBegone_PartyCheckButton
	elseif(channelName == "PARTY_LEADER") then
		return ZoomerBegone_PartyLeaderCheckButton
	elseif(channelName == "YELL") then
		return ZoomerBegone_YellCheckButton
	elseif(channelName == "WHISPER") then
		return ZoomerBegone_WhisperCheckButton
	elseif(channelName == "RAID") then
		return ZoomerBegone_RaidCheckButton
	elseif(channelName == "RAID_LEADER") then
		return ZoomerBegone_RaidLeaderCheckButton
	elseif(channelName == "GUILD") then
		return ZoomerBegone_GuildCheckButton
	elseif(channelName == "OFFICER") then
		return ZoomerBegone_OfficerCheckButton
	elseif(channelName == "EMOTE") then
		return ZoomerBegone_EmoteCheckButton
	end

end

-- handles "channels" slash command
local function ZoomerBegone_SlashChannels(arg1, arg2)

	if arg1 == nil then
		ZoomerBegone_Print(strings["channels_header"])
		ZoomerBegone_Print("- channelName: "..strings["channels_channel_name_info"])
		ZoomerBegone_Print(string.format(strings["channels_available_channels"], ZoomerBegone_GetStringChannelNames()))
	else
		local channelName = string.upper(arg1);
		if(channelName == "ALL") then
			ZoomerBegone_Print(strings["channels_current_values"])
			for i, channel in ipairs(channels) do
				ZoomerBegone_Print(string.format(strings["channels_channel_status"], channel, strings[ZoomerBegoneVars.channels[channel]]))
			end
		else
			for i, channel in ipairs(channels) do
				if channel == channelName then
					if arg2 == nil then
						if(ZoomerBegoneVars.channels[channelName]) then
							ZoomerBegone_Print(string.format(strings["channels_filtering_on"], channelName))
						else
							ZoomerBegone_Print(string.format(strings["channels_filtering_off"], channelName))
						end
					else
						ZoomerBegone_SetChannel(channelName, not ZoomerBegoneVars.channels[channelName], ZoomerBegone_GetChannelCheckBox(channelName))
					end
					return;
				end	
			end
			ZoomerBegone_Print(string.format(strings["channels_wrong_value"], channelName, ZoomerBegone_GetStringChannelNames()))
		end
	end
	
end

-- handles selection from drop down menu
local function ZoomerBegone_DropDownMenuOnClick(self, arg1, arg2, checked)

	if checked then 
		return
	end
	
	ZoomerBegone_SetMode(arg1)
	
end

-- creates a UI in the "Interface" options
local function ZoomerBegone_CreateUI()

	-- main panel for the interface options
	local panel = CreateFrame("FRAME")
	panel.name = "ZoomerBegone"
	
	-- title
	local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText("ZoomerBegone")
	
	-- drop down menu for modes
	local ZoomerBegone_ModeDropDown = CreateFrame("FRAME", "ZoomerBegone_ModeDropDown", panel, "UIDropDownMenuTemplate")
	ZoomerBegone_ModeDropDown:SetPoint("TOPLEFT", title, "BOTTOMLEFT", -15, -32)
	UIDropDownMenu_SetWidth(ZoomerBegone_ModeDropDown, 150)
	UIDropDownMenu_SetText(ZoomerBegone_ModeDropDown, ZoomerBegone_GetModeString(ZoomerBegoneVars.mode))
	
	UIDropDownMenu_Initialize(ZoomerBegone_ModeDropDown, function(self, level, menuList)
		local info = UIDropDownMenu_CreateInfo()
		info.text, info.checked, info.arg1, info.func = ZoomerBegone_GetModeString(1), ZoomerBegoneVars.mode == 1, 1, ZoomerBegone_DropDownMenuOnClick
		UIDropDownMenu_AddButton(info)
		
		info.text, info.checked, info.arg1, info.func = ZoomerBegone_GetModeString(2), ZoomerBegoneVars.mode == 2, 2, ZoomerBegone_DropDownMenuOnClick
		UIDropDownMenu_AddButton(info)
		
		info.text, info.checked, info.arg1, info.func = ZoomerBegone_GetModeString(3), ZoomerBegoneVars.mode == 3, 3, ZoomerBegone_DropDownMenuOnClick
		UIDropDownMenu_AddButton(info)
		
		end)
	
	ZoomerBegone_ModeDropDown:HookScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT")
			GameTooltip:SetText(strings["mode_tooltip_header"]..strings["mode_tooltip_"..ZoomerBegoneVars.mode], nil, nil, nil, nil, true)
		end)
	ZoomerBegone_ModeDropDown:HookScript("OnLeave", GameTooltip_Hide)
	
	-- drop down menu header
	local ZoomerBegone_ModeDropDownHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	ZoomerBegone_ModeDropDownHeader:SetPoint("TOPLEFT", ZoomerBegone_ModeDropDown, "BOTTOMLEFT", 20, 45)
	ZoomerBegone_ModeDropDownHeader:SetText(strings["mode_options_header"])
	
	-- channels header
	local ZoomerBegone_ChannelsHeader = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
	ZoomerBegone_ChannelsHeader:SetPoint("BOTTOMLEFT", ZoomerBegone_ModeDropDown, "BOTTOMLEFT", 20, -10)
	ZoomerBegone_ChannelsHeader:SetText(strings["channels_options_header"])
	
	-- SAY checkbox
	ZoomerBegone_SayCheckButton = CreateFrame("CheckButton", "ZoomerBegone_SAY", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_SayCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_ChannelsHeader, "BOTTOMLEFT", -5, -30)
	ZoomerBegone_SAYText:SetText(strings["SAY"])
	ZoomerBegone_SayCheckButton:SetChecked(ZoomerBegoneVars.channels.SAY)
	ZoomerBegone_SayCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("SAY", not ZoomerBegoneVars.channels.SAY, ZoomerBegone_SayCheckButton);
		end)
		
	-- CHANNEL checkbox	
	ZoomerBegone_ChannelCheckButton = CreateFrame("CheckButton", "ZoomerBegone_CHANNEL", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_ChannelCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_SayCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_CHANNELText:SetText(strings["CHANNEL"])
	ZoomerBegone_ChannelCheckButton:SetChecked(ZoomerBegoneVars.channels.CHANNEL)
	ZoomerBegone_ChannelCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("CHANNEL", not ZoomerBegoneVars.channels.CHANNEL, ZoomerBegone_ChannelCheckButton);
		end)
		
	-- BATTLEGROUND checkbox	
	ZoomerBegone_BattlegroundCheckButton = CreateFrame("CheckButton", "ZoomerBegone_BATTLEGROUND", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_BattlegroundCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_ChannelCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_BATTLEGROUNDText:SetText(strings["BATTLEGROUND"])
	ZoomerBegone_BattlegroundCheckButton:SetChecked(ZoomerBegoneVars.channels.BATTLEGROUND)
	ZoomerBegone_BattlegroundCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("BATTLEGROUND", not ZoomerBegoneVars.channels.BATTLEGROUND, ZoomerBegone_BattlegroundCheckButton);
		end)
		
	-- BATTLEGROUND_LEADER checkbox	
	ZoomerBegone_BattlegroundLeaderCheckButton = CreateFrame("CheckButton", "ZoomerBegone_BATTLEGROUND_LEADER", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_BattlegroundLeaderCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_BattlegroundCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_BATTLEGROUND_LEADERText:SetText(strings["BATTLEGROUND_LEADER"])
	ZoomerBegone_BattlegroundLeaderCheckButton:SetChecked(ZoomerBegoneVars.channels.BATTLEGROUND_LEADER)
	ZoomerBegone_BattlegroundLeaderCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("BATTLEGROUND_LEADER", not ZoomerBegoneVars.channels.BATTLEGROUND_LEADER, ZoomerBegone_BattlegroundLeaderCheckButton);
		end)
		
	-- PARTY checkbox	
	ZoomerBegone_PartyCheckButton = CreateFrame("CheckButton", "ZoomerBegone_PARTY", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_PartyCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_BattlegroundLeaderCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_PARTYText:SetText(strings["PARTY"])
	ZoomerBegone_PartyCheckButton:SetChecked(ZoomerBegoneVars.channels.PARTY)
	ZoomerBegone_PartyCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("PARTY", not ZoomerBegoneVars.channels.PARTY, ZoomerBegone_PartyCheckButton);
		end)
		
	-- PARTY_LEADER checkbox	
	ZoomerBegone_PartyLeaderCheckButton = CreateFrame("CheckButton", "ZoomerBegone_PARTY_LEADER", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_PartyLeaderCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_PartyCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_PARTY_LEADERText:SetText(strings["PARTY_LEADER"])
	ZoomerBegone_PartyLeaderCheckButton:SetChecked(ZoomerBegoneVars.channels.PARTY_LEADER)
	ZoomerBegone_PartyLeaderCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("PARTY_LEADER", not ZoomerBegoneVars.channels.PARTY_LEADER, ZoomerBegone_PartyLeaderCheckButton);
		end)	
	
	-- EMOTE checkbox	
	ZoomerBegone_EmoteCheckButton = CreateFrame("CheckButton", "ZoomerBegone_EMOTE", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_EmoteCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_PartyLeaderCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_EMOTEText:SetText(strings["EMOTE"])
	ZoomerBegone_EmoteCheckButton:SetChecked(ZoomerBegoneVars.channels.EMOTE)
	ZoomerBegone_EmoteCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("EMOTE", not ZoomerBegoneVars.channels.EMOTE, ZoomerBegone_EmoteCheckButton);
		end)	
		
	-- YELL checkbox	
	ZoomerBegone_YellCheckButton = CreateFrame("CheckButton", "ZoomerBegone_YELL", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_YellCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_ChannelsHeader, "BOTTOMLEFT", 270, -30)
	ZoomerBegone_YELLText:SetText(strings["YELL"])
	ZoomerBegone_YellCheckButton:SetChecked(ZoomerBegoneVars.channels.YELL)
	ZoomerBegone_YellCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("YELL", not ZoomerBegoneVars.channels.YELL, ZoomerBegone_YellCheckButton);
		end)	
		
	-- WHISPER checkbox	
	ZoomerBegone_WhisperCheckButton = CreateFrame("CheckButton", "ZoomerBegone_WHISPER", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_WhisperCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_YellCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_WHISPERText:SetText(strings["WHISPER"])
	ZoomerBegone_WhisperCheckButton:SetChecked(ZoomerBegoneVars.channels.WHISPER)
	ZoomerBegone_WhisperCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("WHISPER", not ZoomerBegoneVars.channels.WHISPER, ZoomerBegone_WhisperCheckButton);
		end)	
	
	-- RAID checkbox	
	ZoomerBegone_RaidCheckButton = CreateFrame("CheckButton", "ZoomerBegone_RAID", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_RaidCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_WhisperCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_RAIDText:SetText(strings["RAID"])
	ZoomerBegone_RaidCheckButton:SetChecked(ZoomerBegoneVars.channels.RAID)
	ZoomerBegone_RaidCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("RAID", not ZoomerBegoneVars.channels.RAID, ZoomerBegone_RaidCheckButton);
		end)	
	
	-- RAID_LEADER checkbox	
	ZoomerBegone_RaidLeaderCheckButton = CreateFrame("CheckButton", "ZoomerBegone_RAID_LEADER", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_RaidLeaderCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_RaidCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_RAID_LEADERText:SetText(strings["RAID_LEADER"])
	ZoomerBegone_RaidLeaderCheckButton:SetChecked(ZoomerBegoneVars.channels.RAID_LEADER)
	ZoomerBegone_RaidLeaderCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("RAID_LEADER", not ZoomerBegoneVars.channels.RAID_LEADER, ZoomerBegone_RaidLeaderCheckButton);
		end)
		
	-- GUILD checkbox	
	ZoomerBegone_GuildCheckButton = CreateFrame("CheckButton", "ZoomerBegone_GUILD", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_GuildCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_RaidLeaderCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_GUILDText:SetText(strings["GUILD"])
	ZoomerBegone_GuildCheckButton:SetChecked(ZoomerBegoneVars.channels.GUILD)
	ZoomerBegone_GuildCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("GUILD", not ZoomerBegoneVars.channels.GUILD, ZoomerBegone_GuildCheckButton);
		end)
		
	-- OFFICER checkbox	
	ZoomerBegone_OfficerCheckButton = CreateFrame("CheckButton", "ZoomerBegone_OFFICER", panel, "ChatConfigCheckButtonTemplate");
	ZoomerBegone_OfficerCheckButton:SetPoint("BOTTOMLEFT", ZoomerBegone_GuildCheckButton, "BOTTOMLEFT", 0, -25)
	ZoomerBegone_OFFICERText:SetText(strings["OFFICER"])
	ZoomerBegone_OfficerCheckButton:SetChecked(ZoomerBegoneVars.channels.OFFICER)
	ZoomerBegone_OfficerCheckButton:SetScript("OnClick", 
		function()
			ZoomerBegone_SetChannel("OFFICER", not ZoomerBegoneVars.channels.OFFICER, ZoomerBegone_OfficerCheckButton);
		end)
	
	InterfaceOptions_AddCategory(panel)

end

-- handles loading events
local function EventHandler (self, event, sender, ...)
	
	if sender == "ZoomerBegone" and event == "ADDON_LOADED" then
		
		if ZoomerBegoneVars == nil then
			ZoomerBegone_FirstLaunch()
		end
		
		for i, channel in ipairs(channels) do
			ZoomerBegone_AddFilter(channel)
		end
		
		ZoomerBegone_Print(strings["loaded"])
		
		if IsAddOnLoaded("GlobalIgnoreList") then
			ZoomerBegone_Print(strings["GlobalIgnoreList"])
		end
	
		ZoomerBegone_CreateUI()
	
	end

end

-- handles slash commands
function SlashCmdList.ZOOMER (msg)

	local args   = {}
	local count  = 1

	local str = ZoomerBegone_GetWord(msg, count)
	
	while str ~= "" do
		table.insert(args, str)
		
		count = count + 1
		str   = ZoomerBegone_GetWord(msg, count)
	end

	if args[1] == "mode" then
		ZoomerBegone_SlashMode(args[2])
	elseif args[1] == "channels" then
		ZoomerBegone_SlashChannels(args[2], args[3])
	else
		ZoomerBegone_Print("There are two options:")
		ZoomerBegone_Print("- mode: defines in which mode the addon works")
		ZoomerBegone_Print("- channels: defines which channels are filtered")		
	end

end

ZBFRAME = CreateFrame("Frame")

ZBFRAME:RegisterEvent("PLAYER_ENTERING_WORLD")
ZBFRAME:RegisterEvent("ADDON_LOADED")

ZBFRAME:SetScript("OnEvent", EventHandler)

SLASH_ZOOMER1 = "/zb"
SLASH_ZOMMER2 = "/zoomerbegone"