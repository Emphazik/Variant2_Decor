using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Variant2_Decor.Models;

namespace Variant2_Decor.Function
{
    class CalculateProductPrice
    {
        public static float GetPrice(Product product)
        {
            return (float)product.ProductMaterials
                .ToList()
                .ConvertAll(mp => mp.Materials.UnitPrice * mp.NeedQuantity)
                .Sum();
        }
    }
}
