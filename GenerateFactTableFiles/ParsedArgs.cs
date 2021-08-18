using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GenerateSCDType6Files
{
    public class ParsedArgs
    {
        public string DacPacFileName { get; set; }
        public string LogicTemplatesDirectory { get; set; }
        public string FinalTemplatesDirectory { get; set; }
        public string OutputDirectory { get; set; }
        public string finalSchema { get; set; }
        public string logicSchema { get; set; }

        public ParsedArgs(string[] args)
        { 
            this.DacPacFileName = args[0];
            this.LogicTemplatesDirectory = AppDomain.CurrentDomain.BaseDirectory + "\\factLogicSchema";
            this.FinalTemplatesDirectory = AppDomain.CurrentDomain.BaseDirectory + "\\factFinalSchema";
            this.OutputDirectory = args[1];
            this.finalSchema = args[2];
            this.logicSchema = args[3];
        }

    }
}
