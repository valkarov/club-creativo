//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace creativo_API.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderProduct
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
        public int OrderId { get; set; }
        public int InventoryId { get; set; }
    
        public virtual Inventory Inventory { get; set; }
        public virtual Order Order { get; set; }
    }
}
