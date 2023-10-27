using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using System.Data.Linq;

namespace PH.SPC.UI
{
    public partial class StyleProduceRemarkListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public StyleProduceRemarkListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleProduceRemarkDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.AllowGridEdit = false;

            //List<StyleProduceRemark> list = this.CurBindingSource.DataSource as List<StyleProduceRemark>;
            //if (list != null && list.Count > 0)
            //    this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        public StyleProduceRemarkListForm(StyleSortEdition styleSortEdition)
        {
            InitializeComponent();
            this.BindingSource.DataSource = styleSortEdition.StyleProduceRemarks;
            this.EditorTypeName = typeof(StyleProduceRemarkDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }


        protected override void OnClickAddNew()
        {
            //this.CurBindingSource.List.Count
            //Enumerable<StyleProduceRemark> lists = (Enumerable<StyleProduceRemark>)this.CurBindingSource.DataSource;
           //int temp = ((this.PrevForm as StyleSortEditionDetailForm).CurBindingSource.Current as StyleSortEdition).StyleProduceRemarks.Count;
           // //EntitySet<StyleProduceRemark> lists = this.CurBindingSource.DataSource as EntitySet<StyleProduceRemark>;
            if (this.BindingSource.List.Count > 0)
           {
               MessageBox.Show("不能增加多條樣板製作要求.", "warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
               return;
           }
            base.OnClickAddNew();
        }


    }
}
