using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class MaterialTypeListForm :  PH.Platform.UI.CS.UI2.ListForm
    {
        public MaterialTypeListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false; 
 
        }

        public override void DataBind()
        { 
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;
            this.DataSource = from materialtype in context.MaterialTypes select materialtype;

            this.EditorTypeName = typeof(MaterialTypeDetailForm).FullName;

            base.DataBind();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {          
            MaterialType obj = this.BindingSource.Current as MaterialType;
            if (obj == null)
            {
                MessageBox.Show("沒有選中需要打印的類型","提未");
                return;
            }
            MaterialTypeWithCompostion report = new MaterialTypeWithCompostion(obj.MaterialType1, "");
            report.ShowPreview();
            

        }
    }
}
