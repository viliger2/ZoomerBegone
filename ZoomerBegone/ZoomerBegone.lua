-- TODO:
-- add actual UI

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

	print("|cffffff00ZoomerBegone|cffffffff: ", msg)

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
		GlobalIgnoreDB.notes[index] = "zoomer"
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

-- handles "mode" slash command
local function ZoomerBegone_SlashMode(arg)

	if arg == nil then
		ZoomerBegone_Print("Values for \"mode\"")
		ZoomerBegone_Print("- 1: removes emotes from the message without filtering the message itself.")
		ZoomerBegone_Print("- 2: filters the message.")
		ZoomerBegone_Print("- 3: adds the sender to the ignore list. If GlobalIgnoreList is installed it adds additional info of why the person was ignored.")			
		ZoomerBegone_Print("Current value is "..ZoomerBegoneVars.mode..".");
	else
		local mode = tonumber(arg)
		if(mode == 1 or mode == 2 or mode == 3) then
			ZoomerBegoneVars.mode = mode
			ZoomerBegone_Print("\"mode\" is set to "..mode)
		else
			ZoomerBegone_Print("Please, use values from 1 to 3")
		end
	end
	
end

-- handles "channels" slash command
local function ZoomerBegone_SlashChannels(arg1, arg2)

	if arg1 == nil then
		ZoomerBegone_Print("Values for \"channels\"")
		ZoomerBegone_Print("- channelName: shows if the filtering is enable for the current channel. Adding anything after the channel name will switch the filtering. \"all\" to show status of all channels.")
		ZoomerBegone_Print("Available channels: "..ZoomerBegone_GetStringChannelNames());
	else
		local channelName = string.upper(arg1);
		for i, channel in ipairs(channels) do
			if channel == channelName then
				if arg2 == nil then
					if(ZoomerBegoneVars.channels[channelName]) then
						ZoomerBegone_Print("Filtering for channel "..channelName.." is currently enabled.")
					else
						ZoomerBegone_Print("Filtering for channel "..channelName.." is currently disabled.")
					end
				else
					ZoomerBegoneVars.channels[channelName] = not ZoomerBegoneVars.channels[channelName]
					if ZoomerBegoneVars.channels[channelName] then
						ZoomerBegone_AddFilter(channelName)
						ZoomerBegone_Print("Filtering for channel "..channelName.." is now enabled.")
					else
						ZoomerBegone_RemoveFilter(channelName)
						ZoomerBegone_Print("Filtering for channel "..channelName.." is now disabled.")
					end
				end
				return;
			end	
		end
		ZoomerBegone_Print("Channel "..channelName.." doesn't exist. Available channels:"..ZoomerBegone_GetStringChannelNames())
	end
	
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
		
		ZoomerBegone_Print("Addon loaded. Type /zb or /zoomerbegone for additional information.")
		
		loaded = IsAddOnLoaded("GlobalIgnoreList");
		if loaded then
			ZoomerBegone_Print("GlobalIgnoreList is detected. Extended ignore functions are enabled.")
		end
	
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