using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.LWPM.UI.MC
{
    public partial class MCFilter :DevExpress.XtraEditors.XtraForm
    {
        public MCFilter()
        {
            InitializeComponent();
        }
        public RAPLQDataContext Context { get; set; }

        private void MCFilter_Load(object sender, EventArgs e)
        {
            this.T_factory.Properties.Items.Add("GROUP");
            this.T_factory.Properties.Items.Add("CHINA");
            this.T_factory.Properties.Items.Add("Off-shore");
            this.T_factory.Properties.Items.AddRange(Context.Machines.Where(P => P.Factory !="" ).Select( S => S.Factory).Distinct().ToArray());
          // this.T_factory.Properties.Items.Add("All Factory");
        }

        private void c_ok_Click(object sender, EventArgs e)
        {
          
        }
    

 

      
     
     

    
    }
}