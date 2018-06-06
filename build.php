<?php

/*******************************************************************
 * Config
 *******************************************************************/

$soundList = [
	'Niebieski', 'Czerwony', 'Zielony', 'Żółty', 'Stack', 'Wypad', 'Czaszka', 'Cyc', 'Pomarańczowy', 'Purpurowy',
	'Biały', 'Moon', 'Przerwij', 'Wypierdalaj', 'Lewo', 'Prawo', 'Środek', 'Pierwszy', 'Drugi', 'Trzeci',
	'Czwarty', 'Piąty', 'Szósty', 'Uciekaj', 'Zabierz Bossa', 'Twoja Kolej', 'Stój', 'Odpałki',
	'Addy', 'Rusz Się', 'Boss', 'Lewy Bok', 'Prawy Bok', 'Lewy Tył', 'Prawy Tył', 'Prawy Przód', 'Lewy Przód',
	'Zabierz Adda', 'Przód', 'Tył', 'Bladlast', 'Heroizm', 'Aura', 'Bańka'
];

$language = 'PL'; //2 char code

$amazonPollyConfig = [
	'version' => 'latest',
	'region' => 'eu-west-1', // Change this to your respective AWS region
	'credentials' => [ // Change these to your respective AWS credentials
		'key' => 'XXXXXXXXXXXXXXXXXXXX',
		'secret' => 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
	]
];


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
foreach ($soundList as $text) {
	// get speech
	$response = $client->synthesizeSpeech($text);
	$sanitized = str_replace(' ', '_', transliterator_transliterate('Any-Latin; Latin-ASCII; Lower()', $text));

	$fileName = "{$language}_{$sanitized}.mp3";
	$fileLabel = $language . ' ' . $text;

	file_put_contents("Sounds/{$fileName}", $response['AudioStream']);

	$list[] = str_pad("{name = '{$fileLabel}',", 30) . " path = SoundPath .. '{$fileName}'}";

	sleep(1);
}


$chunked = array_chunk($soundList, 5);
$soundLine = [];
foreach ($chunked as $sound) {
	$soundLine[] = '-- ' . implode(', ', $sound);
}

/**
 * Generating file
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