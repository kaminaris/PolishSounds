local LSM = LibStub("LibSharedMedia-3.0");

local SoundPath = "Interface\\Addons\\TDSounds_PL\\Sounds\\";

local sounds = {
	[1] = {name = "PL Bialy!", path = SoundPath .. "Bialy.mp3"}
	[2] = {name = "PL Cyc!", path = SoundPath .. "Cyc.mp3"}
	[3] = {name = "PL Czaszka!", path = SoundPath .. "Czaszka.mp3"}
	[4] = {name = "PL Czerwony!", path = SoundPath .. "Czerwony.mp3"}
	[5] = {name = "PL Moon!", path = SoundPath .. "Moon.mp3"}
	[6] = {name = "PL Niebieski!", path = SoundPath .. "Niebieski.mp3"}
	[7] = {name = "PL Pomaranczowy!", path = SoundPath .. "Pomaranczowy.mp3"}
	[8] = {name = "PL Przerwij!", path = SoundPath .. "Przerwij.mp3"}
	[9] = {name = "PL Purpurowy!", path = SoundPath .. "Purpurowy.mp3"}
	[10] = {name = "PL Stack!", path = SoundPath .. "Stack.mp3"}
	[11] = {name = "PL Wypad!", path = SoundPath .. "Wypad.mp3"}
	[12] = {name = "PL Wypierdalaj!", path = SoundPath .. "Wypierdalaj.mp3"}
	[13] = {name = "PL Zielony!", path = SoundPath .. "Zielony.mp3"}
	[14] = {name = "PL Zolty!", path = SoundPath .. "Zolty.mp3"}
 }

for key, value in pairs(sounds) do
	LSM:Register("sound", value.name, value.path)
end