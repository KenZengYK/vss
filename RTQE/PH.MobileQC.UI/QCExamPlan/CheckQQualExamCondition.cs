using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class CheckQQualExamCondition : PH.Platform.UI.CS.UI0.BlankForm
    {
        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
        public CheckQQualExamCondition()
        {
            InitializeComponent();

            //DataTable dt = context.GetFactoryType();
            //lue_Factory.Properties.Items.Clear();
            //lue_Factory.Properties.Items.Add("");
            //lue_Factory.Properties.Items.AddRange(dt.AsEnumerable().Select(dr => dr["Name"]).ToList()); 
            //lue_Style.Properties.Items.AddRange(context.QC_ExamPlanHeaders.Select(p => p.CustStyle).Distinct().ToList());

        }


        private void sbut_OK_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.lue_Style.Text))
            {

                MessageBox.Show("請選擇款號！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                return;
            }

            if (CheckStepType.SelectedIndex == 1 && string.IsNullOrEmpty(lue_Factory.Text))
            {
                MessageBox.Show("請選擇工廠！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
           
            if (this.CheckStepType.SelectedIndex == 1) 
            {
                var checkFactoryDate = context.QC_ExamPlanHeaders.Where(p => p.OID == AOid && p.ChosenFactoryDate == null);
                if (checkFactoryDate.Count() > 0) 
                {
                    foreach (var p in checkFactoryDate) 
                    {
                        p.ChosenFactoryDate = DateTime.Now;
                        //p.Save();
                    }
                    context.SubmitChanges();
                }
            }


            QualExamLineDependentReport rpt = new QualExamLineDependentReport(this.lue_Factory.Text, this.lue_Line.Text, this.lue_Style.Text, this.CheckStepType.SelectedIndex, AOid);
            rpt.ShowPreview();


        }

        private void lue_Factory_SelectedValueChanged(object sender, EventArgs e)
        {


            if (!string.IsNullOrEmpty(this.lue_Style.Text) && !string.IsNullOrEmpty(this.lue_Factory.Text)  )
            {
                lue_Line.Properties.Items.Clear();

                var DataSource = (from p in context.QC_ExamPlanHeaders
                                 from c in context.QC_ExamPlanDetails
                                 where p.OID == c.HeaderOID && p.CustStyle == this.lue_Style.Text && c.Line != this.lue_Style.Text && c.Factory == this.lue_Factory.Text
                                            && !p.Workshop.Contains("PPW") 
                                  select new
                                 {
                                     c.Line,
                                 }).Distinct().ToList();

                lue_Line.Properties.Items.Add("");
                //lue_Style.Properties.Items.Add("");

                lue_Line.Properties.Items.AddRange(DataSource.Where(p => p.Line != null && p.Line != "").Select(p => p.Line).ToList());

            }

        }

        private void lue_Line_SelectedValueChanged(object sender, EventArgs e)
        {
            if (this.lue_Line.Text != "")
            {
                this.CheckStepType.Enabled = false;
                this.CheckStepType.SelectedIndex = 1;
            }
            else 
            {
                this.CheckStepType.Enabled = true;
            }

            //if (!string.IsNullOrEmpty(this.lue_Style.Text))
            //{
            //    lue_Line.Properties.Items.Clear();
            //    lue_Style.Properties.Items.Clear();


            //    var DataSource = from p in context.QC_ExamPlanHeaders
            //                     from c in context.QC_ExamPlanDetails
            //                     where p.OID == c.HeaderOID && p.CustStyle == this.lue_Style.Text
            //                     select new
            //                     {
            //                         c.Line,
            //                     };

            //    lue_Line.Properties.Items.Add("");
            //    lue_Style.Properties.Items.Add("");

            //    lue_Line.Properties.Items.AddRange(DataSource.Where(p => p.Line != null && p.Line != "").Select(p => p.Line).Distinct().ToList());
            //}

        }


        public Int64 AOid;
        public string  AFactory;
        private void lue_Style_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectStyleForm_Report frmSelectStyle = new SelectStyleForm_Report();
            if (frmSelectStyle.ShowDialog() == DialogResult.OK)
            {
                this.lue_Line.Properties.Items.Clear();
                this.lue_Line.Text = "";

                this.CheckStepType.SelectedIndex = 0;
                this.lue_Factory.Enabled = false;
                this.CheckStepType.Enabled = true;

                this.lue_Style.Text = frmSelectStyle.CustStyle;
                AOid = frmSelectStyle.Oid;
                AFactory = frmSelectStyle.Facotry;

              
                this.lue_Factory.Text = frmSelectStyle.Facotry;
                
            }
        }

        private void lue_Style_EditValueChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(this.lue_Style.Text) && !string.IsNullOrEmpty(this.lue_Factory.Text))
            {
                lue_Line.Properties.Items.Clear();

                var DataSource = (from p in context.QC_ExamPlanHeaders
                                  from c in context.QC_ExamPlanDetails
                                  where p.OID == c.HeaderOID && p.CustStyle == this.lue_Style.Text && c.Line != this.lue_Style.Text && c.Factory == this.lue_Factory.Text
                                             && !p.Workshop.Contains("PPW") 
                                  select new
                                  {
                                      c.Line,
                                  }).Distinct().ToList();

                lue_Line.Properties.Items.Add("");
                lue_Line.Properties.Items.AddRange(DataSource.Where(p => p.Line != null && p.Line != "").Select(p => p.Line).ToList());

            }
        }

        private void CheckStepType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.CheckStepType.SelectedIndex == 1)
            {
                this.lue_Factory.Enabled = true;

            }
            else 
            {
                this.lue_Factory.Text = AFactory;
                this.lue_Factory.Enabled = false;
            }
        }

        //bool check ()
        //{
        //   //if(string.IsNullOrEmpty(this))
        //}


    }
}
