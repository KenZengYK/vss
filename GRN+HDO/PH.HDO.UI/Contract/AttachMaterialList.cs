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
    public partial class AttachMaterialList : Form
    {
        ContractItemMaitain ParForm;
        ContractInfo Current;
        HDODataContext CurrentCtx;
        List<ContractAttach> CurList;
        public AttachMaterialList(ContractItemMaitain pfrm, ContractInfo contract, HDODataContext ctx)
        {
            InitializeComponent();
            ParForm = pfrm;
            Current = contract;
            CurrentCtx = ctx;
          //  CurList =list;
            //if (CurList.Count == 0)
            //{
                
            //    CurList = DB.GetNeedAttachList(ctx);
            //    gcAttach.DataSource = CurList;
            //}
            //else
            //    gcAttach.DataSource = CurList;
            gcAttach.DataSource = DB.GetMaterialList();

          
        }



        List<AttachMaterial> SelectList = new List<AttachMaterial>();
        private void GetCheckItem()
        {
            SelectList.Clear();
            int j = 0;
            for (int i = 0; i < gvAttach.RowCount; i++)
            {
                AttachMaterial obj = gvAttach.GetRow(i) as AttachMaterial;
                if (obj != null && obj.CheckFlag)
                {
                    SelectList.Add(obj);
                  //  CurList.Remove(obj); //己選擇過的刪除
                    j++;
                }
            }
        
        }


        private void btnOK_Click(object sender, EventArgs e)
        {
            GetCheckItem();
            foreach (AttachMaterial cah in SelectList)
            {
                ContractItem cim = new ContractItem();
                cim.HSCode = cah.HsCode;
                cim.ContractInfo = Current;
                CurrentCtx.ContractItems.InsertOnSubmit(cim);

            }

            ClearFlag();

        //    ((ParForm.ParentForm as ContractDetailA).PrevForm as ContractSetting).CurrentList = CurList;


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
                AttachMaterial obj = gvAttach.GetRow(i) as AttachMaterial;
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
            //CurList =DB.GetNeedAttachList(CurrentCtx);
            //gcAttach.DataSource = CurList;
        }

        private void ClearFlag()
        { 
            //List<ContractAttach> 

         //foreach (AttachMaterial cah in CurList)
         // {
         //     cah.CheckFlag = false;
         // }
        
        }


    }
}