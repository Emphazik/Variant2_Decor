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
using Variant2_Decor.DatabaseConnect;
using Variant2_Decor.Models;
using Variant2_Decor.Windows;

namespace Variant2_Decor
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoadProducts();
        }

        private void LoadProducts()
        {
            try
            {
                ProductsListView.ItemsSource = AppConnect.BDdecor.Product.ToList();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка загрузки продуктов: {ex.Message}", "Ошибка",
                                MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void ProductsListView_MouseDoubleClick(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (ProductsListView.SelectedItem is Product selectedProduct)
            {
                EditProduct_Click(null, null);
            }
        }

        private void ProductsListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // Обновление интерфейса при выборе элемента
        }

        private void ShowMaterial_Click(object sender, RoutedEventArgs e)
        {
            if (ProductsListView.SelectedItem is Product selectedProduct)
            {
                var materialsWindow = new MaterialsWindow(selectedProduct);
                materialsWindow.ShowDialog();
            }
            else
            {
                MessageBox.Show("Выберите продукт для просмотра материалов.", "Предупреждение",
                                MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void AddProduct_Click(object sender, RoutedEventArgs e)
        {
            var productForm = new ProductFormWindow(null);
            if (productForm.ShowDialog() == true)
            {
                LoadProducts();
            }
        }

        private void EditProduct_Click(object sender, RoutedEventArgs e)
        {
            if (ProductsListView.SelectedItem is Product selectedProduct)
            {
                var productForm = new ProductFormWindow(selectedProduct);
                if (productForm.ShowDialog() == true)
                {
                    LoadProducts();
                }
            }
            else
            {
                MessageBox.Show("Выберите продукт для редактирования.", "Предупреждение",
                                MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}

