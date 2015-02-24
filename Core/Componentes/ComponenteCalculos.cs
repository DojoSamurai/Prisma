using Prisma.Core.Estructuras;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prisma.Core.Componentes
{
    public class ComponenteCalculos
    {
        public RespuestaFecha CalcularAntiguedad(DateTime fecha_inicial, DateTime fecha_final)
        {
            RespuestaFecha retorno = new RespuestaFecha();
            DateTime fecha_auxiliar = new DateTime();

            /* Rectifico las fechas si se pasan en un orden incorrecto */
            if(fecha_inicial > fecha_final)
            {
                fecha_auxiliar = fecha_final;
                fecha_final = fecha_inicial;
                fecha_inicial = fecha_auxiliar;

            }

            retorno.Anio = fecha_final.Year - fecha_inicial.Year;

            /* Evalúo si el año es el mismo en ambas fechas*/
            fecha_auxiliar = fecha_inicial.AddMonths(12 * retorno.Anio);
            if(fecha_auxiliar > fecha_final)
            {
                retorno.Anio = retorno.Anio - 1;
            }

            retorno.Mes = fecha_final.Month - fecha_inicial.Month;

            if(retorno.Mes < 0)
            {
                retorno.Mes = retorno.Mes + 12;
            }

            retorno.Dia = fecha_final.Day - fecha_inicial.Day;

            if(retorno.Dia < 0)
            {
                retorno.Dia = retorno.Dia + this.ObtenerCantidadDeDiasDelMes(fecha_inicial);
            }

            if (fecha_final.Day < fecha_inicial.Day)
            {
                if (retorno.Mes == 0)
                {
                    retorno.Mes = 11;
                }
                else
                {
                    retorno.Mes = retorno.Mes - 1;
                }
            }

            return retorno;
        }

        private int ObtenerCantidadDeDiasDelMes(DateTime fecha)
        {
           return DateTime.DaysInMonth(fecha.Year,fecha.Month);
        }
    }

}
