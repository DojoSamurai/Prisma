//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Prisma.AD.Modelo
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pais
    {
        public Pais()
        {
            this.Provincia = new HashSet<Provincia>();
        }
    
        public int Id { get; set; }
        public string Descripcion { get; set; }
    
        public virtual ICollection<Provincia> Provincia { get; set; }
    }
}