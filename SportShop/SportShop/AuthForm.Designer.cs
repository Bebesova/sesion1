namespace SportShop
{
    partial class AuthForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AuthForm));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.Login = new System.Windows.Forms.TextBox();
            this.Password = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.RTBcaptcha = new System.Windows.Forms.RichTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.PBcaptcha = new System.Windows.Forms.PictureBox();
            this.BAut = new System.Windows.Forms.Button();
            this.B = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblName = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PBcaptcha)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.White;
            this.groupBox1.Controls.Add(this.Login);
            this.groupBox1.Controls.Add(this.Password);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.RTBcaptcha);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.PBcaptcha);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F);
            this.groupBox1.Location = new System.Drawing.Point(1, 108);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(381, 416);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Авторизация";
            // 
            // Login
            // 
            this.Login.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Login.Location = new System.Drawing.Point(110, 63);
            this.Login.Name = "Login";
            this.Login.Size = new System.Drawing.Size(177, 32);
            this.Login.TabIndex = 27;
            this.Login.Text = "qwerty";
            // 
            // Password
            // 
            this.Password.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Password.Location = new System.Drawing.Point(110, 125);
            this.Password.Name = "Password";
            this.Password.Size = new System.Drawing.Size(177, 32);
            this.Password.TabIndex = 28;
            this.Password.Text = "qwerty123";
            this.Password.UseSystemPasswordChar = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F);
            this.label1.Location = new System.Drawing.Point(284, 347);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(12, 17);
            this.label1.TabIndex = 34;
            this.label1.Text = " ";
            this.label1.Visible = false;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.25F);
            this.label4.Location = new System.Drawing.Point(86, 347);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(201, 17);
            this.label4.TabIndex = 31;
            this.label4.Text = "Ввод станет доступен через:";
            this.label4.Visible = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label3.Location = new System.Drawing.Point(106, 98);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(76, 24);
            this.label3.TabIndex = 30;
            this.label3.Text = "Пароль";
            // 
            // RTBcaptcha
            // 
            this.RTBcaptcha.Location = new System.Drawing.Point(153, 292);
            this.RTBcaptcha.Name = "RTBcaptcha";
            this.RTBcaptcha.Size = new System.Drawing.Size(90, 40);
            this.RTBcaptcha.TabIndex = 33;
            this.RTBcaptcha.Text = "";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label2.Location = new System.Drawing.Point(106, 36);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 24);
            this.label2.TabIndex = 29;
            this.label2.Text = "Логин";
            // 
            // PBcaptcha
            // 
            this.PBcaptcha.Location = new System.Drawing.Point(143, 176);
            this.PBcaptcha.Name = "PBcaptcha";
            this.PBcaptcha.Size = new System.Drawing.Size(110, 99);
            this.PBcaptcha.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PBcaptcha.TabIndex = 32;
            this.PBcaptcha.TabStop = false;
            // 
            // BAut
            // 
            this.BAut.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.BAut.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BAut.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F);
            this.BAut.ForeColor = System.Drawing.Color.White;
            this.BAut.Location = new System.Drawing.Point(90, 530);
            this.BAut.Name = "BAut";
            this.BAut.Size = new System.Drawing.Size(207, 40);
            this.BAut.TabIndex = 30;
            this.BAut.Text = "Войти";
            this.BAut.UseVisualStyleBackColor = false;
            this.BAut.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // B
            // 
            this.B.BackColor = System.Drawing.Color.Gray;
            this.B.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.B.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.25F);
            this.B.ForeColor = System.Drawing.Color.White;
            this.B.Location = new System.Drawing.Point(90, 578);
            this.B.Name = "B";
            this.B.Size = new System.Drawing.Size(207, 40);
            this.B.TabIndex = 31;
            this.B.Text = "Войти как гость";
            this.B.UseVisualStyleBackColor = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(1, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(122, 99);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 32;
            this.pictureBox1.TabStop = false;
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12.25F);
            this.lblName.Location = new System.Drawing.Point(129, 47);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(236, 20);
            this.lblName.TabIndex = 33;
            this.lblName.Text = "ООО \"Спортивные товары\"";
            // 
            // AuthForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.ClientSize = new System.Drawing.Size(384, 661);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.B);
            this.Controls.Add(this.BAut);
            this.Controls.Add(this.groupBox1);
            this.MaximumSize = new System.Drawing.Size(400, 700);
            this.MinimumSize = new System.Drawing.Size(400, 700);
            this.Name = "AuthForm";
            this.Text = "Авторизация";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PBcaptcha)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox Login;
        private System.Windows.Forms.TextBox Password;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.RichTextBox RTBcaptcha;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.PictureBox PBcaptcha;
        private System.Windows.Forms.Button BAut;
        private System.Windows.Forms.Button B;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblName;
    }
}

