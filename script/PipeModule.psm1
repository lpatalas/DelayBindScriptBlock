function PipeModule {
    param(
        [Parameter(ValueFromPipeline)]
        [Object] $InputObject,

        [Parameter(ValueFromPipelineByPropertyName)]
        [String] $ScriptBlock
    )
    
    process {
        #$$value = Invoke-Command -ScriptBlock $ScriptBlock
        Write-Host "Module: $ScriptBlock"
    }
}

Export-ModuleMember -Function PipeModule