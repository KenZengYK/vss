using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace LWPMToRAP
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new Form1());
            DBAccess.LWPMToLB(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);

        }
    }
}
