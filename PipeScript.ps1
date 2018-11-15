function PipeScript {
    param(
        [Parameter(ValueFromPipeline)]
        [Object] $InputObject,

        [Object] $ScriptBlock
    )
    
    process {
        $value = Invoke-Command -ScriptBlock $ScriptBlock
        Write-Host "Script: $value"
    }
}

@{ Name = 'Test' } | PipeScript -ScriptBlock { $_.Name }