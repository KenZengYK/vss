/*    
*  
* Copyright (c) 2013 PeiHeng   
*  
* $Archive:  
* $Author: Joseph  $  
* $Date: 2013/7/10 下午 04:43:39 $   
* $Revision: 0 $   
*/
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.LWPM.UI.WF
{
    public partial class BaseCodeMataince:PH.Platform.UI.CS.BaseForm
    {
        public BaseCodeMataince()
        {
            InitializeComponent();
        }

        bool _loadfinish, _isclicksave;


        public override void DataBind()
        {
            //base.DataBind();     
            gvBaseCode.OptionsBehavior.Editable = true;

        }

        //public override void DataBind()
        //{

        //    RAPLQDataContext context;
        //    context = PH.Platform.BO.ContextBuilder.CreateContext<RAPLQDataContext>();
        //    context.CommandTimeout = 1000;
        //    this.DataContext = context;
        //    this.BindingSource.DataSource = typeof(BaseCode);

        //    //this.AllowGridEdit = true;
        //    //this.AllowAddRow = false;
        //    //this.RowChangeAutoSave = false;
        //    this.bandedGridView1.OptionsBehavior.Editable = true;
        //    // this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //    this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

        //    DataQueryParameter param = new DataQueryParameter();
        //    param.BoType = typeof(BaseCode);
        //    param.WarnRecord = -1;
            
        //    this.StartEnquiry(param);
        //    _loadfinish = true;

        //    this.AllowAddRow = true;
        //    this.AllowGridEdit = true;
        //    this.RowChangeAutoSave = true;            
        //}

        //public override void SaveData()
        //{



        //        if (this.objListGridControl.FocusedView.PostEditor())
        //        {
        //            this.objListGridControl.FocusedView.UpdateCurrentRow();
        //            this.objListGridControl.FocusedView.CloseEditor();
        //            this.BindingSource.EndEdit();
        //        }
        //        else
        //        {
        //            MessageBox.Show("Sorry,can not post the changed data to datasource!");
        //            return;
        //        }


        //        RAPLQDataContext _curcontext = this.DataContext as RAPLQDataContext;
        //        bool needupdate = false;
        //        if (_curcontext.GetChangeSet().Inserts.Count > 0 || _curcontext.GetChangeSet().Updates.Count > 0)
        //            needupdate = true;


        //        if (needupdate)
        //        {
        //            _curcontext.SubmitChanges();
        //        }

        //        if (_isclicksave&&needupdate)
        //            this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgSavesucc", "msgSavesucc");

        //}

     
        //public override void OnClickSave()
        //{
        //    _isclicksave = true;
        //    base.OnClickSave();
        //    _isclicksave = false;
        //}

    }
}
