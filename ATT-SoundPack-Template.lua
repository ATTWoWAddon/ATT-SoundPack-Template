-- Cache the name of the addon and provide a function to get the relative assets folder path.
local appName = ...;
function asset(name)
	return "Interface\\AddOns\\" .. appName .. "\\assets\\" .. name;
end

-- Here are some examples of how to use the API:
local api = AllTheThings.Audio;
if not api then
	print(appName .. ": AllTheThings.Audio API is not available. Please make sure that you are using version 3.5.6 or the latest [Git] for the AllTheThings addon!");
	return;
end

--[[
-- Example: All default sounds. If you don't supply any replacement
-- sound tables, then each of the tables will fallback to their
-- defaults provided with the AllTheThings addon.
api:CreateSoundPack("Defaults (#nochanges)", {
	-- Not specifying our own tables, this will simply inherit whatever is in ATT.
});
]]--

--[[
-- Example: All default sounds EXCEPT the report sounds.
-- Some people don't want to be bothered with the report sounds.
-- NOTE: Commented out since there is a default sound pack provided for this already.
api:CreateSoundPack("Defaults (Disabled: Report Sounds)", {
	-- Only specifying the REPORT table prevents any report sound from playing
	REPORT = {},
});
]]--

--[[
-- Example: You can name the sound pack the same as your addon by specifying appName as the name.
api:CreateSoundPack(appName, {
	-- Your content here!
});
]]--

-- Example: All new sounds using the name of this addon as the name of the sound pack!
-- You can also give your sound pack a unique name that contains the name of your addon.
-- This makes it extremely unlikely that you'll encounter a naming collision.
api:CreateSoundPack("Age of Empires (" .. appName .. ")", {
	COMPLETE = {
		-- NOTE: An asset can be an asset path (like the function call), an explicit string path, or a number representing the built-in audio sound you want to play.
		asset("aoe/complete1.mp3"),
	},
	DEATH = {
		asset("aoe/death.mp3"),
	},
	FANFARE = {
		asset("aoe/fanfare1.mp3"),
	},
	RAREFIND = {
		asset("aoe/rarefind1.mp3"),
	},
	REMOVE = {
		asset("aoe/remove1.mp3"),
	},
	REPORT = {
		asset("aoe/report1.mp3"),
	},
});

api:CreateSoundPack("Final Fantasy VII (" .. appName .. ")", {
	COMPLETE = {
		asset("ffvii/complete1.wav"),
	},
	DEATH = {
		asset("ffvii/death.wav"),
	},
	FANFARE = {
		asset("ffvii/fanfare1.wav"),
	},
	RAREFIND = {
		asset("ffvii/rarefind1.wav"),
	},
	REMOVE = {
		asset("ffvii/remove1.wav"),
	},
	REPORT = {
		asset("ffvii/report1.wav"),
	},
});

-- This example shows audio file path ids.
-- You can look them up on WoWHead. Note that if you are targetting Classic,
-- you should make sure that the audio was available at the time!
api:CreateSoundPack("WoW Sound Effects (" .. appName .. ")", {
	COMPLETE = {
		8571,	-- https://www.wowhead.com/classic/sound=8571/crowdcheeralliance1
		8572,	-- https://www.wowhead.com/classic/sound=8572/crowdcheeralliance2
		8573,	-- https://www.wowhead.com/classic/sound=8574/crowdcheerhorde1
		8574,	-- https://www.wowhead.com/classic/sound=8574/crowdcheerhorde2
	},
	DEATH = {
		8860,	-- https://www.wowhead.com/classic/sound=8860/a-raz-naxx-death
	},
	FANFARE = {
		2737,	-- https://www.wowhead.com/classic/sound=2737/dwarf-female-vocal-09-cheer
		2725,	-- https://www.wowhead.com/classic/sound=2725/dwarf-male-vocal-09-cheer
		2689,	-- https://www.wowhead.com/classic/sound=2689/human-female-vocal-09-cheer
		2677,	-- https://www.wowhead.com/classic/sound=2677/human-male-vocal-09-cheer
		2847,	-- https://www.wowhead.com/classic/sound=2847/gnome-female-vocal-09-cheer
		2835,	-- https://www.wowhead.com/classic/sound=2835/gnome-male-vocal-09-cheer
		2761,	-- https://www.wowhead.com/classic/sound=2761/nightelf-female-vocal-09-cheer
		2749,	-- https://www.wowhead.com/classic/sound=2749/nightelf-male-vocal-09-cheer
		2713,	-- https://www.wowhead.com/classic/sound=2713/orc-female-vocal-09-cheer
		2701,	-- https://www.wowhead.com/classic/sound=2701/orc-male-vocal-09-cheer
		2810,	-- https://www.wowhead.com/classic/sound=2810/tauren-female-vocal-09-cheer
		2797,	-- https://www.wowhead.com/classic/sound=2797/tauren-male-vocal-09-cheer
		2871,	-- https://www.wowhead.com/classic/sound=2871/troll-female-vocal-09-cheer
		2859,	-- https://www.wowhead.com/classic/sound=2859/troll-male-vocal-09-cheer
		2785,	-- https://www.wowhead.com/classic/sound=2785/undead-female-vocal-09-cheer
		2773,	-- https://www.wowhead.com/classic/sound=2773/undead-male-vocal-09-cheer
	},
	RAREFIND = {
		3439,	-- https://www.wowhead.com/classic/sound=3439/horngoober
	},
	REMOVE = {
		8693,	-- https://www.wowhead.com/classic/sound=8693/valentines-brokenheart
	},
	REPORT = {
		8694,	-- https://www.wowhead.com/classic/sound=8694/valentines-lookingforloveheart
	},
});