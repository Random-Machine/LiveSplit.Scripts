// Compatibility:
// > This script works with the popular "FairLight" No-CD and also some other No-CDs from non-English versions.
//   It will check the user is using one of these before doing the update/start/reset/split/isLoading functions.

// Notes:
// > Normal missions will split even if you don't complete them fully or are playing from a save file,
//   so it works with NG+ and Any% as well.

state("Simpsons")
{
	// Credits Lucas Cardellini
	uint verCheck : 0x193FFF;
}

state("Simpsons", "ReleaseEnglish")
{
	// Some basic non-stat memory addresses are stored here.
	int gameState : 0x2C9014, 0xC; // Can be a few different numbers to do with the state the game is currently in.
	int notLoading : 0x2C9018, 0x1D58; // 0 if loading, 1 if not.
	int paused : 0x2C8428, 0x18; // If in the pause menu or not.
	int mainMenu : 0x2C9018, 0x1A18; // If on the main menu or not.
	string11 lastVideoLoaded : 0x2C8980, 0x54, 0x14, 0xF; // File name of the last video file the game loaded.
	int videoPlaying : "binkw32.dll", 0x6521C; // If a video is currently playing or not.
	int newGame : 0x2C842C, 0x6C; // Turns to 0 when a new game is started and changes to 1 when the first level is loaded.
	int coinsTotal : 0x2C8984, 0x111C; // L O D S of E M O N E, what's that spell? Loadsamoney! (probably)
	int activeMission : 0x2C8984, 0x110C; // 0-6 (or 0-7 on level 1 cuz tutorial); doesn't change for bonus missions/races.
	int activeLevel : 0x2C8984, 0x1108; // 0-6 depending on what level you are on.
	int boothScreens : 0x2C8450, 0x34; // If in a phone booth or on a outfit/car buying screen.
	int resumeGame : 0x2C8998; // 0 when on main menu, goes to a high number when Resume Game is pressed.
	int interiorState : 0x2C8FF8, 0x4; // Interior State: 0 - None; 1 - Entering; 2 - Exiting; 3 - Inside. Credit EnAppelsin#6509.
	int loadingRequestHead : 0x2C8FF4, 0x73A4; // Loading Manager -> mRequestHead. Credit EnAppelsin#6509.
	int loadingRequestTail : 0x2C8FF4, 0x73A8; // Loading Manager -> mRequestTail. Credit EnAppelsin#6509.
	int isLoading : 0x2C8FF4, 0x73AC; // Loading Manager -> mLoading. Credit EnAppelsin#6509.
}

state("Simpsons", "ReleaseInternational")
{
	// Some basic non-stat memory addresses are stored here.
	int gameState : 0x2C8FD4, 0xC; // Can be a few different numbers to do with the state the game is currently in.
	int notLoading : 0x2C8FD8, 0x1D58; // 0 if loading, 1 if not.
	int paused : 0x2C83E8, 0x18; // If in the pause menu or not.
	int mainMenu : 0x2C8FD8, 0x1A18; // If on the main menu or not.
	string11 lastVideoLoaded : 0x2C8940, 0x54, 0x14, 0xF; // File name of the last video file the game loaded.
	int videoPlaying : "binkw32.dll", 0x6521C; // If a video is currently playing or not.
	int newGame : 0x2C83EC, 0x6C; // Turns to 0 when a new game is started and changes to 1 when the first level is loaded.
	int coinsTotal : 0x2C8944, 0x111C; // L O D S of E M O N E, what's that spell? Loadsamoney! (probably)
	int activeMission : 0x2C8944, 0x110C; // 0-6 (or 0-7 on level 1 cuz tutorial); doesn't change for bonus missions/races.
	int activeLevel : 0x2C8944, 0x1108; // 0-6 depending on what level you are on.
	int boothScreens : 0x2C8410, 0x34; // If in a phone booth or on a outfit/car buying screen.
	int resumeGame : 0x2C8958; // 0 when on main menu, goes to a high number when Resume Game is pressed.
	int interiorState : 0x2C8FB8, 0x4; // Interior State: 0 - None; 1 - Entering; 2 - Exiting; 3 - Inside. Credit EnAppelsin#6509.
	int loadingRequestHead : 0x2C8FB4, 0x73A4; // Loading Manager -> mRequestHead. Credit EnAppelsin#6509.
	int loadingRequestTail : 0x2C8FB4, 0x73A8; // Loading Manager -> mRequestTail. Credit EnAppelsin#6509.
	int isLoading : 0x2C8FB4, 0x73AC; // Loading Manager -> mLoading. Credit EnAppelsin#6509.
}

state("Simpsons", "BestSellersSeries")
{
	// Some basic non-stat memory addresses are stored here.
	int gameState : 0x2C900C, 0xC; // Can be a few different numbers to do with the state the game is currently in.
	int notLoading : 0x2C9010, 0x1D58; // 0 if loading, 1 if not.
	int paused : 0x2C8420, 0x18; // If in the pause menu or not.
	int mainMenu : 0x2C9010, 0x1A18; // If on the main menu or not.
	string11 lastVideoLoaded : 0x2C8978, 0x54, 0x14, 0xF; // File name of the last video file the game loaded.
	int videoPlaying : "binkw32.dll", 0x6521C; // If a video is currently playing or not.
	int newGame : 0x2C8424, 0x6C; // Turns to 0 when a new game is started and changes to 1 when the first level is loaded.
	int coinsTotal : 0x2C897C, 0x111C; // L O D S of E M O N E, what's that spell? Loadsamoney! (probably)
	int activeMission : 0x2C897C, 0x110C; // 0-6 (or 0-7 on level 1 cuz tutorial); doesn't change for bonus missions/races.
	int activeLevel : 0x2C897C, 0x1108; // 0-6 depending on what level you are on.
	int boothScreens : 0x2C8448, 0x34; // If in a phone booth or on a outfit/car buying screen.
	int resumeGame : 0x2C8990; // 0 when on main menu, goes to a high number when Resume Game is pressed.
	int interiorState : 0x2C8FF0, 0x4; // Interior State: 0 - None; 1 - Entering; 2 - Exiting; 3 - Inside. Credit EnAppelsin#6509.
	int loadingRequestHead : 0x2C8FEC, 0x73A4; // Loading Manager -> mRequestHead. Credit EnAppelsin#6509.
	int loadingRequestTail : 0x2C8FEC, 0x73A8; // Loading Manager -> mRequestTail. Credit EnAppelsin#6509.
	int isLoading : 0x2C8FEC, 0x73AC; // Loading Manager -> mLoading. Credit EnAppelsin#6509.
}

startup
{
	// Setting a lower refresh rate, we don't need 60fps accuracy and hopefully it helps out some people.
	refreshRate = 30;

	// Level 1 settings.
	settings.Add("level1", false, "Level 1");
	settings.Add("L1M0", false, "0: The Cola Caper (Tutorial Mission)", "level1");
	settings.Add("L1M1", false, "1: S-M-R-T", "level1");
	settings.Add("L1M2", false, "2: Petty Theft Homer", "level1");
	settings.Add("L1M3", false, "3: Office Spaced", "level1");
	settings.Add("L1M4", false, "4: Blind Big Brother", "level1");
	settings.Add("L1M5", false, "5: Flowers by Irene", "level1");
	settings.Add("L1M6", false, "6: Bonestorm Storm", "level1");
	settings.Add("L1M7", false, "7: The Fat and Furious", "level1");
	settings.SetToolTip("L1M7", "Splits when you move to the next level.");
	settings.Add("l1100%", false, "100%", "level1");
	settings.Add("L1Races", false, "Races", "l1100%");
	settings.Add("L1TimeTrial", false, "Time Trial", "L1Races");
	settings.Add("L1CircuitRace", false, "Circuit", "L1Races");
	settings.Add("L1CheckpointRace", false, "Checkpoint", "L1Races");
	settings.Add("L1BM", false, "Bonus Mission: This Old Shanty", "l1100%");
	
	// Level 2 settings.
	settings.Add("level2", false, "Level 2");
	settings.Add("L2M1", false, "1: Detention Deficit Disorder", "level2");
	settings.Add("L2M2", false, "2: Weapons of Mass Delinquency", "level2");
	settings.Add("L2M3", false, "3: Vox Nerduli", "level2");
	settings.Add("L2M4", false, "4: Bart 'n' Frink", "level2");
	settings.Add("L2M5", false, "5: Better than Beef", "level2");
	settings.Add("L2M6", false, "6: Monkey See, Monkey D'oh!", "level2");
	settings.Add("L2M7", false, "7: Cell-Outs", "level2");
	settings.SetToolTip("L2M7", "Splits when you move to the next level.");
	settings.Add("L2FMV", false, "After FMV (for NMS/W)", "level2");
	settings.SetToolTip("L2FMV", "Splits once the final FMV for this level has done playing, for No Mission Skips/Warps use.");
	settings.Add("l2100%", false, "100%", "level2");
	settings.Add("L2Races", false, "Races", "l2100%");
	settings.Add("L2TimeTrial", false, "Time Trial", "L2Races");
	settings.Add("L2CircuitRace", false, "Circuit", "L2Races");
	settings.Add("L2CheckpointRace", false, "Checkpoint", "L2Races");
	settings.Add("L2BM", false, "Bonus Mission: Dial B for Blood", "l2100%");
	
	// Level 3 settings.
	settings.Add("level3", false, "Level 3");
	settings.Add("L3M1", false, "1: Nerd Race Queen", "level3");
	settings.Add("L3M2", false, "2: Clueless", "level3");
	settings.Add("L3M3", false, "3: Bonfire of the Manatees", "level3");
	settings.Add("L3M4", false, "4: Operation Hellfish", "level3");
	settings.Add("L3M5", false, "5: Slithery Sleuthing", "level3");
	settings.Add("L3M6", false, "6: Fishy Deals", "level3");
	settings.Add("L3M7", false, "7: The Old Pirate and the Sea", "level3");
	settings.SetToolTip("L3M7", "Splits when you move to the next level.");
	settings.Add("l3100%", false, "100%", "level3");
	settings.Add("L3Races", false, "Races", "l3100%");
	settings.Add("L3TimeTrial", false, "Time Trial", "L3Races");
	settings.Add("L3CircuitRace", false, "Circuit", "L3Races");
	settings.Add("L3CheckpointRace", false, "Checkpoint", "L3Races");
	settings.Add("L3BM", false, "Bonus Mission: Princi-Pal", "l3100%");
	
	// Level 4 settings.
	settings.Add("level4", false, "Level 4");
	settings.Add("L4M1", false, "1: For A Few Donuts More", "level4");
	settings.Add("L4M2", false, "2: Redneck Roundup", "level4");
	settings.Add("L4M3", false, "3: Ketchup Logic", "level4");
	settings.Add("L4M4", false, "4: Return of the Nearly-Dead", "level4");
	settings.Add("L4M5", false, "5: Wolves Stole My Pills", "level4");
	settings.Add("L4M6", false, "6: Cola Wars", "level4");
	settings.Add("L4M7", false, "7: From Outer Space", "level4");
	settings.SetToolTip("L4M7", "Splits when you move to the next level.");
	settings.Add("l4100%", false, "100%", "level4");
	settings.Add("L4Races", false, "Races", "l4100%");
	settings.Add("L4TimeTrial", false, "Time Trial", "L4Races");
	settings.Add("L4CircuitRace", false, "Circuit", "L4Races");
	settings.Add("L4CheckpointRace", false, "Checkpoint", "L4Races");
	settings.Add("L4BM", false, "Bonus Mission: Beached Love", "l4100%");
	
	// Level 5 settings.
	settings.Add("level5", false, "Level 5");
	settings.Add("L5M1", false, "1: Incriminating Caffeine", "level5");
	settings.Add("L5M2", false, "2: ...and Baby Makes 8", "level5");
	settings.Add("L5M3", false, "3: Eight is Too Much", "level5");
	settings.Add("L5M4", false, "4: This Little Piggy", "level5");
	settings.Add("L5M5", false, "5: Never Trust a Snake", "level5");
	settings.Add("L5M6", false, "6: Kwik Cash", "level5");
	settings.Add("L5M7", false, "7: Curious Curator", "level5");
	settings.SetToolTip("L5M7", "Splits when you move to the next level.");
	settings.Add("L5FMV", false, "After FMV (for NMS/W)", "level5");
	settings.SetToolTip("L5FMV", "Splits once the final FMV for this level has done playing, for No Mission Skips/Warps use.");
	settings.Add("l5100%", false, "100%", "level5");
	settings.Add("L5Races", false, "Races", "l5100%");
	settings.Add("L5TimeTrial", false, "Time Trial", "L5Races");
	settings.Add("L5CircuitRace", false, "Circuit", "L5Races");
	settings.Add("L5CheckpointRace", false, "Checkpoint", "L5Races");
	settings.Add("L5BM", false, "Bonus Mission: Kinky Frinky", "l5100%");
	
	// Level 6 settings.
	settings.Add("level6", false, "Level 6");
	settings.Add("L6M1", false, "1: Going to the Lu'", "level6");
	settings.Add("L6M2", false, "2: Getting Down with the Clown", "level6");
	settings.Add("L6M3", false, "3: Lab Coat Caper", "level6");
	settings.Add("L6M4", false, "4: Duff for Me, Duff for You", "level6");
	settings.Add("L6M5", false, "5: Full Metal Jackass", "level6");
	settings.Add("L6M6", false, "6: Set To Kill", "level6");
	settings.Add("L6M7", false, "7: Kang and Kodos Strike Back", "level6");
	settings.SetToolTip("L6M7", "Splits when you move to the next level.");
	settings.Add("L6FMV", false, "After FMV (for NMS/W)", "level6");
	settings.SetToolTip("L6FMV", "Splits once the final FMV for this level has done playing, for No Mission Skips/Warps use.");
	settings.Add("l6100%", false, "100%", "level6");
	settings.Add("L6Races", false, "Races", "l6100%");
	settings.Add("L6TimeTrial", false, "Time Trial", "L6Races");
	settings.Add("L6CircuitRace", false, "Circuit", "L6Races");
	settings.Add("L6CheckpointRace", false, "Checkpoint", "L6Races");
	settings.Add("L6M2100%", false, "M2: Getting Down with the Clown (for 100%)", "l6100%");
	settings.SetToolTip("L6M2100%",
		@"Splits once the mission has actually been fully completed;
only use this if your route involves initially skippping this mission.");
	settings.Add("L6BM", false, "Bonus Mission: Milking the Pigs", "l6100%");
	
	// Level 7 settings.
	settings.Add("level7", true, "Level 7");
	settings.Add("L7M1", false, "1: Rigor Motors", "level7");
	settings.Add("L7M2", false, "2: Long Black Probes", "level7");
	settings.Add("L7M3", false, "3: Pocket Protector", "level7");
	settings.Add("L7M4", false, "4: There's Something About Monty", "level7");
	settings.Add("L7M5", false, "5: Alien \"Auto\"topsy Part I", "level7");
	settings.Add("L7M6", false, "6: Alien \"Auto\"topsy Part II", "level7");
	settings.Add("L7M7", true, "7: Alien \"Auto\"topsy Part III", "level7");
	settings.SetToolTip("L7M7", 
		@"Splits once the mission has been completed but before the final FMV starts playing
even if the mission was completed before");
	settings.Add("l7100%", false, "100%", "level7");
	settings.Add("L7Races", false, "Races", "l7100%");
	settings.Add("L7TimeTrial", false, "Time Trial", "L7Races");
	settings.Add("L7CircuitRace", false, "Circuit", "L7Races");
	settings.Add("L7CheckpointRace", false, "Checkpoint", "L7Races");
	settings.Add("L7M7100%", false, "M7: Alien \"Auto\"topsy Part III (for 100%)", "l7100%");
	settings.SetToolTip("L7M7100%",
		@"Splits once the mission has been completed but before the final FMV starts playing
if the mission was never completed before; use this one instead of the one above for 100%.");
	settings.Add("L7BM", false, "Bonus Mission: Flaming Tires", "l7100%");
	
	// Add the header for misc. 100% stuff.
	settings.Add("misc100%", false, "Miscellaneous 100% Stuff");
	
	// Add the setting for picking up the bonus movie ticket.
	settings.Add("bonusMovie", false, "Bonus Movie", "misc100%");
	settings.SetToolTip("bonusMovie", "Splits when you pick up the ticket in the Android's Dungeon.");
	
	// Add the setting for the final 100% split.
	settings.Add("finalSplit100%", false, "100%", "misc100%");
	settings.SetToolTip("finalSplit100%",
		@"Splits after every goal towards 100% has been completed.
If you are having autosplitter issues, it's suggested you disable this.");

	// Add the setting for NG+ start/reset.
	settings.Add("startNG+", false, "Start Timer on Resume Game (for NG+)");
	settings.SetToolTip("startNG+",
		@"DO NOT USE FOR NON NG+ CATEGORIES.
Starts the timer when the Resume Game option is selected.
Only useful for New Game Plus categories.");
	settings.Add("resetNG+", false, "Reset Timer on Resume Game (for NG+)");
	settings.SetToolTip("resetNG+",
		@"DO NOT USE FOR NON NG+ CATEGORIES.
Resets the timer when the Resume Game option is selected.
Only useful for New Game Plus categories.");
	
	// Memory address pointers for all of the 100% stats in the game.
	vars.statPointers = new Dictionary<int, string> {
		{unchecked((int)0xFFFFFE28), "L1CollectorCards"},
		{0x238, "L1Wasps"},
		{0x24C, "L1Gags"},
		{0x234, "L1CharacterClothing"},
		{0x230, "L1Vehicles"}, // Doesn't count cars won.
		{0x19C, "L1TimeTrial"},
		{0x1BC, "L1CircuitRace"},
		{0x1DC, "L1CheckpointRace"},
		{0xBC, "L1M1"},
		{0xDC, "L1M2"},
		{0xFC, "L1M3"},
		{0x11C, "L1M4"},
		{0x13C, "L1M5"},
		{0x15C, "L1M6"},
		{0x17C, "L1M7"},
		{0x1FC, "L1BM"},
		{unchecked((int)0xFFFFFE48), "L2CollectorCards"},
		{0x4A4, "L2Wasps"},
		{0x4B8, "L2Gags"},
		{0x4A0, "L2CharacterClothing"},
		{0x49C, "L2Vehicles"}, // Doesn't count cars won.
		{0x408, "L2TimeTrial"},
		{0x428, "L2CircuitRace"},
		{0x448, "L2CheckpointRace"},
		{0x308, "L2M1"},
		{0x328, "L2M2"},
		{0x348, "L2M3"},
		{0x368, "L2M4"},
		{0x388, "L2M5"},
		{0x3A8, "L2M6"},
		{0x3C8, "L2M7"},
		{0x468, "L2BM"},
		{unchecked((int)0xFFFFFE68), "L3CollectorCards"},
		{0x710, "L3Wasps"},
		{0x724, "L3Gags"},
		{0x70C, "L3CharacterClothing"},
		{0x708, "L3Vehicles"}, // Doesn't count cars won.
		{0x674, "L3TimeTrial"},
		{0x694, "L3CircuitRace"},
		{0x6B4, "L3CheckpointRace"},
		{0x574, "L3M1"},
		{0x594, "L3M2"},
		{0x5B4, "L3M3"},
		{0x5D4, "L3M4"},
		{0x5F4, "L3M5"},
		{0x614, "L3M6"},
		{0x634, "L3M7"},
		{0x6D4, "L3BM"},
		{unchecked((int)0xFFFFFE88), "L4CollectorCards"},
		{0x97C, "L4Wasps"},
		{0x990, "L4Gags"},
		{0x978, "L4CharacterClothing"},
		{0x974, "L4Vehicles"}, // Doesn't count cars won.
		{0x8E0, "L4TimeTrial"},
		{0x900, "L4CircuitRace"},
		{0x920, "L4CheckpointRace"},
		{0x7E0, "L4M1"},
		{0x800, "L4M2"},
		{0x820, "L4M3"},
		{0x840, "L4M4"},
		{0x860, "L4M5"},
		{0x880, "L4M6"},
		{0x8A0, "L4M7"},
		{0x940, "L4BM"},
		{unchecked((int)0xFFFFFEA8), "L5CollectorCards"},
		{0xBE8, "L5Wasps"},
		{0xBFC, "L5Gags"},
		{0xBE4, "L5CharacterClothing"},
		{0xBE0, "L5Vehicles"}, // Doesn't count cars won.
		{0xB4C, "L5TimeTrial"},
		{0xB6C, "L5CircuitRace"},
		{0xB8C, "L5CheckpointRace"},
		{0xA4C, "L5M1"},
		{0xA6C, "L5M2"},
		{0xA8C, "L5M3"},
		{0xAAC, "L5M4"},
		{0xACC, "L5M5"},
		{0xAEC, "L5M6"},
		{0xB0C, "L5M7"},
		{0xBAC, "L5BM"},
		{unchecked((int)0xFFFFFEC8), "L6CollectorCards"},
		{0xE54, "L6Wasps"},
		{0xE68, "L6Gags"},
		{0xE50, "L6CharacterClothing"},
		{0xE4C, "L6Vehicles"}, // Doesn't count cars won.
		{0xDB8, "L6TimeTrial"},
		{0xDD8, "L6CircuitRace"},
		{0xDF8, "L6CheckpointRace"},
		{0xCB8, "L6M1"},
		{0xCD8, "L6M2"},
		{0xCF8, "L6M3"},
		{0xD18, "L6M4"},
		{0xD38, "L6M5"},
		{0xD58, "L6M6"},
		{0xD78, "L6M7"},
		{0xE18, "L6BM"},
		{unchecked((int)0xFFFFFEE8), "L7CollectorCards"},
		{0x10C0, "L7Wasps"},
		{0x10D4, "L7Gags"},
		{0x10BC, "L7CharacterClothing"},
		{0x10B8, "L7Vehicles"}, // Doesn't count cars won.
		{0x1024, "L7TimeTrial"},
		{0x1044, "L7CircuitRace"},
		{0x1064, "L7CheckpointRace"},
		{0xF24, "L7M1"},
		{0xF44, "L7M2"},
		{0xF64, "L7M3"},
		{0xF84, "L7M4"},
		{0xFA4, "L7M5"},
		{0xFC4, "L7M6"},
		{0xFE4, "L7M7"},
		{0x1084, "L7BM"},
		{0x704, "BonusMovie"}
	};

	// Custom function used to change things when the splits start.
	Action<float> onStart = (offset) => {
		vars.canStart = false;
		if (offset != -1.0F) {
			vars.originalOffset = timer.Run.Offset.TotalSeconds; // Stores the initial offset the user has set.
			timer.Run.Offset = TimeSpan.FromSeconds(offset);
		}
	};
	vars.onStart = onStart;

	// Customer function used to change things when the splits reset.
	Action onReset = () => {
		timer.Run.Offset = TimeSpan.FromSeconds(vars.originalOffset); // Reset the splits offset back to their original.
		vars.splitsDone.Clear(); // Clear the list of already done splits.
		vars.lastSplitTimestamp = 0;
	};
	vars.onReset = onReset;
}

init
{
	// Declaring variables.
	vars.canStart = true; // The timer is allowed to start after the game has booted.
	vars.originalOffset = timer.Run.Offset.TotalSeconds; // Stores the initial offset the user has set.
	vars.splitsDone = new List<string>(); // Stores splits already done.
	vars.lastSplitTimestamp = 0; // Keeps track of the time the last split was made.
	
	// Version checking. Credits Lucas Cardellini
	switch (current.verCheck)
	{
		case 0xFAE804C5: // Demo
		case 0xC985ED33: // Release International
			version = "ReleaseInternational";
			break;
		case 0x4B8B2274: // Release English
			version = "ReleaseEnglish";
			break;
		case 0xFC468D05: // Best Sellers Series
			version = "BestSellersSeries";
			break;
	}
	
	// If the 100% final split is enabled or we need to calculate percentage, all the pointers
	// need to be added. Otherwise, we can just add the ones applicable to save on resources.
	Dictionary<int, string> filteredStatPointers = new Dictionary<int, string>();
	if (settings["finalSplit100%"])
		filteredStatPointers = vars.statPointers;
	else {
		foreach (var pointer in vars.statPointers) {
			if ((pointer.Value.Contains("BM") && settings[pointer.Value]) // Bonus Missions
			|| (pointer.Value.Contains("TimeTrial") && settings[pointer.Value]) // Time Trial
			|| (pointer.Value.Contains("CircuitRace") && settings[pointer.Value]) // Circuit Race
			|| (pointer.Value.Contains("CheckpointRace") && settings[pointer.Value]) // Checkpoint Race
			|| (pointer.Value == "L6M2" && settings["L6M2100%"]) // Extra L6M2 100% Split
			|| (pointer.Value == "L7M7" && settings["L7M7100%"]) // Extra L7M7 100% Split
			|| (pointer.Value == "BonusMovie" && settings["bonusMovie"])) // Bonus Movie Ticket
				filteredStatPointers.Add(pointer.Key, pointer.Value);
		}
	}
	
	// Goes through the dictionary above and adds those pointers with the base address to the memory watcher list.
	vars.statWatchers = new MemoryWatcherList();
	foreach (var pointer in filteredStatPointers) {
		switch (version)
		{
			case "ReleaseEnglish":
				vars.statWatchers.Add(new MemoryWatcher<byte>(new DeepPointer(0x2C8984, pointer.Key)) { Name = pointer.Value });
				break;
			case "ReleaseInternational":
				vars.statWatchers.Add(new MemoryWatcher<byte>(new DeepPointer(0x2C8944, pointer.Key)) { Name = pointer.Value });
				break;
			case "BestSellersSeries":
				vars.statWatchers.Add(new MemoryWatcher<byte>(new DeepPointer(0x2C897C, pointer.Key)) { Name = pointer.Value });
				break;
		}
	}
}

update
{
	// Disables all the action blocks below in the code if the user is using an unsupported version.
	if (version == "")
		return false;
	
	// Stores the curent phase the timer is in, so we can use the old one on the next frame.
	current.timerPhase = timer.CurrentPhase;

	// Stores the current split index we're on, so we can use the old one on the next frame.
	current.splitIndex = timer.CurrentSplitIndex;
	
	// Update all of the memory readings for the stats.
	vars.statWatchers.UpdateAll(game);

	// Runs when timer is reset manually, as long as the state changes for more than 1 frame.
	// (In most cases for this game this don't happen on auto-reset though, due to it happening
	// on the same frame as the auto-start).
	if (old.timerPhase != current.timerPhase && current.timerPhase == TimerPhase.NotRunning)
		vars.onReset();
	
	// Runs when reset manually, so we don't need to rely on the start action in this script.
	if (old.timerPhase != current.timerPhase && old.timerPhase != TimerPhase.Paused && current.timerPhase == TimerPhase.Running)
		vars.onStart(-1.0F); // Temporary solution because we have to pass something.

	// Sets the timestamp when we move to a new split, will work even if someone does it manually.
	if (current.splitIndex > old.splitIndex)
		vars.lastSplitTimestamp = Environment.TickCount;
	
	// Allows the timer to start automatically again when it won't cause issues.
	if (!vars.canStart && current.newGame == 1)
		vars.canStart = true;
}

split
{
	vars.doSplit = false;
	vars.splitID = null;
	vars.canSplitMissions = false;

	// Activate the mission splits when 8 seconds have elapsed since the last one.
	if (Environment.TickCount - vars.lastSplitTimestamp > 8000)
		vars.canSplitMissions = true;
	
	// While the game is booting (state 0) the 100% values can be messed up so don't want to check then.
	if (current.gameState > 0) {
		// If the current mission we're on is 1 higher than the last one and we're on the same level.
		if (current.activeLevel == old.activeLevel && current.activeMission == old.activeMission+1) {
			// If the settings for the level we are currently on are activated.
			if (settings["level"+(current.activeLevel+1)]) {
				// Level 1's mission numbers works slightly differently.
				var onLevel1 = 0;
				if (current.activeLevel == 0)
					onLevel1 = 1;
				
				// If the setting for splitting the mission we just finished is set, split!
				if (settings["L"+(current.activeLevel+1)+"M"+(current.activeMission-onLevel1)]) {
					vars.splitID = "L"+(current.activeLevel+1)+"M"+(current.activeMission-onLevel1);
					vars.doSplit = true;
				}
			}
		}
		
		// If we're past level 1.
		if (current.activeLevel > 0) {
			// If we just moved a level higher and all of the missions have been done in the last level.
			if (current.activeLevel == old.activeLevel+1 && old.activeMission >= 6) {
				// If the setting for splitting the last mission on the level we just came from is set, split.
				if (settings["level"+current.activeLevel] && settings["L"+(current.activeLevel)+"M7"]) {
					vars.splitID = "L"+(current.activeLevel)+"M7";
					vars.doSplit = true;
				}
			}
		}
		
		// If the normal settings and the 100% settings for the level we are currently on are activated.
		if (settings["level"+(current.activeLevel+1)] && settings["l"+(current.activeLevel+1)+"100%"]) {
			// If the bonus mission in the current level is done.
			if (settings["L"+(current.activeLevel+1)+"BM"]
			&& vars.statWatchers["L"+(current.activeLevel+1)+"BM"].Current > vars.statWatchers["L"+(current.activeLevel+1)+"BM"].Old)
				vars.doSplit = true;
			
			// If the settings for the races are activated.
			if (settings["L"+(current.activeLevel+1)+"Races"]) {
				// If the time trial in the current level is done.
				if (settings["L"+(current.activeLevel+1)+"TimeTrial"]
				&& vars.statWatchers["L"+(current.activeLevel+1)+"TimeTrial"].Current > vars.statWatchers["L"+(current.activeLevel+1)+"TimeTrial"].Old)
					vars.doSplit = true;
				
				// If the circuit race in the current level is done.
				if (settings["L"+(current.activeLevel+1)+"CircuitRace"]
				&& vars.statWatchers["L"+(current.activeLevel+1)+"CircuitRace"].Current > vars.statWatchers["L"+(current.activeLevel+1)+"CircuitRace"].Old)
					vars.doSplit = true;
				
				// If the checkpoint race in the current level is done.
				if (settings["L"+(current.activeLevel+1)+"CheckpointRace"]
				&& vars.statWatchers["L"+(current.activeLevel+1)+"CheckpointRace"].Current > vars.statWatchers["L"+(current.activeLevel+1)+"CheckpointRace"].Old)
					vars.doSplit = true;
			}

			// Some unique things for 100% in level 6.
			if (current.activeLevel+1 == 6) {
				// Split when "Getting Down with the Clown" is actually completed.
				if (settings["L6M2100%"]
				&& vars.statWatchers["L6M2"].Current > vars.statWatchers["L6M2"].Old)
					vars.doSplit = true;
			}
			
			// Some unique things for 100% in level 7.
			if (current.activeLevel+1 == 7) {
				// Split for L7M7, but for after the mission is completed but before the final FMV starts. Could be used for 100% runs if needed.
				if (settings["L7M7100%"]
				&& vars.statWatchers["L7M7"].Current > vars.statWatchers["L7M7"].Old)
					vars.doSplit = true;
			}
		}
		
		// Used to detect when a video file stops playing, so we can split after it's done if needed.
		// The active level needs to be 1 higher than the one the FMV is played in, because in memory the game has already moved on to the next level.
		if (old.videoPlaying == 1 && current.videoPlaying == 0) {
			if (current.activeLevel+1 == 3 && settings["L2FMV"] && current.lastVideoLoaded == "fmv3.rmv") {
				vars.splitID = "L2FMV";
				vars.doSplit = true;
			}
			if (current.activeLevel+1 == 6 && settings["L5FMV"] && current.lastVideoLoaded == "fmv5.rmv") {
				vars.splitID = "L5FMV";
				vars.doSplit = true;
			}
			if (current.activeLevel+1 == 7 && settings["L6FMV"] && current.lastVideoLoaded == "fmv6.rmv") {
				vars.splitID = "L6FMV";
				vars.doSplit = true;
			}
		}

		// Final split for all full-game categories, as soon as the final mission ends (which actually loops back around to L1M1).
		if (settings["L7M7"]
		&& old.activeLevel == 6 && current.activeLevel == 0 && old.activeMission == 6 && current.activeMission == 1) {
			vars.splitID = "L7M7";
			vars.doSplit = true;
		}
		
		// If the settings for the misc. 100% stuff are activated.
		if (settings["misc100%"]) {
			// Splits once the bonus movie ticket has been picked up.
			if (settings["bonusMovie"] && vars.statWatchers["BonusMovie"].Current > vars.statWatchers["BonusMovie"].Old)
				vars.doSplit = true;
			
			// Final split for 100%, once all goals that count towards 100% are completed.
			if (settings["finalSplit100%"]) {
				// Add the total objectives done together.
				var total = ((MemoryWatcherList)vars.statWatchers).Sum(x => (byte)x.Current);
				
				// If all of the objectives have been done, split!
				if (total == 393)
					vars.doSplit = true;
			}
		}
	}
	
	if (vars.doSplit) {
		// If an ID was set for the split earlier, it will only split if not in the "already split" list and we're allowed to.
		if (vars.canSplitMissions && vars.splitID != null && !vars.splitsDone.Contains(vars.splitID)) {
			vars.splitsDone.Add(vars.splitID);
			return true;
		}
		else if (vars.splitID == null) {
			return true;
		}
	}
}

start
{
	if (!vars.canStart)
		return false;

	// For "New Game", done on the same frame as the reset, when a new game is started and the FMV is loaded in.
	if (current.newGame == 0 && current.mainMenu == 1 && current.lastVideoLoaded == "fmv1a.rmv") {
		vars.onStart(0.0F); // Offset to start the timer at.
		return true;
	}

	// For "Resume Game" using the community save, done on the same frame as the reset, we need to check that we're (probably) at the start of a new run.
	else if (current.newGame == 1 && current.coinsTotal == 0 && current.activeMission == 0 && current.activeLevel == 0
		&& current.mainMenu == 1 && current.gameState == 8 && old.gameState == 2) {
		vars.onStart(40.9F); // Offset to start the timer at.
		return true;
	}

	// For "Resume Game" using any save, as long as the setting is enabled, done on the same frame as the reset.
	else if (settings["startNG+"] && current.newGame == 1 && current.mainMenu == 1 && current.gameState == 2 && old.resumeGame == 0 && current.resumeGame > 0) {
		vars.onStart(0.0F); // Offset to start the timer at.
		return true;
	}
}

reset
{
	// For "New Game", done on the same frame as the start split, when a new game is started and the FMV is loaded in.
	if (old.newGame > current.newGame && current.mainMenu == 1 && current.lastVideoLoaded == "fmv1a.rmv") {
		vars.onReset();
		return true;
	}

	// For "Resume Game" using the community save, done on the same frame as the start split, we need to check that we're (probably) at the start of a new run.
	else if (current.newGame == 1 && current.coinsTotal == 0 && current.activeMission == 0 && current.activeLevel == 0
		&& current.mainMenu == 1 && current.gameState == 8 && old.gameState == 2) {
		vars.onReset();
		return true;
	}
	
	// For "Resume Game" using any save, as long as the setting is enabled, done on the same frame as the start split.
	else if (settings["resetNG+"] && current.newGame == 1 && current.mainMenu == 1 && current.gameState == 2 && old.resumeGame == 0 && current.resumeGame > 0) {
		vars.onReset();
		return true;
	}
}

shutdown
{
	vars.onReset();
}

exit
{
	vars.onReset();
}

isLoading
{
	// Load removing for most loading screens in the game.
	return current.gameState == 8
	|| (current.gameState == 10 && current.notLoading == 0 && current.paused == 0 && current.boothScreens == 0)
	|| (current.gameState == 2 && current.mainMenu == 0)
	|| ((current.interiorState == 1 || current.interiorState == 2) && (current.isLoading == 1 || current.loadingRequestHead != current.loadingRequestTail));
}
