state ("loonyland", "1.0")
{
	byte256 playerVars: 0xD8CF9;
	byte40 badges: 0xD496C;
	byte badgeMenu: 0xD4999;
	string32 map: 0xD8C65;
	byte levelNum: 0xD8C3A;
}

startup
{
	settings.Add("badges", true, "Badges");
		settings.Add("bad-0", false, "Evil Smashin'", "badges");
		settings.Add("bad-1", false, "Bowlin'", "badges");
		settings.Add("bad-2", true, "Vandalizin'", "badges");
		settings.Add("bad-3", false, "Greed", "badges");
		settings.Add("bad-4", false, "Monster Slayin'", "badges");
		settings.Add("bad-5", false, "Monster Poundin'", "badges");
		settings.Add("bad-6", false, "Ghostbustin'", "badges");
		settings.Add("bad-7", true, "Lookin'", "badges");
		settings.Add("bad-8", false, "Ultimate Victory", "badges");
		settings.Add("bad-9", false, "Kickin'", "badges");
		settings.Add("bad-10", false, "Boss Bashin'", "badges");
		settings.Add("bad-11", false, "Vampire Slayin'", "badges");
		settings.Add("bad-12", false, "Sneakin'", "badges");
		settings.Add("bad-13", false, "Witch Hunt", "badges");
		settings.Add("bad-14", false, "Animal Control", "badges");
		settings.Add("bad-15", false, "Annoyance", "badges");
		settings.Add("bad-16", false, "Civic Duty", "badges");
		settings.Add("bad-17", false, "Winnin'", "badges");
		settings.Add("bad-18", false, "Combo Plate", "badges");
		settings.Add("bad-19", false, "Cleanin' Up", "badges");
		settings.Add("bad-20", true, "Findin'", "badges");
		settings.Add("bad-21", false, "Extreme Survivin'", "badges");
		settings.Add("bad-22", true, "Huntin'", "badges");
		settings.Add("bad-23", false, "Advanced Winnin'", "badges");
		settings.Add("bad-24", false, "Survivin'", "badges");
		settings.Add("bad-25", false, "Puppy Poundin'", "badges");
		settings.Add("bad-26", false, "Mad Skeelz", "badges");
		settings.Add("bad-27", false, "Frankenfryin'", "badges");
		settings.Add("bad-28", false, "Combo Magic", "badges");
		settings.Add("bad-29", false, "Hedge Clippin'", "badges");
		settings.Add("bad-30", false, "R-R-R-Remix!", "badges");
		settings.Add("bad-31", false, "Witchcraft", "badges");
		settings.Add("bad-32", false, "Ninjitsu", "badges");
		settings.Add("bad-33", false, "Stayin' Alive", "badges");
		settings.Add("bad-34", false, "Hooliganin'", "badges");
		settings.Add("bad-35", false, "Swampdoggin'", "badges");
		settings.Add("bad-36", false, "Scorin'", "badges");
		settings.Add("bad-37", false, "Brawlin'", "badges");
		settings.Add("bad-38", false, "Minin' For Treasure", "badges");
		settings.Add("bad-39", false, "Digitally Masterin'", "badges");
	
	settings.Add("quests", true, "Quests");
		settings.Add("var-70", true, "Save Halloween Hill", "quests");
		settings.Add("var-71", false, "Tree Trimming", "quests");
		settings.Add("var-72", false, "Scaredy Cat", "quests");
		settings.Add("var-73", true, "Sticky Shoes", "quests");
		settings.Add("var-74", false, "Mushroom Hunt", "quests");
		settings.Add("var-75", false, "Picking Daisies", "quests");
		settings.Add("var-76", false, "Curse The Darkness", "quests");
		settings.Add("var-77", false, "Zombie Stomp", "quests");
		settings.Add("var-78", false, "Smashing Pumpkins", "quests");
		settings.Add("var-79", false, "Mystery Lake", "quests");
		settings.Add("var-80", false, "Beneath The Lake", "quests");
		settings.Add("var-81", false, "Happy Stick?!?", "quests");
		settings.Add("var-82", false, "A True Hero", "quests");
		settings.Add("var-83", false, "Silver Bullet", "quests");
		settings.Add("var-84", false, "Hairy Larry", "quests");
		settings.Add("var-85", false, "Ghostbusting", "quests");
		settings.Add("var-86", false, "The Haunted Tower", "quests");
		settings.Add("var-87", false, "The Last Gate", "quests");
		settings.Add("var-88", false, "The Rescue", "quests");
		settings.Add("var-89", false, "The Collection", "quests");
		
		
	settings.Add("items", true, "Items");
		settings.Add("var-111", false, "Skull Key", "items");
		settings.Add("var-112", false, "Bat Key", "items");
		settings.Add("var-113", false, "Pumpkin Key", "items");
		settings.Add("var-118", true, "Silver", "items");
		settings.Add("var-119", false, "Doomy Daisy", "items");
		settings.Add("var-129", false, "Cat", "items");
		
	
	settings.Add("vars", true, "Other Vars");
		settings.Add("var-156", true, "Underground Tunnel Open", "vars");
		settings.Add("var-157", true, "Musty Crypt Cleansed", "vars");
		settings.Add("var-158", true, "Dusty Crypt Cleansed", "vars");
		settings.Add("var-159", true, "Rusty Crypt Cleansed", "vars");
		settings.Add("var-163", false, "Vampy Open", "vars");
		settings.Add("var-198", false, "Opened Zombiton", "vars");
		settings.Add("var-203", false, "Paid for bridge", "vars");
		settings.Add("var-204", true, "Portal Opened", "vars");
		settings.Add("var-206", false, "Gusty killed", "vars");
		settings.Add("var-207", false, "Stoney killed", "vars");
		settings.Add("var-208", false, "Drippy killed", "vars");
		settings.Add("var-209", false, "Toasty killed", "vars");
		settings.Add("var-211", true, "Bonkula killed", "vars");
	
	settings.Add("levelSplit", false, "Split on map change");
	
	settings.Add("anyStart", true, "Auto Reset/Start for Any%");
	settings.Add("enterVampy", true, "Entered Vampy");
}


reset
{
	if (current.badgeMenu == 0 && current.map == "" && settings["anyStart"])
		return true;
}

start
{
	if (current.badgeMenu == 0 && old.map == "" && current.map == "Luniton Village" && settings["anyStart"])
		return true;
}

split
{
	if (current.map == "")
	{
		//suppress item/quest unlocks when starting a new game an all access is on
		return;
	}
	if (settings["vars"] || settings["items"] || settings["quests"])
	{
		for (int i = 0; i < 256; i++) // or use `current.PlayerVars.Length` instead of 256
		{
			if (old.playerVars[i] == 0 && current.playerVars[i] == 1
				&& settings["var-" + i])
			{
				return true;
			}
		}
	}
	if (settings["badges"])
	{
		for (int i = 0; i < 40; i++) // or use `current.badges.Length` instead of 40
		{
			if (old.badges[i] == 0 && current.badges[i] == 1
				&& settings["bad-" + i])
			{
				return true;
			}
		}
	}
	
	if (settings["levelSplit"])
	{
		if (old.levelNum != current.levelNum)
		{
			return true;
		}
	}
	
	if (settings["enterVampy"] && old.map == "Vampy Land" && current.map == "Castle Vampy")
	{
		return true;
	}
	
}


/*
#define BADGE_EVILIZER	0
#define BADGE_BOWLING	1
#define BADGE_GRAVES	2
#define BADGE_GEMS		3
#define BADGE_MONSTERPTS 4
#define BADGE_MONSTERPTS2 5
#define BADGE_POLTERGUY	6
#define BADGE_DARKNESS	7
#define BADGE_BESTRANK	8
#define BADGE_LOONYBALL	9
#define BADGE_BOSSBASH	10
#define BADGE_BONKULA	11
#define BADGE_SNEAK		12
#define BADGE_WITCH		13
#define BADGE_WOLFDEN	14
#define BADGE_ANNOY		15
#define BADGE_RESCUE	16
#define BADGE_WINGAME	17
#define BADGE_COMBO		18
#define BADGE_ROCKS		19
#define BADGE_HIDDEN	20
#define BADGE_TERRORSRV	21
#define BADGE_KILLALL	22
#define BADGE_HUNDREDPCT 23
#define BADGE_SURVIVAL	24
#define BADGE_LARRY		25
#define BADGE_TERROR	26
#define BADGE_FRANKENJ	27
#define BADGE_SURVCOMBO	28
#define BADGE_CATTAILS	29
#define BADGE_REMIX		30
#define BADGE_WITCHCRAFT 31
#define BADGE_THIEF		32
#define BADGE_SURV100	33
#define BADGE_RIOT		34
#define BADGE_SWAMPDOG	35
#define BADGE_SCORE		36
#define BADGE_BRAWL		37
#define BADGE_HIDDEN2	38
#define BADGE_MASTER	39

#define VAR_HEART		0	// 0-19 = super hearts
#define VAR_LIGHTNING	20	// 20-29 = lightning bolts
#define VAR_ARROW		30	// 30-39 = arrows
#define VAR_PANTS		40	// 40-49 = pants
	// quests
#define VAR_QUESTASSIGN 50	// 50-69 = quest (N-50) has been assigned
#define VAR_QUESTDONE	70	// 70-89 = quest (N-70) is complete
	// inventory
#define VAR_MUSHROOM	90	// 90-99 = mushrooms
#define VAR_MYSORB		100 // 100-103 = have mystery orb
#define VAR_WEAPON		104	// 104-110 = have access to weapon
#define VAR_KEY			111	// 111-113 = have the three special keys
#define VAR_SKULLKEY	111	// 111 = have the skull key
#define VAR_BATKEY		112	// 112 = have the bat key
#define VAR_PUMPKINKEY	113	// 113 = have the pumpkin key
#define VAR_BOOTS		114	// 114 = have the rubber booties
#define VAR_STICK		115	// 115 = have the stick
#define VAR_TORCH		116	// 116 = the stick is lit
#define VAR_FERTILIZER	117	// 117 = have fertilizer
#define VAR_SILVER		118 // 118 = have the silver
#define VAR_DAISY		119 // 119 = have doom daisy
#define VAR_POTION		120 // 120 = have ghost potion
#define VAR_VAMPBUST	121 // 121-128 = have vamp bust
#define VAR_CAT			129	// 129 = have cat
#define VAR_GEM			130 // 130-135 = super gems
	// special stuff
#define VAR_ORBSTAND	150 // 150-153 = have installed orb
#define VAR_BOOTSALES	154	// 154 = have talked to boot salesman once
#define VAR_WITCHTALK	155	// 155 = number of times you've annoyed the witch
#define VAR_BRIDGEOPEN	156	// 156 = the Underground Tunnel bridge has been opened
#define VAR_ZOMBIE		157	// 157-159 = each crypt has been cleaned out
#define VAR_ZOMBIEREWARD 160	// 160 = have received the zombie reward money
#define VAR_TRIPLEFIRE	161	// 161 = have triple-fire crystal
#define VAR_TALISMAN	162	// 162 = have happy stick talisman
#define VAR_VAMPYWALL	163	// 163 = wall to vampy land opened
#define VAR_BATSTATUE	164	// 164-167 = have each bat statue
#define VAR_BATSTAND	168 // 168-171 = bat statue is on stand
#define VAR_VAMPSTAND	172 // 172-179 = vamp bust is on stand
#define VAR_KNOWWOLVES	180	// 180 = have already talked to self about werewolves
#define VAR_DOLL		181	// 181-188 = have doll
#define VAR_REFLECT		189	// 189 = have reflect gem
#define VAR_DOLLGIVEN	190	// 190-197 = have given doll to girl
#define VAR_TOWNOPEN	198 // 198 = have opened zombiton
#define VAR_LEFTBOMB	199	// 199 = have left bomb room with bombs (so remove the powerups)
#define VAR_HELPERBAT	200	// 200 = have the helper bat
#define VAR_TALKBAT		201	// 201 = have talked to the bat once
#define VAR_TALKBRIDGE	202	// 202 = have talked to the bridge guy
#define VAR_PAIDBRIDGE	203	// 203 = have paid the bridge guy
#define VAR_PORTALOPEN	204	// 204 = the portal is officially open
#define VAR_GAVEDAISY	205	// 205 = gave daisy to witch
#define VAR_DEADELDER	206	// 206-209 = elder has been beaten
#define VAR_GATEOUT		210	// 210 = mystery lake electrogate is shorted out
#define VAR_DEADBONK	211	// 211 = bonkula is dead
#define VAR_SEERTALK	212	// 212 = has talked to seer
#define VAR_MINERTALK	213	// 213 = have talked to miner
#define VAR_HPSALES		214	// 214 = have talked to hot pants salesman
#define VAR_DEALERTALK	215	// 215 = have talked to arms dealer
#define VAR_HIPUZZLE	216	// 216 = the HI puzzle is solved in Remix mode

#define VAR_WITCHREWARD	217 // 217 = Witch has given you mushroom prize
#define VAR_LANTERN		218 // 218 = Have the lantern
#define VAR_TREEREWARD	219 // 219 = Rewarded for tree trimming
#define VAR_SILVERSLING	220 // 220 = Have Silver Bullets
#define VAR_LARRYREWARD	221 // 221 = Rewarded for bringing Larry Home
#define VAR_CROPSREWARD	222 // 222 = Rewarded for crop smash
#define VAR_ZOMBIEGEM	223 // 223 = red 100 gem

#define VAR_SEEDSTART	224 // 224 = first char of seed
//#define VAR_SEEDEND		   234 = last char of seed

	// temp variables
#define VAR_TEMP		240	// 240-255 = temporary variables - cleared when leaving a level
*/