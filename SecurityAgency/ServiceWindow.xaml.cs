using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SecurityAgency
{
    /// <summary>
    /// Логика взаимодействия для ServiceWindow.xaml
    /// </summary>
    public partial class ServiceWindow : Window
    {
        ProvidedService _service;
        MainWindow _mw;

        public ServiceWindow(MainWindow mw, ProvidedService service = null)
        {
            _mw = mw;
            if (service is null)
                _service = new ProvidedService() { Id = 0 };
            else
                _service = service;

            InitializeComponent();

            cbCustomer.ItemsSource = Context.GetContext().Customers.ToList();
            DataContext = _service;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e) => Save();

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Несохраненные изменения будут утеряны.\nЗакрыть окно?", "Внимание", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                Close();
        }

        private bool Save()
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(dpDate.SelectedDate.ToString()))
                errors.AppendLine("Укажите Дату");
            if (string.IsNullOrWhiteSpace(tbServise.Text))
                errors.AppendLine("Укажите услугу");
            if (string.IsNullOrWhiteSpace(tbPrice.Text))
                errors.AppendLine("Укажите цену");
            if (string.IsNullOrWhiteSpace(cbCustomer.Text))
                errors.AppendLine("Укажите контрагента");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return false;
            }

            if (_service.Id == 0)
                Context.GetContext().ProvidedServices.Add(_service);

            try
            {
                Context.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
                return false;
            }
        }

        private void BtnSaveAndClose_Click(object sender, RoutedEventArgs e)
        {
            if (Save())
                Close();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _mw.UpdateServicesList();
        }
    }
}
