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
        }

    }
}
