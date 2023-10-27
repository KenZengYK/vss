using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.BO;
using System.Diagnostics;

namespace PH.RWO.BackEnd
{
    public partial class JobAutoCalcWO : UserControl, PH.Platform.BackEnd.BO.IServerJob, PH.Platform.BackEnd.BO.IParameterSetControl
    {
        public JobAutoCalcWO()
        {
            InitializeComponent();

            this.txtDate.EditValue = DateTime.Now.AddMonths(-2);
        }

        #region IServerJob Members
       // DateTime StartDate;
        DateTime StartDate = DateTime.Now.AddMonths(-2);

        public void BackEndJob(string parameters)
        {
            string[] paras = parameters.Split(',');
            if (paras[0] == string.Empty) return;

            //StartDate = Convert.ToDateTime(paras[0]);
            StartDate = DateTime.Now.AddMonths(-2);


            //StartDate

            ////这是一个简单的测试  OK
            //PH.RWO.BO.RWOSOPCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            //string SqlStr = "insert Test(Code, Remark, Opdate) values('David', 'Test', getdate())";
            //db.ExecuteCommand(SqlStr); 

            //string SqlStr = "insert Test(Code, Remark, Opdate) values('Shulin', '测试开始', getdate())";
            //db.ExecuteCommand(SqlStr);

            

            DateTime BTime = DateTime.Now;

            ExecuteAutoCalcWO();

            //这是一个带参数的测试  OK
            DateTime ETime = DateTime.Now;

            //string SqlStrS = "insert Test(Code, Remark, Opdate) values('Shulin', '{0}',  '{1}')";
            //SqlStrS = string.Format(SqlStrS, Swtxt , StartDate.ToString());

            string SqlStrS = "insert Test(Code, Remark, Opdate) values('Shulin', '{0}',  getdate() )";
            SqlStrS = string.Format(SqlStrS, (ETime - BTime).ToString() + " - " + StartDate.ToString());
            db.ExecuteCommand(SqlStrS);

        }

        #endregion

        #region IParameterSetControl Members

        public string GetParameter()
        {

            //return string.Format("{0}", StartDate);
            return string.Format("{0}", this.txtDate.DateTime.Date);
        }

        public UserControl ParameterControl(string parameters)
        {
            JobAutoCalcWO obj = new JobAutoCalcWO();
            //if (!string.IsNullOrEmpty(parameters))
            //{
            //    string[] paras = parameters.Split(',');
            //    obj.txtDate.EditValue = StartDate;
            //}
            return obj;

        }

        #endregion

        RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        void ExecuteAutoCalcWO()
        {
            //AutoCalcWOForm frm = new AutoCalcWOForm();
            //frm.Show(this);
            //frm.listBoxControl1.Items.Clear();
            //this.Cursor = Cursors.WaitCursor;        
            try
            {

                //var lists = db.WorkOrders.Where(p => p.Project.Status != "C" && p.Project.Status != "X" &&
                //    p.WOStatus != "-1" && p.WOStatus != "8" && p.DeliveryShipCompleted.Value >= StartDate && p.WorkOrderNo == "W389496");

                var lists = db.WorkOrders.Where(p => p.Project.Status != "C" && p.Project.Status != "X" &&
                    p.WOStatus != "-1" && p.WOStatus != "8" && p.DeliveryShipCompleted.Value >= StartDate);

                //frm.listBoxControl1.Items.Clear();
                //DateTime a = DateTime.Now;
                //frm.listBoxControl1.Items.Add("开始时间：" + a);
                //frm.listBoxControl1.Items.Add(string.Format("共计算WO: {0} 个", lists.Count()));            

               
                //changge by shulin 20220831
                foreach (var wo in lists)
                {

                    try
                    {
                        InitChooseFW(wo);
                        db.SubmitChanges();
                    }
                    catch(Exception ex)
                    {
                        continue;
                    }

                }

                  
                    //foreach (var wo in lists)
                    //{
                    //    //DateTime BeginTime = DateTime.Now;

                    //    InitChooseFW(wo);
                    //    db.SubmitChanges();
                    //    //DateTime EndTime = DateTime.Now;

                    //    // var UsedTime = EndTime - BeginTime;
                    //    //frm.listBoxControl1.Items.Add(string.Format("计算WO: {0} 用时：{1}", wo.WorkOrderNo, UsedTime));
                    //    //frm.listBoxControl1.TopIndex = frm.listBoxControl1.Items.Count - 1;
                    //    //Application.DoEvents();

                    //}
                
               
                //DateTime b = DateTime.Now;
                //frm.listBoxControl1.Items.Add("结束时间：" + b);
                //frm.listBoxControl1.Items.Add("总共用时：" + (b - a));

            }          
            finally
            {
                this.Cursor = Cursors.Default;
            }

           

        }


        private void InitChooseFW(WorkOrder wo)
        {
            //this.gvChosenFW.OptionsView.ShowColumnHeaders = false;
            //this.gvChosenFW.OptionsBehavior.Editable = false;

            //WorkOrder wo = this.BindingSource.Current as WorkOrder;
            if (wo == null) return;
            wo.GetIEBInfor();

            //this.bsChooseFW.DataSource = wo.WOChooseFWs;

            #region WOChooseFW

            if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count == 0)
            {
                for (int i = 1; i < 5; i++)
                {
                    AddWOChooseFW(wo, i, db);

                }
            }
            else if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count > 0)
            {
                foreach (var cFW in wo.WOChooseFWs)
                {
                    if (cFW.Seq == 1)
                        CheckOptionOneFW(cFW, db);

                    //自動計算Opation 3 由David加入 2020-07-07 
                    if (cFW.Seq == 3)
                    {
                        wo.CalcOption3Data();
                    }
                }
            }

            if (wo.WOChooseFWs != null && wo.WOChooseFWs.Count == 3)
            {
                AddWOChooseFW(wo, 4, db);
            }
            db.SubmitChanges();


            #endregion

        }

        private void AddWOChooseFW(WorkOrder wo, int seq, RWOSOPCDataContext context)
        {
            WOChooseFW obj = new WOChooseFW(); //this.bsChooseFW.AddNew();
            WOChooseFW cFW = obj as WOChooseFW;
            wo.WOChooseFWs.Add(cFW);


            cFW.WorkOrder = wo;
            cFW.CurrentDataContext = db;
            //cFW.CurrentBindingSource = this.bsChooseFW;

            cFW.Company = wo.Company;
            cFW.SalesOrderNo = wo.SalesOrderNo;
            cFW.WorkOrderNo = wo.WorkOrderNo;
            cFW.Seq = seq;
            cFW.Chosen = false;


            if (cFW.Seq == 1)
            {
                DoOptionOneFW(cFW, context);

                //    cFW.FactoryWork = wo.Project.IsShipWindow ? wo.FactoryWorkStartShip : wo.FactoryWorkShipCompleted;
                //    cFW.LineWork = wo.Project.IsShipWindow ? wo.LineWorkStartShip : wo.LineWorkShipCompleted;

                //    DateTime? dtFirst = wo.Project.IsShipWindow ? wo.FirstStationStartShip : wo.FirstStationShipCompleted;
                //    if (!dtFirst.HasValue)
                //    {
                //        dtFirst = context.fn_FirstStationByFW(cFW.FactoryWork, wo.Project.Customer, wo.Factory);
                //    }
                //    cFW.FirstStation = dtFirst;

                //    //assign 1stStation to WO when it no value:
                //    if (!wo.FirstStationStartShip.HasValue)
                //    {
                //        wo.FirstStationStartShip = context.fn_FirstStationByFW(wo.FactoryWorkStartShip, wo.Project.Customer, wo.Factory);
                //    }
                //    if (!wo.FirstStationShipCompleted.HasValue)
                //    {
                //        wo.FirstStationShipCompleted = context.fn_FirstStationByFW(wo.FactoryWorkShipCompleted, wo.Project.Customer, wo.Factory);
                //    }

                //    //cFW.Chosen = true;
            }
            wo.WOChooseFWs.Add(cFW);
        }

        private void DoOptionOneFW(WOChooseFW cFW, RWOSOPCDataContext context)
        {
            WorkOrder wo = cFW.WorkOrder;

            cFW.FactoryWork = wo.IsShipWindow ? wo.FactoryWorkStartShip : wo.FactoryWorkShipCompleted;
            cFW.LineWork = wo.IsShipWindow ? wo.LineWorkStartShip : wo.LineWorkShipCompleted;

            DateTime? dtFirst = wo.IsShipWindow ? wo.FirstStationStartShip : wo.FirstStationShipCompleted;
            if (!dtFirst.HasValue)
            {
                dtFirst = context.fn_FirstStationByFW(cFW.FactoryWork, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
            cFW.FirstStation = dtFirst;

            //assign 1stStation to WO when it no value:
            if (!wo.FirstStationStartShip.HasValue)
            {
                wo.FirstStationStartShip = context.fn_FirstStationByFW(wo.FactoryWorkStartShip, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
            if (!wo.FirstStationShipCompleted.HasValue)
            {
                wo.FirstStationShipCompleted = context.fn_FirstStationByFW(wo.FactoryWorkShipCompleted, wo.Project.Customer, wo.Factory, wo.Project.DSEQ);
            }
        }

        private void CheckOptionOneFW(WOChooseFW cFW, RWOSOPCDataContext context)
        {
            if (!cFW.FactoryWork.HasValue)
            {
                DoOptionOneFW(cFW, context);
            }
        }

        private void txtDate_TextChanged(object sender, EventArgs e)
        {
            
            StartDate = this.txtDate.DateTime.AddMonths(-2);
        }

    }
}
