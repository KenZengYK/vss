using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class TypeMasterList : ListForm
    {
        public TypeMasterList()
        {
            InitializeComponent();
        }

        public  int Flag;
        public TypeMasterList(string  Flag)
        {
            InitializeComponent();
            this.Flag = Convert.ToInt32(Flag);
        }



        public override void DataBind()
        {
            PH.PHGDB2.BO.PHGDB2DataContext dcon = ContextBuilder.CreateContext<PHGDB2DataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.TypeMasters.Where(p=>p.Flag == Flag);
            this.EditorTypeName = typeof(TypeMasterDetail).FullName;
        }


   
    }
}
