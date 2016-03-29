
using NSubstitute;
using NUnit.Framework;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class LiveDataSourceViewModelTests
    {
        [Test]
        public void Source_SetSource_StartCalledOnSource()
        {
            LiveDataSourceViewModel vm = new LiveDataSourceViewModel();
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            vm.Source = source;

            source.Received(1).Start();
        }
    }
}
