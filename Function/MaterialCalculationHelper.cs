using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Variant2_Decor.DatabaseConnect;
using Variant2_Decor.Models;

namespace Variant2_Decor.Function
{
    public static class MaterialCalculationHelper
    {
        public static int CalculateMaterialQuantity(int productTypeId, int materialTypeId,
                                                  int productQuantity, double param1, double param2,
                                                  decimal stockQuantity)
        {
            // Проверка входных данных
            if (productQuantity <= 0 || param1 <= 0 || param2 <= 0 || stockQuantity < 0)
                return -1;

            try
            {
                // Поиск типов продукта и материала
                var productType = AppConnect.BDdecor.ProductType
                    .FirstOrDefault(pt => pt.ProductTypeID == productTypeId);
                var materialType = AppConnect.BDdecor.MaterialType
                    .FirstOrDefault(mt => mt.MaterialTypeID == materialTypeId);

                // Проверка на null
                if (productType == null || materialType == null)
                    return -1;

                // Расчет необходимого количества материала
                double materialPerUnit = param1 * param2 * (double)productType.CoefficientType;
                double adjustedMaterialPerUnit = materialPerUnit / (1 - (double)materialType.PercentLoss / 100);
                decimal totalMaterialNeeded = (decimal)(productQuantity * adjustedMaterialPerUnit);
                decimal materialToPurchase = totalMaterialNeeded - stockQuantity;

                return (int)Math.Ceiling(Math.Max(materialToPurchase, 0));
            }
            catch
            {
                return -1;
            }
        }
    }
}
