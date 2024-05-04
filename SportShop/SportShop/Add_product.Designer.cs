namespace SportShop
{
    partial class Add_product
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Add_product));
            this.lblName = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.RBDescription = new System.Windows.Forms.RichTextBox();
            this.lblDescription = new System.Windows.Forms.Label();
            this.TBPrice = new System.Windows.Forms.TextBox();
            this.lblPrice = new System.Windows.Forms.Label();
            this.lblQuantity = new System.Windows.Forms.Label();
            this.lblCategories = new System.Windows.Forms.Label();
            this.lblSuppliers = new System.Windows.Forms.Label();
            this.lblManufacturers = new System.Windows.Forms.Label();
            this.TBName = new System.Windows.Forms.TextBox();
            this.lblTitle = new System.Windows.Forms.Label();
            this.TbCategory = new System.Windows.Forms.TextBox();
            this.TBnum = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.TBProvider = new System.Windows.Forms.TextBox();
            this.TBManuf = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.lblName.Location = new System.Drawing.Point(140, 56);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(236, 20);
            this.lblName.TabIndex = 35;
            this.lblName.Text = "ООО \"Спортивные товары\"";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(122, 99);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 34;
            this.pictureBox1.TabStop = false;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.White;
            this.groupBox1.Controls.Add(this.TBManuf);
            this.groupBox1.Controls.Add(this.TBProvider);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.TBnum);
            this.groupBox1.Controls.Add(this.TbCategory);
            this.groupBox1.Controls.Add(this.RBDescription);
            this.groupBox1.Controls.Add(this.lblDescription);
            this.groupBox1.Controls.Add(this.TBPrice);
            this.groupBox1.Controls.Add(this.lblPrice);
            this.groupBox1.Controls.Add(this.lblQuantity);
            this.groupBox1.Controls.Add(this.lblCategories);
            this.groupBox1.Controls.Add(this.lblSuppliers);
            this.groupBox1.Controls.Add(this.lblManufacturers);
            this.groupBox1.Controls.Add(this.TBName);
            this.groupBox1.Controls.Add(this.lblTitle);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.groupBox1.Location = new System.Drawing.Point(2, 130);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(555, 425);
            this.groupBox1.TabIndex = 36;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Добавить товар";
            // 
            // RBDescription
            // 
            this.RBDescription.Location = new System.Drawing.Point(21, 156);
            this.RBDescription.MaxLength = 255;
            this.RBDescription.Name = "RBDescription";
            this.RBDescription.ReadOnly = true;
            this.RBDescription.Size = new System.Drawing.Size(251, 104);
            this.RBDescription.TabIndex = 55;
            this.RBDescription.Text = "";
            // 
            // lblDescription
            // 
            this.lblDescription.AutoSize = true;
            this.lblDescription.Location = new System.Drawing.Point(18, 124);
            this.lblDescription.Name = "lblDescription";
            this.lblDescription.Size = new System.Drawing.Size(156, 20);
            this.lblDescription.TabIndex = 54;
            this.lblDescription.Text = "Описание товара";
            // 
            // TBPrice
            // 
            this.TBPrice.Location = new System.Drawing.Point(22, 302);
            this.TBPrice.MaxLength = 50;
            this.TBPrice.Name = "TBPrice";
            this.TBPrice.Size = new System.Drawing.Size(172, 26);
            this.TBPrice.TabIndex = 53;
            // 
            // lblPrice
            // 
            this.lblPrice.AutoSize = true;
            this.lblPrice.Location = new System.Drawing.Point(18, 276);
            this.lblPrice.Name = "lblPrice";
            this.lblPrice.Size = new System.Drawing.Size(167, 20);
            this.lblPrice.TabIndex = 52;
            this.lblPrice.Text = "Стоимость товара";
            // 
            // lblQuantity
            // 
            this.lblQuantity.AutoSize = true;
            this.lblQuantity.Location = new System.Drawing.Point(18, 336);
            this.lblQuantity.Name = "lblQuantity";
            this.lblQuantity.Size = new System.Drawing.Size(199, 20);
            this.lblQuantity.TabIndex = 48;
            this.lblQuantity.Text = "Количество на складе";
            // 
            // lblCategories
            // 
            this.lblCategories.AutoSize = true;
            this.lblCategories.Location = new System.Drawing.Point(306, 203);
            this.lblCategories.Name = "lblCategories";
            this.lblCategories.Size = new System.Drawing.Size(98, 20);
            this.lblCategories.TabIndex = 47;
            this.lblCategories.Text = "Категории";
            // 
            // lblSuppliers
            // 
            this.lblSuppliers.AutoSize = true;
            this.lblSuppliers.Location = new System.Drawing.Point(306, 127);
            this.lblSuppliers.Name = "lblSuppliers";
            this.lblSuppliers.Size = new System.Drawing.Size(114, 20);
            this.lblSuppliers.TabIndex = 45;
            this.lblSuppliers.Text = "Поставщики";
            // 
            // lblManufacturers
            // 
            this.lblManufacturers.AutoSize = true;
            this.lblManufacturers.Location = new System.Drawing.Point(306, 54);
            this.lblManufacturers.Name = "lblManufacturers";
            this.lblManufacturers.Size = new System.Drawing.Size(143, 20);
            this.lblManufacturers.TabIndex = 43;
            this.lblManufacturers.Text = "Производители";
            // 
            // TBName
            // 
            this.TBName.Location = new System.Drawing.Point(22, 80);
            this.TBName.MaxLength = 50;
            this.TBName.Name = "TBName";
            this.TBName.Size = new System.Drawing.Size(172, 26);
            this.TBName.TabIndex = 41;
            // 
            // lblTitle
            // 
            this.lblTitle.AutoSize = true;
            this.lblTitle.Location = new System.Drawing.Point(18, 54);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(199, 20);
            this.lblTitle.TabIndex = 40;
            this.lblTitle.Text = "Наименование товара";
            // 
            // TbCategory
            // 
            this.TbCategory.Location = new System.Drawing.Point(307, 235);
            this.TbCategory.MaxLength = 50;
            this.TbCategory.Name = "TbCategory";
            this.TbCategory.Size = new System.Drawing.Size(172, 26);
            this.TbCategory.TabIndex = 56;
            // 
            // TBnum
            // 
            this.TBnum.Location = new System.Drawing.Point(22, 362);
            this.TBnum.MaxLength = 50;
            this.TBnum.Name = "TBnum";
            this.TBnum.Size = new System.Drawing.Size(172, 26);
            this.TBnum.TabIndex = 57;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(288, 327);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(217, 61);
            this.button1.TabIndex = 58;
            this.button1.Text = "Добавить";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // TBProvider
            // 
            this.TBProvider.Location = new System.Drawing.Point(307, 156);
            this.TBProvider.MaxLength = 50;
            this.TBProvider.Name = "TBProvider";
            this.TBProvider.Size = new System.Drawing.Size(172, 26);
            this.TBProvider.TabIndex = 59;
            // 
            // TBManuf
            // 
            this.TBManuf.Location = new System.Drawing.Point(307, 80);
            this.TBManuf.MaxLength = 50;
            this.TBManuf.Name = "TBManuf";
            this.TBManuf.Size = new System.Drawing.Size(172, 26);
            this.TBManuf.TabIndex = 60;
            // 
            // Add_product
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.ClientSize = new System.Drawing.Size(560, 632);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.pictureBox1);
            this.MaximumSize = new System.Drawing.Size(576, 671);
            this.MinimumSize = new System.Drawing.Size(576, 671);
            this.Name = "Add_product";
            this.Text = "Add_product";
            this.Load += new System.EventHandler(this.Add_product_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox TBnum;
        private System.Windows.Forms.TextBox TbCategory;
        private System.Windows.Forms.RichTextBox RBDescription;
        private System.Windows.Forms.Label lblDescription;
        private System.Windows.Forms.TextBox TBPrice;
        private System.Windows.Forms.Label lblPrice;
        private System.Windows.Forms.Label lblQuantity;
        private System.Windows.Forms.Label lblCategories;
        private System.Windows.Forms.Label lblSuppliers;
        private System.Windows.Forms.Label lblManufacturers;
        private System.Windows.Forms.TextBox TBName;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.TextBox TBManuf;
        private System.Windows.Forms.TextBox TBProvider;
        private System.Windows.Forms.Button button1;
    }
}