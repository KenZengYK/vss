using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.Misc.BO;
using PH.Platform.Lang.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class DefectPostionDetailForm : PH.Platform.UI.CS.UI2.DetailForm//PH.UI.UI1.SingleDetailForm
    {
        //public int mtype;

        public DefectPostionDetailForm()
        {
            InitializeComponent(); 
        }

        //private void initDefect_Type()
        //{
        //    DataTable dt = new DataTable("Table1");
        //    dt.Columns.Add("VALUES", typeof(int));
        //    dt.Columns.Add("TEXT", typeof(string));

        //    if (this.PrevForm.Name.ToUpper() == "DEFECTLIST")  //類型
        //    {
        //        mtype = 1;
        //        Defect_CodeLabel.Text = "Defect Code";
        //        Defect_SpecLabel.Text = "Defect";
        //        Defect_CodeLabel.Location = new System.Drawing.Point(98, 91);
        //        Defect_SpecLabel.Location = new System.Drawing.Point(125,165);
        //    }
        //    if (this.PrevForm.Name.ToUpper() == "DEFECTPOSITION")  //部位
        //    {
        //        mtype = 2;
        //        Defect_CodeLabel.Text = "Defect Position Code";
        //        Defect_SpecLabel.Text = "Defect Position";
        //        Defect_CodeLabel.Location = new System.Drawing.Point(52, 96);
        //        Defect_SpecLabel.Location = new System.Drawing.Point(82, 165);
        //    }
        //    if (this.PrevForm.Name.ToUpper() == "DEFECTCORRECT")   // 處理辦法
        //    {
        //        mtype = 3;
        //        Defect_CodeLabel.Text = "Defect Correct Code";
        //        Defect_SpecLabel.Text = "Defect Correct";
        //        Defect_CodeLabel.Location = new System.Drawing.Point(52, 96);
        //        Defect_SpecLabel.Location = new System.Drawing.Point(82, 165);
        //    }
        //    if (this.PrevForm.Name.ToUpper() == "DEFECTPREVENT")   //預防
        //    {
        //        mtype = 4;
        //        Defect_CodeLabel.Text = "Defect Prevent Code";
        //        Defect_SpecLabel.Text = "Defect Prevent";
        //        Defect_CodeLabel.Location = new System.Drawing.Point(52, 96);
        //        Defect_SpecLabel.Location = new System.Drawing.Point(82, 165);
        //    }
        //    //if (this.PrevForm.Name.ToUpper() == "DEFECTRESULT")  //QC結果
        //    //    mtype = 5;
        //    if (this.PrevForm.Name.ToUpper() == "DEFECTCAUSE")     //瑕疵原因
        //    {
        //        mtype = 6;
        //        Defect_CodeLabel.Text = "Defect Cause Code";
        //        Defect_SpecLabel.Text = "Defect Cause";
        //        Defect_CodeLabel.Location = new System.Drawing.Point(55, 96);
        //        Defect_SpecLabel.Location = new System.Drawing.Point(85, 165);

        //    }

            


        //    switch (mtype )
        //    {
        //        case 1:
        //            dt.Rows.Add(1, "瑕疵");
        //            break;
        //        case 2:
        //            dt.Rows.Add(2, "瑕疵部位");
        //            break;
        //        case 3:
        //            dt.Rows.Add(3, "瑕疵處理");
        //            break;
        //        case 4:
        //            dt.Rows.Add(4, "瑕疵預防");
        //            break;
        //        //case 5:
        //        //    dt.Rows.Add(5, "QC結果");
        //        //    break;
        //        case 6:
        //            dt.Rows.Add(6, "Cause");
        //            break;

        //    }
            
        //    //dt.Rows.Add("2", "瑕疵部位");
        //    //dt.Rows.Add("3", "瑕疵處理");
        //    //dt.Rows.Add("4", "瑕疵預防");
        //    //dt.Rows.Add("5", "QC結果");
        //    //dt.Rows.Add("6", "Cause");
        //    //this.textBox1.Properties.DataSource = dt;
        //    //this.textBox1.Properties.ValueMember = "VALUES";
        //    //this.textBox1.Properties.DisplayMember = "TEXT";
        //    //edtDefect_Type.Tag = mtype;
        //    edtDefect_Type.Text = dt.Rows[0]["text"].ToString();
          
        //} 

        private void DefectDetail_Load(object sender, EventArgs e)
        {
            //this.initDefect_Type();
        }

         
 
        protected override void SaveCurrent()
        {
            //if (CheckFirstInputData())
            //{

                QC_Defect obj = (QC_Defect)this.BindingSource.Current;
            obj.Defect_Type = 2;// mtype;
            obj.Defect_Code = edtDefect_Code.Text;
            obj.Defect_Spec = edtDefect_Spec.Text;
            string ss = "";
            if (chkItemB.Checked)
                ss += "B,";
            if (chkItemK.Checked)
                ss += "K,";
            if (chkItemU.Checked)
                ss += "U,";

            if (chkItemP.Checked)
                ss += chkItemP.Text+",";

            if (ss != "")
                obj.Remark = ss.Substring(0, ss.Length - 1);
            else
                obj.Remark = "";

            base.SaveCurrent();
            //}
        }


        public override void EditCurrent()
        {
            base.EditCurrent();
            if (IsEditting || IsNew)
            {
                this.chkItemB.Enabled = true;
                this.chkItemK.Enabled = true;
                this.chkItemU.Enabled = true;
                this.chkItemP.Enabled = true;
            }
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            this.chkItemB.Enabled = false;
            this.chkItemK.Enabled = false;
            this.chkItemU.Enabled = false;
            this.chkItemP.Enabled = false;
        }


        string _cpstr = "";
        LangDataContext ldc;
        public override void DataBind()
        {
            base.DataBind();

            

            if (!IsEditting && !IsNew)
            {
                this.chkItemB.Enabled = false;
                this.chkItemK.Enabled = false;
                this.chkItemU.Enabled = false;
                this.chkItemP.Enabled = false;
            }

         //   PH.Platform.Misc.BO.Misc_DataDictionaryList dictlist = new PH.Platform.Misc.BO.Misc_DataDictionaryList();
          //  Misc_DataDictionary mdict = dictlist.GetAllMisc_DataDictionaryByCondition("datatype='PH.Defect.ProductApplication' and datacode='CP'").FirstOrDefault();
           
            //if (mdict == null||string.IsNullOrEmpty(mdict.DataName))
            //    _cpstr = "C/P";
            //else
            //    _cpstr = mdict.DataName;

           // chkItemP.Text = _cpstr;


                
            //if (IsEditting)
            //{
                QC_Defect qd = this.BindingSource.Current as QC_Defect;
                if (!string.IsNullOrEmpty(qd.Remark))
                {
                    string[] items = qd.Remark.Split(new char[] { ',' });
                    if (items.Contains("B"))
                        chkItemB.CheckState = CheckState.Checked;

                    if (items.Contains("K"))
                        chkItemK.CheckState = CheckState.Checked;

                    if (items.Contains("U"))
                        chkItemU.CheckState = CheckState.Checked;

                  if (ldc==null)
                    ldc=ContextBuilder.CreateContext<LangDataContext>();

                  Lang_Item litem = ldc.Lang_Items.Where(ctype => ctype.SideProgramID == "P000167" &&
                    ctype.FileID == "00000000000107" && ctype.FormName == "DefectPostionDetailForm" &&ctype.ControlName=="chkItemP"
                    &&ctype.LangID == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID).FirstOrDefault();
             

                  if (litem != null)
                  {
                      if (items.Contains(litem.Text))
                          chkItemP.CheckState = CheckState.Checked;
                  }

                }

          //  }

        }

        
    }
}
