# 実行中のパス取得/移動
$path = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $path

# ファイル読み込み
$fileName = $path + "\100.txt"#読み込みファイルをフルパスでセットしている
$file = New-Object System.IO.StreamReader($fileName, [System.Text.Encoding]::GetEncoding("sjis"))#読み込みファイルを開く
# ファイル書きこみ
$fileName2 = $path + "\200.txt"#書き込みファイル名をフルパスでセットしている
$file2 = New-Object System.IO.StreamWriter($fileName2, $false, [System.Text.Encoding]::GetEncoding("sjis"))#書き込みファイルを開く
while (($line = $file.ReadLine()) -ne $null)#ファイル内のLINEがNULLになるまで読み込みを繰り返す
{
    #Write-Host($line)

$file2.WriteLine("あいうえお")#書き込みファイルに書き込みをする
$file2.WriteLine("$line")#書き込みファイルに書き込みをする

}
Write-Host("")




$file.Close()#読み込みファイルを閉じる
$file2.Close()#書き込みファイルを閉じる

# 終了
Write-Host("終了")#コンソールに出力する