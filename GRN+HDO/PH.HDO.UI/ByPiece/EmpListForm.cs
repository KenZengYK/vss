using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

namespace PH.HDO.UI.ByPiece
{
    public partial class EmpListForm : ListForm
    {

        public int Flag;

        public EmpListForm()
        {
            InitializeComponent();

            PH.PHGDB2.BO.PHGDB2DataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.ByPiece_Employees;
            this.EditorTypeName = typeof(EmpDetailForm).FullName;
        }


        public EmpListForm(string Flag)
        {
            InitializeComponent();

            this.Flag = Convert.ToInt32(Flag);
            PH.PHGDB2.BO.PHGDB2DataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.ByPiece_Employees.Where(p => p.Flag == this.Flag);
            this.EditorTypeName = typeof(EmpDetailForm).FullName;

        }

    

    }
}
