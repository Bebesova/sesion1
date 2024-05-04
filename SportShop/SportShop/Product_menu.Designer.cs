namespace SportShop
{
    partial class Product_menu
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
            this.components = new System.ComponentModel.Container();
            this.DGproduct = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.PProduct = new System.Windows.Forms.PictureBox();
            this.panel4 = new System.Windows.Forms.Panel();
            this.Lprice = new System.Windows.Forms.Label();
            this.Lmanufacture = new System.Windows.Forms.Label();
            this.Ldescription = new System.Windows.Forms.Label();
            this.Lname = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnLogin = new System.Windows.Forms.Button();
            this.lblName = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lQuantity = new System.Windows.Forms.Label();
            this.CBQuantity = new System.Windows.Forms.ComboBox();
            this.lblQuantity = new System.Windows.Forms.Label();
            this.CBprice = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.filtername = new System.Windows.Forms.TextBox();
            this.CMProduct = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.Bbasket = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.DGproduct)).BeginInit();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PProduct)).BeginInit();
            this.panel4.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // DGproduct
            // 
            this.DGproduct.AllowUserToAddRows = false;
            this.DGproduct.AllowUserToDeleteRows = false;
            this.DGproduct.AllowUserToResizeColumns = false;
            this.DGproduct.AllowUserToResizeRows = false;
            this.DGproduct.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.DGproduct.BackgroundColor = System.Drawing.Color.White;
            this.DGproduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DGproduct.Dock = System.Windows.Forms.DockStyle.Fill;
            this.DGproduct.Location = new System.Drawing.Point(0, 118);
            this.DGproduct.Name = "DGproduct";
            this.DGproduct.ReadOnly = true;
            this.DGproduct.Size = new System.Drawing.Size(909, 245);
            this.DGproduct.TabIndex = 8;
            this.DGproduct.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DGproduct_CellClick);
            this.DGproduct.CellEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.DGproduct_CellEnter);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panel2.Controls.Add(this.PProduct);
            this.panel2.Controls.Add(this.lQuantity);
            this.panel2.Controls.Add(this.panel4);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F);
            this.panel2.Location = new System.Drawing.Point(0, 363);
            this.panel2.Margin = new System.Windows.Forms.Padding(5);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(909, 118);
            this.panel2.TabIndex = 7;
            // 
            // PProduct
            // 
            this.PProduct.BackColor = System.Drawing.Color.White;
            this.PProduct.Location = new System.Drawing.Point(8, 9);
            this.PProduct.Name = "PProduct";
            this.PProduct.Size = new System.Drawing.Size(121, 102);
            this.PProduct.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PProduct.TabIndex = 0;
            this.PProduct.TabStop = false;
            // 
            // panel4
            // 
            this.panel4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel4.BackColor = System.Drawing.Color.White;
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel4.Controls.Add(this.Lprice);
            this.panel4.Controls.Add(this.Lmanufacture);
            this.panel4.Controls.Add(this.Ldescription);
            this.panel4.Controls.Add(this.Lname);
            this.panel4.Location = new System.Drawing.Point(135, 3);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(618, 112);
            this.panel4.TabIndex = 1;
            this.panel4.Paint += new System.Windows.Forms.PaintEventHandler(this.panel4_Paint);
            // 
            // Lprice
            // 
            this.Lprice.Location = new System.Drawing.Point(412, 75);
            this.Lprice.Name = "Lprice";
            this.Lprice.Size = new System.Drawing.Size(85, 29);
            this.Lprice.TabIndex = 3;
            this.Lprice.Text = "Цена";
            this.Lprice.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // Lmanufacture
            // 
            this.Lmanufacture.Location = new System.Drawing.Point(3, 76);
            this.Lmanufacture.Name = "Lmanufacture";
            this.Lmanufacture.Size = new System.Drawing.Size(197, 29);
            this.Lmanufacture.TabIndex = 2;
            this.Lmanufacture.Text = "Производитель";
            // 
            // Ldescription
            // 
            this.Ldescription.Location = new System.Drawing.Point(3, 33);
            this.Ldescription.Name = "Ldescription";
            this.Ldescription.Size = new System.Drawing.Size(215, 42);
            this.Ldescription.TabIndex = 1;
            this.Ldescription.Text = "Описание товара";
            // 
            // Lname
            // 
            this.Lname.Location = new System.Drawing.Point(-2, 3);
            this.Lname.Name = "Lname";
            this.Lname.Size = new System.Drawing.Size(250, 30);
            this.Lname.TabIndex = 0;
            this.Lname.Text = "Наименование товара";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panel1.Controls.Add(this.Bbasket);
            this.panel1.Controls.Add(this.filtername);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.CBQuantity);
            this.panel1.Controls.Add(this.lblQuantity);
            this.panel1.Controls.Add(this.CBprice);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.btnLogin);
            this.panel1.Controls.Add(this.lblName);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(909, 118);
            this.panel1.TabIndex = 6;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // btnLogin
            // 
            this.btnLogin.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.btnLogin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F);
            this.btnLogin.ForeColor = System.Drawing.Color.White;
            this.btnLogin.Location = new System.Drawing.Point(757, 12);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(140, 40);
            this.btnLogin.TabIndex = 35;
            this.btnLogin.Text = "Выйти";
            this.btnLogin.UseVisualStyleBackColor = false;
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.lblName.Location = new System.Drawing.Point(154, 16);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(236, 20);
            this.lblName.TabIndex = 34;
            this.lblName.Text = "ООО \"Спортивные товары\"";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(8, 8);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(131, 104);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // lQuantity
            // 
            this.lQuantity.BackColor = System.Drawing.Color.White;
            this.lQuantity.Location = new System.Drawing.Point(762, 10);
            this.lQuantity.Name = "lQuantity";
            this.lQuantity.Size = new System.Drawing.Size(135, 101);
            this.lQuantity.TabIndex = 4;
            this.lQuantity.Text = "Наличие на складе";
            this.lQuantity.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lQuantity.Click += new System.EventHandler(this.lblQuantityInStock_Click);
            // 
            // CBQuantity
            // 
            this.CBQuantity.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.CBQuantity.FormattingEnabled = true;
            this.CBQuantity.Items.AddRange(new object[] {
            "По возрастанию",
            "По убыванию"});
            this.CBQuantity.Location = new System.Drawing.Point(689, 81);
            this.CBQuantity.Name = "CBQuantity";
            this.CBQuantity.Size = new System.Drawing.Size(151, 28);
            this.CBQuantity.TabIndex = 41;
            this.CBQuantity.SelectedIndexChanged += new System.EventHandler(this.CBQuantity_SelectedIndexChanged);
            // 
            // lblQuantity
            // 
            this.lblQuantity.AutoSize = true;
            this.lblQuantity.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.lblQuantity.Location = new System.Drawing.Point(617, 87);
            this.lblQuantity.Name = "lblQuantity";
            this.lblQuantity.Size = new System.Drawing.Size(66, 20);
            this.lblQuantity.TabIndex = 40;
            this.lblQuantity.Text = "Кол-во";
            // 
            // CBprice
            // 
            this.CBprice.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.CBprice.FormattingEnabled = true;
            this.CBprice.Items.AddRange(new object[] {
            "По возрастанию",
            "По убыванию"});
            this.CBprice.Location = new System.Drawing.Point(457, 84);
            this.CBprice.Name = "CBprice";
            this.CBprice.Size = new System.Drawing.Size(151, 28);
            this.CBprice.TabIndex = 39;
            this.CBprice.SelectedIndexChanged += new System.EventHandler(this.cboFilterPrice_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.label1.Location = new System.Drawing.Point(399, 87);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 20);
            this.label1.TabIndex = 38;
            this.label1.Text = "Цена";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.label2.Location = new System.Drawing.Point(154, 87);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 20);
            this.label2.TabIndex = 42;
            this.label2.Text = "Поиск";
            // 
            // filtername
            // 
            this.filtername.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.filtername.Location = new System.Drawing.Point(218, 84);
            this.filtername.Name = "filtername";
            this.filtername.Size = new System.Drawing.Size(167, 26);
            this.filtername.TabIndex = 43;
            this.filtername.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // CMProduct
            // 
            this.CMProduct.Name = "CMProduct";
            this.CMProduct.Size = new System.Drawing.Size(61, 4);
            // 
            // Bbasket
            // 
            this.Bbasket.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.Bbasket.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Bbasket.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F);
            this.Bbasket.ForeColor = System.Drawing.Color.White;
            this.Bbasket.Location = new System.Drawing.Point(602, 12);
            this.Bbasket.Name = "Bbasket";
            this.Bbasket.Size = new System.Drawing.Size(140, 40);
            this.Bbasket.TabIndex = 44;
            this.Bbasket.Text = "Корзина";
            this.Bbasket.UseVisualStyleBackColor = false;
            // 
            // Product_menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(909, 481);
            this.Controls.Add(this.DGproduct);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.MaximumSize = new System.Drawing.Size(925, 520);
            this.MinimumSize = new System.Drawing.Size(925, 520);
            this.Name = "Product_menu";
            this.Text = "User_menu";
            this.Load += new System.EventHandler(this.Product_menu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DGproduct)).EndInit();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PProduct)).EndInit();
            this.panel4.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView DGproduct;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox PProduct;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label Lprice;
        private System.Windows.Forms.Label Lmanufacture;
        private System.Windows.Forms.Label Ldescription;
        private System.Windows.Forms.Label Lname;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.Label lQuantity;
        private System.Windows.Forms.ComboBox CBQuantity;
        private System.Windows.Forms.Label lblQuantity;
        private System.Windows.Forms.ComboBox CBprice;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox filtername;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ContextMenuStrip CMProduct;
        private System.Windows.Forms.Button Bbasket;
    }
}