using Mordochka.Views.Pages;
using System.Windows;

namespace Mordochka
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new MenuPage());
        }
    }
}
