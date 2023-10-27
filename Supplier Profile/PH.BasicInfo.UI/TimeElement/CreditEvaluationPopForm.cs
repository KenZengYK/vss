using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.Misc.BO;
using System.Collections;
using DevExpress.XtraEditors.DXErrorProvider;

namespace PH.BasicInfo.UI.TimeElement
{

    public partial class CreditEvaluationPopForm : Form
    {
        internal Operation Mode=Operation.View;
        internal IList CategoryCollect; //新增时根据此集合提供选择Category


        internal SupplierEvaluationDetail CurDetail;
        internal BasicInfoDataContext bidc;
        internal string SupplierCode;

        private double maxscore;
        internal protected const string PLATFORMSIDEPROGRAMID = "P000232";
        internal protected const string PLATFORMFILEID = "00000000010105";
        internal protected const string PLATFORMNAME = "Platform";


        public CreditEvaluationPopForm()
        {
            InitializeComponent();
        }

        private void CreditEvaluationPopForm_Load(object sender, EventArgs e)
        {
            
            SetEnable(Mode);
            BindValue();
            
        }


        private void SetEnable(Operation oper)
        {
            categoryLookUpEdit.Enabled = (oper == Operation.Add);
            lookUpEditItemCode.Enabled = (oper == Operation.Add);

        }

        private void SetMaxScore()
        {
            if (Mode == Operation.Edit && CurDetail != null)
            {
                lblScore.Text = CurDetail.SupplierEvaluationItem.ScoreMax.ToString() + ")";
                this.maxscore = CurDetail.SupplierEvaluationItem.ScoreMax.GetValueOrDefault(0);
            }
               
        
        }

        private void BindValue()
        {
            if (Mode==Operation.Edit&&CurDetail != null)
            {
                lblSupplierCode.Text = CurDetail.ERPSupplier;
                categoryLookUpEdit.Properties.ValueMember = "Category";
                categoryLookUpEdit.Properties.DisplayMember = "Category";

                var query1 = from e in bidc.SupplierEvaluationItems
                             group e by new { e.Category } into g
                             select g.FirstOrDefault();

                categoryLookUpEdit.Properties.DataSource = query1;

                categoryLookUpEdit.EditValue = CurDetail.Category;
                categoryLookUpEdit.Text = CurDetail.Category;

                //lookUpEditItemCode.EditValue = CurDetail.ItemCode;
                //lookUpEditItemCode.Text = CurDetail.ItemCode;

                txtScore.Text = CurDetail.Score.ToString();
                lblScore.Text = CurDetail.SupplierEvaluationItem.ScoreMax.ToString()+")";
                medtDesc.Text = CurDetail.SupplierEvaluationItem.Description;
                medtSpec.Text = CurDetail.SupplierEvaluationItem.Specific;
            }

            if (this.Mode == Operation.Add)
            {
                lblSupplierCode.Text = CurDetail.ERPSupplier;
                lblScore.Text = "0)";
                this.maxscore = 0;
                BindingCategory();
            }


        }

        private void BindingCategory()
        {
            //Misc_DataDictionaryList mischelper = new Misc_DataDictionaryList();
            //categoryLookUpEdit.Properties.ValueMember = "DataCode";
            //categoryLookUpEdit.Properties.DisplayMember = "DataName";
            //categoryLookUpEdit.Properties.DataSource = mischelper.GetAllMisc_DataDictionaryByCondition("PH.BasicInfo.EvaluationCategory");
            categoryLookUpEdit.Properties.DisplayMember = "Category";
            categoryLookUpEdit.Properties.ValueMember = "Category";


            //var compare = new EvaluationItemCompare();
            //categoryLookUpEdit.Properties.DataSource = bidc.SupplierEvaluationItems.Distinct(compare);

            var query12 = (from e in bidc.SupplierEvaluationItems
                          group e by new { e.Category } into g
                          select g.FirstOrDefault()).ToList();

            var query13 = query12.Where(p => CategoryCollect.Contains(p.Category)).ToList();


            categoryLookUpEdit.Properties.DataSource = query13;
            categoryLookUpEdit.ItemIndex = 0;
            BindingItemCode(categoryLookUpEdit.EditValue.ToString());
        }

        private void BindingItemCode(string category)
        {          
            lookUpEditItemCode.Properties.DisplayMember = "ItemCode";
            lookUpEditItemCode.Properties.ValueMember = "ItemCode";
            lookUpEditItemCode.Properties.DataSource = bidc.SupplierEvaluationItems.Where(p => p.Category == category);
            lookUpEditItemCode.ItemIndex = 0;

        }




        private void categoryLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            string category = categoryLookUpEdit.EditValue.ToString();
            BindingItemCode(category);
            //lookUpEditItemCode.Properties.DisplayMember ="ItemCode";
            //lookUpEditItemCode.Properties.ValueMember ="ItemCode";
            //lookUpEditItemCode.Properties.DataSource = bidc.SupplierEvaluationItems.Where(p => p.Category == category);
        }

        private void lookUpEditItemCode_EditValueChanged(object sender, EventArgs e)
        {
            SupplierEvaluationItem sei = lookUpEditItemCode.Properties.GetDataSourceRowByKeyValue(lookUpEditItemCode.EditValue) as SupplierEvaluationItem;
            if (sei != null)
            {
                lblScore.Text = sei.ScoreMax.ToString()+")";
                this.maxscore = sei.ScoreMax.GetValueOrDefault(0);
                medtDesc.Text = sei.Description;
                medtSpec.Text = sei.Specific;
            }
        }


        private void btnSaveDetail_Click(object sender, EventArgs e)
        {
            if (Mode == Operation.Add)
            {
                this.CurDetail.Category = categoryLookUpEdit.EditValue.ToString();
                this.CurDetail.ItemCode = lookUpEditItemCode.EditValue.ToString();
            }
            this.CurDetail.Score = Double.Parse(this.txtScore.EditValue.ToString());

            try
            {
                if (Mode == Operation.Add)
                    this.bidc.SupplierEvaluationDetails.InsertOnSubmit(CurDetail);

                this.bidc.SubmitChanges();

                this.Mode = Operation.View;
                //this.Close();

            }
            //主鍵沖突異常捕獲
            catch (System.Data.Linq.DuplicateKeyException dupkeyEx)
            {
                //this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgKeyduplicated", "msgKeyduplicated");
                PH.Platform.Misc.BO.ErrorMessages.ErrorMessageManager.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME,"msgKeyduplicated",
                               PH.Platform.Common.SysParamHelper.Instance.LangID,"msgKeyduplicated");
                              
                //若出错,把缓存在datacontext中的錯誤数据清除掉,否则继续删除下一笔正常数据时会因上一次删除出错的数据的影响而无法正常删除
                if (bidc.GetChangeSet().Inserts.Count > 0)
                    bidc.GetTable<SupplierEvaluationDetail>().DeleteOnSubmit(CurDetail);
                this.DialogResult = DialogResult.None;
                //throw dupkeyEx;
            }
            catch (Exception ee)
            {

                //若出错,把缓存在datacontext中的錯誤数据清除掉,否则继续删除下一笔正常数据时会因上一次删除出错的数据的影响而无法正常删除
                if (bidc.GetChangeSet().Inserts.Count > 0)
                    bidc.GetTable<SupplierEvaluationDetail>().DeleteOnSubmit(CurDetail);
                this.DialogResult = DialogResult.None;
                throw ee;

            }


        }


        private void btnClose_Click(object sender, EventArgs e)
        {
            

            //if (dxErrCreditEval.HasErrors)
            //  dxErrCreditEval.ClearErrors();

            this.Mode = Operation.View;
            this.Close();
        }


        private bool isFormClosing = false;

        private void txtScore_Validating(object sender, CancelEventArgs e)
        {
            //if (isFormClosing)
            //    return;


            double score=0;
            bool isdouble = Double.TryParse(txtScore.Text, out score);

            if (!isdouble)
            {
                dxErrCreditEval.SetError(txtScore, "The score must be a valid double!", ErrorType.Warning);
                e.Cancel = true;
            }
            else if (score<0||score>this.maxscore)
            {
                dxErrCreditEval.SetError(txtScore, "The score must be great than or equals 0 and less than or eueals "+
                    this.maxscore.ToString(), ErrorType.Warning);
                e.Cancel = true;
            }
            else
                dxErrCreditEval.ClearErrors();
        }



        private const int WM_CLOSE = 16;
        //protected override void WndProc(ref Message m)
        //{
        //    if (m.Msg == WM_CLOSE)
        //        isFormClosing = true;
        //    base.WndProc(ref m);
        //}





    }


    class EvaluationItemCompare : IEqualityComparer<SupplierEvaluationItem>
    {
        public bool Equals(SupplierEvaluationItem x, SupplierEvaluationItem y)
        {
            return (x.Category == y.Category);
        }

        public int GetHashCode(SupplierEvaluationItem obj)
        {           
            return obj.ToString().ToLower().GetHashCode();
        }
    }  




}
