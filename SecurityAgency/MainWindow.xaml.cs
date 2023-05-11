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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SecurityAgency
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            //CreateAdmin();
            Visibility = Visibility.Hidden;
            AuthorisationWindow authorization = new AuthorisationWindow(this);
            authorization.Show();
            UpdateCustomersList();
            UpdateServicesList();
            UpdateUsersList();
        }

        private void CreateAdmin()
        {
            List<User> users = Context.GetContext().Users.ToList();
            User admin = users.Find(x => x.Login == "admin");
            if (admin is null)
            {
                admin = new User()
                {
                    Login = "admin",
                    Password = "admin"
                };
                Context.GetContext().Users.Add(admin);
                Context.GetContext().SaveChanges();
            }
        }

        public void UpdateServicesList() => DGridServices.ItemsSource = Context.GetContext().ProvidedServices.ToList();
        public void UpdateCustomersList() => DGridCustomers.ItemsSource = Context.GetContext().Customers.ToList();
        public void UpdateUsersList() => DGridUsers.ItemsSource = Context.GetContext().Users.ToList();

        private void Btn_Create_Click(object sender, RoutedEventArgs e)
        {
            if (TabCtrl.SelectedItem == TabCustomers)
            {
                CustomerWindow wind = new CustomerWindow(this);
                wind.Show();
            }
            if (TabCtrl.SelectedItem == TabServices)
            {
                ServiceWindow wind = new ServiceWindow(this);
                wind.Show();
            }
            if (TabCtrl.SelectedItem == TabUsers)
            {
                UserWindow wind = new UserWindow(this);
                wind.Show();
            }
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void DataGridRow_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (TabCtrl.SelectedItem == TabCustomers)
            {
                CustomerWindow wind = new CustomerWindow(this, DGridCustomers.SelectedItem as Customer);
                wind.Show();
            }
            if (TabCtrl.SelectedItem == TabServices)
            {
                ServiceWindow wind = new ServiceWindow(this, DGridServices.SelectedItem as ProvidedService);
                wind.Show();
            }
            if (TabCtrl.SelectedItem == TabUsers)
            {
                UserWindow wind = new UserWindow(this, DGridUsers.SelectedItem as User);
                wind.Show();
            }
        }
    }
}
