using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.BO;
using System.Data.SqlClient;
using PH.Platform.UI.CS.UI2;
using PH.Platform.UI.CS;

namespace PH.LineBalanceII.UI
{
    public partial class StyleMasterCopy : Form
    {
        public StyleMasterCopy()
        {
            InitializeComponent();
        }
        private StyleMaster mastr;
        private int Edit;
        public Boolean cancel = true;
        public StyleMasterCopy(StyleMaster StyMaster)
        {
            InitializeComponent();
            this.KHKHTextEdit.Text = StyMaster.KHKH;
            this.PHKHComboBoxEdit.Text = StyMaster.PHKH;
            this.BKHTextEdit.Text = StyMaster.BKH;
            this.CPLBTextEdit.Text = StyMaster.CPLB;
            this.SizeYJTextEdit.Text = StyMaster.SizeYJ;
            this.ZHComboBoxEdit.Text = StyMaster.ZH;
            this.CopyKHKHTextEdit.Text = StyMaster.KHKH;
            this.CopyPHKHComboBoxEdit.Text = StyMaster.PHKH;
            this.CopyBKHTextEdit.Text = StyMaster.BKH;
            this.CopyCPLBTextEdit.Text = StyMaster.CPLB;
            this.CopySizeYJTextEdit.Text = StyMaster.SizeYJ;
            this.CopyZHComboBoxEdit.Text = StyMaster.ZH;
            this.mastr = StyMaster;
        }


        #region 通過款號得到另一個款號和組合(款號指KHKH或PHKH)
        /// <summary>
        /// 通過款號得到另一個款號和組合(款號指KHKH或PHKH)
        /// </summary>
        /// <param name="ACustomerStyle">客户款号</param>
        /// <param name="APHStyle">PH款号</param>
        private void PrepareQuery(string ACustomerStyle, string APHStyle)
        {
            if (ACustomerStyle == "" && APHStyle == "") return;

            string temp;
            string SqlStr = @"EXEC PHGDB2.dbo.sp_ieLB_class '{0}', '{1}'";

            SqlStr = string.Format(SqlStr, ACustomerStyle, APHStyle);

            LineBalanceIIDataContext context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            DataTable dt = context.ExecuteDataTable(SqlStr, "ZH");

            if (dt.Rows.Count > 0)
            {

                this.CopyKHKHTextEdit.Text = dt.Rows[0]["KHKH"].ToString();
                this.CopyPHKHComboBoxEdit.Properties.Items.Clear();
                this.CopyZHComboBoxEdit.Properties.Items.Clear();
                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    for (int i = 2; i < dt.Columns.Count; i++)
                    {
                        if (!this.CopyPHKHComboBoxEdit.Properties.Items.Contains(dt.Rows[j]["PHKH"].ToString()))
                        {
                            this.CopyPHKHComboBoxEdit.Properties.Items.Add(dt.Rows[j]["PHKH"].ToString());
                        }

                        if (!string.IsNullOrEmpty(dt.Rows[j][i].ToString()))
                        {
                            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID == "EN")//英文
                            {
                                temp = dt.Rows[j][i].ToString() + dt.Rows[j][i + 2].ToString();
                            }
                            else
                            {
                                temp = dt.Rows[j][i].ToString() + dt.Rows[j][i + 1].ToString();
                            }

                            if (!this.CopyZHComboBoxEdit.Properties.Items.Contains(temp))
                            {
                                this.CopyZHComboBoxEdit.Properties.Items.Add(temp);
                            }

                            i += 2;
                        }
                    }
                }
            }
        }
        #endregion

        private void CopyKHKH_Validated(object sender, EventArgs e)
        {
            this.PrepareQuery(this.CopyKHKHTextEdit.Text,"");
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            //SaveStyle();        
        }

        void SaveStyle()
        {


            //PH.LineBalanceII.BO.StyleMaster styMas=new StyleMaster();
            //int Edit=styMas.GetNewEdition();
            ////int edit=GetNewEdition();
            //string Edition = Edit.ToString();
            //this.Edit = Edit;
            //string SqlStr = " insert into StyleMaster(KHKH,PHKH,Edition,ZH,BKH,CPLB,SizeYJ,IsUsed,Phase,AuditFlag,Auditor,Ipack,BestLineValue,Selected) " +
            //                " select '{0}','{1}','{2}','{3}','{4}','{5}','{6}',IsUsed,Phase,AuditFlag,Auditor,Ipack,BestLineValue,Selected " +
            //                " from StyleMaster  where KHKH = '{7}' and PHKH = '{8}' and ZH = '{9}' and Edition = '{10}'";
            //SqlStr = string.Format(SqlStr, CopyKHKHTextEdit.Text.TrimEnd(), CopyPHKHComboBoxEdit.Text.TrimEnd(), Edition, CopyZHComboBoxEdit.Text.TrimEnd(), CopyBKHTextEdit.Text.TrimEnd(), CopyCPLBTextEdit.Text.TrimEnd(), CopySizeYJTextEdit.Text.TrimEnd(),
            //                  mastr.KHKH.ToString(), mastr.PHKH.ToString(), mastr.ZH.ToString(), mastr.Edition.ToString());
            //LineBalanceIIDataContext context = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            ////(this.PrevForm as StyleMasterListForm).Show();
            //    int i = context.ExecuteCommand(SqlStr);
            //    if (i != -1)
            //    {
            //        string SqlStr2 = "insert into StyleProcedure( [KHKH],	[PHKH],[Edition],[ZH],[XH] ,[TeamGSD],[TeamYH],[SN],[WorkSN],	[CPGS],	[GSDBN] , " +
            //                          "[CJBH],	[YHBN] ,[GSDCP] ,[CJCP] ,[YHCP],[WorkName] ,[YCDM] ,[YCType] ,[YCAdj] ,	[GSDSAHSN], " +
            //                          "[JSCL],	[CWorkSN] ,	[JWorkSN],	[BNCX],	[YHBNCX] ,	[JSCBNCX] ,	[CJQR],	[Move] ,[LDL] ," +
            //                           "[GZW],	[GZW_Support],	[GZW_Floater] ,	[GRDH],	[YHMTM],	[YHSAHSN],	[BisYHMTM],	[BisYHSAHSN]," +
            //                          "[JSCSAHSN],	[PJHMTM],	[PJHSAHSN] ,	[BestMTM],	[BestSAHSN],	[JGJJ],	[CFlag],	[JFlag]," +
            //                          " [BeforeJSCCFlag] ,	[BeforeJSCJFlag] ,	[GZWMergeShowValue] ,	[BurstNo],	[Width] ,	[Length]," +
            //                          " [YHLineValue],	[BestLineValue],	[YCSD]) " +
            //                          " select                                     " +
            //                           "'{0}','{1}','{2}','{3}',[XH] ,[TeamGSD],[TeamYH],[SN],[WorkSN],	[CPGS],	[GSDBN] ," +
            //                          "[CJBH],	[YHBN] ,[GSDCP] ,[CJCP] ,[YHCP],[WorkName] ,[YCDM] ,[YCType] ,[YCAdj] ,	[GSDSAHSN]," +
            //                          "[JSCL],	[CWorkSN] ,	[JWorkSN],	[BNCX],	[YHBNCX] ,	[JSCBNCX] ,	[CJQR],	[Move] ,[LDL] ," +
            //                          "[GZW],	[GZW_Support],	[GZW_Floater] ,	[GRDH],	[YHMTM],	[YHSAHSN],	[BisYHMTM],	[BisYHSAHSN]," +
            //                           "[JSCSAHSN],	[PJHMTM],	[PJHSAHSN] ,	[BestMTM],	[BestSAHSN],	[JGJJ],	[CFlag],	[JFlag]," +
            //                           " [BeforeJSCCFlag] ,	[BeforeJSCJFlag] ,	[GZWMergeShowValue] ,	[BurstNo],	[Width] ,	[Length]," +
            //                           " [YHLineValue],	[BestLineValue],	[YCSD] " +
            //                            " from StyleProcedure  where KHKH = '{4}' and PHKH = '{5}' and ZH = '{6}' and Edition = '{7}'";

            //        SqlStr2 = string.Format(SqlStr2, CopyKHKHTextEdit.Text.TrimEnd(), CopyPHKHComboBoxEdit.Text.TrimEnd(), Edition, CopyZHComboBoxEdit.Text.TrimEnd(), mastr.KHKH.ToString(), mastr.PHKH.ToString(), mastr.ZH.ToString(), mastr.Edition.ToString());
            //        LineBalanceIIDataContext context1 = ContextBuilder.CreateContext<LineBalanceIIDataContext>();

                    //int j = context1.ExecuteCommand(SqlStr2);
            //        if (j != -1) cancel = false;
                    this.Close();
                //}
                //else
                //{
                //    return;
                //}
            
        }

        //#region 得到一個新的版本號
        ///// <summary>
        ///// 得到一個新的版本號
        ///// </summary>
        ///// <returns></returns>
        //public int GetNewEdition()
        //{
        //    LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<LineBalanceIIDataContext>();
        //    var master = from a in context.StyleMasters
        //                 where a.KHKH == this.KHKHTextEdit.Text.Trim() && a.PHKH == this.PHKHComboBoxEdit.Text.Trim() && a.ZH == this.ZHComboBoxEdit.Text.Trim()
        //                 select a;

        //    int temp = 0;
        //    foreach (StyleMaster obj in master)
        //    {
        //        if (obj.Edition > temp)
        //        {
        //            temp = obj.Edition;
        //        }
        //    }
        //    return temp + 1;

        //    //return master.Max(a => a.Edition) + 1;

        //}

        public string KHKH
        {
            get
            {
                return this.CopyKHKHTextEdit.Text.TrimEnd();
            }
            
        }
        public string PHKH 
        {
            get 
            {
                return this.CopyPHKHComboBoxEdit.Text.TrimEnd();
            }
        }
        public string BKH 
        {
            get 
            {
                return this.CopyBKHTextEdit.Text.TrimEnd();
            }
        }
        public string CPLB 
        {
            get 
            {
                return this.CopyCPLBTextEdit.Text.TrimEnd();
            }
        }
        public string sizeYJ 
        {
            get 
            {
                return this.CopySizeYJTextEdit.Text.TrimEnd();
            }
        }
        public string ZH 
        {
            get 
            {
                return this.CopyZHComboBoxEdit.Text.TrimEnd();
            }
        }
        public int Edition 
        {
            get 
            {
                return this.Edit;
            }
        }
        //#endregion

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            //this.cancel = true;
            //this.Close();
        }

    
    }
}
