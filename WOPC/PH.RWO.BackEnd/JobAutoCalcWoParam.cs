using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.RWO.BO;
using PH.Platform.BO;

namespace PH.RWO.BackEnd
{
    public class JobAutoCalcWoParam:PH.Platform.BackEnd.BO.IServerJob
    {

        public JobAutoCalcWoParam() 
        {

        }
        public DateTime StartDate = new DateTime();

        #region IServerJob 成员

       

        public void BackEndJob(string parameters)
        {
            string[] paras = parameters.Split(',');         
            StartDate = paras.Count() > 0 ? DateTime.Now.AddMonths(-2) : Convert.ToDateTime(paras[0]);
            DateTime BTime = DateTime.Now;
            ExecuteAutoCalcWO();
            DateTime ETime = DateTime.Now;

            //string SqlStrS = "insert Test(Code, Remark, Opdate) values('Shulin', '{0}',  '{1}')";
            //SqlStrS = string.Format(SqlStrS, Swtxt , StartDate.ToString()); 

            string SqlStrS = "insert Test(Code, Remark, Opdate) values('Shulin', '{0}',  getdate() )";
            SqlStrS = string.Format(SqlStrS, "Param :" + (ETime - BTime).ToString() + " - " + StartDate.ToString() );
            db.ExecuteCommand(SqlStrS);

        }

        #endregion
        void ExecuteAutoCalcWO()
        {
     
            try
            {         
                var lists = db.WorkOrders.Where(p => p.Project.Status != "C" && p.Project.Status != "X" &&
                    p.WOStatus != "-1" && p.WOStatus != "8" && p.DeliveryShipCompleted.Value >= StartDate);

                foreach (var wo in lists)
                {

                    try
                    {
                        InitChooseFW(wo);
                        db.SubmitChanges();
                    }
                    catch (Exception ex)
                    {
                        continue;
                    }

                }
              
            }
            finally
            {
               // this.Cursor = Cursors.Default;
            }



        }
       

        private void InitChooseFW(WorkOrder wo)
        {
            
            if (wo == null) return;
            wo.GetIEBInfor();

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

        RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
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

       
    }
}
