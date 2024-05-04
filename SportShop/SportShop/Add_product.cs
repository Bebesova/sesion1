using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SportShop
{
    public partial class Add_product : Form
    {
        string Product_id;
        public Add_product(string prod_id)
        {
            Product_id = prod_id;
            InitializeComponent();
        }
        static string connString = @"Data Source=DESKTOP-MPV0NJU;Initial Catalog=ShopSt;Integrated Security=True";
        SqlConnection sqlConnect = new SqlConnection(connString);
        private void Add_product_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            sqlConnect.Open();

            SqlCommand logRequst = new SqlCommand();
            logRequst.Connection = sqlConnect;
            logRequst.CommandType = CommandType.StoredProcedure;
            logRequst.CommandText = "AddProd";


            logRequst.Parameters.AddWithValue("@Name", TBName.Text);
            logRequst.Parameters.AddWithValue("@Description", RBDescription.Text);
            logRequst.Parameters.AddWithValue("@Manuf", TBManuf.Text);
            logRequst.Parameters.AddWithValue("@Provider", TBProvider.Text);
            logRequst.Parameters.AddWithValue("@Price", TBPrice.Text);
            logRequst.Parameters.AddWithValue("@TBnum", TBnum.Text);
            logRequst.Parameters.AddWithValue("@TbCategory", TbCategory.Text);

            try
            {
                logRequst.ExecuteNonQuery();
                MessageBox.Show("Продукт добавлен");
                this.Hide();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка! : " + ex.Message);
            }
            finally
            {
                sqlConnect.Close();

            }
        }
    }
}
