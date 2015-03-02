using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Prisma.UI.Interfaces;
using Prisma.Core.Estructuras;
using Prisma.AD.Entidades;
using Prisma.AD.Modelo;

namespace Herramientas
{
    public partial class CalculoAntiguedad : Form, IFormularioEdicion
    {
        public CalculoAntiguedad()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CalculoAntiguedad_Load(object sender, EventArgs e)
        {
            this.CargarControles();
        }

        private void CargarControles()
        {
            List<ItemCombo> lista = new List<ItemCombo>();
            PrismaContainer cont = new PrismaContainer();
            var tiposDoc = from TipoDocumento in cont.TiposDocumento select TipoDocumento;
            foreach (Prisma.AD.Modelo.TipoDocumento tipo in tiposDoc)
            {
                lista.Add(new ItemCombo(tipo.Descripcion, tipo.Id));
            }
        }

    }
}
