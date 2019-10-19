<?php

/*******************************************************************
 * Config
 *******************************************************************/

$soundList = [
    'Niebieski'            => 'Niebieski',
    'Czerwony'             => 'Czerwony',
    'Zielony'              => 'Zielony',
    'Żółty'                => 'Żółty',
    'Stack'                => 'Stak',
    'Wypad'                => 'Wypad',
    'Czaszka'              => 'Czaszka',
    'Cyc'                  => 'Cyc',
    'Pomarańczowy'         => 'Pomarańczowy',
    'Purpurowy'            => 'Purpurowy',
    'Biały'                => 'Biały',
    'Moon'                 => 'Moon',
    'Przerwij'             => 'Przerwij',
    'Wypierdalaj'          => 'Wypierdalaj',
    'Lewo'                 => 'Lewo',
    'Prawo'                => 'Prawo',
    'Środek'               => 'Środek',
    'Pierwszy'             => 'Pierwszy',
    'Drugi'                => 'Drugi',
    'Trzeci'               => 'Trzeci',
    'Czwarty'              => 'Czwarty',
    'Piąty'                => 'Piąty',
    'Szósty'               => 'Szósty',
    'Uciekaj'              => 'Uciekaj',
    'Zabierz Bossa'        => 'Zabierz Bosa',
    'Twoja Kolej'          => 'Twoja Kolej',
    'Stój'                 => 'Stój',
    'Odpałki'              => 'Odpałki',
    'Addy'                 => 'Ady',
    'Rusz Się'             => 'Rusz Się',
    'Boss'                 => 'Bos',
    'Lewy Bok'             => 'Lewy Bok',
    'Prawy Bok'            => 'Prawy Bok',
    'Lewy Tył'             => 'Lewy Tył',
    'Prawy Tył'            => 'Prawy Tył',
    'Prawy Przód'          => 'Prawy Przód',
    'Lewy Przód'           => 'Lewy Przód',
    'Zabierz Adda'         => 'Zabierz Ada',
    'Przód'                => 'Przód',
    'Tył'                  => 'Tył',
    'Blodlust'             => 'Bladlast',
    'Heroizm'              => 'Heroizm',
    'Aura'                 => 'Aura',
    'Bańka'                => 'Bańka',
    'Zmień Cel'            => 'Zmień Cel',
    'Odwróć się'           => 'Odwróć się',
    'Bij Bossa'            => 'Bij Bosa',
    'Idź do Bossa'         => 'Idź do Bosa',
    'Unikaj'               => 'Unikaj',
    'Uwaga'                => 'Uwaga',
    'Uwaga Żaby'           => 'Uwaga Żaby',
    'Laser'                => 'Laser',
    'Do Bariery'           => 'Do Bariery',
    'Nie soakuj'           => 'Nie sołkuj',
    'Nie można cię leczyć' => 'Nie można cię leczyć',
    'Spawnujesz Plamy'     => 'Spałnujesz Plamy',
    'Zabij Totem'          => 'Zabij Totem',
    'Ukryj się'            => 'Ukryj się',
    'Wejdź do robota'      => 'Wejdź do robota',
    'Podnieś orba'         => 'Podnieś orba',
    'Podnieś kulkę'        => 'Podnieś kulkę',
    'Frontal'              => 'Frontal',
    'Promień'              => 'Promień',
    'Bezpieczny'           => 'Bezpieczny',
    'Usuń stacki'          => 'Usuń staki',
    'Do ognia'             => 'Do ognia',
    'Do beczki'            => 'Do beczki',
    'Unikaj strzał'        => 'Unikaj strzał',
];

$language = 'PL'; //2 char code

// Amazon voice ID, please refer to:
/** @URL: https://docs.aws.amazon.com/polly/latest/dg/API_Voice.html */
$voiceId = 'Jacek';
$dbGain = 9;

$amazonPollyConfig = json_decode(file_get_contents('config.json'), true);

/*******************************************************************
 * Don't touch this
 *******************************************************************/
require(__DIR__.'/vendor/autoload.php');

use Aws\Polly\PollyClient;

// get service handle
try {
	$client = new PollyClient($amazonPollyConfig);
} catch(Exception $e) {
	print_r($e);
	exit;
}

$downloadedSounds = [];
$list = [];
$i = 0;
$c = count($soundList);

foreach ($soundList as $label => $text) {
	$sanitized = str_replace(' ', '_', transliterator_transliterate('Any-Latin; Latin-ASCII; Lower()', $text));
	$fileName = "{$language}_{$sanitized}.mp3";
	$fileLabel = $language . ' ' . $label;

	if (!file_exists("Sounds/{$fileName}")) {
		$response = $client->synthesizeSpeech([
			'OutputFormat' => 'mp3', // REQUIRED
			'Text'         => $text, // REQUIRED
			'TextType'     => 'text',
			'VoiceId'      => $voiceId, // REQUIRED
		]);

		file_put_contents("Sounds/{$fileName}", $response['AudioStream']);
		passthru("mp3gain\\mp3gain.exe -g {$dbGain} Sounds\\{$fileName}");
	}

	$list[] = str_pad("{name = '{$fileLabel}',", 50) . " path = SoundPath .. '{$fileName}'}";

	sleep(1);
	$i++;
	echo "Processing sound {$i}/{$c}\n";
}


$chunked = array_chunk($soundList, 5);
$soundLine = [];
foreach ($chunked as $sound) {
	$soundLine[] = '-- ' . implode(', ', $sound);
}

/**
 * Generating file
 * @param $content
 * @param $start
 * @param $stop
 * @param $replace
 * @return string|string[]|null
 */
function replaceBetween($content, $start, $stop, $replace) {
	$pattern = '/' . ($start) . '(.*)' . ($stop) .'/s';
	return preg_replace($pattern, $start . "\n" . $replace . "\n" . $stop, $content);
}


$content = file_get_contents('core.lua');

$content = replaceBetween($content, '-- start --', '-- end --', implode(",\n", $list));
$content = replaceBetween($content, '-- soundlist --', '-- soundlistend --', implode("\n", $soundLine));
//echo $content;

file_put_contents('core.lua', $content);

echo implode(', ', $soundList);