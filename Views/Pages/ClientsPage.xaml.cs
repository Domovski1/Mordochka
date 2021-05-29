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
            //Clients_Grid.ItemsSource = AppData.db.ClientService.ToList();
            Count_Tblock.Text = (Clients_Grid.Items.Count - 1).ToString() + "/" + AppData.db.Client.Count().ToString();
            ;
        }

        private void Search_Txb_TextChanged(object sender, TextChangedEventArgs e)
        { 
            Count_Tblock.Text = (Clients_Grid.Items.Count - 1).ToString() + "/" + AppData.db.Client.Count().ToString();
            var Data = AppData.db.Client.Where(x => x.FirstName == Search_Txb.Text || x.FirstName.Contains(Search_Txb.Text)).ToList();
            if (Data != null)
            {
                Clients_Grid.ItemsSource = Data;
            } else
            {

            }
        }

        private void UpdateClient_Click(object sender, RoutedEventArgs e)
        {
            //var selectedClient = Clients_Grid.SelectedItem as Client;
            NavigationService.Navigate(new ClientCreateUpdatePage((Client)Clients_Grid.SelectedItem));
        }
    }
}
