using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prisma.Core.Estructuras
{
    public class RespuestaFecha
    {
        private int anio;
        private int mes;
        private int dia;

        public int Dia
        {
            get { return dia; }
            set { dia = value; }
        }
        

        public int Mes
        {
            get { return mes; }
            set { mes = value; }
        }
        

        public int Anio
        {
            get { return anio; }
            set { anio = value; }
        }
        
    }
}
