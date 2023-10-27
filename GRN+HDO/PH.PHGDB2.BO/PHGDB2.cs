namespace PH.PHGDB2.BO
{
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Data;
    using System.Collections.Generic;
    using System.Reflection;
    using System.Linq;
    using System.Linq.Expressions;
    using System.Xml.Linq;
    using System.ComponentModel;
    using System;
    using PH.Platform.BO;

    public partial class PHGDB2DataContext : DataContext
    {
        /// <summary>
        /// 單價系數
        /// </summary>
        public double CurrentPriceRatio(DateTime? Selectday, int? Flag)
        {
            var obj = this.ByPiece_Prices.FirstOrDefault(p => Selectday >= p.StartDate && Selectday <= p.DueDate && p.Flag == Flag);
            return obj == null ? 0 : (obj.Price ?? 0);

        }

        /// <summary>
        /// 工時補貼單價系數
        /// </summary>
        public double CurrentPriceRatio1(DateTime? Selectday, int? Flag)
        {
            var obj = this.ByPiece_WorkTimeBasePrices.FirstOrDefault(p => Selectday >= p.StartDate && Selectday <= p.DueDate && p.Flag == Flag);
            return obj == null ? 0 : (obj.Price ?? 0);
        }

        public DataTable GetCustomer()
        {
            string SqlStr = "select distinct  DataCode from [PH.Platform.Misc]..Misc_DataDictionary where DataType = 'PH.SPC.SampleOrder.Customer'";
            return this.ExecuteDataTable(SqlStr, "QC_Master");
        }

        public bool GetUser_IDO(string IssueMan, string IDO, string MaterialType, string ProjCode, int Flag)
        {

            string front, SubStr, initial, ChangeValue;
            ChangeValue = initial = MaterialType + ",";

            for (int i = 0; i < initial.Length; i++)
            {
                if (initial[i] == ',')
                {

                    front = initial.Substring(i, initial.Length - i);
                    SubStr = ChangeValue.Substring(0, ChangeValue.Length - front.Length);
                    ChangeValue = front;

                    string SQLStr = "Update dd  set  IssueMan='{0}' from [PHGDB2]..ByPiece_IssueItem_Text as dd  where IDO='{1}' and MaterialType='{2}' and '{3}'  like  ProjCode+'%'  and Flag ='{4}'  ";
                    SQLStr = string.Format(SQLStr, IssueMan, IDO, SubStr.Replace(",", "").Replace(" ", ""), ProjCode.Substring(0, 4), Flag);
                    this.ExecuteCommand(SQLStr);

                }

            }

            return true;
        }


        public bool GetUser_Material(string UserID, string MaterialType, DateTime FrmDate, DateTime ToDate, int TableType, int Flag)
        {

            string front, SubStr, initial, ChangeValue, TableName, DateType, ManType;

            if (TableType == 0)
            {
                TableName = "ByPiece_IssueItem_Text";
                DateType = "DT_Issue";
                ManType = "IssueMan";
            }
            else if (TableType == 1)
            {
                TableName = "ByPiece_ReciveItem";
                DateType = "DT_Recive";
                ManType = "ReciveMan";
            }
            else if (TableType == 2)
            {
                TableName = "ByPiece_ReturnItem";
                DateType = "DT_Return";
                ManType = "ReturnMan";
            }
            else
            {
                TableName = "ByPiece_RCItem";
                DateType = "RCDate";
                ManType = "RCMan";
            }

            ChangeValue = initial = MaterialType + ",";

            for (int i = 0; i < initial.Length; i++)
            {
                if (initial[i] == ',')
                {

                    front = initial.Substring(i, initial.Length - i);
                    SubStr = ChangeValue.Substring(0, ChangeValue.Length - front.Length);
                    ChangeValue = front;

                    string SQLStr = "Update dd  set  {0}='{1}' from [PHGDB2]..{2} as dd  where  MaterialType='{3}'  and  {4}  between  '{5}'  and '{6}' and Flag='{7}' ";
                    SQLStr = string.Format(SQLStr, ManType, UserID, TableName, SubStr.Replace(",", "").Replace(" ", ""), DateType, FrmDate, ToDate, Flag);
                    this.ExecuteCommand(SQLStr);

                }

            }

            return true;
        }

    }


    public partial class TypeMaster : BaseEntity
    {
        public double Price_SAHRet
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }

                return Math.Round((this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(DateTime.Now, this.Flag) * Convert.ToDouble(this.SAH_Ret), 4);
            }
        }

        public double Price_SAHRev
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }

                return Math.Round((this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(DateTime.Now, this.Flag) * Convert.ToDouble(this.SAH_Rev), 4);
            }
        }

        public double Price_SAHIssParent
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }

                return Math.Round((this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(DateTime.Now, this.Flag) * Convert.ToDouble(this.SAHM_Iss), 4);
            }
        }

        public double Price_SAHIssChild
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }

                return Math.Round((this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(DateTime.Now, this.Flag) * Convert.ToDouble(this.SAHC_Iss), 4);
            }
        }

        /// <summary>
        /// 退料單價(母) (退給供應商)
        /// </summary>
        public double RCPrice_M
        {
            get
            {
                if (!this.RCSAH_M.HasValue)
                {
                    return 0;
                }

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }


                return Math.Round((this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(DateTime.Now, this.Flag) * Convert.ToDouble(this.RCSAH_M ?? 0), 4);
            }
        }

        /// <summary>
        /// 退料單價(子) (退給供應商)
        /// </summary>
        public double RCPrice_C
        {
            get
            {
                if (!RCSAH_C.HasValue)
                    return 0;

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }

                return Math.Round((this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(DateTime.Now, this.Flag) * Convert.ToDouble(this.RCSAH_C ?? 0), 4);
            }
        }


    }
    public partial class TypeDetail : BaseEntity
    {
    }
    public partial class ByPiece_Employee : BaseEntity
    {

    }
    public partial class TypeSAHRange : BaseEntity
    {

    }

    public partial class CheckWorkTimeApplicationReport : BaseEntity
    {

    }

    public partial class WorkTimeApplicationReport_Detail : BaseEntity
    {

    }

    public partial class ByPiece_IssueItem_Text : BaseEntity
    {


        public double SAH1
        {
            get
            {
                int Type1 = 0;

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var obj_Master = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType && p.Flag == this.Flag);

                if (this.SAHType == 0)
                {
                    Type1 = 2;
                }
                else { Type1 = 3; }

                var obj_Detail = (this.CurrentDataContext as PHGDB2DataContext).TypeSAHRanges.FirstOrDefault(p => p.TypeMaster_Id == obj_Master.TypeMaster_Id && p.Type == Type1 && this.ISSUE_QTY >= p.QtyFrom && this.ISSUE_QTY <= (p.QtyTo ?? 2147483647) && p.Flag == this.Flag);
                if (Type1 == 2)
                {
                    return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAHM_Iss)) : (obj_Detail.SAH ?? 0);
                }
                else
                { return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAHC_Iss)) : (obj_Detail.SAH ?? 0); }

                //if (Type1 == 2)
                //{
                //    if ( obj_Detail != null)
                //    {
                //        return Convert.ToDouble(obj_Detail.SAH);

                //    }
                //    else
                //    {
                //        return Convert.ToDouble(obj_Master.SAHM_Iss);
                //    }
                //}
                //else
                //{
                //    if ( obj_Detail!= null)
                //    {
                //        return Convert.ToDouble(obj_Detail.SAH);

                //    }
                //    else
                //    {
                //        return Convert.ToDouble(obj_Master.SAHC_Iss);
                //    }
                //}
            }


        }

        public string SAH_Type
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return this.SAHType == 0 ? "母" : "子";
            }
        }


        public double Price
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return SAH1 * (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this.DT_Issue, this.Flag);
            }
        }
    }

    public partial class ByPiece_ReciveItem : BaseEntity
    {
        public double SAH
        {


            get
            {

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var obj_Master = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType && p.Flag == this.Flag);


                var obj_Detail = (this.CurrentDataContext as PHGDB2DataContext).TypeSAHRanges.FirstOrDefault(p => p.TypeMaster_Id == (obj_Master == null ? 0 : obj_Master.TypeMaster_Id) && p.Type == 1 && this.IDNUM >= p.QtyFrom && this.IDNUM <= (p.QtyTo ?? 2147483647) && p.Flag == this.Flag);


                return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAH_Rev)) : (obj_Detail.SAH ?? 0);

                //get
                //{
                //    if (this.CurrentDataContext == null)
                //    {
                //        this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                //    }
                //    var obj = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);
                //    return obj == null ? 0 : (obj.SAH_Rev ?? 0);
                //}
            }
        }

        public double Price
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this.DT_Recive, this.Flag) * Convert.ToDouble(this.SAH);
                //var obj = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);
                //return obj == null ? 0 : (obj.Price_Rev ?? 0);
            }
        }
        public double SumAll
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._DT_Recive, this.Flag) * Convert.ToDouble(this.SAH) * Convert.ToDouble(this.IDNUM);
            }
        }

    }



    public partial class ByPiece_IssueItem : BaseEntity
    {
        public decimal SAH_Parent
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var obj = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);
                return obj == null ? 0 : (obj.SAHM_Iss ?? 0);
            }
        }

        public decimal SAH_Child
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var obj = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);
                return obj == null ? 0 : (obj.SAHC_Iss ?? 0);
            }
        }
        /// <summary>
        /// 母ID的單價
        /// </summary>
        public double ParentID_Price
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._DT_Issue, null) * Convert.ToDouble(this.SAH_Parent);
            }
        }

        /// <summary>
        /// 子ID的單價
        /// </summary>
        public double ChildID_Price
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._DT_Issue, null) * Convert.ToDouble(this.SAH_Child);
            }
        }

        public double Sum_Parent
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._DT_Issue, null) * Convert.ToDouble(this.SAH_Parent) * Convert.ToDouble(this.IDNUM_M);
            }
        }

        public double Sum_Child
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._DT_Issue, null) * Convert.ToDouble(this.SAH_Child) * Convert.ToDouble(this.IDNUM_C);
            }
        }

        public double SumAll
        {
            get
            {
                return (this.Sum_Child + this.Sum_Parent);
            }
        }


    }

    public partial class ByPiece_ReturnItem : BaseEntity
    {
        public double SAH
        {
            get
            {

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var obj_Master = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType && p.Flag == this.Flag);


                var obj_Detail = (this.CurrentDataContext as PHGDB2DataContext).TypeSAHRanges.FirstOrDefault(p => p.TypeMaster_Id == (obj_Master == null ? 0 : obj_Master.TypeMaster_Id) && p.Type == 4 && this.IDNUM >= p.QtyFrom && this.IDNUM <= (p.QtyTo ?? 2147483647) && p.Flag == this.Flag);


                return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAH_Ret)) : (obj_Detail.SAH ?? 0);

                //get
                //{
                //    if (this.CurrentDataContext == null)
                //    {
                //        this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                //    }
                //    var obj = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);
                //    return obj == null ? 0 : (obj.SAH_Ret ?? 0);
            }
        }

        public double Price
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this.DT_Return, this.Flag) * Convert.ToDouble(this.SAH);
                //var obj = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);              
                //return obj == null ? 0 : (obj.Price_Ret ?? 0);
            }
        }

        public double SumAll
        {
            get
            {
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._DT_Return, this.Flag) * Convert.ToDouble(this.SAH) * Convert.ToDouble(this.IDNUM);

            }
        }

    }

    public partial class ByPiece_RCItem : BaseEntity
    {

        public double SAH1
        {
            get
            {
                int Type1 = 0;

                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var obj_Master = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType && p.Flag == this.Flag);


                if (this._Lot_ID == "0")
                {
                    Type1 = 2;
                }
                else { Type1 = 3; }


                var obj_Detail = (this.CurrentDataContext as PHGDB2DataContext).TypeSAHRanges.FirstOrDefault(p => p.TypeMaster_Id == (obj_Master != null ? obj_Master.TypeMaster_Id : -1) && p.Type == Type1 && this._RCQty >= p.QtyFrom && this._RCQty <= (p.QtyTo ?? 2147483647) && p.Flag == this.Flag);


                if (Type1 == 2)
                {
                    return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAHM_Iss)) : (obj_Detail.SAH ?? 0);
                }
                else
                { return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAHC_Iss)) : (obj_Detail.SAH ?? 0); }

                //if (Type1 == 2)
                //{
                //    if ( obj_Detail != null)
                //    {
                //        return Convert.ToDouble(obj_Detail.SAH);

                //    }
                //    else
                //    {
                //        return Convert.ToDouble(obj_Master.SAHM_Iss);
                //    }
                //}
                //else
                //{
                //    if ( obj_Detail!= null)
                //    {
                //        return Convert.ToDouble(obj_Detail.SAH);

                //    }
                //    else
                //    {
                //        return Convert.ToDouble(obj_Master.SAHC_Iss);
                //    }
                //}
            }


        }

        public string SAH_Type
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                if (!string.IsNullOrEmpty(this._Lot_ID))
                {
                    if (this._Lot_ID.ToString() == "0")
                        return "母";
                    else
                        return "子";
                }
                else
                { return ""; }
            }
        }


        public double Price
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return SAH1 * (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._RCDate, this.Flag);
            }
        }


        //public double SAH
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
        //        }
        //        var obj_Master = (this.CurrentDataContext as PHGDB2DataContext).TypeMasters.FirstOrDefault(p => p.TypeId == this.MaterialType);
        //        var obj_Detail = (this.CurrentDataContext as PHGDB2DataContext).TypeSAHRanges.FirstOrDefault(p => p.TypeMaster_Id == (obj_Master == null ? 0 : obj_Master.TypeMaster_Id) && p.Type == 4 && this.RCQty >= p.QtyFrom && this.RCQty <= (p.QtyTo ?? 2147483647));
        //        return obj_Detail == null ? (obj_Master == null ? 0 : Convert.ToDouble(obj_Master.SAH_Ret)) : (obj_Detail.SAH ?? 0);
        //    }
        //}

        //public double Price
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
        //        }
        //        return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this.RCDate) * Convert.ToDouble(this.SAH);
        //    }
        //}

        //public double SumAll
        //{
        //    get
        //    {
        //        return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this.RCDate) * Convert.ToDouble(this.SAH) * Convert.ToDouble(this.RCQty);

        //    }
        //}

    }

    public class WareHouseReport
    {
        public int NumB { get; set; }
        public String OrderID { get; set; }
        public String OrderMan { get; set; }
        public String Calculate_Type { get; set; }
        public String MaterialType { get; set; }
        public DateTime Date_time { get; set; }
        public String IDNUM { get; set; }
        public double SAH { get; set; }
        public double Pirice { get; set; }
        public String Remark { get; set; }
        public String Calculate_Item { get; set; }
        public double Calculate_SPrice { get; set; }

        //public String Calculate_SPrice1
        //{
        //    get
        //    {
        //        string leng = this.Calculate_SPrice.Trim();

        //        if (leng.IndexOf(".") <= 0)
        //        {
        //            return leng;
        //        }

        //        int index=0;

        //        for (int i = 0; i < leng.Length; i++)
        //        {
        //            if (leng[i] == '.') 
        //            {
        //                index++;
        //            }

        //            if (index == 1) 
        //            {
        //                string front = leng.Substring(0, i);
        //                string lastleng = leng.Substring(i, leng.Length - front.Length);
        //                string last = "";
        //                if (lastleng.Length >= 4)
        //                {
        //                    last = lastleng.Substring(0, 3);
        //                }
        //                else 
        //                {
        //                    last = lastleng; 
        //                }
        //                return front + last;
        //            }                   
        //        }
        //        return leng;
        //    }
        //}
    }

    public class WareHouseReport_Sub
    {
        public int NumB { get; set; }
        public String OrderID { get; set; }
        public String OrderMan { get; set; }
        public double SHA_SUM { get; set; }
        //public String SHA_SUM1 
        //{
        //    get
        //    {
        //        string leng = this.SHA_SUM.Trim();

        //        if (leng.IndexOf(".") <= 0)
        //        {
        //            return leng;
        //        }

        //        int index = 0;

        //        for (int i = 0; i < leng.Length; i++)
        //        {
        //            if (leng[i] == '.')
        //            {
        //                index++;
        //            }

        //            if (index == 1)
        //            {
        //                string front = leng.Substring(0, i);
        //                string lastleng = leng.Substring(i, leng.Length - front.Length);
        //                string last = "";
        //                if (lastleng.Length >= 5)
        //                {
        //                    last = lastleng.Substring(0, 5);
        //                }
        //                else
        //                {
        //                    last = lastleng;
        //                }
        //                return front + last;
        //            }
        //        }
        //        return leng;
        //    }
        //}




        public double Price_SUM { get; set; }
        //public String Price_SUM1
        //{
        //    get
        //    {
        //        string leng = this.Price_SUM.Trim();

        //        if (leng.IndexOf(".") <= 0)
        //        {
        //            return leng;
        //        }

        //        int index = 0;

        //        for (int i = 0; i < leng.Length; i++)
        //        {
        //            if (leng[i] == '.')
        //            {
        //                index++;
        //            }

        //            if (index == 1)
        //            {
        //                string front = leng.Substring(0, i);
        //                string lastleng = leng.Substring(i, leng.Length - front.Length);
        //                string last = "";
        //                if (lastleng.Length >= 4)
        //                {
        //                    last = lastleng.Substring(0, 3);
        //                }
        //                else
        //                {
        //                    last = lastleng;
        //                }
        //                return front + last;
        //            }
        //        }
        //        return leng;
        //    }
        //}




        public double AddTime { get; set; }
        public double AddTimePriceAmount { get; set; }
        public double AllPrice { get; set; }
    }

    public class WarkTimeReport
    {
        public String Group_Code { get; set; }
        public String Name { get; set; }
        public String NumB { get; set; }
        public String TimeLag { get; set; }
        public String BaseNumb { get; set; }
        public double Amount { get; set; }
    }


    public class WorkTimeApplication
    {
        public DateTime Date_Time { get; set; }
        public String Group_Code { get; set; }

        public String Name { get; set; }
        public String NumB { get; set; }
        public String Reason { get; set; }
        public String Work_desc { get; set; }
        public DateTime Time_Quantum_Start { get; set; }
        public DateTime Time_Quantum_Due { get; set; }
        public String BaseNumber { get; set; }
        public double Amount { get; set; }
        public String department { get; set; }
        public String Reamrk { get; set; }
        public String TimeLag { get; set; }
        public String Time_Quantum { get; set; }
        public String GetTime_Quantum2(DateTime Time1, DateTime Time2)
        {
            return (Time1).ToString("HH:mm") + " ~ " + (Time2).ToString("HH:mm");

        }

    }

    public partial class ByPiece_Price : BaseEntity
    {
    }
    public partial class ByPrice_Order : BaseEntity
    {
    }
    public partial class ByPrice_Order_IDO : BaseEntity
    {
    }

    public partial class ByPrice_WorkTimeApplication_Master : BaseEntity
    {
    }

    public partial class ByPiece_WorkTimeBasePrice : BaseEntity
    {
    }

    public partial class ByPiece_PriceCount : BaseEntity
    {
        public double BaseNumb
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._StartDate, this.Flag);
            }
            set { }
        }

        public double Amount
        {
            get
            {
                if (this.BaseNumb != 0 && this.MMQty != null)
                {
                    return this.BaseNumb * Convert.ToDouble(this.MMQty);
                }
                return 0;
            }
            set { }
        }

        //獲取姓名
        partial void OnEmpIDChanged()
        {
            this.EmpName = GetName();
        }
        private string GetName()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            ByPiece_Employee obj = (this.CurrentDataContext as PHGDB2DataContext).ByPiece_Employees.FirstOrDefault(p => p.EmpId == this.EmpID);
            return obj == null ? "" : obj.EmpName;
        }

        //開始時間獲取基數
        partial void OnStartDateChanged()
        {
            this.BaseNumb = GetBaseNumB();

        }

        private double GetBaseNumB()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
            }

            return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio(this._StartDate, this.Flag);

        }

        //partial void OnEndDateChanged() 
        //{
        //    if (CheckTime(Convert.ToDateTime(this._StartDate)) != CheckTime(Convert.ToDateTime(this._EndDate))) 
        //    {
        //        this._EndDate = this._StartDate;
        //    }
        //}
        public DateTime CheckTime(DateTime time1)
        {
            return Convert.ToDateTime(time1.ToString("yyyy-MM"));
        }


        // 獲取時間段OnMMQtyChanged
        partial void OnMMQtyChanged()
        {
            if (this.StartDate != null)
            {
                if (Convert.ToDouble(this.BaseNumb) > 0 && Convert.ToDouble(this.MMQty) > 0)
                {
                    this.Amount = Convert.ToDouble(this.BaseNumb) * Convert.ToDouble(this.MMQty);
                }
                else { this.Amount = 0; }
            }

        }
        private double GetDateTime_Quantum()
        {
            TimeSpan ts = Convert.ToDateTime(this.EndDate) - Convert.ToDateTime(this.StartDate);
            return Convert.ToDouble(ts.TotalMinutes / 60);
            //obj.Time_Quantum = Convert.ToDecimal(ts.TotalMinutes / 60);
        }
        private double GetDateTime_Quantum1()
        {
            TimeSpan ts = Convert.ToDateTime(this.EndDate) - Convert.ToDateTime(this.StartDate);
            return Convert.ToDouble(ts.TotalMinutes / 60);
            //obj.Time_Quantum = Convert.ToDecimal(ts.TotalMinutes / 60);
        }

        public DateTime GetStartTime()
        {
            return Convert.ToDateTime(this._StartDate);
        }

    }

    public partial class ByPrice_WorkTimeApplication : BaseEntity
    {
        //public String Time_Quantum1
        //{
        //    get
        //    {
        //        if (this.CurrentDataContext == null)
        //        {
        //            this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();

        //        }
        //        var obj = (this.CurrentDataContext as PHGDB2DataContext).ByPrice_WorkTimeApplications.FirstOrDefault(p => p.ID == this.ID);

        //        return obj == null ? "0" : Convert.ToDateTime(obj.Time_Quantum_Start).ToString("HH:mm") + " ~ " + Convert.ToDateTime(obj.Time_Quantum_Due).ToString("HH:mm");
        //        //return obj == null ? "0" : (obj.Time_Quantum_Due).ToString("HH:mm") + " ~ " + (obj.Time_Quantum_Start).ToString("HH:mm");

        //    }
        //}
        //public String Time_Quantum2 { get; set; }
        //public String GetTime_Quantum2(DateTime Time1, DateTime Time2)
        //{

        //    return "0";
        //   // return (Time1).ToString("HH:mm") + " ~ " + (Time2).ToString("HH:mm");

        //}

        //獲取Name
        partial void OnNameChanged()
        {
            this.NumB = GetName();

        }

        private string GetName()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            ByPiece_Employee obj = (this.CurrentDataContext as PHGDB2DataContext).ByPiece_Employees.FirstOrDefault(p => p.EmpName == this.Name);

            return obj == null ? "" : obj.EmpId;

        }

        //獲取基數
        partial void OnDate_TimeChanged()
        {
            this.BaseNumber = GetBaseNumB().ToString();

        }
        private double GetBaseNumB()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            this._Flag = this.ByPrice_WorkTimeApplication_Master.Flag ?? null;
            return (this.CurrentDataContext as PHGDB2DataContext).CurrentPriceRatio1(this.Date_Time, this.ByPrice_WorkTimeApplication_Master.Flag);

        }



        //獲取時間段

        partial void OnTime_Quantum_DueChanged()
        {
            if (this.Time_Quantum_Start != null)
            {
                if (GetDateTime_Quantum() > 0)
                {
                    this.Time_Quantum = Convert.ToDecimal(GetDateTime_Quantum());
                }
                else { this.Time_Quantum = 0; }
                //if (GetDateTime_Quantum() <= 0)
                //{
                //     //Exception ex =  new Exception("Time is error");
                //}
                //else 
                //{ 
                //    this.Time_Quantum = Convert.ToDecimal(GetDateTime_Quantum());
                //}                
            }

        }
        private double GetDateTime_Quantum()
        {
            TimeSpan ts = Convert.ToDateTime(this.Time_Quantum_Due) - Convert.ToDateTime(this.Time_Quantum_Start);
            return Convert.ToDouble(ts.TotalMinutes / 60);
            //obj.Time_Quantum = Convert.ToDecimal(ts.TotalMinutes / 60);
        }


        partial void OnTime_Quantum_StartChanged()
        {
            if (this.Time_Quantum_Due != null)
            {
                if (GetDateTime_Quantum1() > 0)
                {
                    this.Time_Quantum = Convert.ToDecimal(GetDateTime_Quantum1());
                }
                else { this.Time_Quantum = 0; }

            }
        }
        private double GetDateTime_Quantum1()
        {
            TimeSpan ts = Convert.ToDateTime(this.Time_Quantum_Due) - Convert.ToDateTime(this.Time_Quantum_Start);
            return Convert.ToDouble(ts.TotalMinutes / 60);
            //obj.Time_Quantum = Convert.ToDecimal(ts.TotalMinutes / 60);
        }

        //计算金额
        partial void OnTime_QuantumChanged()
        {
            if (Convert.ToDouble(this.BaseNumber) > 0 && Convert.ToDouble(this.Time_Quantum) > 0)
            {
                this.Amount = Convert.ToDouble(this.BaseNumber) * Convert.ToDouble(this.Time_Quantum);
            }
            else { this.Amount = 0; }
        }

        partial void OnBaseNumberChanged()
        {
            if (Convert.ToDouble(this.BaseNumber) > 0 && Convert.ToDouble(this.Time_Quantum) > 0)
            {
                this.Amount = Convert.ToDouble(this.BaseNumber) * Convert.ToDouble(this.Time_Quantum);
            }
            else { this.Amount = 0; }
        }


    }

    /// <summary>
    /// 丈巾过压缩机从表
    /// </summary>
    public partial class ByPiece_ELWFilteringMachineDetail : BaseEntity
    {
 
        //獲取Name
        partial void OnEmpNameChanged()
        {
            this.EmpID = GetName();

        }

        private string GetName()
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
            }
            ByPiece_Employee obj = (this.CurrentDataContext as PHGDB2DataContext).ByPiece_Employees.FirstOrDefault(p => p.EmpName == this.EmpName);

            return obj == null ? "" : obj.EmpId;

        }


        partial void OnQtyChanging(int value)
        {
           
            int? IssueQty = this.ByPiece_ELWFilteringMachineHeader.IssueQty;
            int? Qty = this.ByPiece_ELWFilteringMachineHeader.ByPiece_ELWFilteringMachineDetails.Select(p => p.Qty).Sum();
            int? QtyExceptThis = this.ByPiece_ELWFilteringMachineHeader.ByPiece_ELWFilteringMachineDetails.Where(p=>p.OID !=this.OID).Select(p => p.Qty).Sum();

            if (value == 0)
            {
                throw new Exception("Qty不能爲0");
            }

            if (string.IsNullOrEmpty(value.ToString()))
            {
                throw new Exception("Qty不能爲空值");
            }

            if ((IssueQty - QtyExceptThis) < value)
            {
                
                throw new Exception("Qty不能大于" + (IssueQty - QtyExceptThis).ToString());
            }

         

        }


        //partial void OnQtyChanged() 
        //{
        //    if (this.Qty == 0) 
        //    {
        //        throw new Exception("Qty不能爲0");
        //    }
        //    if (string.IsNullOrEmpty(this.Qty.ToString())) 
        //    {
        //        throw new Exception("Qty不能爲空值");
        //    }
        //}

        public double? ELWSAH 
        {
            get 
            {
                if (this.CurrentDataContext == null) 
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var objPrice = (this.CurrentDataContext as PHGDB2DataContext).ByPiece_Prices.Where(p => p.DueDate >= this.ByPiece_ELWFilteringMachineHeader.CreateDate && p.StartDate <= this.ByPiece_ELWFilteringMachineHeader.CreateDate).FirstOrDefault();

                return objPrice.ELWFilteringMachineSAH;
            }
        }

        public double? WorkTime 
        {
            get 
            {
               
                return (!string.IsNullOrEmpty(this.ELWSAH.ToString()) && !string.IsNullOrEmpty(this.Qty.ToString()))?ELWSAH*Qty:0.00;
                
            }

        }

        public double? Amount 
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
                }
                var objPriceBase =    (this.CurrentDataContext as PHGDB2DataContext).ByPiece_Prices.Where(p => p.DueDate >= this.ByPiece_ELWFilteringMachineHeader.CreateDate && p.StartDate <= this.ByPiece_ELWFilteringMachineHeader.CreateDate).FirstOrDefault();
                return (!string.IsNullOrEmpty(this.WorkTime.ToString())) ? WorkTime * objPriceBase.ELWFilteringMachinePrice : 0.00;
            }

        }



    }

    /// <summary>
    /// 丈巾过压缩机主表
    /// </summary>
    public partial class ByPiece_ELWFilteringMachineHeader : BaseEntity 
    {
        public int ShowBalanceIssueQty 
        {
            get 
            {
                return (this.IssueQty??0) - this.ByPiece_ELWFilteringMachineDetails.Select(p => p.Qty).Sum();
            }
        }
        //partial void OnIDONoChanging(string value) 
        //{
           
        //          if (this.CurrentDataContext == null)
        //          {
        //                     this.CurrentDataContext = ContextBuilder.CreateContext<PHGDB2DataContext>();
        //          }

        //        if(!string.IsNullOrEmpty(value))
        //        {
        //            var maxTime = (this.CurrentDataContext as PHGDB2DataContext).ByPiece_ELWFilteringMachineHeaders.Where(p => p.IDONo == value).Max(p=>p.NumOfTime);

        //            this.NumOfTime = maxTime==null?1:maxTime+1;
        //        }
            
        //}
    }

    /// <summary>
    ///  丈巾过压缩机（报表的实体类）
    /// </summary>
    public class ByPiece_ELWFilteringMachine 
    {
        public int Nub { get; set; }
       public string EmpName	{get;set;}
       public string ELWDate	{get;set;}
       public string EmpID	{get;set;}
       public double ELWFilteringMachineSAH	{get;set;}
       public double ELWPrice	{get;set;}
       public int Qty	{get;set;}
       public double WorkTime { get; set; }
       public double Amount	{get;set;}
       public string Remark { get; set; }    	      				
    }

    /// <summary>
    ///  丈巾过压缩机汇总表（报表的实体类）
    /// </summary>
    public class ByPiece_ELWFilteringMachineSummary
    {
        public int Nub { get; set; }
        public string EmpName { get; set; }    
        public string EmpID { get; set; }
        public int Qty { get; set; }
        public double WorkTime { get; set; }
        public double Amount { get; set; }
        
    }
}
