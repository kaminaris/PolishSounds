-- soundlist --
-- Niebieski, Czerwony, Zielony, Zolty, Stack
-- Wypad, Czaszka, Cyc, Pomaranczowy, Purpurowy
-- Bialy, Moon, Przerwij, Wypierdalaj, Lewo
-- Prawo, Srodek, Pierwszy, Drugi, Trzeci
-- Czwarty, Piaty, Szosty, Uciekaj, ZabierzBossa
-- TwojaKolej
-- soundlistend --
local LSM = LibStub("LibSharedMedia-3.0");

local SoundPath = "Interface\\Addons\\TDSounds_PL\\Sounds\\";

local sounds = {
-- start --
	[1]   = {name = "PL Niebieski",        path = SoundPath .. "Niebieski.mp3"},
	[2]   = {name = "PL Czerwony",         path = SoundPath .. "Czerwony.mp3"},
	[3]   = {name = "PL Zielony",          path = SoundPath .. "Zielony.mp3"},
	[4]   = {name = "PL Zolty",            path = SoundPath .. "Zolty.mp3"},
	[5]   = {name = "PL Stack",            path = SoundPath .. "Stack.mp3"},
	[6]   = {name = "PL Wypad",            path = SoundPath .. "Wypad.mp3"},
	[7]   = {name = "PL Czaszka",          path = SoundPath .. "Czaszka.mp3"},
	[8]   = {name = "PL Cyc",              path = SoundPath .. "Cyc.mp3"},
	[9]   = {name = "PL Pomaranczowy",     path = SoundPath .. "Pomaranczowy.mp3"},
	[10]  = {name = "PL Purpurowy",        path = SoundPath .. "Purpurowy.mp3"},
	[11]  = {name = "PL Bialy",            path = SoundPath .. "Bialy.mp3"},
	[12]  = {name = "PL Moon",             path = SoundPath .. "Moon.mp3"},
	[13]  = {name = "PL Przerwij",         path = SoundPath .. "Przerwij.mp3"},
	[14]  = {name = "PL Wypierdalaj",      path = SoundPath .. "Wypierdalaj.mp3"},
	[15]  = {name = "PL Lewo",             path = SoundPath .. "Lewo.mp3"},
	[16]  = {name = "PL Prawo",            path = SoundPath .. "Prawo.mp3"},
	[17]  = {name = "PL Srodek",           path = SoundPath .. "Srodek.mp3"},
	[18]  = {name = "PL Pierwszy",         path = SoundPath .. "Pierwszy.mp3"},
	[19]  = {name = "PL Drugi",            path = SoundPath .. "Drugi.mp3"},
	[20]  = {name = "PL Trzeci",           path = SoundPath .. "Trzeci.mp3"},
	[21]  = {name = "PL Czwarty",          path = SoundPath .. "Czwarty.mp3"},
	[22]  = {name = "PL Piaty",            path = SoundPath .. "Piaty.mp3"},
	[23]  = {name = "PL Szosty",           path = SoundPath .. "Szosty.mp3"},
	[24]  = {name = "PL Uciekaj",          path = SoundPath .. "Uciekaj.mp3"},
	[25]  = {name = "PL ZabierzBossa",     path = SoundPath .. "ZabierzBossa.mp3"},
	[26]  = {name = "PL TwojaKolej",       path = SoundPath .. "TwojaKolej.mp3"}
-- end --
}

for key, value in pairs(sounds) do
	LSM:Register("sound", value.name, value.path)
end