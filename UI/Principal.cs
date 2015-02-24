using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Herramientas;

namespace UI
{
    public partial class frmPrincipal : Form
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void salirDelSistemaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void calculoDeAntigüedadToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CalculoAntiguedad frmCalculo = new CalculoAntiguedad();
            frmCalculo.Show();
        }
    }
}
