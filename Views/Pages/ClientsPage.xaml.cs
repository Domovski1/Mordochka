using Mordochka.Model;
using System;
using System.Collections.Generic;
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
        List<Client> data;
        public ClientsPage()
        {
            InitializeComponent();
        }


        private void Back_btn(object sender, RoutedEventArgs e)
        {
            GC.Collect();
            NavigationService.GoBack();
        }


        // Прогрузка страницы.
        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            data = AppData.db.Client.ToList();
            Clients_Grid.ItemsSource = data;
            Count_Tblock.Text = Clients_Grid.Items.Count.ToString() + "/" + AppData.db.Client.Count().ToString();
        }


        // Логика поисковика данных.
        private void Search_Txb_TextChanged(object sender, TextChangedEventArgs e)
        {

            // Поиск данных по ФИО, почте и номеру.
            var Data = AppData.db.Client.Where
                (
                    x => x.FirstName == Search_Txb.Text || x.FirstName.Contains(Search_Txb.Text) ||
                    x.LastName == Search_Txb.Text || x.LastName.Contains(Search_Txb.Text) ||
                    x.Patronymic == Search_Txb.Text || x.Patronymic.Contains(Search_Txb.Text) ||
                    x.Mail == Search_Txb.Text || x.Mail.Contains(Search_Txb.Text) ||
                    x.PhoneNumber == Search_Txb.Text || x.PhoneNumber.Contains(Search_Txb.Text)
                ).ToList();

            // Вывод кол-ва данных, совпадающих по условию.
            Count_Tblock.Text = (Data.Count.ToString() + "/" + AppData.db.Client.Count().ToString());

            if (Data != null)
            {
                Clients_Grid.ItemsSource = Data;
            } 

        }


        // Навигация на страницу редактирования данных.
        private void UpdateClient_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                NavigationService.Navigate(new ClientCreateUpdatePage((Client)Clients_Grid.SelectedItem));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Возникла ошиибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }


        // Выбор кол-ва отображаемых записей.
        private void CmbCount_Changed(object sender, SelectionChangedEventArgs e)
        {
            
        }

    }
}
