using System;
using PostSharp.Aspects;
using Framework.Logging;
using System.Text;
using PostSharp.Extensibility;
using NLog;
using StackExchange.Profiling;

namespace Framework.Logging
{
    [MulticastAttributeUsage(MulticastTargets.Method, TargetMemberAttributes = MulticastAttributes.Instance)]
    [Serializable]
    public class MethodTraceAspect : OnMethodBoundaryAspect
    {
        [NonSerialized]
        public Logger _logger;
        private IDisposable _profiler;
        
        public override void OnEntry(MethodExecutionArgs args)
        {
            _profiler = MiniProfiler.Current.Step(string.Format("{0}.{1}", args.Method.DeclaringType.Name, args.Method.Name));

            if (_logger == null) _logger = LogManager.GetCurrentClassLogger();
            var sb = new StringBuilder();
            sb.AppendFormat("Execution started of {0}.{1} (", args.Method.DeclaringType.Name, args.Method.Name);
            var parameters = args.Method.GetParameters();
            for (int i = 0; i < parameters.Length; ++i)
            {
                sb.AppendFormat("{0} = {1}, ", args.Method.GetParameters()[i].Name, args.Arguments.GetArgument(i));
            }
            sb.AppendFormat(")");
            _logger.Info(sb.ToString());
            
            base.OnEntry(args);

        }

        public override void OnExit(MethodExecutionArgs args)
        {
            if(_logger == null) _logger = LogManager.GetCurrentClassLogger();
            _logger.Info( string.Format("Execution finished for {0}", args.Method.Name));
            base.OnExit(args);

            if (_profiler != null)
            {
                _profiler.Dispose();
                _profiler = null;
            }

        }

        public override void OnException(MethodExecutionArgs args)
        {

            if (_logger == null) _logger = LogManager.GetCurrentClassLogger();
            _logger.Error(String.Format("Exception in :[{0}], Message:[{1}]", args.Method, args.Exception.Message));
            args.FlowBehavior = FlowBehavior.Continue;
            base.OnException(args);

            if (_profiler != null)
            {
                _profiler.Dispose();
                _profiler = null;
            }
        }

    }
}