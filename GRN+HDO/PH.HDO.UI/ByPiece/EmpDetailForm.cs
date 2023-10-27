using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class EmpDetailForm : DetailForm
    {
        public EmpDetailForm()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {

            ByPiece_Employee obj = this.BindingSource.Current as ByPiece_Employee;
            obj.Flag = (this.ListForm as EmpListForm).Flag;
             base.SaveCurrent();
            
        }

        private void byPiece_EmployeeBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }

        private void BindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }

    }
}
