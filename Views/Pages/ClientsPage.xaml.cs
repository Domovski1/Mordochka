using Mordochka.Model;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace Mordochka.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для ClientsPage.xaml
    /// </summary>
    public partial class ClientsPage : Page
    {
        public ClientsPage()
        {
            InitializeComponent();
        }

        private void Back_btn(object sender, RoutedEventArgs e)
        {
            GC.Collect();
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Clients_Grid.ItemsSource = AppData.db.Client.ToList();
        }

        private void Search_Txb_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
