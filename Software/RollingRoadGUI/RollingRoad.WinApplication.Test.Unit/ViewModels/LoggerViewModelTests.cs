using NSubstitute;
using NUnit.Framework;
using RollingRoad.Loggers;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class LoggerViewModelTests
    {
        private ILogger _logger;
        private LoggerViewModel _vm;

        [SetUp]
        public void SetUp()
        {
            _logger = Substitute.For<ILogger>();
            _vm = new LoggerViewModel(_logger);
        }
        

    }
}
