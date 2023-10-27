using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace WoRwoReport
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            //reportType;langID;company;wo;color;roundno
            string param = string.Format("{0};{1};{2};{3};{4};{5};", "WO", "TH", "P1", "W077263", "QJ1", "1");
            PrintHelper helper = new PrintHelper(param);
            helper.PrintReport();
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            string param = string.Format("{0};{1};{2};{3};{4};{5};", "RWO", "TH", "P1", "W077263", "QJ1", "1");
            PrintHelper helper = new PrintHelper(param);
            helper.PrintReport();
        }

    }
}
