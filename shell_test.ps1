#出力ファイル
$outFile="shell_test.csv"

#出力オブジェクトを格納する配列（初期値＝空の配列）
$outRecords=@()

#出力オブジェクト生成
$outRecord=New-Object PSObject|Add-Member noteproperty OUT_001 $null -pass|
Add-Member noteproperty OUT_002 $null -pass|
Add-Member noteproperty OUT_003 $null -pass|
Add-Member noteproperty OUT_004 $null -pass|
Add-Member noteproperty OUT_005 $null -pass

$outRecord.OUT_001=1001
$outRecord.OUT_002=1002
$outRecord.OUT_003=1003
$outRecord.OUT_004=1004
$outRecord.OUT_005=1005

$csv = "$($outRecord.OUT_001),"
$csv += "$($outRecord.OUT_002),"
$csv += "$($outRecord.OUT_003),"
$csv += "$($outRecord.OUT_004),"
$csv += "$($outRecord.OUT_005)"
$csv | Out-File $outFile -encoding UTF8 -append

echo "OK"
pause
