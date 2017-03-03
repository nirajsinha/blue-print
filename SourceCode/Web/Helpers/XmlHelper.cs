using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace Confluence.Blueprint.Web.Helpers
{
    public class XmlHelper
    {
        /// <summary>
        /// Xml Serialization
        /// </summary>
        public static string Serialize(object o, Type t)
        {
            XmlSerializer serializer = new XmlSerializer(t);
            StringWriter writer = new StringWriter();
            serializer.Serialize(writer, o);
            return writer.ToString();

        }

        /// <summary>
        /// Xml Deserialization
        /// </summary>
        public static object Deserialize(string xml, Type t, params Type[] knowTypes)
        {
            XmlSerializer serializer = new XmlSerializer(t, knowTypes);
            StringReader reader = new StringReader(xml);
            object obj = serializer.Deserialize(reader);
            return obj;
        }
    }
}