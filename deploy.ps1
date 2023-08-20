
if(!(Test-Path .\.api_key))
{
    Write-Error "Set .apikey file with api key"
    return
}
$API_KEY=Get-Content .\.api_key


Publish-Module -Path $PSScriptRoot -NuGetApiKey $API_KEY


# in case of pushlish errors "Failed to Pack" use this

# # find the file having wrong .NET version
# $path = Get-ChildItem (Get-Module PowerShellGet -ListAvailable).ModuleBase -Recurse -File |
#     Select-String -Pattern netcoreapp2.0 | ForEach-Object Path

# # unload the module
# Remove-Module PowerShellGet -Verbose -Force -EA 0

# # update the file
# $path | ForEach-Object {
#     (Get-Content -LiteralPath $_ -Raw).Replace('netcoreapp2.0', 'net6') |
#         Set-Content $_
# }

# Import-Module PowerShellGet -Force -Verbose

# # now try to publish