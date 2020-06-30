$value = Get-Content -LiteralPath .\input.txt
Set-Content -LiteralPath .\output.txt -Value "$value"