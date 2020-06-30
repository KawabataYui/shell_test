$value2 = Read-Host "Please input 100"
Set-Content -LiteralPath .\work2.txt -Value "$value2"
#$txt | Out-File $outFile -encoding UTF8 -append