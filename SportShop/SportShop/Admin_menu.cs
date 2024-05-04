using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SportShop
{
    public partial class Admin_menu : Form
    {
        string Product_id;
        string photoPath;
        string photochka;
        public Admin_menu()
        {
            InitializeComponent();

            ToolStripMenuItem AddtoBasket = new ToolStripMenuItem("Редактировать");
            CMAdmin.Items.AddRange(new[] { AddtoBasket });
            DGproduct.ContextMenuStrip = CMAdmin;

        }
        static string connString = @"Data Source=DESKTOP-MPV0NJU;Initial Catalog=ShopSt;Integrated Security=True";
        SqlConnection sqlConnect = new SqlConnection(connString);
        void AddtoBasket_Click(object sender, EventArgs e)

        {
            Add_product fоrm = new Add_product(Product_id);
            this.Hide();
            fоrm.ShowDialog();

        }
            private void Admin_menu_Load(object sender, EventArgs e)
        {
            SqlCommand Order = new SqlCommand();
            Order.CommandText = $"SELECT * FROM Products";
            Order.Connection = sqlConnect;
            SqlDataAdapter adapter = new SqlDataAdapter(Order);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            DGproduct.DataSource = dataSet.Tables[0];
            DGproduct.Columns[0].Visible = false;
        }

        private void DGproduct_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            Product_id = Convert.ToString(DGproduct.Rows[e.RowIndex].Cells[0].Value);
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void DGproduct_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            sqlConnect.Open();
            SqlCommand command = new SqlCommand($"select *\r\nfrom [Supershop].[dbo].[Products]\r\nwhere [ProductArticleNumber] = '{Product_id}'");
            command.Connection = sqlConnect;
            SqlDataReader rd = command.ExecuteReader();
            while (rd.Read())
            {
                Lname.Text = rd["ProductName"].ToString();
                Ldescription.Text = rd["ProductDescription"].ToString();
                Lmanufacture.Text = rd["ProductManufacturer"].ToString();
                Lprice.Text = rd["ProductCost"].ToString();
                string projectDirectory = Directory.GetParent(Environment.CurrentDirectory).Parent.FullName;
                photochka = rd["ProductPhoto"].ToString();
                photoPath = Path.Combine(projectDirectory, $"Resources\\{photochka}");

            }
            PProduct.Image = Image.FromFile(photoPath);
            sqlConnect.Close();
        }
    }
}
