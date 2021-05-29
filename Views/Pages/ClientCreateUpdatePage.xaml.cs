using Mordochka.Model;
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

namespace Mordochka.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для ClientCreateUpdatePage.xaml
    /// </summary>
    public partial class ClientCreateUpdatePage : Page
    {
        public Client NativeClient { get; set; }
        public ClientCreateUpdatePage(Client GetClient)
        {

            InitializeComponent();
            NativeClient = GetClient;
            this.DataContext = this;
        }

        private void Back_btn(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            CmbGender.ItemsSource = AppData.db.Gender.ToList();
            CmbGender.DisplayMemberPath = "Title";
            
        }
    }
}
