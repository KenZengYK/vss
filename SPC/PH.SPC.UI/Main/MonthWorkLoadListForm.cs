using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using DevExpress.XtraGrid.Views.BandedGrid;
using PH.Platform.BO;
using PH.SPC.BO;
using System.Collections;

namespace PH.SPC.UI.Main
{
    public partial class MonthWorkLoadListForm : ListForm
    {
        public MonthWorkLoadListForm()
        {
            InitializeComponent();
        }

        DataTable tbWorkLoad = new DataTable();
        DataTable tbWorkLoad_cal = new DataTable(); //用于統計計算

        public string QueryMonthly = "";

        public override void DataBind()
        {
            base.DataBind();
            if (this.DataContext == null)
                this.DataContext = ContextBuilder.CreateContext<SPCDataContext>();
            this.NeedCheckPermission = false;
            this.barBtnAddNew.Enabled = false;
            this.barBtnDel.Enabled = false;
            this.barBtnOpen.Enabled = false;
            //PH.Platform.UI.CS.DataQuery.DataQueryParameter DataQuery = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            //DataQuery.StoredProcedureName = "Sp_WeeklyShipmentDetailMonth";
            //DataQuery.BoType = typeof(PH.SPC.BO.WorkLoad);
            //DataQuery.DataContext = this.DataContext;
            //DataQuery.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.StoredProcedure;
            //DataQuery.View = this.objListGridView;
            //DataQuery.CreateConditions();
            //DataQuery["@year"].Label = "Year  (e.g. 2009)";
            //DataQuery["@month"].Label = "Month (e.g. 01) ";
            //this.StartEnquiry(DataQuery);
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
        }

        public List<WorkLoad> QueryResult = new List<WorkLoad>();
        public bool IsSummary;
        private Dictionary<string, string[]> TeamCustomer = new Dictionary<string, string[]>();

        protected override void OnClickFind()
        {
            FrmWorkLoadQuery _frm = new FrmWorkLoadQuery();
            _frm.CurContext = this.DataContext as SPCDataContext;
            _frm.StartPosition = FormStartPosition.CenterParent;
            _frm.MWForm = this;

            DialogResult dgr = _frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {

                if (QueryResult.Count==0)
                    return;

                List<string> _teamlst = QueryResult.Select(c=>c.Team).Distinct().ToList();
                _teamlst.Sort();
                TeamCustomer.Clear();
                //獲取Team,Customer對應列表
                foreach(string team in _teamlst)
                {
                    TeamCustomer.Add(team, QueryResult.Where(p => p.Team == team).Select(m => m.Customer).Distinct().ToArray());
                   // TeamCustomer.Add(team, QueryResult.Where(p => p.Team == team).Select(m => m.Customer).ToArray());
                }

                if (!IsSummary)
                    this.SetDynamicBand(TeamCustomer); //生成Band
                else
                    this.SetSummaryBand(TeamCustomer); //匯總

                CreateSchema();//create data schema    
                if (!IsSummary)
                    FillData();//填充數據
                else
                  this.FillSummaryData();


                this.objListGridControl.DataSource = tbWorkLoad;
                          

            }
        }

        private void AddFixBand()
        {

            if (gvWorkLoad.Bands.Count > 0)
                gvWorkLoad.Bands.Clear();


           GridBand fixBand = new GridBand();
           
            fixBand.Caption = "固定顯示項";
            fixBand.AppearanceHeader.Options.UseTextOptions = true;
            fixBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;


            BandedGridColumn colYYMM = (BandedGridColumn)this.gvWorkLoad.Columns.AddField("YYMM");
            colYYMM.AppearanceHeader.Options.UseTextOptions = true;
            colYYMM.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            if (!IsSummary)
              colYYMM.Caption = "年 月";
            else
                colYYMM.Caption = "YYMM";

            colYYMM.Visible = true;
            colYYMM.Name = "gcYYMM";
            colYYMM.FieldName = "YYMM";
            colYYMM.OwnerBand = fixBand;
            colYYMM.Width = 60;



            //BandedGridColumn colItem = new BandedGridColumn();
            BandedGridColumn colItem = (BandedGridColumn)this.gvWorkLoad.Columns.AddField("ItemName");
            colItem.AppearanceHeader.Options.UseTextOptions = true;
            colItem.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            if (!IsSummary)
             colItem.Caption = "各產能項";
            else
              colItem.Caption = "Items";

            colItem.Visible = true;
            colItem.Name = "gcItem";
            colItem.FieldName = "ItemName";
            colItem.OwnerBand = fixBand;
            colItem.Width = 110;

            //BandedGridColumn colTotal = new BandedGridColumn();
            BandedGridColumn colTotal = (BandedGridColumn)this.gvWorkLoad.Columns.AddField("Total");
            colTotal.AppearanceHeader.Options.UseTextOptions = true;
            colTotal.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            if (!IsSummary)
              colTotal.Caption = "月總計";
            else
              colTotal.Caption = "Total";

            colTotal.Visible = true;
            colTotal.Name = "gcTotal";
            colTotal.FieldName = "Total";
            colTotal.Width = 80;
            colTotal.OwnerBand = fixBand;

            this.gvWorkLoad.Bands.Add(fixBand);



        }



        /// <summary>
        /// 動態生成Team,Customer兩層Band
        /// </summary>
        /// <param name="bandinfo"></param>
        private void SetDynamicBand(Dictionary<string, string[]> bandinfo)
        {
            AddFixBand();
            foreach (var dic in bandinfo)
            {
                GridBand teamBand = new GridBand();
                teamBand.Caption = "Team "+dic.Key;
                teamBand.AppearanceHeader.Options.UseTextOptions = true;
                teamBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
               
                string[] _custlist = dic.Value;

                for (int j = 0; j < _custlist.Length; j++)
                {
                    GridBand gbd = new GridBand();
                    gbd.Caption = _custlist[j];                   
                    AddGridBandColumn(gbd, _custlist[j]);
                    teamBand.Children.Add(gbd);
                }

                this.gvWorkLoad.Bands.Add(teamBand);               
            }
        }


        /// <summary>
        /// 匯總時動態生成Custome,Teamr兩層Band
        /// </summary>
        /// <param name="bandinfo"></param>
        private void SetSummaryBand(Dictionary<string, string[]> bandinfo)
        {
            AddFixBand();
            GridBand custBand = new GridBand();
            custBand.Caption = "Customer ";
           

            foreach (var dic in bandinfo)
            {
                GridBand teamBand = new GridBand();
                teamBand.Caption = "Team " + dic.Key;
                teamBand.AppearanceHeader.Options.UseTextOptions = true;
                teamBand.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;

                string[] _custlist = dic.Value;

                for (int j = 0; j < _custlist.Length; j++)
                {
                   // GridBand gbd = new GridBand();
                  //  gbd.Caption = _custlist[j];
                    AddSummaryBandColumn(teamBand, _custlist[j]);
                   // teamBand.Children.Add(gbd);
                }
                //this.gvWorkLoad.Bands.Add(teamBand);
                custBand.Children.Add(teamBand);

            }
            this.gvWorkLoad.Bands.Add(custBand);
        }

        //生成明細時BandGridColumn生成
        private void AddGridBandColumn(GridBand band, string customer)
        {
            string col1 = "Bra_" + customer;
            string col2 = "Bri_" + customer;
            string col3 = "Otr_" + customer;

            BandedGridColumn colBra = (BandedGridColumn)this.gvWorkLoad.Columns.AddField(col1);
            colBra.Caption = "Bra";
            colBra.AppearanceHeader.Options.UseTextOptions = true;
            colBra.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            colBra.OwnerBand = band;
            colBra.Width = 38;
            colBra.Visible = true;
           // colBra.FieldName = "Bra_" + customer;
           

            BandedGridColumn colBrief = (BandedGridColumn)this.gvWorkLoad.Columns.AddField(col2);
            colBrief.Caption = "Brief";
            colBrief.AppearanceHeader.Options.UseTextOptions = true;
            colBrief.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            colBrief.OwnerBand = band;
            colBrief.Width = 58;
            colBrief.Visible = true;
          //  colBrief.FieldName = "Bri_" + customer;
         

            BandedGridColumn colOther = (BandedGridColumn)this.gvWorkLoad.Columns.AddField(col3);
            colOther.Caption = "Other";
            colOther.AppearanceHeader.Options.UseTextOptions = true;
            colOther.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            colOther.OwnerBand = band;
            colOther.Width = 58;
            colOther.Visible = true;

            band.AppearanceHeader.Options.UseTextOptions = true;
            band.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;


            //band.Columns.addf(colBra);
            //band.Columns.Add(colBrief);
            //band.Columns.Add(colOther);
        }

        //明細表結構生成
        private void CreateSchema()
        {

            tbWorkLoad.Rows.Clear();
            tbWorkLoad.Columns.Clear();
            tbWorkLoad_cal.Rows.Clear();
            tbWorkLoad_cal.Columns.Clear();

            

            DataColumn colYM = new DataColumn("YYMM", typeof(String));
            DataColumn colYM1 = new DataColumn("YYMM", typeof(String));
            tbWorkLoad.Columns.Add(colYM);
            tbWorkLoad_cal.Columns.Add(colYM1);

            DataColumn colItem = new DataColumn("ItemName", typeof(String));
            DataColumn colItem1 = new DataColumn("ItemName", typeof(String));
            tbWorkLoad.Columns.Add(colItem);
            tbWorkLoad_cal.Columns.Add(colItem1);

            DataColumn colTotal = new DataColumn("Total", typeof(String));
            DataColumn colTotal1 = new DataColumn("Total", typeof(Int32));
            tbWorkLoad.Columns.Add(colTotal);
            tbWorkLoad_cal.Columns.Add(colTotal1);


            //增加一個seq列
            DataColumn colSeq = new DataColumn("Seq", typeof(Int32));
            DataColumn colSeq1 = new DataColumn("Seq", typeof(Int32));
            tbWorkLoad.Columns.Add(colSeq);
            tbWorkLoad_cal.Columns.Add(colSeq1);
      


            for (int i = 0; i < gvWorkLoad.Bands.Count; i++)
            {
                if (i > 0) //略過第一個band
                {

                    
                    GridBand gb = gvWorkLoad.Bands[i];

                    foreach (GridBand childband in gb.Children)
                    {
                        if (childband.Columns.Count > 0)
                        {
                            foreach (BandedGridColumn bgc in childband.Columns)
                            {
                                if (bgc.FieldName == "YYMM" || bgc.FieldName == "ItemName" || bgc.FieldName == "Total")
                                    continue;

                                DataColumn colNew1 = new DataColumn(bgc.FieldName, typeof(Int32));  
                                DataColumn colNew = new DataColumn(bgc.FieldName, typeof(String)); 
                                tbWorkLoad.Columns.Add(colNew);
                                tbWorkLoad_cal.Columns.Add(colNew1);
                            }
                        }
                    }
                }
            }
            
        }

        //匯總表據結構生成
        //private void CreateSummarySchema()
        //{

        //    tbWorkLoad.Rows.Clear();
        //    tbWorkLoad.Columns.Clear();
        //    DataColumn colYM = new DataColumn("YYMM", typeof(String));
        //    tbWorkLoad.Columns.Add(colYM);

        //    DataColumn colItem = new DataColumn("ItemName", typeof(String));
        //    tbWorkLoad.Columns.Add(colItem);

        //    DataColumn colTotal = new DataColumn("Total", typeof(Int32));
        //    tbWorkLoad.Columns.Add(colTotal);

        //    for (int i = 0; i < gvWorkLoad.Bands.Count; i++)
        //    {
        //        if (i > 1) //略過第1,2個band
        //        {


        //            GridBand gb = gvWorkLoad.Bands[i];
        //            foreach (BandedGridColumn bgc in gb.Columns)
        //            {
        //                if (bgc.FieldName == "YYMM" || bgc.FieldName == "ItemName" || bgc.FieldName == "Total")
        //                    continue;

        //                DataColumn colNew = new DataColumn(bgc.FieldName, typeof(Int32));
        //                tbWorkLoad.Columns.Add(colNew);
        //            }
                        
                    
        //        }
        //    }
        //}

        //生成匯總BandGridColumn
        private void AddSummaryBandColumn(GridBand band, string customer)
        {
            BandedGridColumn colCustomer = (BandedGridColumn)this.gvWorkLoad.Columns.AddField(customer);
            colCustomer.Caption = customer;
            colCustomer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            colCustomer.OwnerBand = band;
            colCustomer.Width = 55;
            colCustomer.Visible = true;
        }


        private void FillSummaryData()
        { 
            string[] _monthlist = QueryResult.OrderBy(m => m.YYMM).Select(c => c.YYMM).Distinct().ToArray();


            string[] _custlist = QueryResult.Select(c => c.Customer).Distinct().ToArray();

            for (int m = 0; m < _monthlist.Length; m++)
            {


                for (int i = 0; i < 4; i++)
                {

                    DataRow dr = tbWorkLoad.NewRow();
                    dr["YYMM"] = _monthlist[m];
                    if (i == 0)
                        dr["ItemName"] = "Groups ";
                    else if (i == 1)
                        dr["ItemName"] = "Styles ";
                    else if (i == 2)
                        dr["ItemName"] = "Times ";
                    else if (i == 3)
                        dr["ItemName"] = "Adopt ";

                    int _grouptotal = 0, _styletotal = 0, _timetotal = 0, _monthlyqty = 0, _confirmqty = 0;

                    for (int j = 0; j < _custlist.Length; j++)
                    {
                        string _customer = _custlist[j];

                        WorkLoad wkd = QueryResult.Where(c => c.Customer == _customer && c.YYMM == _monthlist[m]).FirstOrDefault();
                        if (wkd == null)
                            continue;
                        switch(i)
                        {
                            case 0: //各個客戶當月新款組數合計
                                dr[_customer] = wkd.Bra_Groups + wkd.Bri_Groups + wkd.Otr_Groups;
                                _grouptotal = _grouptotal + wkd.Bra_Groups + wkd.Bri_Groups + wkd.Otr_Groups;
                                break;
                            case 1: //各個客戶當月款數(報價+落單款 )合計
                                dr[_customer] = wkd.Bra_Styles + wkd.Bri_Styles + wkd.Otr_Styles;
                                _styletotal = _styletotal + wkd.Bra_Styles + wkd.Bri_Styles + wkd.Otr_Styles;
                                break;

                            case 2: //各個客戶當月修改款次數合計
                                dr[_customer] = (wkd.Bra_AllTimes - wkd.Bra_ProdSampleTimes - wkd.Bra_Styles) + (wkd.Bri_AllTimes - wkd.Bri_ProdSampleTimes - wkd.Bri_Styles) +
                                    (wkd.Otr_AllTimes - wkd.Otr_ProdSampleTimes - wkd.Otr_Styles);
                                _timetotal = _timetotal + int.Parse(dr[_customer].ToString());
                                break;
                            case 3: //各個客戶當月落單款數合計
                                dr[_customer] = wkd.Bra_ConfirmOrders + wkd.Bri_ConfirmOrders + wkd.Otr_ConfirmOrders;
                                _confirmqty = _confirmqty + int.Parse(dr[_customer].ToString());
                                break;

                        }


                    }
                    if (i == 0)
                        dr["Total"] = _grouptotal;
                    else if (i == 1)
                        dr["Total"] = _styletotal;
                    else if (i == 2)
                        dr["Total"] = _timetotal;

                    else if (i == 3) //月落單款數總計
                        dr["Total"] = _confirmqty;


                    tbWorkLoad.Rows.Add(dr);

             
                }
            }
        
        }
        private void FillData()
        {

            string[] _monthlist = QueryResult.OrderBy(m => m.YYMM).Select(c => c.YYMM).Distinct().ToArray();


            string[] _custlist = QueryResult.Select(c => c.Customer).Distinct().ToArray();

             int _groupsummary = 0, _stylesummary = 0, _timesummary = 0,_monthlysummary=0,_confirmsummary=0;

           
            Dictionary<string,int[,]>  _dicts =new Dictionary<string,int[,]>();

            for (int m = 0; m < _monthlist.Length; m++)
            {

                        for (int i = 0; i <= 4; i++)
                        {

                            DataRow dr = tbWorkLoad.NewRow();
                            dr["YYMM"] = _monthlist[m];
                            if (i == 0)      
                            {
                                dr["ItemName"] = "新款組數";                            
                                dr["Seq"] =1;
                            }
                            else if (i == 1)
                            {
                                dr["ItemName"] = "款數(報價+落單款)";
                                dr["Seq"] =2;
                            }
                            else if (i == 2)
                            {
                                dr["ItemName"] = "次數(修改款次數)";
                                dr["Seq"] =3;
                            }
                            else if (i == 3)
                            {
                                dr["ItemName"] = "月總產能";
                                dr["Seq"] =4;
                            }
                            else if (i == 4)
                            {
                                dr["ItemName"] = "落單款數";
                                dr["Seq"] =5;
                            }

                      
                            int _grouptotal = 0, _styletotal = 0, _timetotal = 0,_monthlyqty=0,_confirmqty=0;


                            for (int j = 0; j < _custlist.Length; j++)
                            {
                                string _customer = _custlist[j];

                                
                                //int[,] _itemvalues = new int[5, 3];

                                //if (!_dicts.ContainsKey(_customer))
                                //    _dicts.Add(_customer, _itemvalues);
                                //else
                                //{ 
                                   
                                //}

                                WorkLoad wkd = QueryResult.Where(c => c.Customer == _customer && c.YYMM == _monthlist[m]).FirstOrDefault();
                                if (wkd == null)
                                    continue;

                                string _colbra = "Bra_" + _customer;
                                string _colbri = "Bri_" + _customer;
                                string _colotr = "Otr_" + _customer;


                                if (i == 0)
                                {
                                    dr[_colbra] = wkd.Bra_Groups; //各個客戶當月新款組數(圍)
                                    dr[_colbri] = wkd.Bri_Groups; //各個客戶當月新款組數(褲)
                                    dr[_colotr] = wkd.Otr_Groups; //各個客戶當月其它(除圍,褲外其它)

                                    _grouptotal += wkd.Bra_Groups; //統計新款組數(圍)
                                }
                                else if (i == 1)
                                {
                                    dr[_colbra] = wkd.Bra_Styles; //各個客戶當月款數(報價+落單款 (圍)
                                    dr[_colbri] = wkd.Bri_Styles; //各個客戶當月款數(報價+落單款 (褲)
                                    dr[_colotr] = wkd.Otr_Styles; //各個客戶當月統計款數(報價+落單款) (除圍,褲外其它)
                                    _styletotal = _styletotal + wkd.Bra_Styles + wkd.Bri_Styles + wkd.Otr_Styles; //統計款數(報價+落單款 (圍)
                                }
                                else if (i == 2) //修改款總數量(除圍,褲外其它)
                                {
                                    dr[_colbra] = wkd.Bra_AllTimes - wkd.Bra_ProdSampleTimes - wkd.Bra_Styles;
                                    dr[_colbri] = wkd.Bri_AllTimes - wkd.Bri_ProdSampleTimes - wkd.Bri_Styles;
                                    dr[_colotr] = wkd.Otr_AllTimes - wkd.Otr_ProdSampleTimes - wkd.Otr_Styles;

                                     //統計修改款總數量(除圍,褲外其它)
                                    _timetotal = _timetotal + int.Parse(dr[_colbra].ToString()) + int.Parse(dr[_colbri].ToString())
                                          + int.Parse(dr[_colotr].ToString());
                                }
                                else if (i == 3) //月總產能列
                                {
                                    dr[_colbra] = wkd.Bra_AllTimes - wkd.Bra_ProdSampleTimes - wkd.Bra_Groups + wkd.Bra_Styles; //Bra
                                    dr[_colbri] = wkd.Bri_AllTimes - wkd.Bri_ProdSampleTimes - wkd.Bri_Groups + wkd.Bri_Styles; //Brief
                                    dr[_colotr] = wkd.Otr_AllTimes - wkd.Otr_ProdSampleTimes - wkd.Otr_Groups + wkd.Otr_Styles; //Other

                                    _monthlyqty = _monthlyqty + int.Parse(dr[_colbra].ToString()) + int.Parse(dr[_colbri].ToString()) //對每個客戶累計
                                          + int.Parse(dr[_colotr].ToString());
                                }
                                else if (i == 4) //月落單款數
                                {
                                    dr[_colbra] = wkd.Bra_ConfirmOrders;
                                    dr[_colbri] = wkd.Bri_ConfirmOrders;
                                    dr[_colotr] = wkd.Otr_ConfirmOrders;
                                    _confirmqty = _confirmqty + int.Parse(dr[_colbra].ToString()) + int.Parse(dr[_colbri].ToString()) //對每個客戶累計月落單款數
                                          + int.Parse(dr[_colotr].ToString());
                                }
                                                                                    
                            }

                            if (i == 0)
                            {
                                dr["Total"] = _grouptotal;
                                _groupsummary = _groupsummary + _grouptotal;
                            }
                            else if (i == 1)
                            {
                                dr["Total"] = _styletotal;
                                _stylesummary = _stylesummary + _styletotal;
                            }
                            else if (i == 2)
                            {
                                dr["Total"] = _timetotal;
                                _timesummary = _timesummary + _timetotal;
                            }

                            else if (i == 3) //月總產能總計    
                            {
                                dr["Total"] = _monthlyqty;
                                _monthlysummary = _monthlysummary + _monthlyqty;
                            }

                            else if (i == 4) //月落單款數總計
                            {
                                dr["Total"] = _confirmqty;
                                _confirmsummary = _confirmsummary + _confirmqty;

                            }


                            tbWorkLoad.Rows.Add(dr);

                        }

                }



            //復制數據
            foreach (DataRow dr in tbWorkLoad.Rows)
            {
                DataRow newrow = tbWorkLoad_cal.Rows.Add();
                foreach (DataColumn dc in tbWorkLoad.Columns)
                {
                    //if (dc.ColumnName == "YYMM" || dc.ColumnName == "ItemName" || dc.ColumnName == "Total" || dc.ColumnName == "Seq")
                    //{
                        newrow[dc.ColumnName] = dr[dc.ColumnName];
                   // }
                    
                }

            }




            //匯總
            

            if (tbWorkLoad.Rows != null && tbWorkLoad.Rows.Count > 0)
            {

               // int _stylettl = 0,_

                for (int t = 0; t <= 6; t++)
                {

                    string _filter = "seq=" + (t + 1).ToString();
                    DataRow drow = tbWorkLoad.NewRow();
                    drow["YYMM"] = "總合計";
                    if (t == 0)
                    {
                        drow["Total"] = _groupsummary;
                        drow["ItemName"] = "新款組數";  
                        drow["Seq"] =800;
                    }
                    if (t == 1)
                    {
                        drow["Total"] = _stylesummary;
                        drow["ItemName"] = "款數(報價+落單款)"; 
                         drow["Seq"] =801;
                    }
                    if (t == 2)
                    {
                        drow["Total"] = _timesummary;
                        drow["ItemName"] = "次數(修改款次數)"; 
                         drow["Seq"] =802;
                    }
                    if (t == 3)
                    {
                        drow["Total"] = _monthlysummary;
                        drow["ItemName"] = "月總產能";  
                         drow["Seq"] =803;
                    }
                    if (t == 4)
                    {
                        drow["Total"] = _confirmsummary;
                        drow["ItemName"] = "落單款數"; 
                         drow["Seq"] =804;
                    }
                    if (t == 5)
                    {
                        drow["Total"] = "100%";
                        drow["ItemName"] = "比例(款數)";
                        drow["Seq"] =805;
                    }
                    if (t == 6)
                    {                        
                        double aa =Convert.ToDouble(_confirmsummary * 100.00 / _stylesummary);
                        drow["Total"] = String.Format("{0:F}", aa)+"%"; 
                        drow["ItemName"] = "中單率";
                        drow["Seq"] =806;
                    }


                    // int _groupsummary = 0, _stylesummary = 0, _timesummary = 0, _monthlysummary = 0, _confirmsummary = 0;

           

                    for (int m = 0; m < _custlist.Length; m++)
                    {
                       
                        string _colbra = "Bra_" + _custlist[m];
                        string _colbri = "Bri_" + _custlist[m];
                        string _colotr = "Otr_" + _custlist[m];

                  
                        string _barexp = "sum(" + _colbra + ")";
                        string _briexp = "sum(" + _colbri + ")";
                        string _otrexp = "sum(" + _colotr + ")";

                        if (t < 5)
                        {

                            int _bartotal = int.Parse(tbWorkLoad_cal.Compute(_barexp, _filter).ToString());
                            int _britotal = int.Parse(tbWorkLoad_cal.Compute(_briexp, _filter).ToString());
                            int _otrtotal = int.Parse(tbWorkLoad_cal.Compute(_otrexp, _filter).ToString());

                            drow[_colbra] = _bartotal; drow[_colbri] = _britotal; drow[_colotr] = _otrtotal;
                        }
                        else if (t == 5)
                        {
                            DataRow drow1 = tbWorkLoad.Select("Seq=801")[0];

                            //double per_bra = Convert.ToDouble(tbWorkLoad_cal.Rows[0][_colbra]) * 100.00 / _stylesummary; 
                            double per_bra = Convert.ToDouble(drow1[_colbra]) * 100.00 / _stylesummary; 
                            drow[_colbra] = String.Format("{0:F}", per_bra) + "%";

                            double per_bri = Convert.ToDouble(drow1[_colbri]) * 100.00 / _stylesummary;
                            drow[_colbri] = String.Format("{0:F}", per_bri) + "%";

                            double per_otr = Convert.ToDouble(drow1[_colotr]) * 100.00 / _stylesummary;
                            drow[_colotr] = String.Format("{0:F}", per_otr) + "%";
                        }

                        else if (t ==6)
                        {
                            DataRow drow2 = tbWorkLoad.Select("Seq=804")[0];

                            double per_bra = Convert.ToDouble(drow2[_colbra]) * 100.00 / _stylesummary; 
                            drow[_colbra] = String.Format("{0:F}", per_bra) + "%";

                            double per_bri = Convert.ToDouble(drow2[_colbri]) * 100.00 / _stylesummary;
                            drow[_colbri] = String.Format("{0:F}", per_bri) + "%";

                            double per_otr = Convert.ToDouble(drow2[_colotr]) * 100.00 / _stylesummary;
                            drow[_colotr] = String.Format("{0:F}", per_otr) + "%";
                        }

                    }
                    tbWorkLoad.Rows.Add(drow);
                }
            }
              

        }

        private void gvWorkLoad_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            BandedGridView viewC = sender as BandedGridView;

            //得到年月是否相同
            string ym1 = (viewC.GetRowCellValue(e.RowHandle1, "YYMM") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "YYMM").ToString().Trim()));
            string ym2 = (viewC.GetRowCellValue(e.RowHandle2, "YYMM") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "YYMM").ToString().Trim()));
            bool CFlag = ym1 == ym2;
            //if (e.Column.FieldName.Trim() != "YYMM")
            if (CFlag && e.Column.FieldName.Trim() == "YYMM")
            {
                e.Merge = true;
                e.Handled = true;
            }
            else
            {
                e.Merge = false;
                e.Handled = true;
            }
        }



    }
}
