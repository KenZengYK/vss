using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;

namespace PH.LWPM.UI.MasterDB
{
    public partial class JobTitleListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public JobTitleListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).Master_data_For_Job_Titles;
            this.FormState = PH.Platform.BO.Interface.WorkMode.Read;

            //用BO權限，控制是否可以編輯Grid
            this.AllowGridEdit = barBtnAddNew.Enabled;

            PrepareData();
        }

        protected override void OnClickAddNew()
        {
            base.OnClickAddNew();
            
            //由於受到平臺中的控制，此句必須要有，否則在網格中新增記錄時，如果是由新增按鈕新增記錄，移動行後不能正常保存，Add by David 2020-03-18
            this.IfClickAdd = false; 
        }

        void PrepareData()
        {
            this.edtGrade.DisplayMember = "GradeCode";
            this.edtGrade.ValueMember = "GradeCode";
            var lists = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "Grade")
                .Select(p => new { GradingSeq = p.SortID, GradeCode = p.Lang, Name = p.Name }).ToList();
            lists.Insert(0, null);
            this.edtGrade.DataSource = lists;

            this.edtGrade.View.Columns[0].Caption = "Seq No.";
            this.edtGrade.View.Columns[1].Caption = "Code";
            this.edtGrade.View.Columns[2].Caption = "Name";

            this.edtGrade.View.Columns[0].Width = 80;
            this.edtGrade.View.Columns[1].Width = 70;
            this.edtGrade.View.Columns[2].Width = 150;
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            JobTitleReport rptJobTilte = new JobTitleReport(this.objListGridView.FilteredList());
            rptJobTilte.ShowPreview();
        }


    }
}
