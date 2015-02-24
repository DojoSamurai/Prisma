using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Prisma.Core.Componentes;
using Prisma.Core.Estructuras;

namespace Herramientas.Test
{
    [TestClass]
    public class ComponenteCalculosTest
    {
        [TestMethod]
        public void CalcularAntiguedadTest()
        {
            DateTime fecha_inicial  = new DateTime(2001, 03, 01);
            DateTime fecha_final = new DateTime(2014, 12, 31);

            ComponenteCalculos comp = new ComponenteCalculos();

            RespuestaFecha respuesta = comp.CalcularAntiguedad(fecha_inicial, fecha_final);

            Assert.AreEqual(13, respuesta.Anio);
            Assert.AreEqual(9, respuesta.Mes);
            Assert.AreEqual(30, respuesta.Dia);
        }
    }
}
