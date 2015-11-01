-- soundlist --
-- Niebieski, Czerwony, Zielony, Zolty, Stack
-- Wypad, Czaszka, Cyc, Pomaranczowy, Purpurowy
-- Bialy, Moon, Przerwij, Wypierdalaj, Lewo
-- Prawo, Srodek, Pierwszy, Drugi, Trzeci
-- Czwarty, Piaty, Szosty, Uciekaj, ZabierzBossa
-- TwojaKolej, Stoj, Odpalki, Ring, Addy
-- RuszSie, Boss, LewyBok, PrawyBok, LewyTyl
-- PrawyTyl, PrawyPrzod, LewyPrzod, ZabierzAdda, Przod
-- Tyl, Bloodlust, Heroizm, Aura, Banka
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
	[26]  = {name = "PL TwojaKolej",       path = SoundPath .. "TwojaKolej.mp3"},
	[27]  = {name = "PL Stoj",             path = SoundPath .. "Stoj.mp3"},
	[28]  = {name = "PL Odpalki",          path = SoundPath .. "Odpalki.mp3"},
	[29]  = {name = "PL Ring",             path = SoundPath .. "Ring.mp3"},
	[30]  = {name = "PL Addy",             path = SoundPath .. "Addy.mp3"},
	[31]  = {name = "PL RuszSie",          path = SoundPath .. "RuszSie.mp3"},
	[32]  = {name = "PL Boss",             path = SoundPath .. "Boss.mp3"},
	[33]  = {name = "PL LewyBok",          path = SoundPath .. "LewyBok.mp3"},
	[34]  = {name = "PL PrawyBok",         path = SoundPath .. "PrawyBok.mp3"},
	[35]  = {name = "PL LewyTyl",          path = SoundPath .. "LewyTyl.mp3"},
	[36]  = {name = "PL PrawyTyl",         path = SoundPath .. "PrawyTyl.mp3"},
	[37]  = {name = "PL PrawyPrzod",       path = SoundPath .. "PrawyPrzod.mp3"},
	[38]  = {name = "PL LewyPrzod",        path = SoundPath .. "LewyPrzod.mp3"},
	[39]  = {name = "PL ZabierzAdda",      path = SoundPath .. "ZabierzAdda.mp3"},
	[40]  = {name = "PL Przod",            path = SoundPath .. "Przod.mp3"},
	[41]  = {name = "PL Tyl",              path = SoundPath .. "Tyl.mp3"},
	[42]  = {name = "PL Bloodlust",        path = SoundPath .. "Bloodlust.mp3"},
	[43]  = {name = "PL Heroizm",          path = SoundPath .. "Heroizm.mp3"},
	[44]  = {name = "PL Aura",             path = SoundPath .. "Aura.mp3"},
	[45]  = {name = "PL Banka",            path = SoundPath .. "Banka.mp3"}
-- end --
}

for key, value in pairs(sounds) do
	LSM:Register("sound", value.name, value.path)
end