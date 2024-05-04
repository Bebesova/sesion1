using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace SportShop
{
    public partial class Product_menu : Form
    {
        public Product_menu()
        {
            InitializeComponent();


            ToolStripMenuItem AddtoBasket = new ToolStripMenuItem("добавить в корзину");

            CMProduct.Items.AddRange(new[] { AddtoBasket });

            DGproduct.ContextMenuStrip = CMProduct;

            AddtoBasket.Click += AddtoBasket_Click;

        }
        string Product_id ;
        static string connString = @"Data Source=DESKTOP-MPV0NJU;Initial Catalog=ShopSt;Integrated Security=True";
        SqlConnection sqlConnect = new SqlConnection(connString);
        string photoPath;
        string photochka;
        void AddtoBasket_Click(object sender, EventArgs e)

        {
            if (sqlConnect.State == ConnectionState.Closed)
                sqlConnect.Open();

            SqlCommand NewB = new SqlCommand();
            NewB.Connection = sqlConnect;
            NewB.CommandType = CommandType.StoredProcedure;
            NewB.CommandText = "NewBask";


            NewB.Parameters.AddWithValue("@Name", Product_id);
            NewB.Parameters.AddWithValue("@Surname", id_user);

            Bbasket.Visible = true;
            try
            {
                NewB.ExecuteNonQuery();
                MessageBox.Show("Товар добавлен");

            }
            catch
            {
                SqlCommand CountB = new SqlCommand();
                CountB.Connection = sqlConnect;
                CountB.CommandType = CommandType.StoredProcedure;
                CountB.CommandText = "CountBas";
                CountB.Parameters.AddWithValue("@Name", Product_id);
                CountB.Parameters.AddWithValue("@Surname", id_user);
            }
            finally
            {
                sqlConnect.Close();

            }
        }
            private void Product_menu_Load(object sender, EventArgs e)
        {
            // таблица товаров
            SqlCommand Order = new SqlCommand();
            Order.CommandText = $"SELECT * FROM Products";
            Order.Connection = sqlConnect;
            SqlDataAdapter adapter = new SqlDataAdapter(Order);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            DGproduct.DataSource = dataSet.Tables[0];
            DGproduct.Columns[0].Visible = false;


        }




        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void lblQuantityInStock_Click(object sender, EventArgs e)
        {

        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            (DGproduct.DataSource as DataTable).DefaultView.RowFilter = $"[Название продукта] LIKE '%{filtername.Text}%'";
        }

        private void cboFilterPrice_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (CBprice.SelectedIndex)
            {
                case 0:
                    (DGproduct.DataSource as DataTable).DefaultView.RowFilter = $"[Сумма скидки] <10";
                    break;
                case 1:
                    (DGproduct.DataSource as DataTable).DefaultView.RowFilter = $"[Сумма скидки] >=10 and [Сумма скидки] <15";
                    break;
            }
        }

        private void CBQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (CBQuantity.SelectedIndex)
            {
                case 0:
                    (DGproduct.DataSource as DataTable).DefaultView.RowFilter = $"[Сумма скидки] <10";
                    break;
                case 1:
                    (DGproduct.DataSource as DataTable).DefaultView.RowFilter = $"[Сумма скидки] >=10 and [Сумма скидки] <15";
                    break;
            }
        }

        private void DGproduct_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            Product_id = Convert.ToString(DGproduct.Rows[e.RowIndex].Cells[0].Value);
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

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
