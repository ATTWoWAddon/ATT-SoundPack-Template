-- Cache the name of the addon and provide a function to get the relative assets folder path.
local appName = ...;
function asset(name)
	return "Interface\\AddOns\\" .. appName .. "\\assets\\" .. name;
end

-- Here are some examples of how to use the API:
local api = AllTheThings.Audio;
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
		asset("ffvii/complete1.mp3"),
	},
	DEATH = {
		asset("ffvii/death.mp3"),
	},
	FANFARE = {
		asset("ffvii/fanfare1.mp3"),
	},
	RAREFIND = {
		asset("ffvii/rarefind1.mp3"),
	},
	REMOVE = {
		asset("ffvii/remove1.mp3"),
	},
	REPORT = {
		asset("ffvii/report1.mp3"),
	},
});