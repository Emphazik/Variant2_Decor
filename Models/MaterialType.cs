//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Variant2_Decor.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class MaterialType
    {
        public MaterialType()
        {
            this.Materials = new HashSet<Materials>();
        }
    
        public int MaterialTypeID { get; set; }
        public string MaterialName { get; set; }
        public decimal PercentLoss { get; set; }
    
        public virtual ICollection<Materials> Materials { get; set; }
    }
}
