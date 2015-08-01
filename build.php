<?php

$fileList = array();
$files = glob('Sounds/*.mp3');


foreach ($files as $file) {
	$fileList[filectime($file)] = $file;
}

function replaceBetween($content, $start, $stop, $replace) {
	$pattern = '/' . ($start) . '(.*)' . ($stop) .'/s';
	return preg_replace($pattern, $start . "\n" . $replace . "\n" . $stop, $content);
}

ksort($fileList);

$list = array();
$i = 0;
$soundList = array();
foreach ($fileList as $file) {
	preg_match('/\/([\w]+)\./', $file, $matches);
	$l0 = str_pad('[' . (++$i) . ']', 5);
	$l1 = str_pad('{name = "PL ' . $matches[1] . '",', 30);
	$list[] = '	' . $l0 . ' = ' . $l1 . ' path = SoundPath .. "' . $matches[1] . '.mp3"}';
	$soundList[] = $matches[1];
}

$listImploded = implode(",\n", $list);
$chunked = array_chunk($soundList, 5);
$soundLine = array();
foreach ($chunked as $sound) {
	$soundLine[] = '-- ' . implode(', ', $sound);
}

$content = file_get_contents('core.lua');


$content = replaceBetween($content, '-- start --', '-- end --', $listImploded);
$content = replaceBetween($content, '-- soundlist --', '-- soundlistend --', implode("\n", $soundLine));
//echo $content;
file_put_contents('core.lua', $content);
echo implode(', ', $soundList);