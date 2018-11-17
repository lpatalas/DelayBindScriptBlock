Import-Module "$PSScriptRoot\PipeCmdlet.dll"

$objs = @(
	@{ Name = 'First' }
	@{ Name = 'Second' }
	@{ Name = 'Third' }
)

$objs | Write-Pipe -ScriptBlock { $_.Name }