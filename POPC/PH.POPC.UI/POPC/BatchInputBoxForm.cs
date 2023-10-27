using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.POPC.UI.POPC
{
    public partial class BatchInputBoxForm : DevExpress.XtraEditors.XtraForm
    {
        BatchInputBoxTypes _BatchInputBoxType;
        public BatchInputBoxForm(BatchInputBoxTypes ABatchInputBoxType, string ATitle)
        {
            InitializeComponent();
            _BatchInputBoxType = ABatchInputBoxType;

            TabControl.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            if (ABatchInputBoxType == BatchInputBoxTypes.String)
            {
                TabControl.SelectedTabPage = TabPage_String;
            }
            else if (ABatchInputBoxType == BatchInputBoxTypes.Date)
            {
                TabControl.SelectedTabPage = TabPage_Date;
                
            }
            else if (ABatchInputBoxType == BatchInputBoxTypes.ActionLogCmpl)
            {
                TabControl.SelectedTabPage = TabPage_ActionLogCmpl;

                PHPlatformMiscDataContext PlatformMiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
                var lists = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.Level6Status").OrderBy(p => p.DataCode).Select(p => new { Cde = p.DataCode, Explanation = p.DataName }).ToList();
                lists.Insert(0, null);

                txtActionLogCmpl.Properties.DataSource = lists;
                txtActionLogCmpl.Properties.ValueMember = "Cde";
                txtActionLogCmpl.Properties.DisplayMember = "Cde";  //
                txtActionLogCmpl.Properties.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Cde", 60));
                txtActionLogCmpl.Properties.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Explanation", 180));
            }
        }

        public object BatchEditValue  
        {
            get
            {
                if (_BatchInputBoxType == BatchInputBoxTypes.String)  //
                {
                    return txtInputString.Text;
                }
                else if (_BatchInputBoxType == BatchInputBoxTypes.Date)
                {
                    return string.IsNullOrEmpty(txtInputDate.Text) ? (DateTime?)null : txtInputDate.DateTime.Date;
                }
                else if (_BatchInputBoxType == BatchInputBoxTypes.ActionLogCmpl)
                {
                    return txtActionLogCmpl.Text;
                }

                return null;
            }
        }




        //void GetActionlogStatus() 
        //{
        //    PHPlatformMiscDataContext PlatformMiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();

        //    var lists = PlatformMiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.Level6Status").
        //        OrderBy(p => p.DataCode).Select(p => new { Cde = p.DataCode, Explanation = p.DataName }).ToList();
        //    lists.Insert(0, null);

        //    repositoryItemGridLookUpEdit_Status.Properties.DataSource = lists;
        //    repositoryItemGridLookUpEdit_Status.Properties.ValueMember = "Cde";
        //    repositoryItemGridLookUpEdit_Status.Properties.DisplayMember = "Cde";
        //    //repositoryItemGridLookUpEdit_Status.View.Columns[0].Width = 60;
        //    //repositoryItemGridLookUpEdit_Status.View.Columns[1].Width = 180;
        //}

    }

    public enum BatchInputBoxTypes
    {
        String,
        Date,
        ActionLogCmpl

    }
}