-- soundlist --
-- Niebieski, Czerwony, Zielony, Żółty, Stak
-- Wypad, Czaszka, Cyc, Pomarańczowy, Purpurowy
-- Biały, Moon, Przerwij, Wypierdalaj, Lewo
-- Prawo, Środek, Pierwszy, Drugi, Trzeci
-- Czwarty, Piąty, Szósty, Uciekaj, Zabierz Bosa
-- Twoja Kolej, Stój, Odpałki, Ady, Rusz Się
-- Bos, Lewy Bok, Prawy Bok, Lewy Tył, Prawy Tył
-- Prawy Przód, Lewy Przód, Zabierz Ada, Przód, Tył
-- Bladlast, Heroizm, Aura, Bańka, Zmień Cel
-- Odwróć się, Bij Bosa, Idź do Bosa, Unikaj, Uwaga
-- Uwaga Żaby, Laser, Do Bariery, Nie sołkuj, Nie można cię leczyć
-- Spałnujesz Plamy, Zabij Totem, Ukryj się, Wejdź do robota, Podnieś orba
-- Podnieś kulkę, Frontal, Promień, Bezpieczny, Usuń staki
-- Do ognia, Do beczki, Unikaj strzał, Zaraz dispele, Stań na gwiazdce
-- Stań na czaszce, Stań na niebieskim, Stań na pomarańczowym, Sołkuj na zielonym, Sołkuj na fioletowym
-- Sołkuj na czerwonym, Biegaj wokół gwiazdki, Biegaj gdzieś wpizdu, Solo biegaj
-- soundlistend --
local addonName, PolishSounds = ...
local LSM = LibStub('LibSharedMedia-3.0');

local SoundPath = 'Interface\\Addons\\PolishSounds\\Sounds\\';

local sounds = {
-- start --
{name = 'PL Niebieski',                            path = SoundPath .. 'PL_niebieski.mp3'},
{name = 'PL Czerwony',                             path = SoundPath .. 'PL_czerwony.mp3'},
{name = 'PL Zielony',                              path = SoundPath .. 'PL_zielony.mp3'},
{name = 'PL Żółty',                             path = SoundPath .. 'PL_zolty.mp3'},
{name = 'PL Stack',                                path = SoundPath .. 'PL_stak.mp3'},
{name = 'PL Wypad',                                path = SoundPath .. 'PL_wypad.mp3'},
{name = 'PL Czaszka',                              path = SoundPath .. 'PL_czaszka.mp3'},
{name = 'PL Cyc',                                  path = SoundPath .. 'PL_cyc.mp3'},
{name = 'PL Pomarańczowy',                        path = SoundPath .. 'PL_pomaranczowy.mp3'},
{name = 'PL Purpurowy',                            path = SoundPath .. 'PL_purpurowy.mp3'},
{name = 'PL Biały',                               path = SoundPath .. 'PL_bialy.mp3'},
{name = 'PL Moon',                                 path = SoundPath .. 'PL_moon.mp3'},
{name = 'PL Przerwij',                             path = SoundPath .. 'PL_przerwij.mp3'},
{name = 'PL Wypierdalaj',                          path = SoundPath .. 'PL_wypierdalaj.mp3'},
{name = 'PL Lewo',                                 path = SoundPath .. 'PL_lewo.mp3'},
{name = 'PL Prawo',                                path = SoundPath .. 'PL_prawo.mp3'},
{name = 'PL Środek',                              path = SoundPath .. 'PL_srodek.mp3'},
{name = 'PL Pierwszy',                             path = SoundPath .. 'PL_pierwszy.mp3'},
{name = 'PL Drugi',                                path = SoundPath .. 'PL_drugi.mp3'},
{name = 'PL Trzeci',                               path = SoundPath .. 'PL_trzeci.mp3'},
{name = 'PL Czwarty',                              path = SoundPath .. 'PL_czwarty.mp3'},
{name = 'PL Piąty',                               path = SoundPath .. 'PL_piaty.mp3'},
{name = 'PL Szósty',                              path = SoundPath .. 'PL_szosty.mp3'},
{name = 'PL Uciekaj',                              path = SoundPath .. 'PL_uciekaj.mp3'},
{name = 'PL Zabierz Bossa',                        path = SoundPath .. 'PL_zabierz_bosa.mp3'},
{name = 'PL Twoja Kolej',                          path = SoundPath .. 'PL_twoja_kolej.mp3'},
{name = 'PL Stój',                                path = SoundPath .. 'PL_stoj.mp3'},
{name = 'PL Odpałki',                             path = SoundPath .. 'PL_odpalki.mp3'},
{name = 'PL Addy',                                 path = SoundPath .. 'PL_ady.mp3'},
{name = 'PL Rusz Się',                            path = SoundPath .. 'PL_rusz_sie.mp3'},
{name = 'PL Boss',                                 path = SoundPath .. 'PL_bos.mp3'},
{name = 'PL Lewy Bok',                             path = SoundPath .. 'PL_lewy_bok.mp3'},
{name = 'PL Prawy Bok',                            path = SoundPath .. 'PL_prawy_bok.mp3'},
{name = 'PL Lewy Tył',                            path = SoundPath .. 'PL_lewy_tyl.mp3'},
{name = 'PL Prawy Tył',                           path = SoundPath .. 'PL_prawy_tyl.mp3'},
{name = 'PL Prawy Przód',                         path = SoundPath .. 'PL_prawy_przod.mp3'},
{name = 'PL Lewy Przód',                          path = SoundPath .. 'PL_lewy_przod.mp3'},
{name = 'PL Zabierz Adda',                         path = SoundPath .. 'PL_zabierz_ada.mp3'},
{name = 'PL Przód',                               path = SoundPath .. 'PL_przod.mp3'},
{name = 'PL Tył',                                 path = SoundPath .. 'PL_tyl.mp3'},
{name = 'PL Blodlust',                             path = SoundPath .. 'PL_bladlast.mp3'},
{name = 'PL Heroizm',                              path = SoundPath .. 'PL_heroizm.mp3'},
{name = 'PL Aura',                                 path = SoundPath .. 'PL_aura.mp3'},
{name = 'PL Bańka',                               path = SoundPath .. 'PL_banka.mp3'},
{name = 'PL Zmień Cel',                           path = SoundPath .. 'PL_zmien_cel.mp3'},
{name = 'PL Odwróć się',                        path = SoundPath .. 'PL_odwroc_sie.mp3'},
{name = 'PL Bij Bossa',                            path = SoundPath .. 'PL_bij_bosa.mp3'},
{name = 'PL Idź do Bossa',                        path = SoundPath .. 'PL_idz_do_bosa.mp3'},
{name = 'PL Unikaj',                               path = SoundPath .. 'PL_unikaj.mp3'},
{name = 'PL Uwaga',                                path = SoundPath .. 'PL_uwaga.mp3'},
{name = 'PL Uwaga Żaby',                          path = SoundPath .. 'PL_uwaga_zaby.mp3'},
{name = 'PL Laser',                                path = SoundPath .. 'PL_laser.mp3'},
{name = 'PL Do Bariery',                           path = SoundPath .. 'PL_do_bariery.mp3'},
{name = 'PL Nie soakuj',                           path = SoundPath .. 'PL_nie_solkuj.mp3'},
{name = 'PL Nie można cię leczyć',              path = SoundPath .. 'PL_nie_mozna_cie_leczyc.mp3'},
{name = 'PL Spawnujesz Plamy',                     path = SoundPath .. 'PL_spalnujesz_plamy.mp3'},
{name = 'PL Zabij Totem',                          path = SoundPath .. 'PL_zabij_totem.mp3'},
{name = 'PL Ukryj się',                           path = SoundPath .. 'PL_ukryj_sie.mp3'},
{name = 'PL Wejdź do robota',                     path = SoundPath .. 'PL_wejdz_do_robota.mp3'},
{name = 'PL Podnieś orba',                        path = SoundPath .. 'PL_podnies_orba.mp3'},
{name = 'PL Podnieś kulkę',                      path = SoundPath .. 'PL_podnies_kulke.mp3'},
{name = 'PL Frontal',                              path = SoundPath .. 'PL_frontal.mp3'},
{name = 'PL Promień',                             path = SoundPath .. 'PL_promien.mp3'},
{name = 'PL Bezpieczny',                           path = SoundPath .. 'PL_bezpieczny.mp3'},
{name = 'PL Usuń stacki',                         path = SoundPath .. 'PL_usun_staki.mp3'},
{name = 'PL Do ognia',                             path = SoundPath .. 'PL_do_ognia.mp3'},
{name = 'PL Do beczki',                            path = SoundPath .. 'PL_do_beczki.mp3'},
{name = 'PL Unikaj strzał',                       path = SoundPath .. 'PL_unikaj_strzal.mp3'},
{name = 'PL Zaraz dispele',                        path = SoundPath .. 'PL_zaraz_dispele.mp3'},
{name = 'PL Stań na gwiazdce',                    path = SoundPath .. 'PL_stan_na_gwiazdce.mp3'},
{name = 'PL Stań na czaszce',                     path = SoundPath .. 'PL_stan_na_czaszce.mp3'},
{name = 'PL Stań na niebieskim',                  path = SoundPath .. 'PL_stan_na_niebieskim.mp3'},
{name = 'PL Stań na pomarańczowym',              path = SoundPath .. 'PL_stan_na_pomaranczowym.mp3'},
{name = 'PL Soakuj na zielonym',                   path = SoundPath .. 'PL_solkuj_na_zielonym.mp3'},
{name = 'PL Soakuj na fioletowym',                 path = SoundPath .. 'PL_solkuj_na_fioletowym.mp3'},
{name = 'PL Soakuj na czerwonym',                  path = SoundPath .. 'PL_solkuj_na_czerwonym.mp3'},
{name = 'PL Biegaj wokół gwiazdki',              path = SoundPath .. 'PL_biegaj_wokol_gwiazdki.mp3'},
{name = 'PL Biegaj gdzieś wpizdu',                path = SoundPath .. 'PL_biegaj_gdzies_wpizdu.mp3'},
{name = 'PL Solo biegaj',                          path = SoundPath .. 'PL_solo_biegaj.mp3'}
-- end --
}

for _, value in pairs(sounds) do
	local r = LSM:Register('sound', value.name, value.path)
end