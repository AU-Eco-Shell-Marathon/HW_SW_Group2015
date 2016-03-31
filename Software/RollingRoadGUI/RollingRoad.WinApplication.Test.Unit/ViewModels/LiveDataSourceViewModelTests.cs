
using System.Collections.Generic;
using System.Threading.Tasks;
using NSubstitute;
using NUnit.Framework;
using RollingRoad.Data;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class LiveDataSourceViewModelTests
    {
        private LiveDataSourceViewModel _vm;

        [SetUp]
        public void SetUp()
        {
            _vm = new LiveDataSourceViewModel();
        }

        [Test]
        public void Source_SetSource_StartCalledOnSource()
        {
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            _vm.Source = source;

            source.Received(1).Start();
        }

        [Test]
        public void StartStopCommand_Nothing_CanExecuteFalse()
        {
            Assert.That(_vm.StartStopCommand.CanExecute, Is.False);
        }

        [Test]
        public void StartStopCommand_SourceSet_CanExecuteTrue()
        {
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            _vm.Source = source;

            Assert.That(_vm.StartStopCommand.CanExecute, Is.True);
        }

        [Test]
        public async Task StartStopCommand_SourceSetAndCommandExecuted_StopCalledOnceOnSource()
        {
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            _vm.Source = source;
            await _vm.StartStopCommand.Execute();

            source.Received(1).Stop();
        }

        [Test]
        public async Task StartStopCommand_SourceSetAndCommandExecutedTwice_StopCalledOnceOnSource()
        {
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            _vm.Source = source;
            await _vm.StartStopCommand.Execute();
            await _vm.StartStopCommand.Execute();

            source.Received(1).Stop();
        }

        [Test]
        public async Task StartStopCommand_SourceSetAndCommandExecutedTwice_StartCalledTwiceOnSource()
        {
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            _vm.Source = source;
            await _vm.StartStopCommand.Execute();
            await _vm.StartStopCommand.Execute();

            source.Received(2).Start();
        }

        [Test]
        public void Collection_Nothing_IsEmpty()
        {
            Assert.That(_vm.Collection, Is.Empty);
        }

        [Test]
        public void Collection_SourceSend1Datapoint_NewListAdded()
        {
            ILiveDataSource source = Substitute.For<ILiveDataSource>();

            _vm.Source = source;

            source.OnNextReadValue +=
                Raise.Event<ReadOnlyDataEntryList>(new List<Datapoint>(){new Datapoint(new DataType("TestName", "TestUnit"), 0)});

            Assert.That(_vm.Collection.Count, Is.EqualTo(1));
        }
    }
}
