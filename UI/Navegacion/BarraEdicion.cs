using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UI.Navegacion
{
    public class RendererBarraNavegacion : ToolStripRenderer
    {
        protected override void 
            OnRenderItemText(ToolStripItemTextRenderEventArgs e)
        {
            e.TextColor = Color.Red;
            e.TextFont = new Font("Helvetica", 7, FontStyle.Bold);
           base.OnRenderItemText(e);
        }
    }
}
