using System.Collections;
using System.Management.Automation;

namespace PipeCmdlet
{
    [Cmdlet(VerbsCommunications.Write, "Pipe")]
    public class WritePipeCmdlet : PSCmdlet
    {
        [Parameter(ValueFromPipeline = true)]
        public Hashtable InputObject { get; set; }

        [Parameter]
        public ScriptBlock ScriptBlock { get; set; }
        
        protected override void ProcessRecord()
        {
            var value = ScriptBlock.InvokeReturnAsIs();
            var expected = InputObject["Name"];
            WriteObject($"Expected: {expected}; ScriptBlock: {value}");
        }
    }
}
