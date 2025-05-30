using System;
using System.Collections.Generic;
using System.Globalization;
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
using System.Windows.Shapes;
using Variant2_Decor.DatabaseConnect;
using Variant2_Decor.Models;

namespace Variant2_Decor.Windows
{
    /// <summary>
    /// Логика взаимодействия для ProductFormWindow.xaml
    /// </summary>
    public partial class ProductFormWindow : Window
    {
        private Product _product;
        private readonly bool _isEditing;

        public ProductFormWindow(Product product)
        {
            InitializeComponent();
            _isEditing = product != null;
            _product = product ?? new Product();
            DataContext = _product;
            LoadComboBoxData();
        }

        private void LoadComboBoxData()
        {
            try
            {
                ProductTypeComboBox.ItemsSource = AppConnect.BDdecor.ProductType.ToList();
            }
            catch (Exception ex)
            {
                ShowError("Ошибка загрузки типов продуктов: " + ex.Message);
            }
        }

        private bool ValidateInput()
        {
            if (string.IsNullOrWhiteSpace((DataContext as Product).ProductName))
            {
                ShowError("Наименование не может быть пустым.");
                return false;
            }

            if (ProductTypeComboBox.SelectedItem == null)
            {
                ShowError("Выберите тип продукта.");
                return false;
            }

            if ((DataContext as Product).Article < 0)
            {
                ShowError("Артикул должен быть неотрицательным целым числом.");
                return false;
            }

            if ((DataContext as Product).MinPrice < 0)
            {
                ShowError("Минимальная стоимость должна быть неотрицательным числом.");
                return false;
            }

            if ((DataContext as Product).Width <= 0)
            {
                ShowError("Ширина рулона должна быть положительным числом.");
                return false;
            }

            return true;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (!ValidateInput()) return;

            try
            {
                if (!_isEditing)
                {
                    AppConnect.BDdecor.Product.Add((DataContext as Product));
                }
                AppConnect.BDdecor.SaveChanges();
                DialogResult = true;
                Close();
            }
            catch (Exception ex)
            {
                ShowError("Ошибка сохранения продукта: " + ex.Message);
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }

        private void ShowError(string message)
        {
            MessageBox.Show(message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
        }
    }
}
