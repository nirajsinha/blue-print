using System;

namespace Framework.Data
{
    /// <summary>
    /// Enumeration of database persistence actions.
    /// 
    /// SOA Design Pattern: Command Message. Basically this in an instruction
    /// or command to the receiver which operatin to execute.
    /// </summary>
    [Serializable]
    public enum PersistType
    {
        /// <summary>
        /// Insert record in database.
        /// </summary>
        Insert = 1,

        /// <summary>
        /// Update record in database.
        /// </summary>
        Update = 2,

        /// <summary>
        /// Delete record from database.
        /// </summary>
        Delete = 3
    }
}