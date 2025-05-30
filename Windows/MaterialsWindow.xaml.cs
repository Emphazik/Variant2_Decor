using System;
using System.Linq;
using System.Windows;
using Variant2_Decor.Models;
using System.Data.Entity;
using Variant2_Decor.DatabaseConnect; // Для использования Include

namespace Variant2_Decor.Windows
{
    public partial class MaterialsWindow : Window
    {
        private Product _product;

        public MaterialsWindow(Product product)
        {
            InitializeComponent();
            _product = product;
            LoadMaterials();
        }

        private void LoadMaterials()
        {
            try
            {
                ListView.ItemsSource = _product.ProductMaterials.ToList().ConvertAll(mp => mp.Materials);
            }
            catch (Exception ex)
            {
                ShowError($"Ошибка загрузки материалов: {ex.Message}");
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void ShowError(string message)
        {
            MessageBox.Show(message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }
}