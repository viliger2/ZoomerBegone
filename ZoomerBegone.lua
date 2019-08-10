-- modes:
-- 1 - we remove the emotes from the message
-- 2 - we remove the messages from the chat
-- 3 - we remove the messages and put the person into ignore list
local mode = 1;

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
	"WaitWhat",
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

local function ZoomerBegone_RemoveEmoticon(msg, emote)
	
	local lowermsg = string.lower(msg);
	
	first, last = string.find(lowermsg, emote)
	
	return string.gsub(msg, string.sub(msg, first, last), "")	

end

local function ZoomerBegone_AddIgnore(author)

	loaded = IsAddOnLoaded("GlobalIgnoreList");
		
	if(loaded) then
	
		for i, character in ipairs(GlobalIgnoreDB.ignoreList) do
			if character == author then
				print("already exists")
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
		
	else
		AddIgnore(author)
	end

end

local function ZoomerBegone_onEvent(self, event, msg, author, ...)

	for i, emote in ipairs(emoticons) do
		if string.find(string.lower(msg), emote) then
			if mode == 1 then
				return false, ZoomerBegone_RemoveEmoticon(msg, emote), author, ...
			elseif mode == 2 then
				return true;
			elseif mode == 3 then
				ZoomerBegone_AddIgnore(author)
				return true;
			end
		end	
	end
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY",					ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND",		ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND_LEADER", ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER",		ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER",			ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER",				ZoomerBegone_onEvent)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL",				ZoomerBegone_onEvent)

