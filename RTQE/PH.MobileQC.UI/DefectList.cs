using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.BasicInfo.BO;


namespace PH.MobileQC.UI
{
    public partial class DefectList : PH.Platform.UI.CS.UI2.ListForm //PH.UI.UI1.SingleListForm
    {
        MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
         
        public DefectList()
        {
            InitializeComponent();
        }
       
        public override void DataBind()
        {

            this.DataContext = context;
            this.DataSource = from d in context.QC_Defects where d.Defect_Type == 1 select d;
            this.EditorTypeName = typeof(DefectDetailForm).FullName;
            
            base.DataBind();

            //BasicInfoDataContext basicInfoContext = ContextBuilder.CreateContext<PH.BasicInfo.BO.ph

            //this.DataContext = context;
            //this.DataSource = from a in 
        }                
        
    }


}
