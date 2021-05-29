using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace Mordochka.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для MenuPage.xaml
    /// </summary>
    public partial class MenuPage : Page
    {
        public MenuPage()
        {
            InitializeComponent();
        }


        ClientsPage clients = new ClientsPage();
        private void ClientsList_Btn(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(clients);
        }

        ClientCreateUpdatePage newClient = new ClientCreateUpdatePage(new Model.Client());
        private void AddClient_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(newClient);
        }
    }
}
