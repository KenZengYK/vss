using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    //public partial class AttachListForm : DevExpress.XtraEditors.XtraForm
    public partial class AttachListForm : Form
    {
        ContractItemList ParForm;
        ContractInfo Current;
        HDODataContext CurrentCtx;
        List<ContractAttach> CurList;
        public AttachListForm(ContractItemList pfrm,ContractInfo contract, HDODataContext ctx, List<ContractAttach> list)
        {
            InitializeComponent();
            ParForm = pfrm;
            Current = contract;
            CurrentCtx = ctx;
            CurList =list;
            if (CurList.Count == 0)
            {
                
                CurList = DB.GetNeedAttachList(ctx);
                gcAttach.DataSource = CurList;
            }
            else
                gcAttach.DataSource = CurList;

          
        }



        List<ContractAttach> SelectList = new List<ContractAttach>();
        private void GetCheckItem()
        {
            SelectList.Clear();
            int j = 0;
            for (int i = 0; i < gvAttach.RowCount; i++)
            {
                ContractAttach obj = gvAttach.GetRow(i) as ContractAttach;
                if (obj != null && obj.CheckFlag)
                {
                    SelectList.Add(obj);
                  //  CurList.Remove(obj); //¼ºßx“ñß^µÄ„h³ý
                    j++;
                }
            }
        
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            GetCheckItem();
            foreach (ContractAttach cah in SelectList)
            {
                ContractInfoDetail cid = new ContractInfoDetail();
                cid.CraId = Current.CraId; cid.GrnNo = cah.GrnNo;
                cid.SuppRef = cah.SuppRef; cid.HSCode = cah.HSCode;
                cid.PO = cah.PO; cid.POActive = false;
                cid.ContractInfo = Current;

                
                CurrentCtx.ContractInfoDetails.InsertOnSubmit(cid);
                //CurrentCtx.ContractInfoDetails.Attach(cid);
                //Current.ContractInfoDetails.Add(cid);
                //Current.ContractInfoDetails.
                //CurrentCtx.ContractInfoDetails.Attach(cid);
            }
           // CurrentCtx.SubmitChanges();
        //    CurrentCtx.Refresh(System.Data.Linq.RefreshMode.KeepChanges, Current);
            
            //ParForm.CurrentList = CurList;
            ClearFlag();

            ((ParForm.ParentForm as ContractDetailA).PrevForm as ContractSetting).CurrentList = CurList;


            this.Close();

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ClearFlag();
            this.Close();
        }

        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            SetCheckAll(chkAll.Checked);
        }

        private void SetCheckAll(bool statu)
        {

            for (int i = 0; i < gvAttach.RowCount; i++)
            {
                ContractAttach obj = gvAttach.GetRow(i) as ContractAttach;
                if (obj != null)
                    obj.CheckFlag = statu;
            }
            gvAttach.RefreshData();
        }

        private void AttachListForm_Load(object sender, EventArgs e)
        {
           

          
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            CurList =DB.GetNeedAttachList(CurrentCtx);
            gcAttach.DataSource = CurList;
        }

        private void ClearFlag()
        { 
            //List<ContractAttach> 
            
          foreach(ContractAttach cah in CurList)
          {
              cah.CheckFlag = false;
          }
        
        }


    }
}