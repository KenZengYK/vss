using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace WoRwoReport
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            //Application.EnableVisualStyles();
            //Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new Form1());

            //string param = string.Format("{0};{1};{2};{3};{4};{5};", "WO", "TH", "P1", "W077263", "QJ1", "1");
            string param = "";
            foreach (string item in args)
            {
                param += item + ";";
            }
            //MessageBox.Show(param);
            PrintHelper helper = new PrintHelper(param);
            helper.PrintReport();
        }
    }
}
