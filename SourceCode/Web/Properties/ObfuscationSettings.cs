using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.

// Obfuscation settings
[assembly: Obfuscation(Feature = "encrypt symbol names with password blueprintv1.0", Exclude = false)]
[assembly: Obfuscation(Feature = "code control flow obfuscation", Exclude = false)]
//If Reflection is used within your project, you may add this line
[assembly: Obfuscation(Feature = "Apply to * when public and class: renaming", Exclude = true)]
// add attributes for each referenced .Net assembly you want to embed
[assembly: Obfuscation(Feature = "embed DocumentManager.dll", Exclude = false)]
[assembly: Obfuscation(Feature = "embed BusinessFacade.dll", Exclude = false)]
[assembly: Obfuscation(Feature = "embed Confluence.Blueprint.Models.dll", Exclude = false)]
[assembly: Obfuscation(Feature = "embed Framework.Common.dll", Exclude = false)]
[assembly: Obfuscation(Feature = "embed Framework.Data.dll", Exclude = false)]
[assembly: Obfuscation(Feature = "embed Framework.Security.dll", Exclude = false)]