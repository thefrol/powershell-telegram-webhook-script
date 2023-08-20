
if(!(Test-Path .\.api_key))
{
    Write-Error "Set .apikey file with api key"
    return
}
$API_KEY=Get-Content .\.api_key

## еckи появляется ошибка, то надо изменить исходник модуля
## PowerShellGet  PSModule.psm1
## $stdOut -match "Пакет `"(.*.nupkg)`" успешно создан" | Out-Null
## на строке 4633
## дело в том, что он не улавливает другие языки кроме анлийского, и надо передать ему правильный пакет
## до этого там было package sucessfully createdd
Write-Host "If Error on upload read comments in deploy.ps1 script"

Publish-Module -Name "Telegram-Webhook" -NuGetApiKey $API_KEY 