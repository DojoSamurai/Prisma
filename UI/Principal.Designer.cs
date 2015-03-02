namespace UI
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.sistemaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cambioDeUsuarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.salirDelSistemaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aBMToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.empleadosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.empleadosToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.categoríaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.categoríasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tiposDeDocumentoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.localidadesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.provinciasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.paisesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.establecimientosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.herramientasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.calculoDeAntigüedadToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ayudaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.manualToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.sistemaToolStripMenuItem,
            this.aBMToolStripMenuItem,
            this.herramientasToolStripMenuItem,
            this.ayudaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1027, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // sistemaToolStripMenuItem
            // 
            this.sistemaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cambioDeUsuarioToolStripMenuItem,
            this.salirDelSistemaToolStripMenuItem});
            this.sistemaToolStripMenuItem.Name = "sistemaToolStripMenuItem";
            this.sistemaToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.sistemaToolStripMenuItem.Text = "Sistema";
            // 
            // cambioDeUsuarioToolStripMenuItem
            // 
            this.cambioDeUsuarioToolStripMenuItem.Name = "cambioDeUsuarioToolStripMenuItem";
            this.cambioDeUsuarioToolStripMenuItem.Size = new System.Drawing.Size(174, 22);
            this.cambioDeUsuarioToolStripMenuItem.Text = "Cambio de usuario";
            // 
            // salirDelSistemaToolStripMenuItem
            // 
            this.salirDelSistemaToolStripMenuItem.Name = "salirDelSistemaToolStripMenuItem";
            this.salirDelSistemaToolStripMenuItem.Size = new System.Drawing.Size(174, 22);
            this.salirDelSistemaToolStripMenuItem.Text = "Salir del sistema";
            this.salirDelSistemaToolStripMenuItem.Click += new System.EventHandler(this.salirDelSistemaToolStripMenuItem_Click);
            // 
            // aBMToolStripMenuItem
            // 
            this.aBMToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.empleadosToolStripMenuItem,
            this.categoríasToolStripMenuItem,
            this.establecimientosToolStripMenuItem});
            this.aBMToolStripMenuItem.Name = "aBMToolStripMenuItem";
            this.aBMToolStripMenuItem.Size = new System.Drawing.Size(45, 20);
            this.aBMToolStripMenuItem.Text = "ABM";
            // 
            // empleadosToolStripMenuItem
            // 
            this.empleadosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.empleadosToolStripMenuItem1,
            this.categoríaToolStripMenuItem});
            this.empleadosToolStripMenuItem.Name = "empleadosToolStripMenuItem";
            this.empleadosToolStripMenuItem.Size = new System.Drawing.Size(163, 22);
            this.empleadosToolStripMenuItem.Text = "Personal";
            // 
            // empleadosToolStripMenuItem1
            // 
            this.empleadosToolStripMenuItem1.Name = "empleadosToolStripMenuItem1";
            this.empleadosToolStripMenuItem1.Size = new System.Drawing.Size(152, 22);
            this.empleadosToolStripMenuItem1.Text = "Empleados";
            // 
            // categoríaToolStripMenuItem
            // 
            this.categoríaToolStripMenuItem.Name = "categoríaToolStripMenuItem";
            this.categoríaToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.categoríaToolStripMenuItem.Text = "Categorías";
            // 
            // categoríasToolStripMenuItem
            // 
            this.categoríasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tiposDeDocumentoToolStripMenuItem,
            this.localidadesToolStripMenuItem,
            this.provinciasToolStripMenuItem,
            this.paisesToolStripMenuItem});
            this.categoríasToolStripMenuItem.Name = "categoríasToolStripMenuItem";
            this.categoríasToolStripMenuItem.Size = new System.Drawing.Size(163, 22);
            this.categoríasToolStripMenuItem.Text = "Generales";
            // 
            // tiposDeDocumentoToolStripMenuItem
            // 
            this.tiposDeDocumentoToolStripMenuItem.Name = "tiposDeDocumentoToolStripMenuItem";
            this.tiposDeDocumentoToolStripMenuItem.Size = new System.Drawing.Size(184, 22);
            this.tiposDeDocumentoToolStripMenuItem.Text = "Tipos de documento";
            // 
            // localidadesToolStripMenuItem
            // 
            this.localidadesToolStripMenuItem.Name = "localidadesToolStripMenuItem";
            this.localidadesToolStripMenuItem.Size = new System.Drawing.Size(184, 22);
            this.localidadesToolStripMenuItem.Text = "Localidades";
            // 
            // provinciasToolStripMenuItem
            // 
            this.provinciasToolStripMenuItem.Name = "provinciasToolStripMenuItem";
            this.provinciasToolStripMenuItem.Size = new System.Drawing.Size(184, 22);
            this.provinciasToolStripMenuItem.Text = "Provincias";
            // 
            // paisesToolStripMenuItem
            // 
            this.paisesToolStripMenuItem.Name = "paisesToolStripMenuItem";
            this.paisesToolStripMenuItem.Size = new System.Drawing.Size(184, 22);
            this.paisesToolStripMenuItem.Text = "Paises";
            // 
            // establecimientosToolStripMenuItem
            // 
            this.establecimientosToolStripMenuItem.Name = "establecimientosToolStripMenuItem";
            this.establecimientosToolStripMenuItem.Size = new System.Drawing.Size(163, 22);
            this.establecimientosToolStripMenuItem.Text = "Establecimientos";
            // 
            // herramientasToolStripMenuItem
            // 
            this.herramientasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.calculoDeAntigüedadToolStripMenuItem});
            this.herramientasToolStripMenuItem.Name = "herramientasToolStripMenuItem";
            this.herramientasToolStripMenuItem.Size = new System.Drawing.Size(90, 20);
            this.herramientasToolStripMenuItem.Text = "Herramientas";
            // 
            // calculoDeAntigüedadToolStripMenuItem
            // 
            this.calculoDeAntigüedadToolStripMenuItem.Name = "calculoDeAntigüedadToolStripMenuItem";
            this.calculoDeAntigüedadToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.calculoDeAntigüedadToolStripMenuItem.Text = "Calculo de antigüedad";
            this.calculoDeAntigüedadToolStripMenuItem.Click += new System.EventHandler(this.calculoDeAntigüedadToolStripMenuItem_Click);
            // 
            // ayudaToolStripMenuItem
            // 
            this.ayudaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.manualToolStripMenuItem});
            this.ayudaToolStripMenuItem.Name = "ayudaToolStripMenuItem";
            this.ayudaToolStripMenuItem.Size = new System.Drawing.Size(53, 20);
            this.ayudaToolStripMenuItem.Text = "Ayuda";
            // 
            // manualToolStripMenuItem
            // 
            this.manualToolStripMenuItem.Name = "manualToolStripMenuItem";
            this.manualToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.manualToolStripMenuItem.Text = "Manual";
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = global::Prisma.UI.Properties.Settings.Default.ColorFondo;
            this.ClientSize = new System.Drawing.Size(1027, 582);
            this.Controls.Add(this.menuStrip1);
            this.DataBindings.Add(new System.Windows.Forms.Binding("Font", global::Prisma.UI.Properties.Settings.Default, "FuenteGeneral", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
            this.DataBindings.Add(new System.Windows.Forms.Binding("BackColor", global::Prisma.UI.Properties.Settings.Default, "ColorFondo", true, System.Windows.Forms.DataSourceUpdateMode.OnPropertyChanged));
            this.Font = global::Prisma.UI.Properties.Settings.Default.FuenteGeneral;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Prisma Gestión";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem sistemaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cambioDeUsuarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem salirDelSistemaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aBMToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem empleadosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem empleadosToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem categoríaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem categoríasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tiposDeDocumentoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem localidadesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem provinciasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem paisesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem establecimientosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem herramientasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem calculoDeAntigüedadToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ayudaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem manualToolStripMenuItem;
    }
}

