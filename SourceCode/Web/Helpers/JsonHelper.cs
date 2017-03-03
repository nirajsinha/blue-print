using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

namespace Confluence.Blueprint.Web.Helpers
{
    /// <summary>
    /// JSON Serialization and Deserialization Assistant Class
    /// </summary>
    public class JsonHelper
    {
        /// <summary>
        /// JSON Serialization
        /// </summary>
        public static string JsonSerializer(object o, Type t)
        {
            List<Type> knowTypes = new List<Type>();
            knowTypes.Add(typeof(Confluence.Blueprint.Models.Level));
            knowTypes.Add(typeof(Confluence.Blueprint.Models.SubLevel));

            DataContractJsonSerializer ser = new DataContractJsonSerializer(t, knowTypes);
            MemoryStream ms = new MemoryStream();
            ser.WriteObject(ms, o);
            string jsonString = Encoding.UTF8.GetString(ms.ToArray());
            ms.Close();
            return jsonString;
        }

        /// <summary>
        /// JSON Deserialization
        /// </summary>
        public static object JsonDeserialize(string jsonString, Type t)
        {
            List<Type> knowTypes = new List<Type>();
            knowTypes.Add(typeof(Confluence.Blueprint.Models.Level));
            knowTypes.Add(typeof(Confluence.Blueprint.Models.SubLevel));
            DataContractJsonSerializer ser = new DataContractJsonSerializer(t, knowTypes);
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(jsonString));
            object obj = ser.ReadObject(ms);
            return obj;
        }

    }
}