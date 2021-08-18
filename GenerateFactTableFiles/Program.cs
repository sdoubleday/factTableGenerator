using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Dac;
using Microsoft.SqlServer.Dac.Model;
using Microsoft.SqlServer.TransactSql.ScriptDom;
using SqlTemplateColumnExpander;

namespace GenerateSCDType6Files
{
	class Program
	{
		static void Main(string[] args)
		{
			//This part gets updated per generator
			ParsedArgs parsedArgs = new ParsedArgs(args);

			List<StringReplacementPair> replacementPairs = new List<StringReplacementPair> {
			new StringReplacementPair("factLogicSchema",parsedArgs.logicSchema)
			,new StringReplacementPair("factFinalSchema",parsedArgs.finalSchema)
				};
			List<FilePathPair> filePathPairs = new List<FilePathPair> {
			new FilePathPair(parsedArgs.LogicTemplatesDirectory,parsedArgs.OutputDirectory + "\\" + parsedArgs.logicSchema)
			,new FilePathPair(parsedArgs.FinalTemplatesDirectory,parsedArgs.OutputDirectory + "\\" + parsedArgs.finalSchema)
				};
			//This will have another parameter if we are working with an aliasing generator
			GeneratorSpecification genSpec = new GeneratorSpecification(parsedArgs.DacPacFileName, "_SKP", filePathPairs, replacementPairs);

			Runner runner = new Runner(genSpec);
			runner.Run();
		}
	}
}
