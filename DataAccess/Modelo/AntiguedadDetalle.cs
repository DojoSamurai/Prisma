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
    
    public partial class AntiguedadDetalle
    {
        public int Id { get; set; }
        public System.DateTime fecha_desde { get; set; }
        public System.DateTime fecha_hasta { get; set; }
        public short dif_anios { get; set; }
        public short dif_meses { get; set; }
        public short dif_dias { get; set; }
    
        public virtual Antiguedad Antiguedad { get; set; }
        public virtual Establecimiento Establecimiento { get; set; }
    }
}
