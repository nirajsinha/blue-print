using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Framework.Logging
{
    public class AppLogger
    {
        private static Logger _logger;
        static AppLogger()
        {
            if (_logger == null) _logger = LogManager.GetCurrentClassLogger();
        }

        public static void Log(string message)
        {
            _logger.Info(message);
        }
        public static void Info(string message)
        {
            _logger.Info(message);
        }

        public static void Error(string message)
        {
            _logger.Error(message);
        }
    }
}
