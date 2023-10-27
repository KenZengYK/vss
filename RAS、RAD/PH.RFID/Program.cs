using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using PH.LWPM.BO;

namespace PH.RFID
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            RFID.updaterap();
        }
    }
    public class RFID
    {
        public static void updaterap()
        {
            WPMasterList WpFun = new WPMasterList();
            WpFun.UpdateRFIDtoRAP();            
            Application.Exit();
        }
    }
}
