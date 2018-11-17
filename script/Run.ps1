& "$PSScriptRoot\PipeScript.ps1"

$mod = Import-Module "$PSScriptRoot\PipeModule.psm1" -PassThru
@{ Name = 'Test' } | PipeModule -ScriptBlock { $_.Name }
Remove-Module $mod