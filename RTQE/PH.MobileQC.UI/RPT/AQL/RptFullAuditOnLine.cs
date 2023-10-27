using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptFullAuditOnLine : DevExpress.XtraReports.UI.XtraReport
    {
        string Factory = "", StartDate = "", EndDate = "", Role = "", Flag = "";
        int SumType = 0;
        DataTable DbHeader;
        Dictionary<string, string> Dict_Defect = new Dictionary<string, string>();
        ArrayList WorkShopList = new ArrayList();

        public RptFullAuditOnLine()
        {
            InitializeComponent();
        }

        public RptFullAuditOnLine(string fac, int sumtype, string startdate, string enddate, string flag)
        {
            InitializeComponent();
            Factory = fac;
            StartDate = startdate;
            EndDate = enddate;
            // Role = role;
            Flag = flag;
            SumType = sumtype;
            PrepareData();
        }

        public void PrepareData()
        {
            DataSet ds = SqlDataHelper.GetFullAuditOnLine(Factory, SumType, StartDate, EndDate, Flag);
            DbHeader = ds.Tables[0];
            DataTable db_defect = ds.Tables[1];
            DataTable db = ds.Tables[2];

            //DataColumn colsort = new DataColumn();
            //colsort.DataType = System.Type.GetType("System.Int");
            //colsort.ColumnName = "XH";
            //colsort.DefaultValue = 0;
            //db.Columns.Add(colsort);

            List<FullAuditOnLineResult> lstquality = new List<FullAuditOnLineResult>();

            //get all defect code
            for (int j = 15; j < db.Columns.Count; j++)
            {
               // DefectInfo bo = new DefectInfo();
              //  bo.DefectCode = db.Columns[j].ColumnName;
                //  bo.DefectQty = dr[j] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;
                string _col =db.Columns[j].ColumnName;
                string _desc = db_defect.Select("phdefectcode='" + _col + "'")[0][1].ToString();
                Dict_Defect.Add(_col, _desc);
            }


            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                FullAuditOnLineResult quaper = new FullAuditOnLineResult();
                quaper.SortId = 0;
                quaper.Factory = dr["Factory"].ToString();
                string _ws = dr["Workshop"].ToString(); ;
                quaper.Workshop = _ws;
                quaper.Line = dr["Line"].ToString();
                quaper.Customer = dr["Customer"].ToString();
                quaper.BKU = dr["Bku"].ToString();
                quaper.Style = dr["Style"].ToString();
                quaper.YYMM = dr["YYMM"].ToString();
                quaper.MLevel = dr["MLevel"].ToString();

                quaper.MPer = dr["MPer"].ToString();


                quaper.DefectTotal = dr["Defecttotal"] != DBNull.Value ? int.Parse(dr["Defecttotal"].ToString()) : 0;
                quaper.DefectTypeTotal = dr["TypeCount"] != DBNull.Value ? int.Parse(dr["TypeCount"].ToString()) : 0;
                quaper.ChkTotal = dr["Chktotal"] != DBNull.Value ? int.Parse(dr["Chktotal"].ToString()) : 0;
                quaper.ProductTotal = dr["Producttotal"] != DBNull.Value ? int.Parse(dr["Producttotal"].ToString()) : 0;

                quaper.MasterTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;
                lstquality.Add(quaper);

                if (!WorkShopList.Contains(_ws))
                {
                    WorkShopList.Add(_ws);
                }


            }

            this.DataSource = db;

            /* by workshop group row add */

            /*
            for (int j = 0; j < WorkShopList.Count; j++)
            {
                string _wh = WorkShopList[j].ToString();
                string _filter = "Workshop ='" + _wh + "'";
                DataRow _newrow = db.NewRow();
                _newrow["XH"] = 1; 
         
                int _defect_ttl = int.Parse(db.Compute("Sum(Defecttotal)", _filter).ToString()); 
                int _master_ttl = int.Parse(db.Compute("Sum(Master_ttl)", _filter).ToString());
                int _type_ttl = int.Parse(db.Compute("Sum(TypeCount)", _filter).ToString());

                int _check_ttl = int.Parse(db.Compute("Sum(Chktotal)", _filter).ToString());
                int _product_ttl = int.Parse(db.Compute("Sum(Producttotal)", _filter).ToString());

                _newrow["Defecttotal"] = _defect_ttl;
                _newrow["Master_ttl"] = _master_ttl;
                _newrow["Chktotal"] = _check_ttl;
                _newrow["Producttotal"] = _product_ttl;

                    

                double _per = _product_ttl==0 ? 0:Convert.ToDouble(_defect_ttl * 100.00 / _product_ttl);
                _newrow["MPer"] = String.Format("{0:F}", _per);

                if (_per < 0.01)
                    _newrow["MLevel"] = "A";
                else if (_per>=0.01 && _per< 0.02)
                    _newrow["MLevel"] = "B";
                else if (_per >= 0.02 && _per < 0.03)
                    _newrow["MLevel"] = "C";
                else if (_per >= 0.03 && _per < 0.05)
                    _newrow["MLevel"] = "F";
                else if (_per >= 0.05)
                    _newrow["MLevel"] = "U";


                foreach(var item in Dict_Defect)
                {
                    string _defectcode =item.Key;
                    string _express = "Sum(" + _defectcode + ")";
                    int _qtyttl = int.Parse(db.Compute(_express, _filter).ToString());
                    _newrow[_defectcode] = _qtyttl; //按車間統計每個不同的defec 總數
                }
            
            }
             * */



        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            int i = 0;

            System.Drawing.Size tableSize = new System.Drawing.Size(Dict_Defect.Count * 60, 105);

            xrPartMiddle.Size = tableSize;

            foreach (var item in Dict_Defect)
            {
                string _code = item.Key;
                string _desc = item.Value;
                Point p = this.tbBasic.Location;
                int w = this.tbBasic.Width * (++i);
                XRTable tb = CreateHeader(p.X + w, p.Y, _code,_desc);
                this.xrTcMiddle.Controls.Add(tb);
                i++;
            }

            Point p1 = this.xrPartMiddle.Location;
            xrPartRight.Location = new System.Drawing.Point(p1.X + Dict_Defect.Count * 60, p1.Y);

        }

        //private DevExpress.XtraReports.UI.XRTable CreateTable(int X, int Y, TrafficBasicBO BO)
        private DevExpress.XtraReports.UI.XRTable CreateHeader(int X, int Y, string defectcode, string desc)
        {
            System.Drawing.Size tableSize = new System.Drawing.Size(60, 105);
            System.Drawing.Size rowSize1 = new System.Drawing.Size(60, 35);
            System.Drawing.Size rowSize2 = new System.Drawing.Size(60, 70);
            //Table
            DevExpress.XtraReports.UI.XRTable tblBasic = new DevExpress.XtraReports.UI.XRTable();
            tblBasic.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                     | DevExpress.XtraPrinting.BorderSide.Right)
                     | DevExpress.XtraPrinting.BorderSide.Bottom)));
            tblBasic.Location = new System.Drawing.Point(X, Y);
            //DefectCode ROW
            DevExpress.XtraReports.UI.XRTableRow xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            DevExpress.XtraReports.UI.XRTableCell clDefectCode = new DevExpress.XtraReports.UI.XRTableCell();
            clDefectCode.Location = new System.Drawing.Point(0, 0);
            clDefectCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            clDefectCode.Font = new Font("Arial Unicode MS,style=Bold", 9);
            clDefectCode.Size = rowSize1;
            clDefectCode.Text = defectcode;

            xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {clDefectCode});
            xrTableRow1.Size = rowSize1;


            //Description ROW
            DevExpress.XtraReports.UI.XRTableRow xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            DevExpress.XtraReports.UI.XRTableCell celDesc = new DevExpress.XtraReports.UI.XRTableCell();
            celDesc.Font = new Font("Arial Unicode MS,style=Bold", 9);
            celDesc.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            celDesc.Size = rowSize2;
            celDesc.Text = desc;

            xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {celDesc});
            xrTableRow2.Size = rowSize2;

            tblBasic.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {xrTableRow1,xrTableRow2});
            tblBasic.Size = tableSize;

            return tblBasic;

        }

        private void PageHeader_AfterPrint(object sender, EventArgs e)
        {
            //List<DevExpress.XtraReports.UI.XRControl> ctrls = new List<DevExpress.XtraReports.UI.XRControl>();
            //foreach (DevExpress.XtraReports.UI.XRControl item in this.xrTcMiddle.Controls)
            //{
            //    if (item.GetType() == typeof(XRTable))
            //    {
            //        if (item.Name != "tbBasic")
            //        {
            //            ctrls.Add(item);
            //        }
            //    }
            //}

            //for (int i = ctrls.Count - 1; i >= 0; i--)
            //{
            //    this.xrTcMiddle.Controls.Remove(ctrls[i]);
            //}
        }



    }
}
