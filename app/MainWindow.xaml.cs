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

namespace app
{
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void DataTable_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void DataTable_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Window_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            double newWindowHeight = e.NewSize.Height;
            double newWindowWidth = e.NewSize.Width;

            DataTable.Width = newWindowWidth - 50;
            DataTable.Height = newWindowHeight - 150;
        }

        private void LoadMitarbeiter()
        {
            ZooDataSet zooDataSet = (ZooDataSet)FindResource("zooDataSet");
            // Lädt Daten in Tabelle "Mitarbeiter_View". Sie können diesen Code nach Bedarf ändern.
            ZooDataSetTableAdapters.Mitarbeiter_ViewTableAdapter zooDataSetMitarbeiter_ViewTableAdapter = new ZooDataSetTableAdapters.Mitarbeiter_ViewTableAdapter();
            zooDataSetMitarbeiter_ViewTableAdapter.Fill(zooDataSet.Mitarbeiter_View);
            CollectionViewSource mitarbeiter_ViewViewSource = (CollectionViewSource)FindResource("mitarbeiter_ViewViewSource");
            DataTable.DataContext = mitarbeiter_ViewViewSource;
            mitarbeiter_ViewViewSource.View.MoveCurrentToFirst();
        }

        private void LoadTiere()
        {
            ZooDataSet zooDataSet = (ZooDataSet)FindResource("zooDataSet");
            // Lädt Daten in Tabelle "Mitarbeiter_View". Sie können diesen Code nach Bedarf ändern.
            ZooDataSetTableAdapters.Tier_Gehege_ObjektTableAdapter zooDataSetTier_Gehege_ObjektTableAdapter = new ZooDataSetTableAdapters.Tier_Gehege_ObjektTableAdapter();
            zooDataSetTier_Gehege_ObjektTableAdapter.Fill(zooDataSet.Tier_Gehege_Objekt);
            CollectionViewSource Tier_Gehege_ObjektViewSource = (CollectionViewSource)FindResource("tier_Gehege_ObjektViewSource");
            DataTable.DataContext = Tier_Gehege_ObjektViewSource;
            Tier_Gehege_ObjektViewSource.View.MoveCurrentToFirst();
        }

        private void selectDataTable_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBoxItem item = (ComboBoxItem)selectDataTable.SelectedItem;

            if (item.Content.ToString() == "Mitarbeiter")
            {
                LoadMitarbeiter();
            } else if (item.Content.ToString() == "Tiere")
            {
                LoadTiere();
            }
        }
    }
}
