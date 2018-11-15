function PipeModule {
    param(
        [Parameter(ValueFromPipeline)]
        [Object] $InputObject,

        [Object] $ScriptBlock
    )
    
    process {
        $value = Invoke-Command -ScriptBlock $ScriptBlock
        Write-Host "Module: $value"
    }
}

Export-ModuleMember -Function PipeModule