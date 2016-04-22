using System;
using System.Linq;
using NSubstitute;
using NSubstitute.ExceptionExtensions;
using NUnit.Framework;
using RollingRoad.Core.ApplicationServices;
using RollingRoad.Core.DomainModel;
using RollingRoad.Core.DomainServices;
using RollingRoad.WinApplication.Dialogs;
using RollingRoad.WinApplication.ViewModels;

namespace RollingRoad.WinApplication.Test.Unit.ViewModels
{
    [TestFixture]
    public class DataSetsViewModelTests
    {
        private IOpenFileDialog _fileDialog;
        private IErrorMessageBox _errorMessageBox;
        private IDataSetLoader _dataSetLoader;

        private IRepository<DataSet> _repository;
        private IUnitOfWork _unitOfWork; 

        private DataSetsViewModel _viewModel;

        [SetUp]
        public void SetUp()
        {
            _fileDialog = Substitute.For<IOpenFileDialog>();
            _errorMessageBox = Substitute.For<IErrorMessageBox>();
            _dataSetLoader = Substitute.For<IDataSetLoader>();

            _repository = Substitute.For<IRepository<DataSet>>();
            _unitOfWork = Substitute.For<IUnitOfWork>();

            _viewModel = new DataSetsViewModel(_repository, _unitOfWork)
            {
                DataSetLoader = _dataSetLoader,
                OpenFileDialog = _fileDialog,
                ErrorMessageBox = _errorMessageBox
            };
        }

        private void SetupSubstitutesToReturnFileNameAndDataSet(DataSet set)
        {
            _fileDialog.ShowDialog().Returns(true);
            _fileDialog.FileName.Returns("TestFile1");

            _dataSetLoader.LoadFromFile(Arg.Any<string>()).Returns(set);
            _repository.Insert(Arg.Any<DataSet>()).Returns(set);
        }

        [Test]
        public void Ctor_RepostoryInserted_GetCalledOnce()
        {
            _repository.Received(1).Get();
        }

        [Test]
        public void ImportFromFileCommand_ExecuteCommand_ShowDialogCalledOnFileDialog()
        {
            _fileDialog.ShowDialog().Returns(false);

            _viewModel.ImportFromFileCommand.Execute(null);

            _fileDialog.Received(1).ShowDialog();
        }

        [TestCase("Testfile1.csv")]
        [TestCase("FileTest2.csv")]
        public void ImportFromFileCommand_DialogReturnsTrue_FileNameUsedInDataSetLoader(string filename)
        {
            _fileDialog.ShowDialog().Returns(true);
            _fileDialog.FileName.Returns(filename);
            
            _viewModel.ImportFromFileCommand.Execute(null);

            _dataSetLoader.Received(1).LoadFromFile(filename);
        }

        [Test]
        public void ImportFromFileCommand_DataSetReturned_InsertCalledWithDataSet()
        {
            DataSet testset1 = new DataSet();
            
            SetupSubstitutesToReturnFileNameAndDataSet(testset1);

            _viewModel.ImportFromFileCommand.Execute(null);

            _repository.Received(1).Insert(testset1);
        }

        [Test]
        public void ImportFromFileCommand_DataSetReturned_DataSetAddedToObservableCollection()
        {
            DataSet testset1 = new DataSet() {Description = "TestDescription"};

            SetupSubstitutesToReturnFileNameAndDataSet(testset1);

            _viewModel.ImportFromFileCommand.Execute(null);

            Assert.That(_viewModel.DataSets.First().Description, Is.EqualTo("TestDescription"));
        }

        [Test]
        public void ImportFromFile_DataSetLoaderThrows_MessageBoxRequestedToShowWithExceptionMessage()
        {
            _fileDialog.ShowDialog().Returns(true);
            _fileDialog.FileName.Returns("TestFile1");

            _dataSetLoader.LoadFromFile(Arg.Any<string>()).Throws(new Exception("TestException"));

            _viewModel.ImportFromFileCommand.Execute(null);

            _errorMessageBox.Received(1).Show(Arg.Any<string>(), "TestException");
        }

        [Test]
        public void ImportFromFile_DataSetReturned_SaveCalledOnUnitOfWork()
        {
            DataSet testset1 = new DataSet() { Description = "TestDescription" };

            SetupSubstitutesToReturnFileNameAndDataSet(testset1);

            _viewModel.ImportFromFileCommand.Execute(null);

            _unitOfWork.Received(1).Save();
        }

        [Test]
        public void ImportFromFile_DataSetReturned_SaveCalledOnUnitOfWorkAfterInsert()
        {
            DataSet testset1 = new DataSet() { Description = "TestDescription" };

            SetupSubstitutesToReturnFileNameAndDataSet(testset1);

            _viewModel.ImportFromFileCommand.Execute(null);

            Received.InOrder(() =>
            {
                _repository.Received(1).Insert(Arg.Any<DataSet>());
                _unitOfWork.Received(1).Save();
            });

        }
    }
}
