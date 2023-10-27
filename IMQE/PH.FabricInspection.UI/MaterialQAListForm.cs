using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.UI.UI1;
using PH.ExtendLibrary;
using PH.FabricInspection.BO
;
namespace PH.FabricInspection.UI
{
    public partial class MaterialQAListForm : PH.UI.UI1.SingleListForm
    {
        public MaterialQAListForm()
        {
            BO.FabricInspectionDataContext fd = new FabricInspectionDataContext();
            //fd.ge
            InitializeComponent();
            //this.objListGridControl.DataSource=
           // this.objListGridView.FilteredList();
            fd.CommandTimeout = 0;
            this.objListGridControl.DataSource = fd.ExecuteQuery<Material_QA>("Exec GET_MATERIALQA_DATA ").ToList<Material_QA>();

        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            MaterialQAReport1 report2 = null;
            List<object> lsq = this.objListGridView.FilteredList();

            //判斷報表是否已經存在且正在運行
            if (report2 == null)
            {

                report2 = new MaterialQAReport1(lsq);
                report2.ShowPreview();
            }
            else
            {
                report2.ClosePreview();
                report2.ShowPreview();

            }
        }

        
    }
}
