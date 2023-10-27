namespace PH.RWO.BO
{
    using PH.Platform.BO;
    using System.Collections.Generic;
    using System.Data.Linq;
    using System.Data;
    using System.Linq;
    using System;
    using System.Drawing;

    using System.Data.Linq.Mapping;
    using System.Runtime.Serialization;
    using System.Reflection;
    using System.Data.Common;
    using System.Data.SqlClient;
    using PH.Platform.Email.BO;
    using System.Collections;
    // using PH.BasicInfo.BO;


    partial class RWOSOPCDataContext
    {
        [Function(Name = "dbo.GetCustomerSampleOrderSort")]
        public ISingleResult<GetCustomerSampleOrderSortResult> GetCustomerSampleOrderSort([Parameter(Name = "CustomerID", DbType = "VarChar(50)")] string customerID, [Parameter(Name = "Factory", DbType = "VarChar(50)")] string factory)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customerID, factory);
            return ((ISingleResult<GetCustomerSampleOrderSortResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_WORejectList")]
        public ISingleResult<Sp_WORejectListResult> Sp_WORejectList([Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), userName);
            return ((ISingleResult<Sp_WORejectListResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_AS400Project")]
        public int Sp_AS400Project([Parameter(Name = "DT", DbType = "Int")] System.Nullable<int> dT, [Parameter(Name = "TM", DbType = "VarChar(9)")] string tM, [Parameter(Name = "CONO", DbType = "VarChar(2)")] string cONO, [Parameter(Name = "I_SCNO", DbType = "VarChar(7)")] string i_SCNO)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dT, tM, cONO, i_SCNO);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_AS400SKU")]
        public int Sp_AS400SKU([Parameter(Name = "DT", DbType = "Int")] System.Nullable<int> dT, [Parameter(Name = "TM", DbType = "VarChar(9)")] string tM, [Parameter(Name = "CONO", DbType = "VarChar(2)")] string cONO, [Parameter(Name = "ORDN", DbType = "VarChar(7)")] string oRDN)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dT, tM, cONO, oRDN);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_AS400WorkOrders")]
        public int Sp_AS400WorkOrders([Parameter(Name = "DT", DbType = "Int")] System.Nullable<int> dT, [Parameter(Name = "TM", DbType = "VarChar(9)")] string tM, [Parameter(Name = "CONO", DbType = "VarChar(2)")] string cONO, [Parameter(Name = "ORDN", DbType = "VarChar(7)")] string oRDN)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dT, tM, cONO, oRDN);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_CreateProjects")]
        public int Sp_CreateProjects([Parameter(Name = "I_SCNO", DbType = "VarChar(7)")] string i_SCNO, [Parameter(Name = "I_CUSO", DbType = "VarChar(20)")] string i_CUSO)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), i_SCNO, i_CUSO);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_CreateSKU")]
        public int Sp_CreateSKU()
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())));
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_CreateSopcByCustomer")]
        public int Sp_CreateSopcByCustomer([Parameter(DbType = "VarChar(100)")] string i_CUSN)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), i_CUSN);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_CreateWorkOrders")]
        public int Sp_CreateWorkOrders([Parameter(Name = "I_SCNO", DbType = "VarChar(7)")] string i_SCNO, [Parameter(DbType = "VarChar(100)")] string i_CUSN, [Parameter(Name = "I_CUSO", DbType = "VarChar(20)")] string i_CUSO)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), i_SCNO, i_CUSN, i_CUSO);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.sp_ExportRFID")]
        public ISingleResult<sp_ExportRFIDResult> sp_ExportRFID([Parameter(Name = "BeforeDays", DbType = "Int")] System.Nullable<int> beforeDays)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), beforeDays);
            return ((ISingleResult<sp_ExportRFIDResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_GetAS400Data")]
        public int Sp_GetAS400Data([Parameter(Name = "DT", DbType = "Int")] System.Nullable<int> dT, [Parameter(Name = "TM", DbType = "VarChar(9)")] string tM, [Parameter(Name = "CONO", DbType = "VarChar(2)")] string cONO, [Parameter(Name = "ORDN", DbType = "VarChar(7)")] string oRDN)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dT, tM, cONO, oRDN);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.sp_GetOrderDetail")]
        public int sp_GetOrderDetail([Parameter(Name = "Company", DbType = "VarChar(50)")] string company, [Parameter(Name = "DeliveryDateFrom", DbType = "VarChar(50)")] string deliveryDateFrom, [Parameter(Name = "DeliveryDateTo", DbType = "VarChar(50)")] string deliveryDateTo, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "ProjectNO", DbType = "VarChar(50)")] string projectNO, [Parameter(Name = "SalesOrderNO", DbType = "VarChar(50)")] string salesOrderNO, [Parameter(Name = "SalesMan", DbType = "VarChar(50)")] string salesMan, [Parameter(Name = "Factory", DbType = "VarChar(50)")] string factory, [Parameter(Name = "Status", DbType = "Int")] System.Nullable<int> status, [Parameter(Name = "OrderBy", DbType = "Int")] System.Nullable<int> orderBy)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), company, deliveryDateFrom, deliveryDateTo, customer, projectNO, salesOrderNO, salesMan, factory, status, orderBy);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.sp_GetOrderDetail_Ship")]
        public int sp_GetOrderDetail_Ship([Parameter(Name = "DT", DbType = "VarChar(50)")] string dT, [Parameter(Name = "TM", DbType = "VarChar(50)")] string tM, [Parameter(Name = "ORDERBY", DbType = "Int")] System.Nullable<int> oRDERBY)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dT, tM, oRDERBY);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_RWOConfirmList")]
        public ISingleResult<Sp_RWOConfirmListResult> Sp_RWOConfirmList([Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), userName);
            return ((ISingleResult<Sp_RWOConfirmListResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_RWORejectList")]
        public ISingleResult<Sp_RWORejectListResult> Sp_RWORejectList([Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), userName);
            return ((ISingleResult<Sp_RWORejectListResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_SOPC_AS400")]
        public int Sp_SOPC_AS400([Parameter(DbType = "VarChar(2)")] string i_cono, [Parameter(DbType = "VarChar(40)")] string i_cusn, [Parameter(Name = "I_CUSO", DbType = "VarChar(20)")] string i_CUSO)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), i_cono, i_cusn, i_CUSO);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_SplitRoundWOrkOrder")]
        public int Sp_SplitRoundWOrkOrder([Parameter(Name = "Company", DbType = "VarChar(5)")] string company, [Parameter(Name = "SalesOrderNo", DbType = "VarChar(7)")] string salesOrderNo, [Parameter(Name = "OrderLine", DbType = "Int")] System.Nullable<int> orderLine, [Parameter(Name = "WorkOrderNo", DbType = "VarChar(10)")] string workOrderNo, [Parameter(Name = "ColorNO", DbType = "VarChar(3)")] string colorNO)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), company, salesOrderNo, orderLine, workOrderNo, colorNO);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_UpdateWorkOrderTimeElements")]
        public ISingleResult<Sp_UpdateWorkOrderTimeElementsResult> Sp_UpdateWorkOrderTimeElements([Parameter(Name = "I_SCNO", DbType = "VarChar(7)")] string i_SCNO, [Parameter(DbType = "VarChar(100)")] string i_CUSN, [Parameter(Name = "I_CUSO", DbType = "VarChar(20)")] string i_CUSO)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), i_SCNO, i_CUSN, i_CUSO);
            return ((ISingleResult<Sp_UpdateWorkOrderTimeElementsResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.Sp_WOConfirmList")]
        public ISingleResult<Sp_WOConfirmListResult> Sp_WOConfirmList([Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), userName);
            return ((ISingleResult<Sp_WOConfirmListResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.fn_ClosingDate", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_ClosingDate([Parameter(Name = "DeliveryDate", DbType = "DateTime")] System.Nullable<System.DateTime> deliveryDate, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "ShipMode", DbType = "VarChar(50)")] string shipMode, [Parameter(Name = "IsLCL", DbType = "Bit")] System.Nullable<bool> isLCL, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), deliveryDate, customer, shipMode, isLCL, factory, dseq).ReturnValue));
        }

        [Function(Name = "dbo.fn_WorkDateForwards", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_WorkDateForwards([Parameter(Name = "Date", DbType = "DateTime")] System.Nullable<System.DateTime> date, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), date, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_CustomerGetProfile", IsComposable = true)]
        public IQueryable<fn_CustomerGetProfileResult> fn_CustomerGetProfile([Parameter(DbType = "VarChar(7)")] string wo, [Parameter(DbType = "VarChar(10)")] string mode)
        {
            return this.CreateMethodCallQuery<fn_CustomerGetProfileResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), wo, mode);
        }

        [Function(Name = "dbo.fn_DetachWorkDate", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_DetachWorkDate([Parameter(Name = "Date", DbType = "DateTime")] System.Nullable<System.DateTime> date, [Parameter(Name = "WorkDays", DbType = "Int")] System.Nullable<int> workDays, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), date, workDays, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_DetachWorkDateInt", IsComposable = true)]
        public System.Nullable<int> fn_DetachWorkDateInt([Parameter(Name = "DateFromTime", DbType = "DateTime")] System.Nullable<System.DateTime> dateFromTime, [Parameter(Name = "DateToTime", DbType = "DateTime")] System.Nullable<System.DateTime> dateToTime, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dateFromTime, dateToTime, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_ErpInt2Date", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_ErpInt2Date([Parameter(DbType = "Int")] System.Nullable<int> erpDate)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), erpDate).ReturnValue));
        }

        //[Function(Name = "dbo.fn_ExftyDate", IsComposable = true)]
        //public System.Nullable<System.DateTime> fn_ExftyDate([Parameter(Name = "DeliveryDate", DbType = "DateTime")] System.Nullable<System.DateTime> deliveryDate, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "ShipMode", DbType = "VarChar(50)")] string shipMode, [Parameter(Name = "IsLCL", DbType = "Bit")] System.Nullable<bool> isLCL, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        //{
        //    return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), deliveryDate, customer, shipMode, isLCL, factory, dseq).ReturnValue));
        //}

        [Function(Name = "dbo.fn_FWDate", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_FWDate([Parameter(Name = "ExftyDate", DbType = "DateTime")] System.Nullable<System.DateTime> exftyDate, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), exftyDate, customer, factory, dseq).ReturnValue));
        }

        [Function(Name = "dbo.fn_GetSendUsersEmail", IsComposable = true)]
        public string fn_GetSendUsersEmail([Parameter(Name = "Cust", DbType = "VarChar(50)")] string cust, [Parameter(Name = "Fty", DbType = "VarChar(20)")] string fty, [Parameter(Name = "Item", DbType = "VarChar(15)")] string item, [Parameter(Name = "Next", DbType = "Int")] System.Nullable<int> next, [Parameter(Name = "IsSendTo", DbType = "Int")] System.Nullable<int> isSendTo, [Parameter(Name = "Phase", DbType = "Int")] System.Nullable<int> phase)
        {
            return ((string)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), cust, fty, item, next, isSendTo, phase).ReturnValue));
        }

        [Function(Name = "dbo.fn_GetUsersEmail", IsComposable = true)]
        public string fn_GetUsersEmail([Parameter(Name = "Users", DbType = "VarChar(1000)")] string users)
        {
            return ((string)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), users).ReturnValue));
        }

        [Function(Name = "dbo.fn_IfHaveConfirmRight", IsComposable = true)]
        public System.Nullable<int> fn_IfHaveConfirmRight([Parameter(Name = "WO", DbType = "VarChar(20)")] string wO, [Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName, [Parameter(Name = "Phase", DbType = "Int")] System.Nullable<int> phase)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), wO, userName, phase).ReturnValue));
        }

        [Function(Name = "dbo.fn_IfHaveRWOConfirmRight", IsComposable = true)]
        public System.Nullable<int> fn_IfHaveRWOConfirmRight([Parameter(Name = "WO", DbType = "VarChar(20)")] string wO, [Parameter(Name = "ColorCode", DbType = "VarChar(20)")] string colorCode, [Parameter(Name = "RoundNO", DbType = "Int")] System.Nullable<int> roundNO, [Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName, [Parameter(Name = "Phase", DbType = "Int")] System.Nullable<int> phase)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), wO, colorCode, roundNO, userName, phase).ReturnValue));
        }

        [Function(Name = "dbo.fn_IfHaveRWOIIConfirmRight", IsComposable = true)]
        public System.Nullable<int> fn_IfHaveRWOIIConfirmRight([Parameter(Name = "WO", DbType = "VarChar(20)")] string wO, [Parameter(Name = "ColorCode", DbType = "VarChar(20)")] string colorCode, [Parameter(Name = "RoundNO", DbType = "Int")] System.Nullable<int> roundNO, [Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName, [Parameter(Name = "SubFactory", DbType = "VarChar(10)")] string subFactory, [Parameter(Name = "Phase", DbType = "Int")] System.Nullable<int> phase)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), wO, colorCode, roundNO, userName, subFactory, phase).ReturnValue));
        }

        [Function(Name = "dbo.fn_IifContain", IsComposable = true)]
        public System.Nullable<int> fn_IifContain([Parameter(Name = "Users", DbType = "VarChar(500)")] string users, [Parameter(Name = "UserName", DbType = "VarChar(30)")] string userName)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), users, userName).ReturnValue));
        }

        [Function(Name = "dbo.fn_IsRWONeedSendNotify", IsComposable = true)]
        public System.Nullable<int> fn_IsRWONeedSendNotify([Parameter(Name = "WO", DbType = "VarChar(20)")] string wO, [Parameter(DbType = "Int")] System.Nullable<int> step)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), wO, step).ReturnValue));
        }

        [Function(Name = "dbo.fn_IsWONeedSendNotify", IsComposable = true)]
        public System.Nullable<int> fn_IsWONeedSendNotify([Parameter(Name = "WO", DbType = "VarChar(20)")] string wO, [Parameter(DbType = "Int")] System.Nullable<int> step)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), wO, step).ReturnValue));
        }

        [Function(Name = "dbo.fn_LWDate", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_LWDate([Parameter(Name = "ExftyDate", DbType = "DateTime")] System.Nullable<System.DateTime> exftyDate, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), exftyDate, customer, factory, dseq).ReturnValue));
        }

        [Function(Name = "dbo.fn_split_text", IsComposable = true)]
        public IQueryable<fn_split_textResult> fn_split_text([Parameter(DbType = "Text")] string text)
        {
            return this.CreateMethodCallQuery<fn_split_textResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), text);
        }

        [Function(Name = "dbo.fn_SplitRoundNo", IsComposable = true)]
        public System.Nullable<int> fn_SplitRoundNo([Parameter(Name = "RoundNo", DbType = "VarChar(20)")] string roundNo)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), roundNo).ReturnValue));
        }

        [Function(Name = "dbo.fn_T3Date", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_T3Date([Parameter(Name = "ExftyDate", DbType = "DateTime")] System.Nullable<System.DateTime> exftyDate, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), exftyDate, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_WeekDay", IsComposable = true)]
        public System.Nullable<int> fn_WeekDay([Parameter(DbType = "VarChar(30)")] string weekday)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), weekday).ReturnValue));
        }

        [Function(Name = "dbo.fn_WeekDays", IsComposable = true)]
        public IQueryable<fn_WeekDaysResult> fn_WeekDays([Parameter(DbType = "SmallDateTime")] System.Nullable<System.DateTime> dt)
        {
            return this.CreateMethodCallQuery<fn_WeekDaysResult>(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dt);
        }

        [Function(Name = "dbo.fn_WeekEndDate", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_WeekEndDate([Parameter(Name = "DT", DbType = "DateTime")] System.Nullable<System.DateTime> dT)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), dT).ReturnValue));
        }

        [Function(Name = "dbo.fn_WorkDateBackwards", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_WorkDateBackwards([Parameter(Name = "Date", DbType = "DateTime")] System.Nullable<System.DateTime> date, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), date, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_AddWorkDate", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_AddWorkDate([Parameter(Name = "Date", DbType = "DateTime")] System.Nullable<System.DateTime> date, [Parameter(Name = "WorkDays", DbType = "Int")] System.Nullable<int> workDays, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), date, workDays, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_GetNonWorkingDays", IsComposable = true)]
        public System.Nullable<int> fn_GetNonWorkingDays([Parameter(Name = "Date1", DbType = "DateTime")] System.Nullable<System.DateTime> date1, [Parameter(Name = "Date2", DbType = "DateTime")] System.Nullable<System.DateTime> date2, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), date1, date2, factory).ReturnValue));
        }

        [Function(Name = "dbo.Sp_SizeSpec")]
        public int Sp_SizeSpec([Parameter(DbType = "VarChar(50)")] string CustCode, [Parameter(Name = "Brand", DbType = "VarChar(50)")] string brand, [Parameter(Name = "Category", DbType = "VarChar(50)")] string category)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), CustCode, brand, category);
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.GetAS400AmendDate")]
        public int GetAS400AmendDate([Parameter(Name = "Style", DbType = "VarChar(50)")] string style, [Parameter(Name = "AmendTime", DbType = "VarChar(50)")] ref string amendTime)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), style, amendTime);
            amendTime = ((string)(result.GetParameterValue(1)));
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.GetAS400SAHRT")]
        public int GetAS400SAHRT([Parameter(Name = "Style", DbType = "VarChar(50)")] string style, [Parameter(Name = "RT", DbType = "VarChar(50)")] ref string rT)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), style, rT);
            rT = ((string)(result.GetParameterValue(1)));
            return ((int)(result.ReturnValue));
        }

        [Function(Name = "dbo.sp_ExportRFIDByRange")]
        public ISingleResult<sp_ExportRFIDByRangeResult> sp_ExportRFIDByRange([Parameter(Name = "BeginDate", DbType = "DateTime")] System.Nullable<System.DateTime> beginDate, [Parameter(Name = "EndDate", DbType = "DateTime")] System.Nullable<System.DateTime> endDate)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), beginDate, endDate);
            return ((ISingleResult<sp_ExportRFIDByRangeResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.sp_IEBystyle")]
        public ISingleResult<sp_IEBystyleResult> sp_IEBystyle([Parameter(Name = "CustStyle", DbType = "VarChar(30)")] string custStyle, [Parameter(Name = "Facoty", DbType = "VarChar(10)")] string facoty)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), custStyle, facoty);
            return ((ISingleResult<sp_IEBystyleResult>)(result.ReturnValue));
        }

        [Function(Name = "dbo.fn_FirstStationByFW", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_FirstStationByFW([Parameter(Name = "FWDate", DbType = "DateTime")] System.Nullable<System.DateTime> fWDate, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), fWDate, customer, factory, dseq).ReturnValue));
        }

        [Function(Name = "dbo.fn_LWDateByFW", IsComposable = true)]
        public System.Nullable<System.DateTime> fn_LWDateByFW([Parameter(Name = "FWDate", DbType = "DateTime")] System.Nullable<System.DateTime> fWDate, [Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        {
            return ((System.Nullable<System.DateTime>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), fWDate, customer, factory, dseq).ReturnValue));
        }

        [Function(Name = "dbo.fn_GetWorkingDays", IsComposable = true)]
        public System.Nullable<int> fn_GetWorkingDays([Parameter(Name = "Date1", DbType = "DateTime")] System.Nullable<System.DateTime> date1, [Parameter(Name = "Date2", DbType = "DateTime")] System.Nullable<System.DateTime> date2, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), date1, date2, factory).ReturnValue));
        }

        [Function(Name = "dbo.fn_LWvsFW", IsComposable = true)]
        public System.Nullable<int> fn_LWvsFW([Parameter(Name = "Customer", DbType = "VarChar(50)")] string customer, [Parameter(Name = "Factory", DbType = "VarChar(10)")] string factory, [Parameter(Name = "Dseq", DbType = "NVarChar(10)")] string dseq)
        {
            return ((System.Nullable<int>)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), customer, factory, dseq).ReturnValue));
        }

        //[Function(Name = "dbo.sp_IEBystyle_Def")]
        //public ISingleResult<sp_IEBystyle_DefResult> sp_IEBystyle_Def([Parameter(Name = "Category", DbType = "VarChar(10)")] string category, [Parameter(Name = "Facoty", DbType = "VarChar(10)")] string facoty)
        //{
        //    IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), category, facoty);
        //    return ((ISingleResult<sp_IEBystyle_DefResult>)(result.ReturnValue));
        //}

        [Function(Name = "dbo.sp_IEBystyle_Def")]
        public ISingleResult<sp_IEBystyle_DefResult> sp_IEBystyle_Def([Parameter(Name = "Category", DbType = "VarChar(10)")] string category, [Parameter(Name = "Facoty", DbType = "VarChar(10)")] string facoty, [Parameter(Name = "CustStyle", DbType = "VarChar(35)")] string custStyle)
        {
            IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), category, facoty, custStyle);
            return ((ISingleResult<sp_IEBystyle_DefResult>)(result.ReturnValue));
        }

        public static DataTable GetShipmentSchedule(string ProjectNo, string StartTime, string EndTime)
        {
            RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            string Sqlstr = "exec Sp_ShipmentSchedule  '{0}', '{1}','{2}'";
            Sqlstr = string.Format(Sqlstr, ProjectNo, StartTime, EndTime);
            DataSet ds = context.ExecuteDataSet(Sqlstr, new DataSet(), "dtOpsSpecSheet");
            return ds.Tables[0];
        }

        public static List<ShipmentSchedule> GetShipmentScheduleList(DataTable dt)
        {
            List<ShipmentSchedule> lst = new List<ShipmentSchedule>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                ShipmentSchedule item = new ShipmentSchedule();

                item.ItemNo = int.Parse(dr["ItemNo"].ToString());
                item.Item = int.Parse(dr["Quantity"].ToString());

                item.Style = dr["Style"].ToString();
                item.Curr = dr["Curr"].ToString();

                item.Product = dr["Product"] != DBNull.Value ? dr["Product"].ToString() : "";

                item.ProjectNo = dr["ProjectNo"] != DBNull.Value ? dr["ProjectNo"].ToString() : "";
                item.Client = dr["Client"] != DBNull.Value ? dr["Client"].ToString() : "";
                item.CustomerPO = dr["CustomerPO"] != DBNull.Value ? dr["CustomerPO"].ToString() : "";
                if (dr["ETD"] != DBNull.Value)
                {
                    item.ETD = Convert.ToDateTime(dr["ETD"].ToString());
                }

                if (dr["Quantity"] != DBNull.Value)
                {
                    item.Quantity = dr["Quantity"] != DBNull.Value ? int.Parse(dr["Quantity"].ToString()) : 0;
                }
                else { item.Quantity = 0; }

                if (dr["ClientPrice"] != DBNull.Value)
                {
                    item.ClientPrice = dr["ClientPrice"] != DBNull.Value ? decimal.Parse(dr["ClientPrice"].ToString()) : 0;
                }
                else { item.ClientPrice = 0; }



                item.Status = dr["Status"] != DBNull.Value ? dr["Status"].ToString() : "";

                if (dr["CMTPrice"] != DBNull.Value)
                {
                    item.CMTPrice = dr["CMTPrice"] != DBNull.Value ? decimal.Parse(dr["CMTPrice"].ToString()) : 0;
                }
                else { item.CMTPrice = 0; }

                if (dr["MaterialPrice"] != DBNull.Value)
                {
                    item.MaterialPrice = dr["MaterialPrice"] != DBNull.Value ? decimal.Parse(dr["MaterialPrice"].ToString()) : 0;
                }
                else { item.MaterialPrice = 0; }


                //   item.HDONO = dr["hdono"] != DBNull.Value ? dr["hdono"].ToString() : "";
                lst.Add(item);
            }
            return lst;



        }



    }

    #region WO/RWO


    #region function entity
    public partial class GetCustomerSampleOrderSortResult
    {

        private string _SampleOrderType;

        private string _Factory;

        private string _English_Name;

        private string _Chinese_Name;

        private string _WorkShop;

        public GetCustomerSampleOrderSortResult()
        {
        }

        [Column(Storage = "_SampleOrderType", DbType = "NVarChar(20)")]
        [DataMember(Order = 1)]
        public string SampleOrderType
        {
            get
            {
                return this._SampleOrderType;
            }
            set
            {
                if ((this._SampleOrderType != value))
                {
                    this._SampleOrderType = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "NVarChar(10) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 2)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_English_Name", DbType = "NVarChar(50)")]
        [DataMember(Order = 3)]
        public string English_Name
        {
            get
            {
                return this._English_Name;
            }
            set
            {
                if ((this._English_Name != value))
                {
                    this._English_Name = value;
                }
            }
        }

        [Column(Storage = "_Chinese_Name", DbType = "NVarChar(50)")]
        [DataMember(Order = 4)]
        public string Chinese_Name
        {
            get
            {
                return this._Chinese_Name;
            }
            set
            {
                if ((this._Chinese_Name != value))
                {
                    this._Chinese_Name = value;
                }
            }
        }

        [Column(Storage = "_WorkShop", DbType = "NVarChar(50)")]
        [DataMember(Order = 5)]
        public string WorkShop
        {
            get
            {
                return this._WorkShop;
            }
            set
            {
                if ((this._WorkShop != value))
                {
                    this._WorkShop = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class Sp_WORejectListResult
    {

        private string _Company;

        private string _ProjectNo;

        private string _SalesOrderNo;

        private int _SalesOrderLine;

        private string _Factory;

        private string _WorkOrderNo;

        private string _CustomerCode;

        private string _Customer;

        private string _Item;

        private string _Users;

        private System.Nullable<int> _Next;

        private System.Nullable<int> _Current;

        private string _StyleNo;

        private string _CustomerStyleNo;

        private System.Nullable<int> _Version;

        private System.Nullable<int> _AmendmentNo;

        private string _ShipMode;

        private string _PackingMethod;

        private System.Nullable<System.DateTime> _WOCreateDate;

        private System.Nullable<System.DateTime> _WOReviseDate;

        private System.Nullable<System.DateTime> _T3ShipCompleted;

        private System.Nullable<System.DateTime> _T3Adjust;

        private string _AjustT3DateConfirm;

        private System.Nullable<System.DateTime> _DeliveryShipCompleted;

        private System.Nullable<System.DateTime> _LCLExFtyShipCompleted;

        private System.Nullable<System.DateTime> _FCLExFtyShipCompleted;

        private System.Nullable<System.DateTime> _LineWorkShipCompleted;

        private System.Nullable<System.DateTime> _FactoryWorkShipCompleted;

        private string _OAConfirm;

        private System.Nullable<System.DateTime> _OAConfirmDate;

        private string _HeaderConfirm;

        private System.Nullable<System.DateTime> _HeaderConfirmDate;

        private string _TopConfirm;

        private System.Nullable<System.DateTime> _TopConfirmDate;

        private string _PPCConfirm;

        private System.Nullable<System.DateTime> _PPCConfirmDate;

        public Sp_WORejectListResult()
        {
        }

        [Column(Storage = "_Company", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 1)]
        public string Company
        {
            get
            {
                return this._Company;
            }
            set
            {
                if ((this._Company != value))
                {
                    this._Company = value;
                }
            }
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 2)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 3)]
        public string SalesOrderNo
        {
            get
            {
                return this._SalesOrderNo;
            }
            set
            {
                if ((this._SalesOrderNo != value))
                {
                    this._SalesOrderNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderLine", DbType = "Int NOT NULL")]
        [DataMember(Order = 4)]
        public int SalesOrderLine
        {
            get
            {
                return this._SalesOrderLine;
            }
            set
            {
                if ((this._SalesOrderLine != value))
                {
                    this._SalesOrderLine = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "NVarChar(50)")]
        [DataMember(Order = 5)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 6)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_CustomerCode", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 7)]
        public string CustomerCode
        {
            get
            {
                return this._CustomerCode;
            }
            set
            {
                if ((this._CustomerCode != value))
                {
                    this._CustomerCode = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 8)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_Item", DbType = "VarChar(15) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 9)]
        public string Item
        {
            get
            {
                return this._Item;
            }
            set
            {
                if ((this._Item != value))
                {
                    this._Item = value;
                }
            }
        }

        [Column(Storage = "_Users", DbType = "NVarChar(500) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 10)]
        public string Users
        {
            get
            {
                return this._Users;
            }
            set
            {
                if ((this._Users != value))
                {
                    this._Users = value;
                }
            }
        }

        [Column(Storage = "_Next", DbType = "Int")]
        [DataMember(Order = 11)]
        public System.Nullable<int> Next
        {
            get
            {
                return this._Next;
            }
            set
            {
                if ((this._Next != value))
                {
                    this._Next = value;
                }
            }
        }

        [Column(Name = "[Current]", Storage = "_Current", DbType = "Int")]
        [DataMember(Order = 12)]
        public System.Nullable<int> Current
        {
            get
            {
                return this._Current;
            }
            set
            {
                if ((this._Current != value))
                {
                    this._Current = value;
                }
            }
        }

        [Column(Storage = "_StyleNo", DbType = "VarChar(9)")]
        [DataMember(Order = 13)]
        public string StyleNo
        {
            get
            {
                return this._StyleNo;
            }
            set
            {
                if ((this._StyleNo != value))
                {
                    this._StyleNo = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyleNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 14)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }

        [Column(Storage = "_Version", DbType = "Int")]
        [DataMember(Order = 15)]
        public System.Nullable<int> Version
        {
            get
            {
                return this._Version;
            }
            set
            {
                if ((this._Version != value))
                {
                    this._Version = value;
                }
            }
        }

        [Column(Storage = "_AmendmentNo", DbType = "Int")]
        [DataMember(Order = 16)]
        public System.Nullable<int> AmendmentNo
        {
            get
            {
                return this._AmendmentNo;
            }
            set
            {
                if ((this._AmendmentNo != value))
                {
                    this._AmendmentNo = value;
                }
            }
        }

        [Column(Storage = "_ShipMode", DbType = "NVarChar(50)")]
        [DataMember(Order = 17)]
        public string ShipMode
        {
            get
            {
                return this._ShipMode;
            }
            set
            {
                if ((this._ShipMode != value))
                {
                    this._ShipMode = value;
                }
            }
        }

        [Column(Storage = "_PackingMethod", DbType = "NVarChar(72)")]
        [DataMember(Order = 18)]
        public string PackingMethod
        {
            get
            {
                return this._PackingMethod;
            }
            set
            {
                if ((this._PackingMethod != value))
                {
                    this._PackingMethod = value;
                }
            }
        }

        [Column(Storage = "_WOCreateDate", DbType = "DateTime")]
        [DataMember(Order = 19)]
        public System.Nullable<System.DateTime> WOCreateDate
        {
            get
            {
                return this._WOCreateDate;
            }
            set
            {
                if ((this._WOCreateDate != value))
                {
                    this._WOCreateDate = value;
                }
            }
        }

        [Column(Storage = "_WOReviseDate", DbType = "DateTime")]
        [DataMember(Order = 20)]
        public System.Nullable<System.DateTime> WOReviseDate
        {
            get
            {
                return this._WOReviseDate;
            }
            set
            {
                if ((this._WOReviseDate != value))
                {
                    this._WOReviseDate = value;
                }
            }
        }

        [Column(Storage = "_T3ShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 21)]
        public System.Nullable<System.DateTime> T3ShipCompleted
        {
            get
            {
                return this._T3ShipCompleted;
            }
            set
            {
                if ((this._T3ShipCompleted != value))
                {
                    this._T3ShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_T3Adjust", DbType = "DateTime")]
        [DataMember(Order = 22)]
        public System.Nullable<System.DateTime> T3Adjust
        {
            get
            {
                return this._T3Adjust;
            }
            set
            {
                if ((this._T3Adjust != value))
                {
                    this._T3Adjust = value;
                }
            }
        }

        [Column(Storage = "_AjustT3DateConfirm", DbType = "NVarChar(60)")]
        [DataMember(Order = 23)]
        public string AjustT3DateConfirm
        {
            get
            {
                return this._AjustT3DateConfirm;
            }
            set
            {
                if ((this._AjustT3DateConfirm != value))
                {
                    this._AjustT3DateConfirm = value;
                }
            }
        }

        [Column(Storage = "_DeliveryShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 24)]
        public System.Nullable<System.DateTime> DeliveryShipCompleted
        {
            get
            {
                return this._DeliveryShipCompleted;
            }
            set
            {
                if ((this._DeliveryShipCompleted != value))
                {
                    this._DeliveryShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_LCLExFtyShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 25)]
        public System.Nullable<System.DateTime> LCLExFtyShipCompleted
        {
            get
            {
                return this._LCLExFtyShipCompleted;
            }
            set
            {
                if ((this._LCLExFtyShipCompleted != value))
                {
                    this._LCLExFtyShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_FCLExFtyShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 26)]
        public System.Nullable<System.DateTime> FCLExFtyShipCompleted
        {
            get
            {
                return this._FCLExFtyShipCompleted;
            }
            set
            {
                if ((this._FCLExFtyShipCompleted != value))
                {
                    this._FCLExFtyShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_LineWorkShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 27)]
        public System.Nullable<System.DateTime> LineWorkShipCompleted
        {
            get
            {
                return this._LineWorkShipCompleted;
            }
            set
            {
                if ((this._LineWorkShipCompleted != value))
                {
                    this._LineWorkShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_FactoryWorkShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 28)]
        public System.Nullable<System.DateTime> FactoryWorkShipCompleted
        {
            get
            {
                return this._FactoryWorkShipCompleted;
            }
            set
            {
                if ((this._FactoryWorkShipCompleted != value))
                {
                    this._FactoryWorkShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_OAConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 29)]
        public string OAConfirm
        {
            get
            {
                return this._OAConfirm;
            }
            set
            {
                if ((this._OAConfirm != value))
                {
                    this._OAConfirm = value;
                }
            }
        }

        [Column(Storage = "_OAConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 30)]
        public System.Nullable<System.DateTime> OAConfirmDate
        {
            get
            {
                return this._OAConfirmDate;
            }
            set
            {
                if ((this._OAConfirmDate != value))
                {
                    this._OAConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 31)]
        public string HeaderConfirm
        {
            get
            {
                return this._HeaderConfirm;
            }
            set
            {
                if ((this._HeaderConfirm != value))
                {
                    this._HeaderConfirm = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 32)]
        public System.Nullable<System.DateTime> HeaderConfirmDate
        {
            get
            {
                return this._HeaderConfirmDate;
            }
            set
            {
                if ((this._HeaderConfirmDate != value))
                {
                    this._HeaderConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_TopConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 33)]
        public string TopConfirm
        {
            get
            {
                return this._TopConfirm;
            }
            set
            {
                if ((this._TopConfirm != value))
                {
                    this._TopConfirm = value;
                }
            }
        }

        [Column(Storage = "_TopConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 34)]
        public System.Nullable<System.DateTime> TopConfirmDate
        {
            get
            {
                return this._TopConfirmDate;
            }
            set
            {
                if ((this._TopConfirmDate != value))
                {
                    this._TopConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 35)]
        public string PPCConfirm
        {
            get
            {
                return this._PPCConfirm;
            }
            set
            {
                if ((this._PPCConfirm != value))
                {
                    this._PPCConfirm = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 36)]
        public System.Nullable<System.DateTime> PPCConfirmDate
        {
            get
            {
                return this._PPCConfirmDate;
            }
            set
            {
                if ((this._PPCConfirmDate != value))
                {
                    this._PPCConfirmDate = value;
                }
            }
        }
    }



    [DataContract()]
    public partial class sp_ExportRFIDResult
    {

        private string _ProjectNo;

        private string _WorkOrderNo;

        private string _WOStatus;

        private string _WOc;

        private System.Nullable<System.DateTime> _ExFtyDate;

        private System.Nullable<System.DateTime> _DeliveryDate;

        private string _ManufactureCode;

        private string _ColorCode;

        private string _FitCode;

        private string _Cup;

        private string _Size;

        private string _PHSize;

        private string _CustomerStyleNo;

        private string _Customer;

        private string _CustomerCode;

        private string _Unit;

        private System.Nullable<int> _BulkQty;

        public sp_ExportRFIDResult()
        {
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 1)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 2)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_WOStatus", DbType = "VarChar(2)")]
        [DataMember(Order = 3)]
        public string WOStatus
        {
            get
            {
                return this._WOStatus;
            }
            set
            {
                if ((this._WOStatus != value))
                {
                    this._WOStatus = value;
                }
            }
        }

        [Column(Storage = "_WOc", DbType = "VarChar(5)")]
        [DataMember(Order = 4)]
        public string WOc
        {
            get
            {
                return this._WOc;
            }
            set
            {
                if ((this._WOc != value))
                {
                    this._WOc = value;
                }
            }
        }

        [Column(Storage = "_ExFtyDate", DbType = "DateTime")]
        [DataMember(Order = 5)]
        public System.Nullable<System.DateTime> ExFtyDate
        {
            get
            {
                return this._ExFtyDate;
            }
            set
            {
                if ((this._ExFtyDate != value))
                {
                    this._ExFtyDate = value;
                }
            }
        }

        [Column(Storage = "_DeliveryDate", DbType = "DateTime")]
        [DataMember(Order = 6)]
        public System.Nullable<System.DateTime> DeliveryDate
        {
            get
            {
                return this._DeliveryDate;
            }
            set
            {
                if ((this._DeliveryDate != value))
                {
                    this._DeliveryDate = value;
                }
            }
        }

        [Column(Storage = "_ManufactureCode", DbType = "VarChar(4) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 7)]
        public string ManufactureCode
        {
            get
            {
                return this._ManufactureCode;
            }
            set
            {
                if ((this._ManufactureCode != value))
                {
                    this._ManufactureCode = value;
                }
            }
        }

        [Column(Storage = "_ColorCode", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 8)]
        public string ColorCode
        {
            get
            {
                return this._ColorCode;
            }
            set
            {
                if ((this._ColorCode != value))
                {
                    this._ColorCode = value;
                }
            }
        }

        [Column(Storage = "_FitCode", DbType = "VarChar(5) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 9)]
        public string FitCode
        {
            get
            {
                return this._FitCode;
            }
            set
            {
                if ((this._FitCode != value))
                {
                    this._FitCode = value;
                }
            }
        }

        [Column(Storage = "_Cup", DbType = "NVarChar(1000) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 10)]
        public string Cup
        {
            get
            {
                return this._Cup;
            }
            set
            {
                if ((this._Cup != value))
                {
                    this._Cup = value;
                }
            }
        }

        [Column(Storage = "_Size", DbType = "NVarChar(10)")]
        [DataMember(Order = 11)]
        public string Size
        {
            get
            {
                return this._Size;
            }
            set
            {
                if ((this._Size != value))
                {
                    this._Size = value;
                }
            }
        }

        [Column(Storage = "_PHSize", DbType = "VarChar(5) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 12)]
        public string PHSize
        {
            get
            {
                return this._PHSize;
            }
            set
            {
                if ((this._PHSize != value))
                {
                    this._PHSize = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyleNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 13)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "NVarChar(4)")]
        [DataMember(Order = 14)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_CustomerCode", DbType = "NVarChar(50)")]
        [DataMember(Order = 15)]
        public string CustomerCode
        {
            get
            {
                return this._CustomerCode;
            }
            set
            {
                if ((this._CustomerCode != value))
                {
                    this._CustomerCode = value;
                }
            }
        }

        [Column(Storage = "_Unit", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 16)]
        public string Unit
        {
            get
            {
                return this._Unit;
            }
            set
            {
                if ((this._Unit != value))
                {
                    this._Unit = value;
                }
            }
        }

        [Column(Storage = "_BulkQty", DbType = "Int")]
        [DataMember(Order = 17)]
        public System.Nullable<int> BulkQty
        {
            get
            {
                return this._BulkQty;
            }
            set
            {
                if ((this._BulkQty != value))
                {
                    this._BulkQty = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class Sp_RWOConfirmListResult
    {

        private string _Company;

        private string _ProjectNo;

        private string _SalesOrderNo;

        private string _Customer;

        private string _Factory;

        private string _WorkOrderNo;

        private string _StyleNo;

        private string _CustomerStyleNo;

        private int _SalesOrderLine;

        private System.Nullable<System.DateTime> _RWOCreateDate;

        private System.Nullable<System.DateTime> _AmendDate;

        private System.Nullable<System.DateTime> _WOReviseDate;

        private System.Nullable<int> _Version;

        private System.Nullable<System.DateTime> _FactoryWorkStartDate;

        private System.Nullable<System.DateTime> _LineWorkStartDate;

        private System.Nullable<System.DateTime> _T3Date;

        private System.Nullable<System.DateTime> _AjustT3Date;

        private string _AjustT3DateConfirm;

        private System.Nullable<System.DateTime> _FCLExFtyDate;

        private System.Nullable<System.DateTime> _LCLExFtyDate;

        private string _OAConfirm;

        private System.Nullable<System.DateTime> _OAConfirmDate;

        private string _HeaderConfirm;

        private System.Nullable<System.DateTime> _HeaderConfirmDate;

        private string _TopConfirm;

        private System.Nullable<System.DateTime> _TopConfirmDate;

        private string _PPCConfirm;

        private System.Nullable<System.DateTime> _PPCConfirmDate;

        private string _Users;

        private System.Nullable<int> _Next;

        private System.Nullable<int> _Current;

        private string _ColorCode;

        private int _RoundNo;

        private System.Nullable<int> _RoundTotal;

        public Sp_RWOConfirmListResult()
        {
        }

        [Column(Storage = "_Company", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 1)]
        public string Company
        {
            get
            {
                return this._Company;
            }
            set
            {
                if ((this._Company != value))
                {
                    this._Company = value;
                }
            }
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 2)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 3)]
        public string SalesOrderNo
        {
            get
            {
                return this._SalesOrderNo;
            }
            set
            {
                if ((this._SalesOrderNo != value))
                {
                    this._SalesOrderNo = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "NVarChar(50)")]
        [DataMember(Order = 4)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "NVarChar(50)")]
        [DataMember(Order = 5)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 6)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_StyleNo", DbType = "VarChar(9)")]
        [DataMember(Order = 7)]
        public string StyleNo
        {
            get
            {
                return this._StyleNo;
            }
            set
            {
                if ((this._StyleNo != value))
                {
                    this._StyleNo = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyleNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 8)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderLine", DbType = "Int NOT NULL")]
        [DataMember(Order = 9)]
        public int SalesOrderLine
        {
            get
            {
                return this._SalesOrderLine;
            }
            set
            {
                if ((this._SalesOrderLine != value))
                {
                    this._SalesOrderLine = value;
                }
            }
        }

        [Column(Storage = "_RWOCreateDate", DbType = "DateTime")]
        [DataMember(Order = 10)]
        public System.Nullable<System.DateTime> RWOCreateDate
        {
            get
            {
                return this._RWOCreateDate;
            }
            set
            {
                if ((this._RWOCreateDate != value))
                {
                    this._RWOCreateDate = value;
                }
            }
        }

        [Column(Storage = "_AmendDate", DbType = "DateTime")]
        [DataMember(Order = 11)]
        public System.Nullable<System.DateTime> AmendDate
        {
            get
            {
                return this._AmendDate;
            }
            set
            {
                if ((this._AmendDate != value))
                {
                    this._AmendDate = value;
                }
            }
        }

        [Column(Storage = "_WOReviseDate", DbType = "DateTime")]
        [DataMember(Order = 12)]
        public System.Nullable<System.DateTime> WOReviseDate
        {
            get
            {
                return this._WOReviseDate;
            }
            set
            {
                if ((this._WOReviseDate != value))
                {
                    this._WOReviseDate = value;
                }
            }
        }

        [Column(Storage = "_Version", DbType = "Int")]
        [DataMember(Order = 13)]
        public System.Nullable<int> Version
        {
            get
            {
                return this._Version;
            }
            set
            {
                if ((this._Version != value))
                {
                    this._Version = value;
                }
            }
        }

        [Column(Storage = "_FactoryWorkStartDate", DbType = "DateTime")]
        [DataMember(Order = 14)]
        public System.Nullable<System.DateTime> FactoryWorkStartDate
        {
            get
            {
                return this._FactoryWorkStartDate;
            }
            set
            {
                if ((this._FactoryWorkStartDate != value))
                {
                    this._FactoryWorkStartDate = value;
                }
            }
        }

        [Column(Storage = "_LineWorkStartDate", DbType = "DateTime")]
        [DataMember(Order = 15)]
        public System.Nullable<System.DateTime> LineWorkStartDate
        {
            get
            {
                return this._LineWorkStartDate;
            }
            set
            {
                if ((this._LineWorkStartDate != value))
                {
                    this._LineWorkStartDate = value;
                }
            }
        }

        [Column(Storage = "_T3Date", DbType = "DateTime")]
        [DataMember(Order = 16)]
        public System.Nullable<System.DateTime> T3Date
        {
            get
            {
                return this._T3Date;
            }
            set
            {
                if ((this._T3Date != value))
                {
                    this._T3Date = value;
                }
            }
        }

        [Column(Storage = "_AjustT3Date", DbType = "DateTime")]
        [DataMember(Order = 17)]
        public System.Nullable<System.DateTime> AjustT3Date
        {
            get
            {
                return this._AjustT3Date;
            }
            set
            {
                if ((this._AjustT3Date != value))
                {
                    this._AjustT3Date = value;
                }
            }
        }

        [Column(Storage = "_AjustT3DateConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 18)]
        public string AjustT3DateConfirm
        {
            get
            {
                return this._AjustT3DateConfirm;
            }
            set
            {
                if ((this._AjustT3DateConfirm != value))
                {
                    this._AjustT3DateConfirm = value;
                }
            }
        }

        [Column(Storage = "_FCLExFtyDate", DbType = "DateTime")]
        [DataMember(Order = 19)]
        public System.Nullable<System.DateTime> FCLExFtyDate
        {
            get
            {
                return this._FCLExFtyDate;
            }
            set
            {
                if ((this._FCLExFtyDate != value))
                {
                    this._FCLExFtyDate = value;
                }
            }
        }

        [Column(Storage = "_LCLExFtyDate", DbType = "DateTime")]
        [DataMember(Order = 20)]
        public System.Nullable<System.DateTime> LCLExFtyDate
        {
            get
            {
                return this._LCLExFtyDate;
            }
            set
            {
                if ((this._LCLExFtyDate != value))
                {
                    this._LCLExFtyDate = value;
                }
            }
        }

        [Column(Storage = "_OAConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 21)]
        public string OAConfirm
        {
            get
            {
                return this._OAConfirm;
            }
            set
            {
                if ((this._OAConfirm != value))
                {
                    this._OAConfirm = value;
                }
            }
        }

        [Column(Storage = "_OAConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 22)]
        public System.Nullable<System.DateTime> OAConfirmDate
        {
            get
            {
                return this._OAConfirmDate;
            }
            set
            {
                if ((this._OAConfirmDate != value))
                {
                    this._OAConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 23)]
        public string HeaderConfirm
        {
            get
            {
                return this._HeaderConfirm;
            }
            set
            {
                if ((this._HeaderConfirm != value))
                {
                    this._HeaderConfirm = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 24)]
        public System.Nullable<System.DateTime> HeaderConfirmDate
        {
            get
            {
                return this._HeaderConfirmDate;
            }
            set
            {
                if ((this._HeaderConfirmDate != value))
                {
                    this._HeaderConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_TopConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 25)]
        public string TopConfirm
        {
            get
            {
                return this._TopConfirm;
            }
            set
            {
                if ((this._TopConfirm != value))
                {
                    this._TopConfirm = value;
                }
            }
        }

        [Column(Storage = "_TopConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 26)]
        public System.Nullable<System.DateTime> TopConfirmDate
        {
            get
            {
                return this._TopConfirmDate;
            }
            set
            {
                if ((this._TopConfirmDate != value))
                {
                    this._TopConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 27)]
        public string PPCConfirm
        {
            get
            {
                return this._PPCConfirm;
            }
            set
            {
                if ((this._PPCConfirm != value))
                {
                    this._PPCConfirm = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 28)]
        public System.Nullable<System.DateTime> PPCConfirmDate
        {
            get
            {
                return this._PPCConfirmDate;
            }
            set
            {
                if ((this._PPCConfirmDate != value))
                {
                    this._PPCConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_Users", DbType = "NVarChar(500) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 29)]
        public string Users
        {
            get
            {
                return this._Users;
            }
            set
            {
                if ((this._Users != value))
                {
                    this._Users = value;
                }
            }
        }

        [Column(Storage = "_Next", DbType = "Int")]
        [DataMember(Order = 30)]
        public System.Nullable<int> Next
        {
            get
            {
                return this._Next;
            }
            set
            {
                if ((this._Next != value))
                {
                    this._Next = value;
                }
            }
        }

        [Column(Name = "[Current]", Storage = "_Current", DbType = "Int")]
        [DataMember(Order = 31)]
        public System.Nullable<int> Current
        {
            get
            {
                return this._Current;
            }
            set
            {
                if ((this._Current != value))
                {
                    this._Current = value;
                }
            }
        }

        [Column(Storage = "_ColorCode", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 32)]
        public string ColorCode
        {
            get
            {
                return this._ColorCode;
            }
            set
            {
                if ((this._ColorCode != value))
                {
                    this._ColorCode = value;
                }
            }
        }

        [Column(Storage = "_RoundNo", DbType = "Int NOT NULL")]
        [DataMember(Order = 33)]
        public int RoundNo
        {
            get
            {
                return this._RoundNo;
            }
            set
            {
                if ((this._RoundNo != value))
                {
                    this._RoundNo = value;
                }
            }
        }

        [Column(Storage = "_RoundTotal", DbType = "Int")]
        [DataMember(Order = 34)]
        public System.Nullable<int> RoundTotal
        {
            get
            {
                return this._RoundTotal;
            }
            set
            {
                if ((this._RoundTotal != value))
                {
                    this._RoundTotal = value;
                }
            }
        }
    }


    /// <summary>
    /// ChandlerXiao:Add 20170213
    /// </summary>
    public partial class Sp_RWOConfirmListResult
    {
        private System.Nullable<System.DateTime> _LineWorkStartDate_SpecialFactory;

        [Column(Storage = "_LineWorkStartDate", DbType = "DateTime")]
        [DataMember(Order = 15)]
        public System.Nullable<System.DateTime> LineWorkStartDate_SpecialFactory
        {
            get
            {
                return this._LineWorkStartDate_SpecialFactory;
            }
            set
            {
                if ((this._LineWorkStartDate_SpecialFactory != value))
                {
                    this._LineWorkStartDate_SpecialFactory = value;
                }
            }
        }
    }


    [DataContract()]
    public partial class Sp_RWORejectListResult
    {

        private string _Company;

        private string _ProjectNo;

        private string _SalesOrderNo;

        private string _Customer;

        private string _Factory;

        private string _WorkOrderNo;

        private string _StyleNo;

        private string _CustomerStyleNo;

        private int _SalesOrderLine;

        private System.Nullable<System.DateTime> _RWOCreateDate;

        private System.Nullable<System.DateTime> _AmendDate;

        private System.Nullable<System.DateTime> _WOReviseDate;

        private System.Nullable<int> _Version;

        private System.Nullable<System.DateTime> _FactoryWorkStartDate;

        private System.Nullable<System.DateTime> _LineWorkStartDate;

        private System.Nullable<System.DateTime> _T3Date;

        private System.Nullable<System.DateTime> _AjustT3Date;

        private string _AjustT3DateConfirm;

        private System.Nullable<System.DateTime> _FCLExFtyDate;

        private System.Nullable<System.DateTime> _LCLExFtyDate;

        private string _OAConfirm;

        private System.Nullable<System.DateTime> _OAConfirmDate;

        private string _HeaderConfirm;

        private System.Nullable<System.DateTime> _HeaderConfirmDate;

        private string _TopConfirm;

        private System.Nullable<System.DateTime> _TopConfirmDate;

        private string _PPCConfirm;

        private System.Nullable<System.DateTime> _PPCConfirmDate;

        private string _Users;

        private System.Nullable<int> _Next;

        private System.Nullable<int> _Current;

        private string _ColorCode;

        private int _RoundNo;

        private System.Nullable<int> _RoundTotal;

        public Sp_RWORejectListResult()
        {
        }

        [Column(Storage = "_Company", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 1)]
        public string Company
        {
            get
            {
                return this._Company;
            }
            set
            {
                if ((this._Company != value))
                {
                    this._Company = value;
                }
            }
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 2)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 3)]
        public string SalesOrderNo
        {
            get
            {
                return this._SalesOrderNo;
            }
            set
            {
                if ((this._SalesOrderNo != value))
                {
                    this._SalesOrderNo = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "NVarChar(50)")]
        [DataMember(Order = 4)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "NVarChar(50)")]
        [DataMember(Order = 5)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 6)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_StyleNo", DbType = "VarChar(9)")]
        [DataMember(Order = 7)]
        public string StyleNo
        {
            get
            {
                return this._StyleNo;
            }
            set
            {
                if ((this._StyleNo != value))
                {
                    this._StyleNo = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyleNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 8)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderLine", DbType = "Int NOT NULL")]
        [DataMember(Order = 9)]
        public int SalesOrderLine
        {
            get
            {
                return this._SalesOrderLine;
            }
            set
            {
                if ((this._SalesOrderLine != value))
                {
                    this._SalesOrderLine = value;
                }
            }
        }

        [Column(Storage = "_RWOCreateDate", DbType = "DateTime")]
        [DataMember(Order = 10)]
        public System.Nullable<System.DateTime> RWOCreateDate
        {
            get
            {
                return this._RWOCreateDate;
            }
            set
            {
                if ((this._RWOCreateDate != value))
                {
                    this._RWOCreateDate = value;
                }
            }
        }

        [Column(Storage = "_AmendDate", DbType = "DateTime")]
        [DataMember(Order = 11)]
        public System.Nullable<System.DateTime> AmendDate
        {
            get
            {
                return this._AmendDate;
            }
            set
            {
                if ((this._AmendDate != value))
                {
                    this._AmendDate = value;
                }
            }
        }

        [Column(Storage = "_WOReviseDate", DbType = "DateTime")]
        [DataMember(Order = 12)]
        public System.Nullable<System.DateTime> WOReviseDate
        {
            get
            {
                return this._WOReviseDate;
            }
            set
            {
                if ((this._WOReviseDate != value))
                {
                    this._WOReviseDate = value;
                }
            }
        }

        [Column(Storage = "_Version", DbType = "Int")]
        [DataMember(Order = 13)]
        public System.Nullable<int> Version
        {
            get
            {
                return this._Version;
            }
            set
            {
                if ((this._Version != value))
                {
                    this._Version = value;
                }
            }
        }

        [Column(Storage = "_FactoryWorkStartDate", DbType = "DateTime")]
        [DataMember(Order = 14)]
        public System.Nullable<System.DateTime> FactoryWorkStartDate
        {
            get
            {
                return this._FactoryWorkStartDate;
            }
            set
            {
                if ((this._FactoryWorkStartDate != value))
                {
                    this._FactoryWorkStartDate = value;
                }
            }
        }

        [Column(Storage = "_LineWorkStartDate", DbType = "DateTime")]
        [DataMember(Order = 15)]
        public System.Nullable<System.DateTime> LineWorkStartDate
        {
            get
            {
                return this._LineWorkStartDate;
            }
            set
            {
                if ((this._LineWorkStartDate != value))
                {
                    this._LineWorkStartDate = value;
                }
            }
        }

        [Column(Storage = "_T3Date", DbType = "DateTime")]
        [DataMember(Order = 16)]
        public System.Nullable<System.DateTime> T3Date
        {
            get
            {
                return this._T3Date;
            }
            set
            {
                if ((this._T3Date != value))
                {
                    this._T3Date = value;
                }
            }
        }

        [Column(Storage = "_AjustT3Date", DbType = "DateTime")]
        [DataMember(Order = 17)]
        public System.Nullable<System.DateTime> AjustT3Date
        {
            get
            {
                return this._AjustT3Date;
            }
            set
            {
                if ((this._AjustT3Date != value))
                {
                    this._AjustT3Date = value;
                }
            }
        }

        [Column(Storage = "_AjustT3DateConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 18)]
        public string AjustT3DateConfirm
        {
            get
            {
                return this._AjustT3DateConfirm;
            }
            set
            {
                if ((this._AjustT3DateConfirm != value))
                {
                    this._AjustT3DateConfirm = value;
                }
            }
        }

        [Column(Storage = "_FCLExFtyDate", DbType = "DateTime")]
        [DataMember(Order = 19)]
        public System.Nullable<System.DateTime> FCLExFtyDate
        {
            get
            {
                return this._FCLExFtyDate;
            }
            set
            {
                if ((this._FCLExFtyDate != value))
                {
                    this._FCLExFtyDate = value;
                }
            }
        }

        [Column(Storage = "_LCLExFtyDate", DbType = "DateTime")]
        [DataMember(Order = 20)]
        public System.Nullable<System.DateTime> LCLExFtyDate
        {
            get
            {
                return this._LCLExFtyDate;
            }
            set
            {
                if ((this._LCLExFtyDate != value))
                {
                    this._LCLExFtyDate = value;
                }
            }
        }

        [Column(Storage = "_OAConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 21)]
        public string OAConfirm
        {
            get
            {
                return this._OAConfirm;
            }
            set
            {
                if ((this._OAConfirm != value))
                {
                    this._OAConfirm = value;
                }
            }
        }

        [Column(Storage = "_OAConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 22)]
        public System.Nullable<System.DateTime> OAConfirmDate
        {
            get
            {
                return this._OAConfirmDate;
            }
            set
            {
                if ((this._OAConfirmDate != value))
                {
                    this._OAConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 23)]
        public string HeaderConfirm
        {
            get
            {
                return this._HeaderConfirm;
            }
            set
            {
                if ((this._HeaderConfirm != value))
                {
                    this._HeaderConfirm = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 24)]
        public System.Nullable<System.DateTime> HeaderConfirmDate
        {
            get
            {
                return this._HeaderConfirmDate;
            }
            set
            {
                if ((this._HeaderConfirmDate != value))
                {
                    this._HeaderConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_TopConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 25)]
        public string TopConfirm
        {
            get
            {
                return this._TopConfirm;
            }
            set
            {
                if ((this._TopConfirm != value))
                {
                    this._TopConfirm = value;
                }
            }
        }

        [Column(Storage = "_TopConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 26)]
        public System.Nullable<System.DateTime> TopConfirmDate
        {
            get
            {
                return this._TopConfirmDate;
            }
            set
            {
                if ((this._TopConfirmDate != value))
                {
                    this._TopConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 27)]
        public string PPCConfirm
        {
            get
            {
                return this._PPCConfirm;
            }
            set
            {
                if ((this._PPCConfirm != value))
                {
                    this._PPCConfirm = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 28)]
        public System.Nullable<System.DateTime> PPCConfirmDate
        {
            get
            {
                return this._PPCConfirmDate;
            }
            set
            {
                if ((this._PPCConfirmDate != value))
                {
                    this._PPCConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_Users", DbType = "NVarChar(500) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 29)]
        public string Users
        {
            get
            {
                return this._Users;
            }
            set
            {
                if ((this._Users != value))
                {
                    this._Users = value;
                }
            }
        }

        [Column(Storage = "_Next", DbType = "Int")]
        [DataMember(Order = 30)]
        public System.Nullable<int> Next
        {
            get
            {
                return this._Next;
            }
            set
            {
                if ((this._Next != value))
                {
                    this._Next = value;
                }
            }
        }

        [Column(Name = "[Current]", Storage = "_Current", DbType = "Int")]
        [DataMember(Order = 31)]
        public System.Nullable<int> Current
        {
            get
            {
                return this._Current;
            }
            set
            {
                if ((this._Current != value))
                {
                    this._Current = value;
                }
            }
        }

        [Column(Storage = "_ColorCode", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 32)]
        public string ColorCode
        {
            get
            {
                return this._ColorCode;
            }
            set
            {
                if ((this._ColorCode != value))
                {
                    this._ColorCode = value;
                }
            }
        }

        [Column(Storage = "_RoundNo", DbType = "Int NOT NULL")]
        [DataMember(Order = 33)]
        public int RoundNo
        {
            get
            {
                return this._RoundNo;
            }
            set
            {
                if ((this._RoundNo != value))
                {
                    this._RoundNo = value;
                }
            }
        }

        [Column(Storage = "_RoundTotal", DbType = "Int")]
        [DataMember(Order = 34)]
        public System.Nullable<int> RoundTotal
        {
            get
            {
                return this._RoundTotal;
            }
            set
            {
                if ((this._RoundTotal != value))
                {
                    this._RoundTotal = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class Sp_UpdateWorkOrderTimeElementsResult
    {

        private string _CUST;

        private string _LST2;

        private string _LST2D;

        private int _SEQ;

        private string _TPLANT;

        private System.Nullable<float> _FRST;

        private string _EXFWK;

        private string _EXFTM;

        private System.Nullable<float> _EXFDAY;

        private System.Nullable<float> _LSTR;

        private System.Nullable<float> _BZJS;

        private string _PMTH;

        private string _CJSWK;

        private string _CJSSJ;

        private string _REMK;

        private string _AEXFWK;

        private string _AEXFTM;

        private string _ACJSWK;

        private string _ACJSSJ;

        private string _LPORT;

        private string _ALPORT;

        private string _FCUST;

        private string _PGRP;

        private string _AGT;

        private string _ADDR;

        private string _PORTL;

        private string _LMTH;

        private string _SDUE;

        private string _IRATIO;

        private System.Nullable<float> _TTIME;

        private System.Nullable<float> _ITIME;

        private System.Nullable<float> _ATTIME;

        private string _ETD;

        private string _AETD;

        private string _GRP;

        private System.Nullable<float> _YSZQ;

        private System.Nullable<int> _RQTY;

        private System.Nullable<float> _BZNY;

        private bool _ACT;

        private int _RLINE;

        private System.Nullable<int> _RQTY1;

        private string _CGRP;

        private System.Nullable<float> _YSZQ1;

        private System.Nullable<float> _ORDDAY;

        private System.Nullable<float> _PSP1;

        private System.Nullable<float> _PSP2;

        private System.Nullable<float> _MPUR1;

        private System.Nullable<float> _MPUR2;

        private System.Nullable<float> _YSZQ01;

        private System.Nullable<float> _YSZQ0;

        private System.Nullable<float> _SP1;

        private System.Nullable<float> _TCT1;

        private System.Nullable<float> _TCT2;

        private System.Nullable<bool> _AB2;

        private System.Nullable<bool> _AB3;

        private System.Nullable<float> _ORDDAY_R;

        private System.Nullable<float> _PSP1_R;

        private System.Nullable<float> _PSP2_R;

        private System.Nullable<float> _MPUR1_R;

        private System.Nullable<float> _MPUR2_R;

        private System.Nullable<float> _FRST_R;

        private System.Nullable<float> _LSTR_R;

        private System.Nullable<float> _YSZQ_R;

        private System.Nullable<float> _YSZQ1_R;

        private System.Nullable<float> _YSZQ0_R;

        private System.Nullable<float> _YSZQ01_R;

        private System.Nullable<float> _SP1_R;

        private System.Nullable<float> _TCT1_R;

        private System.Nullable<float> _TCT2_R;

        private string _LPORT1;

        private string _EXFWK1;

        private string _EXFTM1;

        private string _CJSWK1;

        private string _CJSSJ1;

        private string _ETD1;

        private System.Nullable<float> _TTIME1;

        private string _ALPORT1;

        private string _AEXFWK1;

        private string _AEXFTM1;

        private string _ACJSWK1;

        private string _ACJSSJ1;

        private string _AETD1;

        private System.Nullable<float> _ATTIME1;

        public Sp_UpdateWorkOrderTimeElementsResult()
        {
        }

        [Column(Storage = "_CUST", DbType = "VarChar(10) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 1)]
        public string CUST
        {
            get
            {
                return this._CUST;
            }
            set
            {
                if ((this._CUST != value))
                {
                    this._CUST = value;
                }
            }
        }

        [Column(Storage = "_LST2", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 2)]
        public string LST2
        {
            get
            {
                return this._LST2;
            }
            set
            {
                if ((this._LST2 != value))
                {
                    this._LST2 = value;
                }
            }
        }

        [Column(Storage = "_LST2D", DbType = "VarChar(30)")]
        [DataMember(Order = 3)]
        public string LST2D
        {
            get
            {
                return this._LST2D;
            }
            set
            {
                if ((this._LST2D != value))
                {
                    this._LST2D = value;
                }
            }
        }

        [Column(Storage = "_SEQ", DbType = "Int NOT NULL")]
        [DataMember(Order = 4)]
        public int SEQ
        {
            get
            {
                return this._SEQ;
            }
            set
            {
                if ((this._SEQ != value))
                {
                    this._SEQ = value;
                }
            }
        }

        [Column(Storage = "_TPLANT", DbType = "VarChar(10) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 5)]
        public string TPLANT
        {
            get
            {
                return this._TPLANT;
            }
            set
            {
                if ((this._TPLANT != value))
                {
                    this._TPLANT = value;
                }
            }
        }

        [Column(Storage = "_FRST", DbType = "Real")]
        [DataMember(Order = 6)]
        public System.Nullable<float> FRST
        {
            get
            {
                return this._FRST;
            }
            set
            {
                if ((this._FRST != value))
                {
                    this._FRST = value;
                }
            }
        }

        [Column(Storage = "_EXFWK", DbType = "VarChar(10)")]
        [DataMember(Order = 7)]
        public string EXFWK
        {
            get
            {
                return this._EXFWK;
            }
            set
            {
                if ((this._EXFWK != value))
                {
                    this._EXFWK = value;
                }
            }
        }

        [Column(Storage = "_EXFTM", DbType = "VarChar(20)")]
        [DataMember(Order = 8)]
        public string EXFTM
        {
            get
            {
                return this._EXFTM;
            }
            set
            {
                if ((this._EXFTM != value))
                {
                    this._EXFTM = value;
                }
            }
        }

        [Column(Storage = "_EXFDAY", DbType = "Real")]
        [DataMember(Order = 9)]
        public System.Nullable<float> EXFDAY
        {
            get
            {
                return this._EXFDAY;
            }
            set
            {
                if ((this._EXFDAY != value))
                {
                    this._EXFDAY = value;
                }
            }
        }

        [Column(Storage = "_LSTR", DbType = "Real")]
        [DataMember(Order = 10)]
        public System.Nullable<float> LSTR
        {
            get
            {
                return this._LSTR;
            }
            set
            {
                if ((this._LSTR != value))
                {
                    this._LSTR = value;
                }
            }
        }

        [Column(Storage = "_BZJS", DbType = "Real")]
        [DataMember(Order = 11)]
        public System.Nullable<float> BZJS
        {
            get
            {
                return this._BZJS;
            }
            set
            {
                if ((this._BZJS != value))
                {
                    this._BZJS = value;
                }
            }
        }

        [Column(Storage = "_PMTH", DbType = "VarChar(10) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 12)]
        public string PMTH
        {
            get
            {
                return this._PMTH;
            }
            set
            {
                if ((this._PMTH != value))
                {
                    this._PMTH = value;
                }
            }
        }

        [Column(Storage = "_CJSWK", DbType = "VarChar(10)")]
        [DataMember(Order = 13)]
        public string CJSWK
        {
            get
            {
                return this._CJSWK;
            }
            set
            {
                if ((this._CJSWK != value))
                {
                    this._CJSWK = value;
                }
            }
        }

        [Column(Storage = "_CJSSJ", DbType = "VarChar(20)")]
        [DataMember(Order = 14)]
        public string CJSSJ
        {
            get
            {
                return this._CJSSJ;
            }
            set
            {
                if ((this._CJSSJ != value))
                {
                    this._CJSSJ = value;
                }
            }
        }

        [Column(Storage = "_REMK", DbType = "VarChar(10)")]
        [DataMember(Order = 15)]
        public string REMK
        {
            get
            {
                return this._REMK;
            }
            set
            {
                if ((this._REMK != value))
                {
                    this._REMK = value;
                }
            }
        }

        [Column(Storage = "_AEXFWK", DbType = "VarChar(10)")]
        [DataMember(Order = 16)]
        public string AEXFWK
        {
            get
            {
                return this._AEXFWK;
            }
            set
            {
                if ((this._AEXFWK != value))
                {
                    this._AEXFWK = value;
                }
            }
        }

        [Column(Storage = "_AEXFTM", DbType = "VarChar(20)")]
        [DataMember(Order = 17)]
        public string AEXFTM
        {
            get
            {
                return this._AEXFTM;
            }
            set
            {
                if ((this._AEXFTM != value))
                {
                    this._AEXFTM = value;
                }
            }
        }

        [Column(Storage = "_ACJSWK", DbType = "VarChar(10)")]
        [DataMember(Order = 18)]
        public string ACJSWK
        {
            get
            {
                return this._ACJSWK;
            }
            set
            {
                if ((this._ACJSWK != value))
                {
                    this._ACJSWK = value;
                }
            }
        }

        [Column(Storage = "_ACJSSJ", DbType = "VarChar(20)")]
        [DataMember(Order = 19)]
        public string ACJSSJ
        {
            get
            {
                return this._ACJSSJ;
            }
            set
            {
                if ((this._ACJSSJ != value))
                {
                    this._ACJSSJ = value;
                }
            }
        }

        [Column(Storage = "_LPORT", DbType = "VarChar(20)")]
        [DataMember(Order = 20)]
        public string LPORT
        {
            get
            {
                return this._LPORT;
            }
            set
            {
                if ((this._LPORT != value))
                {
                    this._LPORT = value;
                }
            }
        }

        [Column(Storage = "_ALPORT", DbType = "VarChar(20)")]
        [DataMember(Order = 21)]
        public string ALPORT
        {
            get
            {
                return this._ALPORT;
            }
            set
            {
                if ((this._ALPORT != value))
                {
                    this._ALPORT = value;
                }
            }
        }

        [Column(Storage = "_FCUST", DbType = "VarChar(20)")]
        [DataMember(Order = 22)]
        public string FCUST
        {
            get
            {
                return this._FCUST;
            }
            set
            {
                if ((this._FCUST != value))
                {
                    this._FCUST = value;
                }
            }
        }

        [Column(Storage = "_PGRP", DbType = "VarChar(10)")]
        [DataMember(Order = 23)]
        public string PGRP
        {
            get
            {
                return this._PGRP;
            }
            set
            {
                if ((this._PGRP != value))
                {
                    this._PGRP = value;
                }
            }
        }

        [Column(Storage = "_AGT", DbType = "VarChar(20)")]
        [DataMember(Order = 24)]
        public string AGT
        {
            get
            {
                return this._AGT;
            }
            set
            {
                if ((this._AGT != value))
                {
                    this._AGT = value;
                }
            }
        }

        [Column(Storage = "_ADDR", DbType = "VarChar(20)")]
        [DataMember(Order = 25)]
        public string ADDR
        {
            get
            {
                return this._ADDR;
            }
            set
            {
                if ((this._ADDR != value))
                {
                    this._ADDR = value;
                }
            }
        }

        [Column(Storage = "_PORTL", DbType = "VarChar(10)")]
        [DataMember(Order = 26)]
        public string PORTL
        {
            get
            {
                return this._PORTL;
            }
            set
            {
                if ((this._PORTL != value))
                {
                    this._PORTL = value;
                }
            }
        }

        [Column(Storage = "_LMTH", DbType = "VarChar(10)")]
        [DataMember(Order = 27)]
        public string LMTH
        {
            get
            {
                return this._LMTH;
            }
            set
            {
                if ((this._LMTH != value))
                {
                    this._LMTH = value;
                }
            }
        }

        [Column(Storage = "_SDUE", DbType = "VarChar(20)")]
        [DataMember(Order = 28)]
        public string SDUE
        {
            get
            {
                return this._SDUE;
            }
            set
            {
                if ((this._SDUE != value))
                {
                    this._SDUE = value;
                }
            }
        }

        [Column(Storage = "_IRATIO", DbType = "VarChar(10)")]
        [DataMember(Order = 29)]
        public string IRATIO
        {
            get
            {
                return this._IRATIO;
            }
            set
            {
                if ((this._IRATIO != value))
                {
                    this._IRATIO = value;
                }
            }
        }

        [Column(Storage = "_TTIME", DbType = "Real")]
        [DataMember(Order = 30)]
        public System.Nullable<float> TTIME
        {
            get
            {
                return this._TTIME;
            }
            set
            {
                if ((this._TTIME != value))
                {
                    this._TTIME = value;
                }
            }
        }

        [Column(Storage = "_ITIME", DbType = "Real")]
        [DataMember(Order = 31)]
        public System.Nullable<float> ITIME
        {
            get
            {
                return this._ITIME;
            }
            set
            {
                if ((this._ITIME != value))
                {
                    this._ITIME = value;
                }
            }
        }

        [Column(Storage = "_ATTIME", DbType = "Real")]
        [DataMember(Order = 32)]
        public System.Nullable<float> ATTIME
        {
            get
            {
                return this._ATTIME;
            }
            set
            {
                if ((this._ATTIME != value))
                {
                    this._ATTIME = value;
                }
            }
        }

        [Column(Storage = "_ETD", DbType = "VarChar(10)")]
        [DataMember(Order = 33)]
        public string ETD
        {
            get
            {
                return this._ETD;
            }
            set
            {
                if ((this._ETD != value))
                {
                    this._ETD = value;
                }
            }
        }

        [Column(Storage = "_AETD", DbType = "VarChar(10)")]
        [DataMember(Order = 34)]
        public string AETD
        {
            get
            {
                return this._AETD;
            }
            set
            {
                if ((this._AETD != value))
                {
                    this._AETD = value;
                }
            }
        }

        [Column(Storage = "_GRP", DbType = "VarChar(5)")]
        [DataMember(Order = 35)]
        public string GRP
        {
            get
            {
                return this._GRP;
            }
            set
            {
                if ((this._GRP != value))
                {
                    this._GRP = value;
                }
            }
        }

        [Column(Storage = "_YSZQ", DbType = "Real")]
        [DataMember(Order = 36)]
        public System.Nullable<float> YSZQ
        {
            get
            {
                return this._YSZQ;
            }
            set
            {
                if ((this._YSZQ != value))
                {
                    this._YSZQ = value;
                }
            }
        }

        [Column(Storage = "_RQTY", DbType = "Int")]
        [DataMember(Order = 37)]
        public System.Nullable<int> RQTY
        {
            get
            {
                return this._RQTY;
            }
            set
            {
                if ((this._RQTY != value))
                {
                    this._RQTY = value;
                }
            }
        }

        [Column(Storage = "_BZNY", DbType = "Real")]
        [DataMember(Order = 38)]
        public System.Nullable<float> BZNY
        {
            get
            {
                return this._BZNY;
            }
            set
            {
                if ((this._BZNY != value))
                {
                    this._BZNY = value;
                }
            }
        }

        [Column(Storage = "_ACT", DbType = "Bit NOT NULL")]
        [DataMember(Order = 39)]
        public bool ACT
        {
            get
            {
                return this._ACT;
            }
            set
            {
                if ((this._ACT != value))
                {
                    this._ACT = value;
                }
            }
        }

        [Column(Storage = "_RLINE", DbType = "Int NOT NULL")]
        [DataMember(Order = 40)]
        public int RLINE
        {
            get
            {
                return this._RLINE;
            }
            set
            {
                if ((this._RLINE != value))
                {
                    this._RLINE = value;
                }
            }
        }

        [Column(Storage = "_RQTY1", DbType = "Int")]
        [DataMember(Order = 41)]
        public System.Nullable<int> RQTY1
        {
            get
            {
                return this._RQTY1;
            }
            set
            {
                if ((this._RQTY1 != value))
                {
                    this._RQTY1 = value;
                }
            }
        }

        [Column(Storage = "_CGRP", DbType = "VarChar(20)")]
        [DataMember(Order = 42)]
        public string CGRP
        {
            get
            {
                return this._CGRP;
            }
            set
            {
                if ((this._CGRP != value))
                {
                    this._CGRP = value;
                }
            }
        }

        [Column(Storage = "_YSZQ1", DbType = "Real")]
        [DataMember(Order = 43)]
        public System.Nullable<float> YSZQ1
        {
            get
            {
                return this._YSZQ1;
            }
            set
            {
                if ((this._YSZQ1 != value))
                {
                    this._YSZQ1 = value;
                }
            }
        }

        [Column(Storage = "_ORDDAY", DbType = "Real")]
        [DataMember(Order = 44)]
        public System.Nullable<float> ORDDAY
        {
            get
            {
                return this._ORDDAY;
            }
            set
            {
                if ((this._ORDDAY != value))
                {
                    this._ORDDAY = value;
                }
            }
        }

        [Column(Storage = "_PSP1", DbType = "Real")]
        [DataMember(Order = 45)]
        public System.Nullable<float> PSP1
        {
            get
            {
                return this._PSP1;
            }
            set
            {
                if ((this._PSP1 != value))
                {
                    this._PSP1 = value;
                }
            }
        }

        [Column(Storage = "_PSP2", DbType = "Real")]
        [DataMember(Order = 46)]
        public System.Nullable<float> PSP2
        {
            get
            {
                return this._PSP2;
            }
            set
            {
                if ((this._PSP2 != value))
                {
                    this._PSP2 = value;
                }
            }
        }

        [Column(Storage = "_MPUR1", DbType = "Real")]
        [DataMember(Order = 47)]
        public System.Nullable<float> MPUR1
        {
            get
            {
                return this._MPUR1;
            }
            set
            {
                if ((this._MPUR1 != value))
                {
                    this._MPUR1 = value;
                }
            }
        }

        [Column(Storage = "_MPUR2", DbType = "Real")]
        [DataMember(Order = 48)]
        public System.Nullable<float> MPUR2
        {
            get
            {
                return this._MPUR2;
            }
            set
            {
                if ((this._MPUR2 != value))
                {
                    this._MPUR2 = value;
                }
            }
        }

        [Column(Storage = "_YSZQ01", DbType = "Real")]
        [DataMember(Order = 49)]
        public System.Nullable<float> YSZQ01
        {
            get
            {
                return this._YSZQ01;
            }
            set
            {
                if ((this._YSZQ01 != value))
                {
                    this._YSZQ01 = value;
                }
            }
        }

        [Column(Storage = "_YSZQ0", DbType = "Real")]
        [DataMember(Order = 50)]
        public System.Nullable<float> YSZQ0
        {
            get
            {
                return this._YSZQ0;
            }
            set
            {
                if ((this._YSZQ0 != value))
                {
                    this._YSZQ0 = value;
                }
            }
        }

        [Column(Storage = "_SP1", DbType = "Real")]
        [DataMember(Order = 51)]
        public System.Nullable<float> SP1
        {
            get
            {
                return this._SP1;
            }
            set
            {
                if ((this._SP1 != value))
                {
                    this._SP1 = value;
                }
            }
        }

        [Column(Storage = "_TCT1", DbType = "Real")]
        [DataMember(Order = 52)]
        public System.Nullable<float> TCT1
        {
            get
            {
                return this._TCT1;
            }
            set
            {
                if ((this._TCT1 != value))
                {
                    this._TCT1 = value;
                }
            }
        }

        [Column(Storage = "_TCT2", DbType = "Real")]
        [DataMember(Order = 53)]
        public System.Nullable<float> TCT2
        {
            get
            {
                return this._TCT2;
            }
            set
            {
                if ((this._TCT2 != value))
                {
                    this._TCT2 = value;
                }
            }
        }

        [Column(Storage = "_AB2", DbType = "Bit")]
        [DataMember(Order = 54)]
        public System.Nullable<bool> AB2
        {
            get
            {
                return this._AB2;
            }
            set
            {
                if ((this._AB2 != value))
                {
                    this._AB2 = value;
                }
            }
        }

        [Column(Storage = "_AB3", DbType = "Bit")]
        [DataMember(Order = 55)]
        public System.Nullable<bool> AB3
        {
            get
            {
                return this._AB3;
            }
            set
            {
                if ((this._AB3 != value))
                {
                    this._AB3 = value;
                }
            }
        }

        [Column(Storage = "_ORDDAY_R", DbType = "Real")]
        [DataMember(Order = 56)]
        public System.Nullable<float> ORDDAY_R
        {
            get
            {
                return this._ORDDAY_R;
            }
            set
            {
                if ((this._ORDDAY_R != value))
                {
                    this._ORDDAY_R = value;
                }
            }
        }

        [Column(Storage = "_PSP1_R", DbType = "Real")]
        [DataMember(Order = 57)]
        public System.Nullable<float> PSP1_R
        {
            get
            {
                return this._PSP1_R;
            }
            set
            {
                if ((this._PSP1_R != value))
                {
                    this._PSP1_R = value;
                }
            }
        }

        [Column(Storage = "_PSP2_R", DbType = "Real")]
        [DataMember(Order = 58)]
        public System.Nullable<float> PSP2_R
        {
            get
            {
                return this._PSP2_R;
            }
            set
            {
                if ((this._PSP2_R != value))
                {
                    this._PSP2_R = value;
                }
            }
        }

        [Column(Storage = "_MPUR1_R", DbType = "Real")]
        [DataMember(Order = 59)]
        public System.Nullable<float> MPUR1_R
        {
            get
            {
                return this._MPUR1_R;
            }
            set
            {
                if ((this._MPUR1_R != value))
                {
                    this._MPUR1_R = value;
                }
            }
        }

        [Column(Storage = "_MPUR2_R", DbType = "Real")]
        [DataMember(Order = 60)]
        public System.Nullable<float> MPUR2_R
        {
            get
            {
                return this._MPUR2_R;
            }
            set
            {
                if ((this._MPUR2_R != value))
                {
                    this._MPUR2_R = value;
                }
            }
        }

        [Column(Storage = "_FRST_R", DbType = "Real")]
        [DataMember(Order = 61)]
        public System.Nullable<float> FRST_R
        {
            get
            {
                return this._FRST_R;
            }
            set
            {
                if ((this._FRST_R != value))
                {
                    this._FRST_R = value;
                }
            }
        }

        [Column(Storage = "_LSTR_R", DbType = "Real")]
        [DataMember(Order = 62)]
        public System.Nullable<float> LSTR_R
        {
            get
            {
                return this._LSTR_R;
            }
            set
            {
                if ((this._LSTR_R != value))
                {
                    this._LSTR_R = value;
                }
            }
        }

        [Column(Storage = "_YSZQ_R", DbType = "Real")]
        [DataMember(Order = 63)]
        public System.Nullable<float> YSZQ_R
        {
            get
            {
                return this._YSZQ_R;
            }
            set
            {
                if ((this._YSZQ_R != value))
                {
                    this._YSZQ_R = value;
                }
            }
        }

        [Column(Storage = "_YSZQ1_R", DbType = "Real")]
        [DataMember(Order = 64)]
        public System.Nullable<float> YSZQ1_R
        {
            get
            {
                return this._YSZQ1_R;
            }
            set
            {
                if ((this._YSZQ1_R != value))
                {
                    this._YSZQ1_R = value;
                }
            }
        }

        [Column(Storage = "_YSZQ0_R", DbType = "Real")]
        [DataMember(Order = 65)]
        public System.Nullable<float> YSZQ0_R
        {
            get
            {
                return this._YSZQ0_R;
            }
            set
            {
                if ((this._YSZQ0_R != value))
                {
                    this._YSZQ0_R = value;
                }
            }
        }

        [Column(Storage = "_YSZQ01_R", DbType = "Real")]
        [DataMember(Order = 66)]
        public System.Nullable<float> YSZQ01_R
        {
            get
            {
                return this._YSZQ01_R;
            }
            set
            {
                if ((this._YSZQ01_R != value))
                {
                    this._YSZQ01_R = value;
                }
            }
        }

        [Column(Storage = "_SP1_R", DbType = "Real")]
        [DataMember(Order = 67)]
        public System.Nullable<float> SP1_R
        {
            get
            {
                return this._SP1_R;
            }
            set
            {
                if ((this._SP1_R != value))
                {
                    this._SP1_R = value;
                }
            }
        }

        [Column(Storage = "_TCT1_R", DbType = "Real")]
        [DataMember(Order = 68)]
        public System.Nullable<float> TCT1_R
        {
            get
            {
                return this._TCT1_R;
            }
            set
            {
                if ((this._TCT1_R != value))
                {
                    this._TCT1_R = value;
                }
            }
        }

        [Column(Storage = "_TCT2_R", DbType = "Real")]
        [DataMember(Order = 69)]
        public System.Nullable<float> TCT2_R
        {
            get
            {
                return this._TCT2_R;
            }
            set
            {
                if ((this._TCT2_R != value))
                {
                    this._TCT2_R = value;
                }
            }
        }

        [Column(Storage = "_LPORT1", DbType = "VarChar(20)")]
        [DataMember(Order = 70)]
        public string LPORT1
        {
            get
            {
                return this._LPORT1;
            }
            set
            {
                if ((this._LPORT1 != value))
                {
                    this._LPORT1 = value;
                }
            }
        }

        [Column(Storage = "_EXFWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 71)]
        public string EXFWK1
        {
            get
            {
                return this._EXFWK1;
            }
            set
            {
                if ((this._EXFWK1 != value))
                {
                    this._EXFWK1 = value;
                }
            }
        }

        [Column(Storage = "_EXFTM1", DbType = "VarChar(20)")]
        [DataMember(Order = 72)]
        public string EXFTM1
        {
            get
            {
                return this._EXFTM1;
            }
            set
            {
                if ((this._EXFTM1 != value))
                {
                    this._EXFTM1 = value;
                }
            }
        }

        [Column(Storage = "_CJSWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 73)]
        public string CJSWK1
        {
            get
            {
                return this._CJSWK1;
            }
            set
            {
                if ((this._CJSWK1 != value))
                {
                    this._CJSWK1 = value;
                }
            }
        }

        [Column(Storage = "_CJSSJ1", DbType = "VarChar(20)")]
        [DataMember(Order = 74)]
        public string CJSSJ1
        {
            get
            {
                return this._CJSSJ1;
            }
            set
            {
                if ((this._CJSSJ1 != value))
                {
                    this._CJSSJ1 = value;
                }
            }
        }

        [Column(Storage = "_ETD1", DbType = "VarChar(10)")]
        [DataMember(Order = 75)]
        public string ETD1
        {
            get
            {
                return this._ETD1;
            }
            set
            {
                if ((this._ETD1 != value))
                {
                    this._ETD1 = value;
                }
            }
        }

        [Column(Storage = "_TTIME1", DbType = "Real")]
        [DataMember(Order = 76)]
        public System.Nullable<float> TTIME1
        {
            get
            {
                return this._TTIME1;
            }
            set
            {
                if ((this._TTIME1 != value))
                {
                    this._TTIME1 = value;
                }
            }
        }

        [Column(Storage = "_ALPORT1", DbType = "VarChar(20)")]
        [DataMember(Order = 77)]
        public string ALPORT1
        {
            get
            {
                return this._ALPORT1;
            }
            set
            {
                if ((this._ALPORT1 != value))
                {
                    this._ALPORT1 = value;
                }
            }
        }

        [Column(Storage = "_AEXFWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 78)]
        public string AEXFWK1
        {
            get
            {
                return this._AEXFWK1;
            }
            set
            {
                if ((this._AEXFWK1 != value))
                {
                    this._AEXFWK1 = value;
                }
            }
        }

        [Column(Storage = "_AEXFTM1", DbType = "VarChar(20)")]
        [DataMember(Order = 79)]
        public string AEXFTM1
        {
            get
            {
                return this._AEXFTM1;
            }
            set
            {
                if ((this._AEXFTM1 != value))
                {
                    this._AEXFTM1 = value;
                }
            }
        }

        [Column(Storage = "_ACJSWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 80)]
        public string ACJSWK1
        {
            get
            {
                return this._ACJSWK1;
            }
            set
            {
                if ((this._ACJSWK1 != value))
                {
                    this._ACJSWK1 = value;
                }
            }
        }

        [Column(Storage = "_ACJSSJ1", DbType = "VarChar(20)")]
        [DataMember(Order = 81)]
        public string ACJSSJ1
        {
            get
            {
                return this._ACJSSJ1;
            }
            set
            {
                if ((this._ACJSSJ1 != value))
                {
                    this._ACJSSJ1 = value;
                }
            }
        }

        [Column(Storage = "_AETD1", DbType = "VarChar(10)")]
        [DataMember(Order = 82)]
        public string AETD1
        {
            get
            {
                return this._AETD1;
            }
            set
            {
                if ((this._AETD1 != value))
                {
                    this._AETD1 = value;
                }
            }
        }

        [Column(Storage = "_ATTIME1", DbType = "Real")]
        [DataMember(Order = 83)]
        public System.Nullable<float> ATTIME1
        {
            get
            {
                return this._ATTIME1;
            }
            set
            {
                if ((this._ATTIME1 != value))
                {
                    this._ATTIME1 = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class Sp_WOConfirmListResult
    {

        private string _Company;

        private string _ProjectNo;

        private string _SalesOrderNo;

        private int _SalesOrderLine;

        private string _Factory;

        private string _WorkOrderNo;

        private string _CustomerCode;

        private string _Customer;

        private string _Item;

        private string _Users;

        private System.Nullable<int> _Next;

        private System.Nullable<int> _Current;

        private string _StyleNo;

        private string _CustomerStyleNo;

        private System.Nullable<int> _Version;

        private System.Nullable<int> _AmendmentNo;

        private string _ShipMode;

        private string _PackingMethod;

        private System.Nullable<System.DateTime> _WOCreateDate;

        private System.Nullable<System.DateTime> _WOReviseDate;

        private System.Nullable<System.DateTime> _T3ShipCompleted;

        private System.Nullable<System.DateTime> _T3Adjust;

        private string _AjustT3DateConfirm;

        private System.Nullable<System.DateTime> _DeliveryShipCompleted;

        private System.Nullable<System.DateTime> _LCLExFtyShipCompleted;

        private System.Nullable<System.DateTime> _FCLExFtyShipCompleted;

        private System.Nullable<System.DateTime> _LineWorkShipCompleted;

        private System.Nullable<System.DateTime> _FactoryWorkShipCompleted;

        private string _OAConfirm;

        private System.Nullable<System.DateTime> _OAConfirmDate;

        private string _HeaderConfirm;

        private System.Nullable<System.DateTime> _HeaderConfirmDate;

        private string _TopConfirm;

        private System.Nullable<System.DateTime> _TopConfirmDate;

        private string _PPCConfirm;

        private System.Nullable<System.DateTime> _PPCConfirmDate;

        public Sp_WOConfirmListResult()
        {
        }

        [Column(Storage = "_Company", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 1)]
        public string Company
        {
            get
            {
                return this._Company;
            }
            set
            {
                if ((this._Company != value))
                {
                    this._Company = value;
                }
            }
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 2)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 3)]
        public string SalesOrderNo
        {
            get
            {
                return this._SalesOrderNo;
            }
            set
            {
                if ((this._SalesOrderNo != value))
                {
                    this._SalesOrderNo = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderLine", DbType = "Int NOT NULL")]
        [DataMember(Order = 4)]
        public int SalesOrderLine
        {
            get
            {
                return this._SalesOrderLine;
            }
            set
            {
                if ((this._SalesOrderLine != value))
                {
                    this._SalesOrderLine = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "NVarChar(50)")]
        [DataMember(Order = 5)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 6)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_CustomerCode", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 7)]
        public string CustomerCode
        {
            get
            {
                return this._CustomerCode;
            }
            set
            {
                if ((this._CustomerCode != value))
                {
                    this._CustomerCode = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 8)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_Item", DbType = "VarChar(15) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 9)]
        public string Item
        {
            get
            {
                return this._Item;
            }
            set
            {
                if ((this._Item != value))
                {
                    this._Item = value;
                }
            }
        }

        [Column(Storage = "_Users", DbType = "NVarChar(500) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 10)]
        public string Users
        {
            get
            {
                return this._Users;
            }
            set
            {
                if ((this._Users != value))
                {
                    this._Users = value;
                }
            }
        }

        [Column(Storage = "_Next", DbType = "Int")]
        [DataMember(Order = 11)]
        public System.Nullable<int> Next
        {
            get
            {
                return this._Next;
            }
            set
            {
                if ((this._Next != value))
                {
                    this._Next = value;
                }
            }
        }

        [Column(Name = "[Current]", Storage = "_Current", DbType = "Int")]
        [DataMember(Order = 12)]
        public System.Nullable<int> Current
        {
            get
            {
                return this._Current;
            }
            set
            {
                if ((this._Current != value))
                {
                    this._Current = value;
                }
            }
        }

        [Column(Storage = "_StyleNo", DbType = "VarChar(9)")]
        [DataMember(Order = 13)]
        public string StyleNo
        {
            get
            {
                return this._StyleNo;
            }
            set
            {
                if ((this._StyleNo != value))
                {
                    this._StyleNo = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyleNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 14)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }

        [Column(Storage = "_Version", DbType = "Int")]
        [DataMember(Order = 15)]
        public System.Nullable<int> Version
        {
            get
            {
                return this._Version;
            }
            set
            {
                if ((this._Version != value))
                {
                    this._Version = value;
                }
            }
        }

        [Column(Storage = "_AmendmentNo", DbType = "Int")]
        [DataMember(Order = 16)]
        public System.Nullable<int> AmendmentNo
        {
            get
            {
                return this._AmendmentNo;
            }
            set
            {
                if ((this._AmendmentNo != value))
                {
                    this._AmendmentNo = value;
                }
            }
        }

        [Column(Storage = "_ShipMode", DbType = "NVarChar(50)")]
        [DataMember(Order = 17)]
        public string ShipMode
        {
            get
            {
                return this._ShipMode;
            }
            set
            {
                if ((this._ShipMode != value))
                {
                    this._ShipMode = value;
                }
            }
        }

        [Column(Storage = "_PackingMethod", DbType = "NVarChar(72)")]
        [DataMember(Order = 18)]
        public string PackingMethod
        {
            get
            {
                return this._PackingMethod;
            }
            set
            {
                if ((this._PackingMethod != value))
                {
                    this._PackingMethod = value;
                }
            }
        }

        [Column(Storage = "_WOCreateDate", DbType = "DateTime")]
        [DataMember(Order = 19)]
        public System.Nullable<System.DateTime> WOCreateDate
        {
            get
            {
                return this._WOCreateDate;
            }
            set
            {
                if ((this._WOCreateDate != value))
                {
                    this._WOCreateDate = value;
                }
            }
        }

        [Column(Storage = "_WOReviseDate", DbType = "DateTime")]
        [DataMember(Order = 20)]
        public System.Nullable<System.DateTime> WOReviseDate
        {
            get
            {
                return this._WOReviseDate;
            }
            set
            {
                if ((this._WOReviseDate != value))
                {
                    this._WOReviseDate = value;
                }
            }
        }

        [Column(Storage = "_T3ShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 21)]
        public System.Nullable<System.DateTime> T3ShipCompleted
        {
            get
            {
                return this._T3ShipCompleted;
            }
            set
            {
                if ((this._T3ShipCompleted != value))
                {
                    this._T3ShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_T3Adjust", DbType = "DateTime")]
        [DataMember(Order = 22)]
        public System.Nullable<System.DateTime> T3Adjust
        {
            get
            {
                return this._T3Adjust;
            }
            set
            {
                if ((this._T3Adjust != value))
                {
                    this._T3Adjust = value;
                }
            }
        }

        [Column(Storage = "_AjustT3DateConfirm", DbType = "NVarChar(60)")]
        [DataMember(Order = 23)]
        public string AjustT3DateConfirm
        {
            get
            {
                return this._AjustT3DateConfirm;
            }
            set
            {
                if ((this._AjustT3DateConfirm != value))
                {
                    this._AjustT3DateConfirm = value;
                }
            }
        }

        [Column(Storage = "_DeliveryShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 24)]
        public System.Nullable<System.DateTime> DeliveryShipCompleted
        {
            get
            {
                return this._DeliveryShipCompleted;
            }
            set
            {
                if ((this._DeliveryShipCompleted != value))
                {
                    this._DeliveryShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_LCLExFtyShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 25)]
        public System.Nullable<System.DateTime> LCLExFtyShipCompleted
        {
            get
            {
                return this._LCLExFtyShipCompleted;
            }
            set
            {
                if ((this._LCLExFtyShipCompleted != value))
                {
                    this._LCLExFtyShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_FCLExFtyShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 26)]
        public System.Nullable<System.DateTime> FCLExFtyShipCompleted
        {
            get
            {
                return this._FCLExFtyShipCompleted;
            }
            set
            {
                if ((this._FCLExFtyShipCompleted != value))
                {
                    this._FCLExFtyShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_LineWorkShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 27)]
        public System.Nullable<System.DateTime> LineWorkShipCompleted
        {
            get
            {
                return this._LineWorkShipCompleted;
            }
            set
            {
                if ((this._LineWorkShipCompleted != value))
                {
                    this._LineWorkShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_FactoryWorkShipCompleted", DbType = "DateTime")]
        [DataMember(Order = 28)]
        public System.Nullable<System.DateTime> FactoryWorkShipCompleted
        {
            get
            {
                return this._FactoryWorkShipCompleted;
            }
            set
            {
                if ((this._FactoryWorkShipCompleted != value))
                {
                    this._FactoryWorkShipCompleted = value;
                }
            }
        }

        [Column(Storage = "_OAConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 29)]
        public string OAConfirm
        {
            get
            {
                return this._OAConfirm;
            }
            set
            {
                if ((this._OAConfirm != value))
                {
                    this._OAConfirm = value;
                }
            }
        }

        [Column(Storage = "_OAConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 30)]
        public System.Nullable<System.DateTime> OAConfirmDate
        {
            get
            {
                return this._OAConfirmDate;
            }
            set
            {
                if ((this._OAConfirmDate != value))
                {
                    this._OAConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 31)]
        public string HeaderConfirm
        {
            get
            {
                return this._HeaderConfirm;
            }
            set
            {
                if ((this._HeaderConfirm != value))
                {
                    this._HeaderConfirm = value;
                }
            }
        }

        [Column(Storage = "_HeaderConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 32)]
        public System.Nullable<System.DateTime> HeaderConfirmDate
        {
            get
            {
                return this._HeaderConfirmDate;
            }
            set
            {
                if ((this._HeaderConfirmDate != value))
                {
                    this._HeaderConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_TopConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 33)]
        public string TopConfirm
        {
            get
            {
                return this._TopConfirm;
            }
            set
            {
                if ((this._TopConfirm != value))
                {
                    this._TopConfirm = value;
                }
            }
        }

        [Column(Storage = "_TopConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 34)]
        public System.Nullable<System.DateTime> TopConfirmDate
        {
            get
            {
                return this._TopConfirmDate;
            }
            set
            {
                if ((this._TopConfirmDate != value))
                {
                    this._TopConfirmDate = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirm", DbType = "NVarChar(40)")]
        [DataMember(Order = 35)]
        public string PPCConfirm
        {
            get
            {
                return this._PPCConfirm;
            }
            set
            {
                if ((this._PPCConfirm != value))
                {
                    this._PPCConfirm = value;
                }
            }
        }

        [Column(Storage = "_PPCConfirmDate", DbType = "DateTime")]
        [DataMember(Order = 36)]
        public System.Nullable<System.DateTime> PPCConfirmDate
        {
            get
            {
                return this._PPCConfirmDate;
            }
            set
            {
                if ((this._PPCConfirmDate != value))
                {
                    this._PPCConfirmDate = value;
                }
            }
        }
    }


    /// <summary>
    /// ChandlerXiao:Add 20170213
    /// </summary>
    public partial class Sp_WOConfirmListResult
    {
        private System.Nullable<System.DateTime> _LineWorkShipCompleted_SpecialFactory;

        [Column(Storage = "_LineWorkShipCompleted_SpecialFactory", DbType = "DateTime")]
        [DataMember(Order = 37)]
        public System.Nullable<System.DateTime> LineWorkShipCompleted_SpecialFactory
        {
            get
            {
                return this._LineWorkShipCompleted_SpecialFactory;
            }
            set
            {
                if ((this._LineWorkShipCompleted_SpecialFactory != value))
                {
                    this._LineWorkShipCompleted_SpecialFactory = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class fn_CustomerGetProfileResult
    {

        private string _WorkOrderNo;

        private string _ProjectNo;

        private string _Customer;

        private string _Cust;

        private System.Nullable<float> _YSZQ;

        private System.Nullable<float> _YSZQ1;

        private string _ShipMode;

        private string _FTY;

        private string _SalesOrderNo;

        private string _Factory;

        private string _EXFWK;

        private string _EXFTM;

        private System.Nullable<float> _EXFDAY;

        private string _CJSWK;

        private string _CJSSJ;

        private System.Nullable<float> _LSTR;

        private string _AEXFWK;

        private string _AEXFTM;

        private string _ACJSWK;

        private string _ACJSSJ;

        private string _EXFWK1;

        private string _EXFTM1;

        private string _CJSWK1;

        private string _CJSSJ1;

        private string _AEXFWK1;

        private string _AEXFTM1;

        private string _ACJSWK1;

        private string _ACJSSJ1;

        public fn_CustomerGetProfileResult()
        {
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 1)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 2)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "NVarChar(50)")]
        [DataMember(Order = 3)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_Cust", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 4)]
        public string Cust
        {
            get
            {
                return this._Cust;
            }
            set
            {
                if ((this._Cust != value))
                {
                    this._Cust = value;
                }
            }
        }

        [Column(Storage = "_YSZQ", DbType = "Real")]
        [DataMember(Order = 5)]
        public System.Nullable<float> YSZQ
        {
            get
            {
                return this._YSZQ;
            }
            set
            {
                if ((this._YSZQ != value))
                {
                    this._YSZQ = value;
                }
            }
        }

        [Column(Storage = "_YSZQ1", DbType = "Real")]
        [DataMember(Order = 6)]
        public System.Nullable<float> YSZQ1
        {
            get
            {
                return this._YSZQ1;
            }
            set
            {
                if ((this._YSZQ1 != value))
                {
                    this._YSZQ1 = value;
                }
            }
        }

        [Column(Storage = "_ShipMode", DbType = "NVarChar(50)")]
        [DataMember(Order = 7)]
        public string ShipMode
        {
            get
            {
                return this._ShipMode;
            }
            set
            {
                if ((this._ShipMode != value))
                {
                    this._ShipMode = value;
                }
            }
        }

        [Column(Storage = "_FTY", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 8)]
        public string FTY
        {
            get
            {
                return this._FTY;
            }
            set
            {
                if ((this._FTY != value))
                {
                    this._FTY = value;
                }
            }
        }

        [Column(Storage = "_SalesOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 9)]
        public string SalesOrderNo
        {
            get
            {
                return this._SalesOrderNo;
            }
            set
            {
                if ((this._SalesOrderNo != value))
                {
                    this._SalesOrderNo = value;
                }
            }
        }

        [Column(Storage = "_Factory", DbType = "NVarChar(50)")]
        [DataMember(Order = 10)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_EXFWK", DbType = "VarChar(10)")]
        [DataMember(Order = 11)]
        public string EXFWK
        {
            get
            {
                return this._EXFWK;
            }
            set
            {
                if ((this._EXFWK != value))
                {
                    this._EXFWK = value;
                }
            }
        }

        [Column(Storage = "_EXFTM", DbType = "VarChar(20)")]
        [DataMember(Order = 12)]
        public string EXFTM
        {
            get
            {
                return this._EXFTM;
            }
            set
            {
                if ((this._EXFTM != value))
                {
                    this._EXFTM = value;
                }
            }
        }

        [Column(Storage = "_EXFDAY", DbType = "Real")]
        [DataMember(Order = 13)]
        public System.Nullable<float> EXFDAY
        {
            get
            {
                return this._EXFDAY;
            }
            set
            {
                if ((this._EXFDAY != value))
                {
                    this._EXFDAY = value;
                }
            }
        }

        [Column(Storage = "_CJSWK", DbType = "VarChar(10)")]
        [DataMember(Order = 14)]
        public string CJSWK
        {
            get
            {
                return this._CJSWK;
            }
            set
            {
                if ((this._CJSWK != value))
                {
                    this._CJSWK = value;
                }
            }
        }

        [Column(Storage = "_CJSSJ", DbType = "VarChar(20)")]
        [DataMember(Order = 15)]
        public string CJSSJ
        {
            get
            {
                return this._CJSSJ;
            }
            set
            {
                if ((this._CJSSJ != value))
                {
                    this._CJSSJ = value;
                }
            }
        }

        [Column(Storage = "_LSTR", DbType = "Real")]
        [DataMember(Order = 16)]
        public System.Nullable<float> LSTR
        {
            get
            {
                return this._LSTR;
            }
            set
            {
                if ((this._LSTR != value))
                {
                    this._LSTR = value;
                }
            }
        }

        [Column(Storage = "_AEXFWK", DbType = "VarChar(10)")]
        [DataMember(Order = 17)]
        public string AEXFWK
        {
            get
            {
                return this._AEXFWK;
            }
            set
            {
                if ((this._AEXFWK != value))
                {
                    this._AEXFWK = value;
                }
            }
        }

        [Column(Storage = "_AEXFTM", DbType = "VarChar(20)")]
        [DataMember(Order = 18)]
        public string AEXFTM
        {
            get
            {
                return this._AEXFTM;
            }
            set
            {
                if ((this._AEXFTM != value))
                {
                    this._AEXFTM = value;
                }
            }
        }

        [Column(Storage = "_ACJSWK", DbType = "VarChar(10)")]
        [DataMember(Order = 19)]
        public string ACJSWK
        {
            get
            {
                return this._ACJSWK;
            }
            set
            {
                if ((this._ACJSWK != value))
                {
                    this._ACJSWK = value;
                }
            }
        }

        [Column(Storage = "_ACJSSJ", DbType = "VarChar(20)")]
        [DataMember(Order = 20)]
        public string ACJSSJ
        {
            get
            {
                return this._ACJSSJ;
            }
            set
            {
                if ((this._ACJSSJ != value))
                {
                    this._ACJSSJ = value;
                }
            }
        }

        [Column(Storage = "_EXFWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 21)]
        public string EXFWK1
        {
            get
            {
                return this._EXFWK1;
            }
            set
            {
                if ((this._EXFWK1 != value))
                {
                    this._EXFWK1 = value;
                }
            }
        }

        [Column(Storage = "_EXFTM1", DbType = "VarChar(20)")]
        [DataMember(Order = 22)]
        public string EXFTM1
        {
            get
            {
                return this._EXFTM1;
            }
            set
            {
                if ((this._EXFTM1 != value))
                {
                    this._EXFTM1 = value;
                }
            }
        }

        [Column(Storage = "_CJSWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 23)]
        public string CJSWK1
        {
            get
            {
                return this._CJSWK1;
            }
            set
            {
                if ((this._CJSWK1 != value))
                {
                    this._CJSWK1 = value;
                }
            }
        }

        [Column(Storage = "_CJSSJ1", DbType = "VarChar(20)")]
        [DataMember(Order = 24)]
        public string CJSSJ1
        {
            get
            {
                return this._CJSSJ1;
            }
            set
            {
                if ((this._CJSSJ1 != value))
                {
                    this._CJSSJ1 = value;
                }
            }
        }

        [Column(Storage = "_AEXFWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 25)]
        public string AEXFWK1
        {
            get
            {
                return this._AEXFWK1;
            }
            set
            {
                if ((this._AEXFWK1 != value))
                {
                    this._AEXFWK1 = value;
                }
            }
        }

        [Column(Storage = "_AEXFTM1", DbType = "VarChar(20)")]
        [DataMember(Order = 26)]
        public string AEXFTM1
        {
            get
            {
                return this._AEXFTM1;
            }
            set
            {
                if ((this._AEXFTM1 != value))
                {
                    this._AEXFTM1 = value;
                }
            }
        }

        [Column(Storage = "_ACJSWK1", DbType = "VarChar(10)")]
        [DataMember(Order = 27)]
        public string ACJSWK1
        {
            get
            {
                return this._ACJSWK1;
            }
            set
            {
                if ((this._ACJSWK1 != value))
                {
                    this._ACJSWK1 = value;
                }
            }
        }

        [Column(Storage = "_ACJSSJ1", DbType = "VarChar(20)")]
        [DataMember(Order = 28)]
        public string ACJSSJ1
        {
            get
            {
                return this._ACJSSJ1;
            }
            set
            {
                if ((this._ACJSSJ1 != value))
                {
                    this._ACJSSJ1 = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class fn_split_textResult
    {

        private string _subcolstr;

        public fn_split_textResult()
        {
        }

        [Column(Storage = "_subcolstr", DbType = "VarChar(200)")]
        [DataMember(Order = 1)]
        public string subcolstr
        {
            get
            {
                return this._subcolstr;
            }
            set
            {
                if ((this._subcolstr != value))
                {
                    this._subcolstr = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class fn_WeekDaysResult
    {

        private System.Nullable<System.DateTime> _DT;

        private System.Nullable<int> _WT;

        public fn_WeekDaysResult()
        {
        }

        [Column(Storage = "_DT", DbType = "DateTime")]
        [DataMember(Order = 1)]
        public System.Nullable<System.DateTime> DT
        {
            get
            {
                return this._DT;
            }
            set
            {
                if ((this._DT != value))
                {
                    this._DT = value;
                }
            }
        }

        [Column(Storage = "_WT", DbType = "Int")]
        [DataMember(Order = 2)]
        public System.Nullable<int> WT
        {
            get
            {
                return this._WT;
            }
            set
            {
                if ((this._WT != value))
                {
                    this._WT = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class sp_ExportRFIDByRangeResult
    {

        private string _ProjectNo;

        private string _WorkOrderNo;

        private string _WOStatus;

        private string _WOc;

        private System.Nullable<System.DateTime> _ExFtyDate;

        private System.Nullable<System.DateTime> _DeliveryDate;

        private string _ManufactureCode;

        private string _ColorCode;

        private string _FitCode;

        private string _Cup;

        private string _Size;

        private string _PHSize;

        private string _CustomerStyleNo;

        private string _Customer;

        private string _CustomerCode;

        private string _Unit;

        private System.Nullable<int> _BulkQty;

        public sp_ExportRFIDByRangeResult()
        {
        }

        [Column(Storage = "_ProjectNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 1)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }

        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 2)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }

        [Column(Storage = "_WOStatus", DbType = "VarChar(2)")]
        [DataMember(Order = 3)]
        public string WOStatus
        {
            get
            {
                return this._WOStatus;
            }
            set
            {
                if ((this._WOStatus != value))
                {
                    this._WOStatus = value;
                }
            }
        }

        [Column(Storage = "_WOc", DbType = "VarChar(5)")]
        [DataMember(Order = 4)]
        public string WOc
        {
            get
            {
                return this._WOc;
            }
            set
            {
                if ((this._WOc != value))
                {
                    this._WOc = value;
                }
            }
        }

        [Column(Storage = "_ExFtyDate", DbType = "DateTime")]
        [DataMember(Order = 5)]
        public System.Nullable<System.DateTime> ExFtyDate
        {
            get
            {
                return this._ExFtyDate;
            }
            set
            {
                if ((this._ExFtyDate != value))
                {
                    this._ExFtyDate = value;
                }
            }
        }

        [Column(Storage = "_DeliveryDate", DbType = "DateTime")]
        [DataMember(Order = 6)]
        public System.Nullable<System.DateTime> DeliveryDate
        {
            get
            {
                return this._DeliveryDate;
            }
            set
            {
                if ((this._DeliveryDate != value))
                {
                    this._DeliveryDate = value;
                }
            }
        }

        [Column(Storage = "_ManufactureCode", DbType = "VarChar(4) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 7)]
        public string ManufactureCode
        {
            get
            {
                return this._ManufactureCode;
            }
            set
            {
                if ((this._ManufactureCode != value))
                {
                    this._ManufactureCode = value;
                }
            }
        }

        [Column(Storage = "_ColorCode", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 8)]
        public string ColorCode
        {
            get
            {
                return this._ColorCode;
            }
            set
            {
                if ((this._ColorCode != value))
                {
                    this._ColorCode = value;
                }
            }
        }

        [Column(Storage = "_FitCode", DbType = "VarChar(5) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 9)]
        public string FitCode
        {
            get
            {
                return this._FitCode;
            }
            set
            {
                if ((this._FitCode != value))
                {
                    this._FitCode = value;
                }
            }
        }

        [Column(Storage = "_Cup", DbType = "NVarChar(10) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 10)]
        public string Cup
        {
            get
            {
                return this._Cup;
            }
            set
            {
                if ((this._Cup != value))
                {
                    this._Cup = value;
                }
            }
        }

        [Column(Storage = "_Size", DbType = "NVarChar(10)")]
        [DataMember(Order = 11)]
        public string Size
        {
            get
            {
                return this._Size;
            }
            set
            {
                if ((this._Size != value))
                {
                    this._Size = value;
                }
            }
        }

        [Column(Storage = "_PHSize", DbType = "VarChar(5) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 12)]
        public string PHSize
        {
            get
            {
                return this._PHSize;
            }
            set
            {
                if ((this._PHSize != value))
                {
                    this._PHSize = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyleNo", DbType = "NVarChar(50)")]
        [DataMember(Order = 13)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }

        [Column(Storage = "_Customer", DbType = "NVarChar(4)")]
        [DataMember(Order = 14)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }

        [Column(Storage = "_CustomerCode", DbType = "NVarChar(50)")]
        [DataMember(Order = 15)]
        public string CustomerCode
        {
            get
            {
                return this._CustomerCode;
            }
            set
            {
                if ((this._CustomerCode != value))
                {
                    this._CustomerCode = value;
                }
            }
        }

        [Column(Storage = "_Unit", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
        [DataMember(Order = 16)]
        public string Unit
        {
            get
            {
                return this._Unit;
            }
            set
            {
                if ((this._Unit != value))
                {
                    this._Unit = value;
                }
            }
        }

        [Column(Storage = "_BulkQty", DbType = "Int")]
        [DataMember(Order = 17)]
        public System.Nullable<int> BulkQty
        {
            get
            {
                return this._BulkQty;
            }
            set
            {
                if ((this._BulkQty != value))
                {
                    this._BulkQty = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class sp_IEBystyleResult
    {

        private string _Factory;

        private string _CustomerStyle;

        private System.Nullable<double> _SAH;

        private System.Nullable<double> _EFF;

        private System.Nullable<double> _CU;

        private System.Nullable<int> _WF;

        public sp_IEBystyleResult()
        {
        }

        [Column(Storage = "_Factory", DbType = "VarChar(10)")]
        [DataMember(Order = 1)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_CustomerStyle", DbType = "VarChar(30)")]
        [DataMember(Order = 2)]
        public string CustomerStyle
        {
            get
            {
                return this._CustomerStyle;
            }
            set
            {
                if ((this._CustomerStyle != value))
                {
                    this._CustomerStyle = value;
                }
            }
        }

        [Column(Storage = "_SAH", DbType = "Float")]
        [DataMember(Order = 3)]
        public System.Nullable<double> SAH
        {
            get
            {
                return this._SAH;
            }
            set
            {
                if ((this._SAH != value))
                {
                    this._SAH = value;
                }
            }
        }

        [Column(Storage = "_EFF", DbType = "Float")]
        [DataMember(Order = 4)]
        public System.Nullable<double> EFF
        {
            get
            {
                return this._EFF;
            }
            set
            {
                if ((this._EFF != value))
                {
                    this._EFF = value;
                }
            }
        }

        [Column(Storage = "_CU", DbType = "Float")]
        [DataMember(Order = 5)]
        public System.Nullable<double> CU
        {
            get
            {
                return this._CU;
            }
            set
            {
                if ((this._CU != value))
                {
                    this._CU = value;
                }
            }
        }

        [Column(Storage = "_WF", DbType = "Int")]
        [DataMember(Order = 6)]
        public System.Nullable<int> WF
        {
            get
            {
                return this._WF;
            }
            set
            {
                if ((this._WF != value))
                {
                    this._WF = value;
                }
            }
        }
    }

    [DataContract()]
    public partial class sp_IEBystyle_DefResult
    {

        private string _Factory;

        private string _Category;

        private System.Nullable<double> _SAH;

        private System.Nullable<double> _EFF;

        private System.Nullable<double> _CU;

        private System.Nullable<int> _WF;

        public sp_IEBystyle_DefResult()
        {
        }

        [Column(Storage = "_Factory", DbType = "VarChar(10)")]
        [DataMember(Order = 1)]
        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        [Column(Storage = "_Category", DbType = "VarChar(30)")]
        [DataMember(Order = 2)]
        public string Category
        {
            get
            {
                return this._Category;
            }
            set
            {
                if ((this._Category != value))
                {
                    this._Category = value;
                }
            }
        }

        [Column(Storage = "_SAH", DbType = "Float")]
        [DataMember(Order = 3)]
        public System.Nullable<double> SAH
        {
            get
            {
                return this._SAH;
            }
            set
            {
                if ((this._SAH != value))
                {
                    this._SAH = value;
                }
            }
        }

        [Column(Storage = "_EFF", DbType = "Float")]
        [DataMember(Order = 4)]
        public System.Nullable<double> EFF
        {
            get
            {
                return this._EFF;
            }
            set
            {
                if ((this._EFF != value))
                {
                    this._EFF = value;
                }
            }
        }

        [Column(Storage = "_CU", DbType = "Float")]
        [DataMember(Order = 5)]
        public System.Nullable<double> CU
        {
            get
            {
                return this._CU;
            }
            set
            {
                if ((this._CU != value))
                {
                    this._CU = value;
                }
            }
        }

        [Column(Storage = "_WF", DbType = "Int")]
        [DataMember(Order = 6)]
        public System.Nullable<int> WF
        {
            get
            {
                return this._WF;
            }
            set
            {
                if ((this._WF != value))
                {
                    this._WF = value;
                }
            }
        }
    }

    #endregion



    partial class Project : BaseEntity
    {
        //region 由David加入 202-08-22
        //public string Region
        //{
        //    get
        //    {
        //        return this.Factory == "CL" ? "BD" : "CN";
        //    }
        //}


        #region
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                foreach (WorkOrder wo in this.WorkOrders)
                {
                    wo.UpdateDate = DateTime.Now;
                }
            }
            return base.Save();
        }
        private bool? _isFrenchCusomter;
        public bool IsFrenchCusomter
        {
            get
            {
                if (!_isFrenchCusomter.HasValue)
                {
                    //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
                    CustomerList list = new CustomerList();
                    _isFrenchCusomter = list.IsFrenchCustomer(this.Customer);
                }
                return _isFrenchCusomter.Value;
            }
        }


        //private bool? _isShipWindow;
        //public bool IsShipWindow
        //{
        //    get
        //    {
        //        bool isShip = false;
        //        if (this.Customer.StartsWith("HBIU"))
        //        {
        //            foreach (var wo in this.WorkOrders)
        //            {
        //                foreach (var woc in wo.WorkOrderColors)
        //                {
        //                    if ((woc.BulkQty ?? 0) > 0)
        //                        return true;
        //                }
        //            }
        //        }

        //        return isShip;
        //        //if (!_isShipWindow.HasValue)
        //        //{
        //        //    string cust = this.CustomerCode;
        //        //    _isShipWindow = cust == "SARA";
        //        //}
        //        return _isShipWindow.Value;
        //    }
        //}

        private string _CustomerCode;
        public string CustomerCode
        {
            get
            {
                if (_CustomerCode == null)
                {
                    //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
                    CustomerList list = new CustomerList();
                    _CustomerCode = list.GetCustomerByCode(this.Customer);
                }
                return _CustomerCode;
            }
        }
        private string _team;
        public string Team
        {
            get
            {
                if (_team == null)
                {
                    //C1,A1,B2
                    CustomerList list = new CustomerList();
                    _team = list.GetTeamByCustomerCode(this.Customer);
                }
                return _team;
            }
        }

        public string ProjectStatus
        {
            get
            {
                return (this.Status.ToUpper().Trim() == "C") ? "Completed" : "Outstanding";

            }
        }
        public string FactoryCountry
        {
            get
            {
                return (this.Factory == "KB") ? "Thailand" : "China";

            }
        }
        #endregion

        #region WOs
        public WorkOrder[] WOs
        {
            get
            {
                var aa = from a in this.WorkOrders
                         where a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1"
                         select a;
                int j = aa.Count();

                WorkOrder[] wos = new WorkOrder[j];

                int i = 0;
                foreach (var a in aa)
                {
                    wos[i] = a;
                    i++;
                }
                return wos;
            }
        }
        public DateTime? NonCompletedWOExftyDateMin { get; set; }
        public DateTime? NonCompletedWOExftyDateMax { get; set; }
        public DateTime? RecentWOCompletedDate { get; set; }
        public string Cust { get { return this.ProjectNo.Substring(0, 4); } }


        //public int WOsCount
        //{
        //    get
        //    {
        //        var aa = from a in this.WorkOrders
        //                 where a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1"
        //                 select a;
        //        return aa.Count();
        //    }
        //}
        //public int WONonCompletedCount
        //{
        //    get
        //    {
        //        var aa = from a in this.WorkOrders
        //                 where a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1" && a.WOStatus != "8"
        //                 select a;
        //        return aa.Count();
        //    }
        //}
        //public string ProjectInternalCompleted
        //{
        //    get
        //    {
        //        var aa = from a in this.WorkOrders
        //                 where a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1"
        //                 select a;
        //        foreach (var a in aa)
        //        {
        //            if (a.WOStatus != "8") return "N";
        //        }
        //        return "Y";
        //    }
        //}
        //public DateTime? RecentWOCompletedDate
        //{
        //    get
        //    {
        //        var aa = (from a in this.WorkOrders
        //                  where a.WorkOrderNo.StartsWith("W") && a.WOStatus != "-1" && a.WOStatus == "8"
        //                  select a.CompletedDate).Max();
        //        return aa.HasValue ? aa.Value : (DateTime?)null;
        //    }
        //}
        //public DateTime? ProjectCompletedDate
        //{
        //    get
        //    {
        //        if (ProjectInternalCompleted == "Y") return RecentWOCompletedDate;
        //        else return null;
        //    }
        //}
        #endregion
    }


    partial class WorkOrder : BaseEntity
    {
        //public List<DataRow> BulkSamples
        //{
        //    get
        //    {

        //        if (CurrentDataContext == null) CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        //        RWOSOPCDataContext db = CurrentDataContext as RWOSOPCDataContext;

        //        DataSet ds = db.ExecuteDataSet(string.Format("exec sp_GetBulkSampleBreakDown '{0}'", this.WorkOrderNo), new DataSet(), "dtBulkSample");
        //        return ds.Tables[0].AsEnumerable().ToList();
        //    }
        //}


        //public int BulkShipmentQtyShow
        //{
        //    get
        //    {
        //        return this.WorkOrderColors.Select(p => (p.BulkQty ?? 0)).Sum();
        //    }
        //}

        //public int BulkSampleQty_PPWsShow
        //{
        //    get
        //    {
        //        return this.WorkOrderColors.Select(p => p.SampleQty_PPWs ?? 0).Sum();
        //    }
        //}

        //public int BulkSampleQty_SewingShow
        //{
        //    get
        //    {
        //        return this.WorkOrderColors.Select(p => p.SampleQty_OtherWs ?? 0).Sum();
        //    }
        //}

        //select * from phdb..v_oswo_qty where ProjectNo = 'ESSE1026' and WorkOrderNo = 'W377139' and exfty_original = '2022-09-14'

        //public IQueryable<WorkOrderSample> WorkOrderSampleList
        //{
        //    get
        //    {
        //        if (CurrentDataContext == null)
        //        {
        //            CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        //        }

        //        return (CurrentDataContext as RWOSOPCDataContext).WorkOrderSamples.Where(p => p.WorkOrderNo == this.WorkOrderNo);
        //    }
        //}

        public string OddEvenRowFlag { get; set; }

        // Despatch Lot
        public int DespatchLot { get; set; }

        //# of Smpl Type
        public int TotalSampleType { get; set; }

        //# of Color
        public int TotalSampleColor { get; set; }

        //Total Keep Smpl Qty
        public int? TotalKeepQty { get; set; }

        //Bulk Smpl Qty to Cust
        public int BulkSampleQtyToCust
        {
            get
            {
                return (BulkSampleQty ?? 0) == 0 ? 0 : (BulkSampleQty ?? 0) - (TotalKeepQty ?? 0);
            }
        }

        public DateTime? RequestDespatchDate_FirstLotFirstDate { get; set; }
        public DateTime? RequestDespatchDate_FirstLotNextDate { get; set; }
        public DateTime? RequestDespatchDate_LastLotFirstDate { get; set; }
        public DateTime? RequestDespatchDate_LastLotNextDate { get; set; }

        public DateTime? ActualDespatchDate_FirstLotFirstDate { get; set; }
        public DateTime? ActualDespatchDate_FirstLotNextDate { get; set; }
        public DateTime? ActualDespatchDate_LastLotFirstDate { get; set; }
        public DateTime? ActualDespatchDate_LastLotNextDate { get; set; }

        public string ApprovalStatus_FirstLotFirst { get; set; }
        public DateTime? ApprovalDate_FirstLotFirstDate { get; set; }
        public string ApprovalStatus_FirstLotNext { get; set; }
        public DateTime? ApprovalDate_FirstLotNextDate { get; set; }

        public string ApprovalStatus_LastLotFirst { get; set; }
        public DateTime? ApprovalDate_LastLotFirstDate { get; set; }
        public string ApprovalStatus_LastLotNext { get; set; }
        public DateTime? ApprovalDate_LastLotNextDate { get; set; }

        public int? TotalampleOrder
        {
            get
            {
                if (string.IsNullOrEmpty(SampleOrderNOs))
                {
                    return null;
                }

                return SampleOrderNOs.Split(new string[] { " / ", "/" }, StringSplitOptions.RemoveEmptyEntries).Count();
            }
        }


        //public int GetDateRedFlag(DateTime? ANeedShowRedDate, DateTime? ARedoDateField, DateTime? ACompareDate, int AShowRedDays, int AShowRedBoldDays)
        //{
        //    if (!ANeedShowRedDate.HasValue) return 0; //如果本身日期为空，不变色

        //    if (ARedoDateField == null || ACompareDate.HasValue) return 0; //如果比较的日期已经有值，不变色

        //    if (ACompareDate == null)
        //    {
        //        string a = "aa";
        //    }
        //    if ((ACompareDate.Value - DateTime.Now.Date).Days <= AShowRedBoldDays)
        //    {
        //        return 2;
        //    }
        //    else if ((ACompareDate.Value - DateTime.Now.Date).Days <= AShowRedDays)
        //    {
        //        return 1;
        //    }

        //    return 0;
        //}





        //Req Despatch dd 1st lot 1st dd是否变红或加粗变红, 0代表不变红， 1代表变红，2代表变红并加粗
        public int RequestDespatchDateFirstLotFirstDateRedFlag
        {
            get
            {
                if (!RequestDespatchDate_FirstLotFirstDate.HasValue) return 0;
                if (RequestDespatchDate_FirstLotNextDate.HasValue || ActualDespatchDate_FirstLotFirstDate.HasValue || ActualDespatchDate_FirstLotNextDate.HasValue) return 0;

                //DateTime? ActualDespatchDate_FirstLot = ActualDespatchDate_FirstLotNextDate.HasValue ? ActualDespatchDate_FirstLotNextDate : ActualDespatchDate_FirstLotFirstDate;
                if ((RequestDespatchDate_FirstLotFirstDate.Value - DateTime.Now.Date).Days <= 7)
                {
                    return 2;
                }
                else if ((RequestDespatchDate_FirstLotFirstDate.Value - DateTime.Now.Date).Days <= 14)
                {
                    return 1;
                }

                return 0;
            }
        }


        //Req Despatch dd 1st lot Next dd是否变红或加粗变红, 0代表不变工， 1代表变红，2代表变红并加粗
        public int RequestDespatchDateFirstLotNextDateRedFlag
        {
            get
            {
                if (!RequestDespatchDate_FirstLotNextDate.HasValue) return 0;
                if (ActualDespatchDate_FirstLotFirstDate.HasValue || ActualDespatchDate_FirstLotNextDate.HasValue) return 0;

                //DateTime? ActualDespatchDate_FirstLot = ActualDespatchDate_FirstLotNextDate.HasValue ? ActualDespatchDate_FirstLotNextDate : ActualDespatchDate_FirstLotFirstDate;
                if ((RequestDespatchDate_FirstLotFirstDate.Value - DateTime.Now.Date).Days <= 7)
                {
                    return 2;
                }
                else if ((RequestDespatchDate_FirstLotFirstDate.Value - DateTime.Now.Date).Days <= 14)
                {
                    return 1;
                }

                return 0;
            }
        }

        //Req Despatch dd Last lot 1st dd是否变红或加粗变红, 0代表不变工， 1代表变红，2代表变红并加粗
        public int RequestDespatchDateLastLotFirstDateRedFlag
        {
            get
            {
                if (!RequestDespatchDate_LastLotFirstDate.HasValue) return 0;
                if (RequestDespatchDate_LastLotNextDate.HasValue || ActualDespatchDate_LastLotFirstDate.HasValue || ActualDespatchDate_LastLotNextDate.HasValue) return 0;

                //DateTime? ActualDespatchDate_LastLot = ActualDespatchDate_LastLotNextDate.HasValue ? ActualDespatchDate_LastLotNextDate : ActualDespatchDate_LastLotFirstDate;
                if ((RequestDespatchDate_LastLotFirstDate.Value - DateTime.Now.Date).Days <= 7)
                {
                    return 2;
                }
                else if ((RequestDespatchDate_LastLotFirstDate.Value - DateTime.Now.Date).Days <= 14)
                {
                    return 1;
                }

                return 0;
            }
        }

        //Req Despatch dd Last lot Next dd是否变红或加粗变红, 0代表不变工， 1代表变红，2代表变红并加粗
        public int RequestDespatchDateLastLotNextDateRedFlag
        {
            get
            {
                if (!RequestDespatchDate_LastLotNextDate.HasValue) return 0;
                if (ActualDespatchDate_LastLotFirstDate.HasValue || ActualDespatchDate_LastLotNextDate.HasValue) return 0;

                //DateTime? ActualDespatchDate_LastLot = ActualDespatchDate_LastLotNextDate.HasValue ? ActualDespatchDate_LastLotNextDate : ActualDespatchDate_LastLotFirstDate;
                if ((RequestDespatchDate_LastLotNextDate.Value - DateTime.Now.Date).Days <= 7)
                {
                    return 2;
                }
                else if ((RequestDespatchDate_LastLotNextDate.Value - DateTime.Now.Date).Days <= 14)
                {
                    return 1;
                }

                return 0;
            }
        }



        public int ActualDespatchDate_FirstLotFirstDateRedFlag
        {
            get
            {
                if (!ActualDespatchDate_FirstLotFirstDate.HasValue) return 0;
                if (ActualDespatchDate_FirstLotNextDate.HasValue || ApprovalDate_FirstLotFirstDate.HasValue) return 0;

                if ((DateTime.Now.Date - ActualDespatchDate_FirstLotFirstDate.Value).Days >= 5 && (DateTime.Now.Date - ActualDespatchDate_FirstLotFirstDate.Value).Days < 10)
                {
                    return 1;
                }
                else if ((DateTime.Now.Date - ActualDespatchDate_FirstLotFirstDate.Value).Days >= 10)
                {
                    return 2;
                }

                return 0;
            }
        }

        public int ActualDespatchDate_FirstLotNextDateRedFlag
        {
            get
            {
                if (!ActualDespatchDate_FirstLotNextDate.HasValue) return 0;
                if (ApprovalDate_FirstLotNextDate.HasValue || ApprovalDate_FirstLotNextDate.HasValue) return 0;

                if ((DateTime.Now.Date - ActualDespatchDate_FirstLotNextDate.Value).Days >= 5 && (DateTime.Now.Date - ActualDespatchDate_FirstLotNextDate.Value).Days < 10)
                {
                    return 1;
                }
                else if ((DateTime.Now.Date - ActualDespatchDate_FirstLotNextDate.Value).Days >= 10)
                {
                    return 2;
                }

                return 0;
            }
        }

        public int ActualDespatchDate_LastLotFirstDateRedFlag
        {
            get
            {
                if (!ActualDespatchDate_LastLotFirstDate.HasValue) return 0;
                if (ActualDespatchDate_LastLotNextDate.HasValue || ApprovalDate_LastLotFirstDate.HasValue) return 0;

                if ((DateTime.Now.Date - ActualDespatchDate_LastLotFirstDate.Value).Days >= 5 && (DateTime.Now.Date - ActualDespatchDate_LastLotFirstDate.Value).Days < 10)
                {
                    return 1;
                }
                else if ((DateTime.Now.Date - ActualDespatchDate_LastLotFirstDate.Value).Days >= 10)
                {
                    return 2;
                }

                return 0;
            }
        }

        public int ActualDespatchDate_LastLotNextDateRedFlag
        {
            get
            {
                if (!ActualDespatchDate_LastLotNextDate.HasValue) return 0;
                if (ApprovalDate_LastLotNextDate.HasValue) return 0;

                if ((DateTime.Now.Date - ActualDespatchDate_LastLotNextDate.Value).Days >= 5 && (DateTime.Now.Date - ActualDespatchDate_LastLotNextDate.Value).Days < 10)
                {
                    return 1;
                }
                else if ((DateTime.Now.Date - ActualDespatchDate_LastLotNextDate.Value).Days >= 10)
                {
                    return 2;
                }

                return 0;

            }
        }



        DataTable _dtv_oswo_qty = null;
        public DataTable dtv_oswo_qty
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                if (_dtv_oswo_qty == null)
                {
                    string SqlStr = string.Format("select * from phdb..v_oswo_qty where ProjectNo = '{0}' and WorkOrderNo = '{1}' and exfty_original = '{2}'", ProjectNo, WorkOrderNo, this.LCLExFtyShipCompleted);
                    _dtv_oswo_qty = (CurrentDataContext as RWOSOPCDataContext).ExecuteDataTable(SqlStr, "dt");
                }
                return _dtv_oswo_qty;
            }
        }

        public int? BalaceShipmetQty
        {
            get
            {
                if (dtv_oswo_qty.Rows.Count == 0 || dtv_oswo_qty.Rows[0]["Bal_Qty"] == DBNull.Value) return null;
                else return Convert.ToInt32(dtv_oswo_qty.Rows[0]["Bal_Qty"]);
            }
        }
        public double? BalaceShipmetQtyPercent
        {
            get
            {
                return 1.0000 * BalaceShipmetQty / BulkQty * 100;
            }
        }
        public DateTime? ExFtyDateAdjust
        {
            get
            {
                if (dtv_oswo_qty.Rows.Count == 0 || dtv_oswo_qty.Rows[0]["Exfty_Adj"] == DBNull.Value) return null;
                else return Convert.ToDateTime(dtv_oswo_qty.Rows[0]["Exfty_Adj"]);
            }
        }
        public string ShipModeAdjust
        {
            get
            {
                if (dtv_oswo_qty.Rows.Count == 0 || dtv_oswo_qty.Rows[0]["Shpm_Adj"] == DBNull.Value) return null;
                else return Convert.ToString(dtv_oswo_qty.Rows[0]["Shpm_Adj"]);
            }
        }


        public int ChosenOption
        {
            get
            {
                WOChooseFW obj = this.WOChooseFWs.FirstOrDefault(p => p.Chosen == true);
                return obj == null ? 0 : obj.Seq;
            }
        }



        /**************************/
        //add by shulin 20211109

        public int DespatchQtyShow
        {
            get
            {
                return this.WorkOrderColors.Select(dr => dr.DespatchQtyShow ?? 0).Sum();
            }
        }

        public int BulkShipmentQtyShow
        {
            get
            {
                return DespatchQtyShow - (this.BulkSampleQty ?? 0);
            }
        }
        /***************************/


        public void ReCalulateSampleQty()
        {
            this.BulkSampleQty_PPWs = this.WorkOrderColors.Select(p => p.SampleQty_PPWs ?? 0).Sum();
            this.BulkSampleQty_Sewing = this.WorkOrderColors.Select(p => p.SampleQty_OtherWs ?? 0).Sum();

            ReCalulate();// add by shulin 20211109

            this.Save();
        }



        public void ReCalulate()
        {
            // add by shulin 2021-11-08 (根据David 2021-11-08 16:08的邮件“WOPC系統中修改SKU後保存SampleIsArranged標記為1” )
            //this.BulkSampleQty_PPWs = this.WorkOrderColors.Select(p => p.SampleQty_PPWsShow ?? 0).Sum();
            //this.BulkSampleQty_Sewing = this.WorkOrderColors.Select(p => p.SampleQty_OtherWsShow ?? 0).Sum();
            this.BulkSampleQty = CalBulkSampleQty(this.SalesOrderNo, this.SalesOrderLine);

            if (this.WorkOrderNo.StartsWith("W")) //正常制单，如果ERP中抽板数与WOPC中的抽板平数，则认为已经Assigned To Ws
            {
                if (!this.BulkSampleQty.HasValue) //ERP中没有输入抽板数，放到To Be Assigned
                {
                    this.SampleIsArranged = false;
                }
                else
                {
                    //ERP中输入了抽板数(不需要抽板时输入: 0), 判断WOPC系统中抽板数与ERP中输入抽板数平了则认为是Assigned To Ws
                    this.SampleIsArranged = (this.BulkSampleQty ?? 0) >= 0 && ((this.BulkSampleQty_PPWs ?? 0) + (this.BulkSampleQty_Sewing ?? 0)) >= (this.BulkSampleQty ?? 0);
                }
            }
            else //没有确认的制单全部放在To Be Assigned
            {
                this.SampleIsArranged = false;
            }


            //this.BulkShipmentQty = this.WorkOrderColors.Select(dr => dr.DespatchQtyShow).Sum() 
            //                                    - this.WorkOrderColors.Select(dr => dr.SampleQtyShow).Sum();

            this.BulkShipmentQty = DespatchQtyShow - (this.BulkSampleQty ?? 0);

        }



        //add by shulin 2021 - 11- 09  用于获取 BulkSampleQty 
        public int? CalBulkSampleQty(string SalesOrderNo, int SalesOrderLine)
        {

            RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            string SqlStr = @" select top(1) case when isnumeric(TLIN40) = 1 then TLIN40 else null end as Qty
                    from AS400DB..INP40 
                    where TREF40 = '{0}' +  right('000' + cast('{1}' as varchar(100)), 3) and TLNO40 = '12' ";
            SqlStr = string.Format(SqlStr, SalesOrderNo, SalesOrderLine);
            DataTable tb = db.ExecuteDataTable(SqlStr, "Opts");
            return tb.Rows.Count == 0 ? 0 : Convert.ToInt32(tb.Rows[0]["Qty"].ToString());

        }



        #region
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.UpdateDate = DateTime.Now;
            }
            return base.Save();
        }

        public int? Qty
        {
            get
            {
                int? qty1 = this.WorkOrderColors.Sum(p => p.BulkQty);
                int? qty2 = this.WorkOrderColors.Sum(p => p.SampleQty);
                return (qty1 ?? 0) + (qty2 ?? 0);
            }
        }

        /*
        [Column(Storage = "_Project_Disp",DbType="NVarchar(50)",CanBeNull = true, UpdateCheck = UpdateCheck.Never)]
        [DataMember(Order = 96)]
        public string Project_Disp
        {
            get
            {
                return this.Project.ProjectNo;
            }
 
        }
        */

        public string ProjectNo
        {
            get
            {
                if (this.Project == null) return ""; //不加这一句，删除WO的时候会报错 David 2020-09-24

                return this.Project.ProjectNo;
            }
        }


        //public string Factory
        //{
        //    get
        //    {
        //        return this.Project.Factory;
        //    }
        //}
        //Xsj20170210：add follow code for GX(GG or RX) special factory
        public string Factory
        {
            get
            {
                string val = "";
                if (this.SpecialFactory != null
                    && this.SpecialFactory.Trim() != "")
                {
                    val = this.SpecialFactory;
                }
                else
                {
                    val = this.Project.Factory;
                }
                return val;
            }
        }
        //-------------------END----------------------------------------------------


        public string Customer
        {
            get
            {
                if (this.Project == null) return ""; //不加这一句，删除WO的时候会报错 David 2020-09-24
                return this.Project.Customer;
            }
        }
        public string CustomerCode
        {
            get
            {
                if (this.Project == null) return ""; //不加这一句，删除WO的时候会报错 David 2020-09-24
                return this.Project.CustomerCode;
            }
        }
        public DateTime? SoIssueDate
        {
            get
            {
                if (this.Project == null) return null; //不加这一句，删除WO的时候会报错 David 2020-09-24
                return this.Project.SoIssueDate;
            }
        }
        /// <summary>
        /// 讽玡琌Confirm瑈祘˙艼
        /// </summary>
        public int CurrentIndex
        {
            get
            {
                string userId = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

                RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                Right r = context.Rights.Where(r1 => this.Project.CustomerCode == r1.CustomerCode && this.Project.Factory == r1.Factory && r1.Users.ToLower().IndexOf(userId.ToLower()) > -1).FirstOrDefault();
                int i = (r.Current ?? -1);

                //int i = 0;
                if (!string.IsNullOrEmpty(this.OAConfirm))
                {
                    i = 0;
                }
                if (!string.IsNullOrEmpty(this.PPCConfirm))
                {
                    i = 1;
                }

                if (!string.IsNullOrEmpty(this.TopConfirm))
                {
                    i = 2;
                }

                if (!string.IsNullOrEmpty(this.HeaderConfirm))
                {
                    i = 3;
                }
                return i;
            }
        }

        public bool IsTrueWO
        {
            get
            {
                return this.WorkOrderNo.StartsWith("W");
            }
        }
        public string Status
        {
            get
            {
                //王生要求 2020-08-19
                //WO Status 改 iWO status
                //Completed 改 Cfmd
                //OutStanding 改 Not yet cfmd
                //if (this.WOStatus == "8")
                //    return "Cfmd";
                //else if (this.WOStatus == "-1")//(string.IsNullOrEmpty(this.WOStatus))
                //    return "Cancel";
                //else
                //    return "Not yet cfmd";

                if (this.WOStatus == "8")
                    return "Cmpl";
                else if (this.WOStatus == "-1")//(string.IsNullOrEmpty(this.WOStatus))
                    return "Cancel";
                else
                    return "Incmpl";
                //return "Outstanding";
            }

        }
        public string Status2
        {
            get
            {
                if (this.WOStatus == "8")
                    return "Y";
                else if (this.WOStatus == "-1")//(string.IsNullOrEmpty(this.WOStatus))
                    return "X";
                else
                    return "N";
            }
        }

        public System.DateTime? DoneDate
        {
            get
            {

                if (this.WorkOrderColors.Count > 0)
                {
                    if (WorkOrderColors[0].RoundWorkOrders.Count > 0)
                    {
                        return WorkOrderColors[0].RoundWorkOrders[0].AmendDate;
                    }
                }
                return null;
            }
        }

        public string AssignSupplierCode
        {
            get
            {
                return this.Project.Factory == "SL" ? "655 (SL)" : "656 (KB)";
            }
        }

        #region Window

        public int LWShipWindow
        {
            get
            {
                if (this.LineWorkStartShip.HasValue && this.T3ShipCompleted.HasValue)
                    //return (this.T3ShipCompleted.Value - this.LineWorkStartShip.Value).Days + 1;
                    //Xsj20170211:注釋掉以上代碼，添加以下代碼
                    //對應發往廣西廠的WO，需要再原來LineWorkStartShip的基礎上+2day.
                    return (this.T3ShipCompleted.Value - this.LineWorkStartShip_SpecialFactory.Value).Days + 1;
                else
                    return 0;
            }
        }
        public int LWNonShipWindow
        {
            get
            {
                //直接从Option中取得，由David修改算法 2022-01-04
                WOChooseFW woChooseFW = this.WOChooseFWs.FirstOrDefault(p => p.Chosen == true);
                return woChooseFW == null ? 0 : woChooseFW.LWWindow; // woChooseFW.NonWorkingDays

                // if (this.LineWorkShipCompleted.HasValue && this.T3ShipCompleted.HasValue)
                //    //return (this.T3ShipCompleted.Value - this.LineWorkShipCompleted.Value).Days + 1;
                //    //Xsj20170211:注釋掉以上代碼，添加以下代碼
                //    //對應發往廣西廠的WO，需要再原來LineWorkShipCompleted的基礎上+2day.
                //    return (this.T3ShipCompleted.Value - this.LineWorkShipCompleted_SpecialFactory.Value).Days + 1;
                //else
                //    return 0;
            }
        }

        public int FWShipWindow
        {
            get
            {
                if (this.FactoryWorkStartShip.HasValue && this.LCLExFtyShipCompleted.HasValue)
                    return (this.LCLExFtyShipCompleted.Value - this.FactoryWorkStartShip.Value).Days;
                else
                    return 0;
            }
        }
        public int FWNonShipWindow
        {
            get
            {
                if (this.FactoryWorkShipCompleted.HasValue && this.LCLExFtyShipCompleted.HasValue)
                    return (this.LCLExFtyShipCompleted.Value - this.FactoryWorkShipCompleted.Value).Days;
                else
                    return 0;
            }
        }

        public int SOShipWindow
        {
            get
            {
                if (this.FirstStationStartShip.HasValue && this.DeliveryShipCompleted.HasValue)
                    return (this.DeliveryShipCompleted.Value - this.FirstStationStartShip.Value).Days;
                else
                    return 0;
            }
        }
        public int SONonShipWindow
        {
            get
            {
                if (this.FirstStationShipCompleted.HasValue && this.DeliveryShipCompleted.HasValue)
                    return (this.DeliveryShipCompleted.Value - this.FirstStationShipCompleted.Value).Days;
                else
                    return 0;
            }
        }

        public int T3Window
        {
            get
            {
                if (this.T3Adjust.HasValue && this.T3ShipCompleted.HasValue)
                    return (this.T3ShipCompleted.Value - this.T3Adjust.Value).Days;
                else
                    return 0;
            }
        }

        #endregion

        public int TotalRWO
        {
            get
            {
                int i = 0;
                foreach (WorkOrderColor color in this.WorkOrderColors)
                {
                    i += color.RoundWorkOrders.Count;
                }
                return i;
            }
        }

        public int TotalColor
        {
            get
            {
                return this.WorkOrderColors.Count;
            }
        }

        #region SL
        public string SizeMatrixStr
        {
            get
            {
                if (!string.IsNullOrEmpty(this.SizeMatrix))
                {
                    string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                    MultiLanguageList langList = new MultiLanguageList();
                    return langList.GetDictionaryLanguageText("PH.WO.SizeMatrix", this.SizeMatrix, "Description", langID);

                    //DictionaryList dic = new DictionaryList();
                    //PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.SizeMatrix", this.SizeMatrix);
                    //return dictionary == null ? "" : dictionary.Description;
                }
                else
                {
                    return "";
                }
            }
        }
        public string BulkVSSoQtyStr
        {
            get
            {
                if (!string.IsNullOrEmpty(this.BulkvsSOQty))
                {
                    string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                    MultiLanguageList langList = new MultiLanguageList();
                    return langList.GetDictionaryLanguageText("PH.WO.BulkSOQty", this.BulkvsSOQty, "Description", langID);

                    //DictionaryList dic = new DictionaryList();
                    //PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.BulkSOQty", this.BulkvsSOQty);
                    //return dictionary == null ? "" : dictionary.Description;
                }
                else
                {
                    return "";
                }
            }
        }
        public string SampleDesptachQtyAndDateStr
        {
            get
            {
                if (!string.IsNullOrEmpty(this.SampleDesptachQtyAndDate))
                {
                    string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
                    MultiLanguageList langList = new MultiLanguageList();
                    return langList.GetDictionaryLanguageText("PH.WO.SampleDesptach", this.SampleDesptachQtyAndDate, "Description", langID);

                    //DictionaryList dic = new DictionaryList();
                    //PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.SampleDesptach", this.SampleDesptachQtyAndDate);
                    //return dictionary == null ? "" : dictionary.Description;
                }
                else
                {
                    return "";
                }
            }
        }
        #endregion

        #region KB
        public string SizeMatrixStr_KB
        {
            get
            {
                return this.SizeMatrixStr;
                //if (!string.IsNullOrEmpty(this.SizeMatrix))
                //{
                //    DictionaryList dic = new DictionaryList();
                //    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.SizeMatrix_KB", this.SizeMatrix);
                //    return dictionary == null ? "" : dictionary.Description;
                //}
                //else
                //{
                //    return "";
                //}
            }
        }
        public string BulkVSSoQtyStr_KB
        {
            get
            {
                return this.BulkVSSoQtyStr;
                //if (!string.IsNullOrEmpty(this.BulkvsSOQty))
                //{
                //    DictionaryList dic = new DictionaryList();
                //    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.BulkSOQty_KB", this.BulkvsSOQty);
                //    return dictionary == null ? "" : dictionary.Description;
                //}
                //else
                //{
                //    return "";
                //}
            }
        }
        public string SampleDesptachQtyAndDateStr_KB
        {
            get
            {
                return this.SampleDesptachQtyAndDateStr;
                //if (!string.IsNullOrEmpty(this.SampleDesptachQtyAndDate))
                //{
                //    DictionaryList dic = new DictionaryList();
                //    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.WO.SampleDesptach_KB", this.SampleDesptachQtyAndDate);
                //    return dictionary == null ? "" : dictionary.Description;
                //}
                //else
                //{
                //    return "";
                //}
            }
        }
        #endregion

        public string StyleUPXStr
        {
            get
            {
                return (this.Project.Factory == "KB" ? this.StyleUPX : "n.a.");
            }
        }

        partial void OnT3AdjustChanged()
        {
            //if (this.T3Adjust.HasValue)
            //{
            //    this.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //    ISModifyAdjustT3Date = true;
            //}
            //else
            //{
            //    this.AjustT3DateConfirm = null;
            //}
        }

        public string CustomerPOStr
        {
            get
            {
                return string.IsNullOrEmpty(this.CustomerPO) ? "--" : this.CustomerPO;

            }
        }
        public string SeasonRangeStr
        {
            get
            {
                return string.IsNullOrEmpty(this.SeasonRange) ? "--" : this.SeasonRange;

            }
        }
        public string CustomerCollectionStr
        {
            get
            {
                return string.IsNullOrEmpty(this.CustomerCollection) ? "--" : this.CustomerCollection;

            }
        }
        public string CustomerStyleNoStr
        {
            get
            {
                return string.IsNullOrEmpty(this.CustomerStyleNo) ? "--" : this.CustomerStyleNo;

            }
        }

        public string OAConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.OAConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.OAConfirm);

                    return (user != null) ? user.UserName : this.OAConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string PPCConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.PPCConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.PPCConfirm);

                    return (user != null) ? user.UserName : this.PPCConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string HeaderConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.HeaderConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.HeaderConfirm);

                    return (user != null) ? user.UserName : this.HeaderConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string TopConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.TopConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.TopConfirm);

                    return (user != null) ? user.UserName : this.TopConfirm;
                }
                else
                {
                    return "";
                }
            }
        }

        private PH.Platform.AuthMgr.BO.Auth_User GetUser(string userid)
        {
            PH.Platform.AuthMgr.BO.DataListHelper helper = new PH.Platform.AuthMgr.BO.DataListHelper();
            PH.Platform.AuthMgr.BO.Auth_User user = helper.GetUserList().Where(p => p.UserID == userid).FirstOrDefault();
            return user;
        }

        public System.DateTime? T3
        {
            get
            {
                return this.T3Adjust.HasValue ? this.T3Adjust : this.T3ShipCompleted;
            }
        }

        //PeterZhou --> Restore
        //public PH.SPC.BO.SampleOrder AutoGenerateSPC()
        //{
        //    PH.SPC.BO.SampleOrderList bus = new PH.SPC.BO.SampleOrderList();
        //    bus.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
        //    return bus.AutoGenerateSPC(this);
        //}


        #endregion
        #region Window Non-working days



        //public string ProjectNo
        //{
        //    get {

        //        if (this.Project != null)
        //            return this.Project.ProjectNo;
        //        else
        //            return "";
        //    }
        //}

        public int LWShipWindow_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();

                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                //Xsj:注釋掉原來的代碼，添加新的代碼---------------------------------------------------------------------
                //對應發往廣西廠的WO，需要再原來LineWorkStartShip的基礎上+2day.
                //return (context.fn_GetNonWorkingDays(this.LineWorkStartShip, this.T3ShipCompleted, this.Factory) ?? 0);
                return (context.fn_GetNonWorkingDays(this.LineWorkStartShip_SpecialFactory, this.T3ShipCompleted, this.Factory) ?? 0);
                //------------------------------END----------------------------------------------------------------------
            }
        }

        public int LWNonShipWindow_NonWorkingdays
        {
            get
            {
                //直接从Option中取得，由David修改算法 2022-01-04
                WOChooseFW woChooseFW = this.WOChooseFWs.FirstOrDefault(p => p.Chosen == true);
                return woChooseFW == null ? 0 : woChooseFW.NonWorkingDays;

                ////RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                ////if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();


                //RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                ////Xsj:注釋掉原來的代碼，添加新的代碼---------------------------------------------------------------------
                ////對應發往廣西廠的WO，需要再原來LineWorkShipCompleted的基礎上+2day.
                ////return (context.fn_GetNonWorkingDays(this.LineWorkShipCompleted, this.T3ShipCompleted, this.Factory) ?? 0);
                //return (context.fn_GetNonWorkingDays(this.LineWorkShipCompleted_SpecialFactory, this.T3ShipCompleted, this.Factory) ?? 0);
                ////------------------------------END----------------------------------------------------------------------

            }
        }

        public int FWShipWindow_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                return (context.fn_GetNonWorkingDays(this.FactoryWorkStartShip, this.LCLExFtyShipCompleted, this.Factory) ?? 0);
            }
        }
        public int FWNonShipWindow_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                return (context.fn_GetNonWorkingDays(this.FactoryWorkShipCompleted, this.LCLExFtyShipCompleted, this.Factory) ?? 0);
            }
        }

        public int SOShipWindow_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                return (context.fn_GetNonWorkingDays(this.FirstStationStartShip, this.DeliveryShipCompleted, this.Factory) ?? 0);
            }
        }
        public int SONonShipWindow_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                return (context.fn_GetNonWorkingDays(this.FirstStationShipCompleted, this.DeliveryShipCompleted, this.Factory) ?? 0);
            }
        }

        public string TransitDateDays
        {
            get
            {
                string cust = this.CustomerCode;
                if (cust == "BEND" || cust == "SUPD")
                    return "--";
                else
                {
                    if (this.TransitDate.HasValue && this.DeliveryShipCompleted.HasValue)
                        return (this.TransitDate.Value - this.DeliveryShipCompleted.Value).Days.ToString();
                    else return "--";
                }
            }
        }
        public string TransitDateDesc
        {
            get
            {
                string cust = this.CustomerCode;
                return (cust == "BEND" || cust == "SUPD") ? "To be advised" : string.Format("{0:yyyy/MM/dd}\r\n({1})", this.TransitDate, DataHelper.GetWeekdayForShort(this.TransitDate));
            }
        }
        #endregion

        //private bool? _isShipWindow;
        public bool IsShipWindow
        {
            get
            {
                //if (this.Project.Customer.StartsWith("HBIU"))
                //{
                //    return ((this.BulkQty ?? 0) > 0);
                //}

                return false;
                //if (!_isShipWindow.HasValue)
                //{
                //    string cust = this.CustomerCode;
                //    _isShipWindow = cust == "SARA";
                //}
                //return _isShipWindow.Value;
            }
        }

        public int T3Window_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                return (context.fn_GetNonWorkingDays(this.T3Adjust, this.T3ShipCompleted, this.Factory) ?? 0);
            }
        }
        public string FCLShipExFtyDateStr
        {
            get
            {
                return this.FCLExFtyStartShip.HasValue ?
                    string.Format("{0:yyyy/MM/dd}\r\n({1})", this.FCLExFtyStartShip, FCLShipExFty_Weekday) : "n.a.";
            }
        }
        public string FCLNonShipExFtyDateStr
        {
            get
            {
                return this.FCLExFtyShipCompleted.HasValue ?
                    string.Format("{0:yyyy/MM/dd}\r\n({1})", this.FCLExFtyShipCompleted, FCLNonShipExFty_Weekday) : "n.a.";
            }
        }

        #region Weekday for short
        public string FirstShip_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FirstStationStartShip);
            }
        }
        public string FirstNonShip_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FirstStationShipCompleted);
            }
        }

        public string FWShip_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FactoryWorkStartShip);
            }
        }
        public string FWNonShip_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FactoryWorkShipCompleted);
            }
        }

        public string LCLShipExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.LCLExFtyStartShip);
            }
        }
        public string LCLNonShipExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.LCLExFtyShipCompleted);
            }
        }

        public string FCLShipExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FCLExFtyStartShip);
            }
        }
        public string FCLNonShipExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FCLExFtyShipCompleted);
            }
        }

        public string ClosingShip_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.ClosingStartShip);
            }
        }
        public string ClosingNonShip_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.ClosingShipCompleted);
            }
        }
        #endregion

        //PeterZhou -->Restore
        public PH.SPC.BO.Style CheckCreatedtoSPC()
        {
            SPCStylederList list = new SPCStylederList();
            var aa = list.GetStylebyWorkorder(this);
            if (aa != null && aa.Count() > 0)
            {
                foreach (var item in aa)
                {
                    return item;
                }
            }
            return null;
        }

        public int WOStatusInt
        {
            get
            {
                if (this.Project.Status == "C" || this.WOStatus == "8")
                    return 2;//"Completed"
                else if (string.IsNullOrEmpty(this.PPCConfirm) && string.IsNullOrEmpty(this.TopConfirm) && string.IsNullOrEmpty(this.HeaderConfirm))
                    return 0;//"Waiting for confirmation"
                else return 1;//"WIP"
            }
        }
        public string WOStatusStr
        {
            get
            {
                switch (this.WOStatusInt)
                {
                    case 0: return "Waiting for confirmation";
                    case 1: return "WIP";
                    case 2: return "Completed";
                    default:
                        return "";
                }
            }
        }
        public int? BulkQty
        {
            get
            {
                int? Qty = this.WorkOrderColors.Sum(p => p.BulkQty);
                return Qty;
            }
        }

        public string ERPWOQtyShow //由David加入 2020-08-04, 用於WO Report中顯示
        {
            //get
            //{
            //    return this.WorkOrderColors.Sum(p => p.TotalQty);
            //}

            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                RWOSOPCDataContext db = this.CurrentDataContext as RWOSOPCDataContext;
                int All = this.WorkOrderColors.Sum(p => p.TotalQty);

                var lists = from a in db.WorkOrderSamples
                            where a.WorkOrderNo == this.WorkOrderNo && (a.SampleQty.HasValue && a.SampleQty.Value > 0)
                            orderby a.ColorCode, a.Cup
                            select a.SampleQty;

                int WOFWStartDateByColorsTotalQty = lists.Sum() ?? 0;

                int WorkOrderSampleListTotalQty = All - WOFWStartDateByColorsTotalQty;
                return All.ToString() + " (=" + WorkOrderSampleListTotalQty.ToString() + "+" + WOFWStartDateByColorsTotalQty.ToString() + ") ";
            }
        }

        #region how to choose FW

        private int? _FWvsLW_WorkingDay;
        public int FWvsLW_WorkingDay
        {
            get
            {
                if (!_FWvsLW_WorkingDay.HasValue)
                {
                    //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                    //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                    _FWvsLW_WorkingDay = context.fn_LWvsFW(this.Project.Customer, this.Factory, this.Project.DSEQ);
                }
                return _FWvsLW_WorkingDay ?? 0;
            }
        }
        private int? _FWvsLW_CalendarDay;
        public int? FWvsLW_CalendarDay
        {
            get
            {
                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 3)
                    {
                        _FWvsLW_CalendarDay = (item.LineWork.HasValue && item.FactoryWork.HasValue) ?
                            (item.LineWork.Value - item.FactoryWork.Value).Days : (int?)null;
                    }
                }

                return _FWvsLW_CalendarDay;
            }
        }
        public int? FWvsLW_NonWorkingDay
        {
            get
            {

                return FWvsLW_CalendarDay.HasValue && FWvsLW_WorkingDay != 0 ? FWvsLW_CalendarDay.Value - FWvsLW_WorkingDay : (int?)null;
            }
        }

        public int? FWOption
        {
            get
            {
                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Chosen ?? false) return item.Seq;
                }
                return null;
            }
        }
        public DateTime? Option1FW
        {
            get
            {
                return GetOptionFW(1);
            }
        }
        public DateTime? Option2FW
        {
            get
            {
                return GetOptionFW(2);
            }
        }
        public DateTime? Option3FW
        {
            get
            {
                return GetOptionFW(3);
            }
        }
        public DateTime? Option4FW
        {
            get
            {
                return GetOptionFW(4);
            }
        }
        private DateTime? GetOptionFW(int seq)
        {
            foreach (var item in this.WOChooseFWs)
            {
                if (item.Seq == seq) return item.FactoryWork;
            }
            return null;
        }

        //public double? Line_SAH { get; set; }
        public double? Line_Default { get; set; }
        public double EFF_Default { get; set; }
        public double CU_Default { get; set; }
        public double WorkingDaysPerLine { get; set; }
        public double CalendarDaysPerLine { get; set; }

        public double WorkingDaysLines
        {
            get
            {
                return (this.NumberOfLine ?? 0) == 0 ? 0 : WorkingDaysPerLine / (this.NumberOfLine ?? 0);
            }
        }

        public double? CalendarDaysLines
        {
            get
            {
                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 3) return item.LWWindow;
                }

                return null;
            }
        }
        public double? Productivity
        {
            get
            {
                return this.EFF * this.CU / 100;
            }
        }

        public int? Opt3vs1
        {
            get
            {
                int dt1 = 0;
                int dt3 = 0;
                int NonWorkingDays1 = 0;
                int NonWorkingDays3 = 0;

                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 1)
                    {
                        dt1 = item.LWWindow;
                        NonWorkingDays1 = item.NonWorkingDays;
                    }
                    else if (item.Seq == 3)
                    {
                        dt3 = item.LWWindow;
                        NonWorkingDays3 = item.NonWorkingDays;

                    }
                }


                return (dt3 == 0 || dt1 == 0) ? 0 : (dt1 - NonWorkingDays1) - (dt3 - NonWorkingDays3);
                //int dt1 = 0;
                //int dt3 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? Option1LineWorkDate = null;
                //DateTime? Option3LineWorkDate = null;

                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Seq == 1)
                //    {
                //        dt1 = item.LWWindow;
                //        Option1LineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 3)
                //    {
                //        dt3 = item.LWWindow;
                //        Option3LineWorkDate = item.LineWork;
                //    }
                //}

                //if (Option1LineWorkDate != null && Option3LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(Option3LineWorkDate, Option1LineWorkDate, this.Factory);
                //}

                //return (dt3 == 0 || dt1 == 0) ? 0 : (dt1 - dt3 - (NonWorkingDays ?? 0));
            }
        }
        public int? Opt3vs2
        {
            get
            {
                int dt2 = 0;
                int dt3 = 0;
                int NonWorkingDays2 = 0;
                int NonWorkingDays3 = 0;

                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 2)
                    {
                        dt2 = item.LWWindow;
                        NonWorkingDays2 = item.NonWorkingDays;
                    }
                    else if (item.Seq == 3)
                    {
                        dt3 = item.LWWindow;
                        NonWorkingDays3 = item.NonWorkingDays;
                    }
                }


                return (dt3 == 0 || dt2 == 0) ? 0 : (dt2 - NonWorkingDays2) - (dt3 - NonWorkingDays3);

                //int dt2 = 0;
                //int dt3 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? Option3LineWorkDate = null;
                //DateTime? Option2LineWorkDate = null;

                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Seq == 2)
                //    {
                //        dt2 = item.LWWindow;
                //        Option2LineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 3)
                //    {
                //        dt3 = item.LWWindow;
                //        Option3LineWorkDate = item.LineWork;
                //    }
                //}

                //if (Option2LineWorkDate != null && Option3LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(Option3LineWorkDate, Option2LineWorkDate, this.Factory);
                //}

                //return (dt3 == 0 || dt2 == 0) ? 0 : (dt2 - dt3 - (NonWorkingDays ?? 0));
            }
        }
        public int? Opt2vs1
        {
            get
            {
                int dt1 = 0;
                int dt2 = 0;
                int NonWorkingDays1 = 0;
                int NonWorkingDays2 = 0;

                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 1)
                    {
                        dt1 = item.LWWindow;
                        NonWorkingDays1 = item.NonWorkingDays;
                    }
                    else if (item.Seq == 2)
                    {
                        dt2 = item.LWWindow;
                        NonWorkingDays2 = item.NonWorkingDays;
                    }
                }
                return (dt2 == 0 || dt1 == 0) ? 0 : (dt2 - NonWorkingDays2) - (dt1 - NonWorkingDays1);

                //int dt1 = 0;
                //int dt2 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? Option2LineWorkDate = null;
                //DateTime? Option1LineWorkDate = null;

                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Seq == 1)
                //    {
                //        dt1 = item.LWWindow;
                //        Option1LineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 2)
                //    {
                //        dt2 = item.LWWindow;
                //        Option2LineWorkDate = item.LineWork;
                //    }
                //}

                //if (Option1LineWorkDate != null && Option2LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(Option2LineWorkDate, Option1LineWorkDate, this.Factory);
                //}

                //return (dt2 == 0 || dt1 == 0) ? 0 : (dt2 - dt1 - (NonWorkingDays ?? 0));
            }
        }

        public int? Opt4vs2
        {
            get
            {
                int dt2 = 0;
                int dt4 = 0;
                int NonWorkingDays2 = 0;
                int NonWorkingDays4 = 0;

                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 2)
                    {
                        dt2 = item.LWWindow;
                        NonWorkingDays2 = item.NonWorkingDays;
                    }
                    else if (item.Seq == 4)
                    {
                        dt4 = item.LWWindow;
                        NonWorkingDays4 = item.NonWorkingDays;
                    }
                }

                return (dt2 == 0 || dt4 == 0) ? 0 : (dt4 - NonWorkingDays4) - (dt2 - NonWorkingDays2);

                //int dt2 = 0;
                //int dt4 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? Option4LineWorkDate = null;
                //DateTime? Option2LineWorkDate = null;

                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Seq == 2)
                //    {
                //        dt2 = item.LWWindow;
                //        Option2LineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 4)
                //    {
                //        dt4 = item.LWWindow;
                //        Option4LineWorkDate = item.LineWork;
                //    }
                //}

                //if (Option2LineWorkDate != null && Option4LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(Option4LineWorkDate, Option2LineWorkDate, this.Factory);
                //}
                //return (dt2 == 0 || dt4 == 0) ? 0 : (dt4 - dt2 - (NonWorkingDays ?? 0));
            }
        }

        public int? Opt4vs1 //由David加入 2020-07-01
        {
            get
            {
                int dt1 = 0;
                int dt4 = 0;
                int NonWorkingDays1 = 0;
                int NonWorkingDays4 = 0;
                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 1)
                    {
                        dt1 = item.LWWindow;
                        NonWorkingDays1 = item.NonWorkingDays;
                    }
                    else if (item.Seq == 4)
                    {
                        dt4 = item.LWWindow;
                        NonWorkingDays4 = item.NonWorkingDays;
                    }
                }

                return (dt1 == 0 || dt4 == 0) ? 0 : (dt4 - NonWorkingDays4) - (dt1 - NonWorkingDays1);

                //int dt1 = 0;
                //int dt4 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? Option4LineWorkDate = null;
                //DateTime? Option1LineWorkDate = null;
                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Seq == 1)
                //    {
                //        dt1 = item.LWWindow;
                //        Option1LineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 4)
                //    {
                //        dt4 = item.LWWindow;
                //        Option4LineWorkDate = item.LineWork;
                //    }
                //}

                //if (Option1LineWorkDate != null && Option4LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(Option4LineWorkDate, Option1LineWorkDate, this.Factory);
                //}
                //return (dt1 == 0 || dt4 == 0) ? 0 : (dt4 - dt1 - (NonWorkingDays ?? 0));
            }
        }


        public int? Opt4vs3 //由David加入 2020-07-01
        {
            get
            {
                int dt3 = 0;
                int dt4 = 0;
                int NonWorkingDays3 = 0;
                int NonWorkingDays4 = 0;

                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 3)
                    {
                        dt3 = item.LWWindow;
                        NonWorkingDays3 = item.NonWorkingDays;
                    }
                    else if (item.Seq == 4)
                    {
                        dt4 = item.LWWindow;
                        NonWorkingDays4 = item.NonWorkingDays;
                    }
                }


                return (dt3 == 0 || dt4 == 0) ? 0 : (dt4 - NonWorkingDays4) - (dt3 - NonWorkingDays3);

                //int dt3 = 0;
                //int dt4 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? Option4LineWorkDate = null;
                //DateTime? Option3LineWorkDate = null;

                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Seq == 3)
                //    {
                //        dt3 = item.LWWindow;
                //        Option3LineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 4)
                //    {
                //        dt4 = item.LWWindow;
                //        Option4LineWorkDate = item.LineWork;
                //    }
                //}

                //if (Option3LineWorkDate != null && Option4LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(Option4LineWorkDate, Option3LineWorkDate, this.Factory);
                //}
                //return (dt3 == 0 || dt4 == 0) ? 0 : (dt4 - dt3 - NonWorkingDays);
            }
        }

        //選擇的日期 vs Option 3  由David加入 2020-07-01
        public int? Chosenvs3
        {
            get
            {
                int Chosen = 0;
                int dt3 = 0;
                int NonWorkingDaysChosen = 0;
                int NonWorkingDays3 = 0;

                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Chosen ?? false)
                    {
                        Chosen = item.LWWindow;
                        NonWorkingDaysChosen = item.NonWorkingDays;
                    }
                    else if (item.Seq == 3)
                    {
                        dt3 = item.LWWindow;
                        NonWorkingDays3 = item.NonWorkingDays;
                    }
                }

                return (Chosen == 0 || dt3 == 0) ? 0 : (Chosen - NonWorkingDaysChosen) - (dt3 - NonWorkingDays3);

                //int Chosen = 0;
                //int dt3 = 0;
                //int? NonWorkingDays = 0;
                //DateTime? ChosenLineWorkDate = null;
                //DateTime? Option3LineWorkDate = null;

                //foreach (var item in this.WOChooseFWs)
                //{
                //    if (item.Chosen ?? false)
                //    {
                //        Chosen = item.LWWindow;
                //        ChosenLineWorkDate = item.LineWork;
                //    }
                //    else if (item.Seq == 3)
                //    {
                //        dt3 = item.LWWindow;
                //        Option3LineWorkDate = item.LineWork;
                //    }
                //}
                //if (ChosenLineWorkDate != null && Option3LineWorkDate != null)
                //{
                //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //    NonWorkingDays = (this.CurrentDataContext as RWOSOPCDataContext).fn_GetNonWorkingDays(ChosenLineWorkDate, Option3LineWorkDate, this.Factory);
                //}
                //return (Chosen == 0 || dt3 == 0) ? 0 : (Chosen - dt3 - (NonWorkingDays ?? 0));
            }
        }


        public bool CanAgreeOpt4
        {
            get
            {
                bool bCan = false;
                foreach (var item in this.WOChooseFWs)
                {
                    if (item.Seq == 2)
                    {
                        bCan = (item.FactoryWork.HasValue);
                    }
                }
                return bCan;
            }
        }


        /// <summary>
        /// Get IE Infor from LWPM, Calc
        /// </summary>
        public void GetIEBInfor()
        {
            if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;

            //如果WO中没有输入客款，发邮件给MM同事
            if (string.IsNullOrEmpty(this.CustomerStyleNo))
            {
                Email EmailObj = context.Emails.FirstOrDefault(p => p.Dept == "MM" && p.Customer.Contains(this.ProjectNo.Substring(0, 4) + "/"));
                if (EmailObj != null)
                {
                    string Subject = string.Format("WO系統通知您，Project#：{0}  WO#: {1}  沒有錄入客款，請跟進!", this.ProjectNo, this.WorkOrderNo);
                    MailHelper mail = new MailHelper("WOAdministrator@phgmt.com.hk", "woadmin", EmailObj.EmailTo, EmailObj.EmailCc, "",
                        Subject, "", "", "svphhk01.phgmt.com.hk", 25, false);

                    mail.SendMail("WO Administrator");
                }
            }
            else //录入了客款后，检查是否有做工序表
            {
                string SqlStr = "select * from openquery(interbase, 'select * from v_cstyle_sah_wf where cust_style=''{0}''')";
                SqlStr = string.Format(SqlStr, this.CustomerStyleNo);

                DataTable dt = context.ExecuteDataTable(SqlStr, "dtStyleSAH_WF");
                if (dt != null && dt.Rows.Count > 0)
                {
                    this.WF = dt.Rows[0]["WF"] == null ? 0 : Convert.ToDouble(dt.Rows[0]["WF"].ToString());
                    this.Line_SAH = dt.Rows[0]["GSD_SAH"] == null ? 0 : Convert.ToDouble(dt.Rows[0]["GSD_SAH"].ToString());
                }
                else //這個Customer Style沒有做工序表
                {
                    //發郵件給IE部同事
                    string Subject = string.Format("WO系統通知您，客款：{0}  PH款：{1} 沒有做工序表，Option 3數據無法自動生成，請跟進!", this.CustomerStyleNo, this.StyleNo);
                    string EmailBody = string.Format("Project#: {0}  WO#: {1}  Customer Style#: {2}  PH Style#: {3}", this.ProjectNo, this.WorkOrderNo, this.CustomerStyleNo, this.StyleNo);

                    Email EmailObj = context.Emails.FirstOrDefault(p => p.Dept == "IE");
                    if (EmailObj != null)
                    {
                        //MailHelper mail = new MailHelper("WOAdministrator@phgmt.com.hk", "woadmin",
                        //    "SanyWen@phgmt.com.hk", "HaiqinYin@phgmt.com.hk,MikleHe@phgmt.com.hk", "", Subject, EmailBody, "", "svphhk01.phgmt.com.hk", 25, false);

                        MailHelper mail = new MailHelper("WOAdministrator@phgmt.com.hk", "woadmin", EmailObj.EmailTo, EmailObj.EmailCc, "",
                            Subject, EmailBody, "", "svphhk01.phgmt.com.hk", 25, false);

                        mail.SendMail("WO Administrator");
                    }
                }
            }

            //No. of Line need
            //this.Line_Default = 1;

            if (!this.NumberOfLine.HasValue)
            {
                this.NumberOfLine = 1;
            }

            //Line EFF(%)
            this.EFF_Default = 100;
            this.EFF = 100;

            //CU(%)
            this.CU_Default = 100;
            this.CU = 100;

            CalcFW();
        }

        private void CalcFW()
        {
            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
            double whours = this.Factory == "CL" ? 10.00 : 10.67;
            // Working Days = ( Qty x Line_SAH ) / ( Eff% x CU% x WF x Working Hours/day );
            // LW vs T3
            #region PerLine

            double a = (this.EFF ?? this.EFF_Default) / 100 * (this.CU ?? this.CU_Default) / 100 * (this.WF ?? 0) * whours;
            if (a == 0) WorkingDaysPerLine = 0;
            else
                WorkingDaysPerLine = (this.BulkQty ?? 0) * (this.Line_SAH ?? 0) / a;

            int d = Convert.ToInt32(Math.Ceiling(Math.Round(WorkingDaysPerLine, 4))) - 1;
            if (d < 1) d = 1; //WorkingDaysPerLine小於1時，d會等於-1  由david加入 2020-07-08

            //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
            DateTime? t3 = this.T3ShipCompleted;
            DateTime? def_LW = context.fn_DetachWorkDate(t3, d, this.Factory);

            if (def_LW.HasValue && t3.HasValue)
                CalendarDaysPerLine = (t3.Value - def_LW.Value).Days;
            else CalendarDaysPerLine = 0;

            //default_line:
            CalcDefaultLine();

            #endregion
        }


        ////修改EFF時，重算Option 3中的幾個日期，由David加入手 2020-06-28
        //partial void OnEFFChanged()
        //{
        //    CalcOpationDate();
        //}

        ////修改CU%時，重算Option 3中的幾個日期，由David加入手 2020-06-28
        //partial void OnCUChanged()
        //{
        //    CalcOpationDate();
        //}

        //private void CalcOpationDate()  //用戶修改了Line Eff、CU%時，需要重算Option 3中的幾個日期，由david加入 2020-06-28
        //{
        //    //option 3-FW:
        //    foreach (var item in this.WOChooseFWs)
        //    {
        //        if (item.Seq == 3)
        //        {
        //            //GetIEBInfor();
        //            CalcFW();

        //            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
        //            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
        //            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
        //            int d = Convert.ToInt32(Math.Ceiling(Math.Round(WorkingDaysLines, 1))) + this.FWvsLW_WorkingDay - 1;
        //            //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
        //            DateTime? t3 = this.T3ShipCompleted;
        //            item.FactoryWork = context.fn_DetachWorkDate(t3, d, this.Factory);

        //            item.FirstStation = context.fn_FirstStationByFW(item.FactoryWork, this.Project.Customer, this.Factory, this.Project.DSEQ);
        //            item.LineWork = context.fn_LWDateByFW(item.FactoryWork, this.Project.Customer, this.Factory, this.Project.DSEQ);

        //            item.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        //            item.AgreedFWDate = DateTime.Now;

        //            if (item.Chosen ?? false)
        //                item.DateChanged(false);
        //        }
        //    }
        //}

        public void CalcOption3Data() //(bool ANotCalcIfChosenOption)
        {
            if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;

            //if (ANotCalcIfChosenOption && this.WOChooseFWs.FirstOrDefault(p => (p.Chosen ?? false)) != null)
            //{
            //    return;  //如果已經勾選了Opation，即不再計算Opation 3
            //}

            this.GetIEBInfor();

            //不是W開頭的WO不計算 Option 3, 由David加入 2022-2-14
            if (this.WorkOrderNo[0] != 'W')
            {
                return;
            }

            //生成Option 3的數據
            var obj = this.WOChooseFWs.FirstOrDefault(p => p.Seq == 3);
            if (obj != null)
            {
                int d = Convert.ToInt32(Math.Ceiling(Math.Round(this.WorkingDaysLines, 4))) + this.FWvsLW_WorkingDay - 1;
                //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
                DateTime? t3 = this.T3ShipCompleted;
                obj.FactoryWork = context.fn_DetachWorkDate(t3, d, this.Factory);

                obj.FirstStation = context.fn_FirstStationByFW(obj.FactoryWork, this.Project.Customer, this.Factory, this.Project.DSEQ);
                obj.LineWork = context.fn_LWDateByFW(obj.FactoryWork, this.Project.Customer, this.Factory, this.Project.DSEQ);

                obj.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                obj.AgreedFWDate = DateTime.Now;

                if (obj.Chosen ?? false)
                    obj.DateChanged(false);
            }
        }

        //public bool CalcSAHByCustomerStyle()
        //{
        //    bool Flag = true;

        //    string SqlStr = "select * from openquery(interbase, 'select * from v_cstyle_sah_wf where cust_style=''{0}''')";
        //    SqlStr = string.Format(SqlStr, this.CustomerStyleNo);

        //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        //    RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;

        //    DataTable dt = context.ExecuteDataTable(SqlStr, "dtStyleSAH_WF");
        //    if (dt != null && dt.Rows.Count > 0)
        //    {
        //        this.WF = dt.Rows[0]["WF"] == null ? 0 : Convert.ToDouble(dt.Rows[0]["WF"].ToString());
        //        this.Line_SAH = dt.Rows[0]["GSD_SAH"] == null ? 0 : Convert.ToDouble(dt.Rows[0]["GSD_SAH"].ToString());
        //    }
        //    else
        //    {
        //        Flag = false; //這個Customer Style沒有做工序表
        //    }

        //    //No. of Line need
        //    this.Line_Default = 1;
        //    this.NumberOfLine = 1;

        //    //Line EFF(%)
        //    this.EFF_Default = 100;
        //    this.EFF = 100;

        //    //CU(%)
        //    this.CU_Default = 100;
        //    this.CU = 100;

        //    return Flag;
        //}


        partial void OnNumberOfLineChanged()
        {
            //option 3-FW:
            foreach (var item in this.WOChooseFWs)
            {
                if (item.Seq == 3)
                {
                    GetIEBInfor();
                    //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                    //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                    int d = Convert.ToInt32(Math.Ceiling(Math.Round(WorkingDaysLines, 1))) + this.FWvsLW_WorkingDay - 1;
                    //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
                    DateTime? t3 = this.T3ShipCompleted;
                    item.FactoryWork = context.fn_DetachWorkDate(t3, d, this.Factory);

                    item.FirstStation = context.fn_FirstStationByFW(item.FactoryWork, this.Project.Customer, this.Factory, this.Project.DSEQ);
                    item.LineWork = context.fn_LWDateByFW(item.FactoryWork, this.Project.Customer, this.Factory, this.Project.DSEQ);

                    item.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    item.AgreedFWDate = DateTime.Now;

                    if (item.Chosen ?? false)
                        item.DateChanged(false);
                }
            }
        }


        internal void CalcDefaultLine()
        {
            foreach (var item in this.WOChooseFWs)
            {
                if (item.Seq == 2)
                {
                    double d2 = 0;
                    double d1 = 0;
                    //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
                    DateTime? t3 = this.T3ShipCompleted;

                    // calc default lines:
                    //if (item.LineWork.HasValue && t3.HasValue)
                    //    d2 = (t3.Value - item.LineWork.Value).Days + 1;

                    //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                    //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                    if (item.LineWork.HasValue)
                    {
                        d2 = (context.fn_GetWorkingDays(item.LineWork, t3, this.Factory) ?? 0) + 1;

                        d1 = this.WorkingDaysPerLine;
                        this.Line_Default = d2 == 0 || d1 == 0 ? (double?)null : d1 / d2;
                    }
                    else this.Line_Default = null;

                }
            }
        }



        public List<WOColor> WOFWStartDateByColors
        {
            get
            {
                return GetWOColors();
            }
        }

        public List<WOColor> GetWOColors()
        {
            int i = 1;
            List<WOColor> lists = new List<WOColor>();
            var WOColors = this.WorkOrderColors.OrderBy(p => p.ColorCode);

            foreach (var obj in WOColors)
            {
                lists.Add(new WOColor()
                {
                    SeqNo = i++,
                    FWStartDate = this.FactoryWorkShipCompleted,
                    ColorCode = obj.ColorCode,

                    //由David加入以下三個字段 2020-08-05
                    BulkShipmentQty = obj.BulkQty,
                    BulkSampleQtyByPPWs = GetSampleQtyByPPWs(this, obj.ColorCode),
                    BulkSampleQtyBySewingWs = GetSampleQtyBySewingWs(this, obj.ColorCode)
                });
            }

            return lists;
        }

        int? GetSampleQtyByPPWs(WorkOrder AWO, string AColorCode)
        {
            if (AWO.CurrentDataContext == null)
            {
                AWO.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            }

            return (AWO.CurrentDataContext as RWOSOPCDataContext).WorkOrderSamples.Where(p => p.WorkOrderNo == AWO.WorkOrderNo && p.ColorCode == AColorCode &&
                p.WorkShop.StartsWith("PPWs")).Select(p => p.SampleQty).Sum();
        }

        int? GetSampleQtyBySewingWs(WorkOrder AWO, string AColorCode)
        {
            if (AWO.CurrentDataContext == null)
            {
                AWO.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            }

            return (AWO.CurrentDataContext as RWOSOPCDataContext).WorkOrderSamples.Where(p => p.WorkOrderNo == AWO.WorkOrderNo && p.ColorCode == AColorCode &&
                !p.WorkShop.StartsWith("PPWs")).Select(p => p.SampleQty).Sum();
        }



        public List<FWColor> FWColors
        {
            get
            {
                return GetFWColors();
            }
        }

        private List<FWColor> GetFWColors()
        {
            List<FWColor> fcs = new List<FWColor>();

            var aa = from a in this.WorkOrderColors
                     orderby a.FWOpt2
                     select a;
            int i = 0;
            DateTime dt = DateTime.MaxValue;
            FWColor fc = new FWColor();
            foreach (var item in aa)
            {
                if ((item.FWOpt2 ?? DateTime.MinValue) != dt)
                {
                    dt = (item.FWOpt2 ?? DateTime.MinValue);
                    ++i;
                    fc = new FWColor();
                    fc.WO = this;
                    fc.Seq = i;
                    fc.FW2 = item.FWOpt2;
                    fc.FW4 = item.FWOpt4;
                    fc.FW1 = item.WorkOrder.Option1FW;
                    fc.FW3 = item.WorkOrder.Option3FW;
                    fc.ColorCode = item.ColorCode;
                    fcs.Add(fc);
                }
                else
                {
                    fc.ColorCode += string.Format("  {0}", item.ColorCode);
                }
            }



            return fcs;
        }

        #endregion

        #region WOc
        public string WOColors
        {
            get
            {
                string s = "";
                foreach (var woc in this.WorkOrderColors)
                {
                    s += string.Format(", {0}", woc.ColorCode);
                }
                if (!string.IsNullOrEmpty(s))
                    s = s.Substring(2);
                return s;
            }
        }
        #endregion


        //Xsj20170210:Add FactoryWorkShipCompleted_SpecialFactory -------------------------------
        //對應發往廣西廠的WO，需要再原來LineWorkShipCompleted的基礎上+2day.
        public DateTime? LineWorkShipCompleted_SpecialFactory
        {
            get
            {
                return this.LineWorkShipCompleted; //由David修改算法， 2020-06-29

                //DateTime? dt;
                //if (this.LineWorkShipCompleted == null
                //    || this.ProductFactory == "SL")
                //{
                //    dt = this.LineWorkShipCompleted;
                //}
                //else
                //{
                //    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                //    dt = (from val in context.LWPM_Calendars
                //          where val.TPLANT == this.ProductFactory
                //             && (val.SECTO ?? 0) + (val.SECTT ?? 0) + (val.SECTC ?? 0) > 0
                //             && val.DATE1 >= this.LineWorkShipCompleted.Value.AddDays(2)
                //          select val.DATE1).Min();
                //}
                //return dt;
            }
        }

        //對應發往廣西廠的WO，需要再原來LineWorkShipCompleted的基礎上+2day.
        public DateTime? LineWorkStartShip_SpecialFactory
        {
            get
            {
                return this.LineWorkStartShip; //由David修改算法， 2020-06-29

                //DateTime? dt;
                //if (this.LineWorkStartShip == null
                //    || this.ProductFactory == "SL")
                //{
                //    dt = this.LineWorkStartShip;
                //}
                //else
                //{
                //    int days = 0;
                //    PH.Platform.Misc.BO.PHPlatformMiscDataContext pContext = WorkOrder.PlatCtx;
                //    PH.Platform.Misc.BO.Misc_DataDictionary spDays = pContext.Misc_DataDictionaries.Where(p => p.DataType == "AssignProductFactory"
                //        && p.DataCode == this.ProductFactory).FirstOrDefault();
                //    if (spDays != null)
                //    {
                //        if (!int.TryParse(spDays.DataName, out days))
                //        {
                //            days = 0;
                //        }
                //    }

                //    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                //    dt = (from val in context.LWPM_Calendars
                //          where val.TPLANT == this.ProductFactory
                //            && (val.SECTO ?? 0) + (val.SECTT ?? 0) + (val.SECTC ?? 0) > 0
                //            && val.DATE1 >= this.LineWorkStartShip.Value.AddDays(days)
                //          select val.DATE1).Min();
                //}
                //return dt;
            }
        }


        static PH.Platform.Misc.BO.PHPlatformMiscDataContext _platCtx;
        public static PH.Platform.Misc.BO.PHPlatformMiscDataContext PlatCtx
        {
            get
            {
                if (_platCtx == null)
                {
                    _platCtx = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
                    _platCtx.CommandTimeout = 1000;
                }
                return _platCtx;
            }

        }

        //Xsj:2017-02-13 Add to remark the Product Factory
        public string ProductFactory
        {
            get
            {
                string val = this.Project == null ? "" : this.Project.Factory;
                if (this.SpecialFactory != null && this.SpecialFactory.Trim() != "")
                {
                    val = this.SpecialFactory.Trim();
                }
                return val;
            }
        }

        //-----------------------End-------------------------------------------------------------

        //根據PH Style + Factory取得HSCode顯示在WO Report中, 由David加入 2020-07-08
        public string HSCode
        {
            get
            {
                if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                string SqlStr = string.Format("select dbo.fn_GetHSCode ('{0}', '{1}')", this.StyleNo, this.Factory);
                DataTable dt = (this.CurrentDataContext as RWOSOPCDataContext).ExecuteDataTable(SqlStr, "dtHSCode");
                if (dt == null || dt.Rows.Count == 0 || dt.Rows[0][0] == null)
                {
                    return "";
                }

                return dt.Rows[0][0].ToString();
            }
        }

        public string CompositionAndHSCode  //用於WO Report中顯示成份 + HSCode 由David加入 2020-07-08
        {
            get
            {
                return string.Format("{0}\r\nH.S Code: {1}", this.Composition.Trim(), this.HSCode.Trim());
            }
        }

        //public string ChosenOptionShow //WO中選擇得的是Option 幾?  由David加入 2020-07-08
        //{
        //    get
        //    {
        //        var obj = this.WOChooseFWs.FirstOrDefault(p => p.Chosen ?? false);
        //        return obj == null ? "" : obj.Seq.ToString();
        //    }
        //}

    }

    [Table(Name = "dbo.getSampleOrder")]
    public partial class getSampleOrder
    {

        private string _Customer;

        private string _CustomerCode;

        private string _Season;

        private string _ProjectNo;

        private string _ColorCode;

        private string _CustomerStyleNo;

        private string _PHStyleNo;

        private string _WorkOrderNo;

        private string _DBC;

        [Column(Storage = "_Customer", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }
        [Column(Storage = "_Season", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string Season
        {
            get
            {
                return this._Season;
            }
            set
            {
                if ((this._Season != value))
                {
                    this._Season = value;
                }
            }
        }
        [Column(Storage = "_ProjectNo", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string ProjectNo
        {
            get
            {
                return this._ProjectNo;
            }
            set
            {
                if ((this._ProjectNo != value))
                {
                    this._ProjectNo = value;
                }
            }
        }
        [Column(Storage = "_CustomerStyleNo", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string CustomerStyleNo
        {
            get
            {
                return this._CustomerStyleNo;
            }
            set
            {
                if ((this._CustomerStyleNo != value))
                {
                    this._CustomerStyleNo = value;
                }
            }
        }
        [Column(Storage = "_PHStyleNo", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string PHStyleNo
        {
            get
            {
                return this._PHStyleNo;
            }
            set
            {
                if ((this._PHStyleNo != value))
                {
                    this._PHStyleNo = value;
                }
            }
        }
        [Column(Storage = "_WorkOrderNo", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string WorkOrderNo
        {
            get
            {
                return this._WorkOrderNo;
            }
            set
            {
                if ((this._WorkOrderNo != value))
                {
                    this._WorkOrderNo = value;
                }
            }
        }
        [Column(Storage = "_DBC", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string DBC
        {
            get
            {
                return this._DBC;
            }
            set
            {
                if ((this._DBC != value))
                {
                    this._DBC = value;
                }
            }
        }

        public string CustomerCode
        {
            get
            {
                if (_CustomerCode == null)
                {
                    //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
                    CustomerList list = new CustomerList();
                    _CustomerCode = list.GetCustomerByCode(this.Customer);
                }
                return _CustomerCode;
            }
        }


    }

    partial class WOChooseFW : BaseEntity
    {
        public string ProjectNo
        {
            get
            {
                return this.WorkOrder.Project.ProjectNo;
            }
        }
        public string Factory
        {
            get
            {
                return this.WorkOrder.Project.Factory;
            }
        }
        public string Customer
        {
            get
            {
                return this.WorkOrder.Project.Customer;
            }
        }
        public string WOColors { get { return this.WorkOrder.WOColors; } }
        public string Ingredients
        {
            get
            {
                string s = "";
                switch (this.Seq)
                {
                    case 1:
                        s = "The date is based on customer profile's SW CT to calculate";
                        break;
                    case 2:
                        s = "The date is provided by Merchandising Section based on the date that production sample and related materials to be standby";
                        break;
                    case 3:
                        s = "The date is based on IEBOO measure on quantities";
                        break;
                    case 4:
                        s = "The date is agreed by both parties, if option 1-3 is not the best FW Start Date";
                        break;
                    default:
                        break;
                }
                return s;
            }
        }

        public int NonWorkingDays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                DateTime? t3 = this.WorkOrder.T3ShipCompleted;
                return (context.fn_GetNonWorkingDays(this.LineWork, t3, this.WorkOrder.Factory) ?? 0);
            }
        }
        public int LWWindow
        {
            get
            {
                DateTime? t3 = this.WorkOrder.T3ShipCompleted;
                if (this.LineWork.HasValue && t3.HasValue)
                    return (t3.Value - this.LineWork.Value).Days + 1;
                else
                    return 0;
            }
        }

        public int? Opt3vs1
        {
            get
            {
                return this.WorkOrder.Opt3vs1;
            }
        }
        public int? Opt3vs2
        {
            get
            {
                return this.WorkOrder.Opt3vs2;
            }
        }
        public int? Opt2vs1
        {
            get
            {
                return this.WorkOrder.Opt2vs1;
            }
        }
        public int? Opt4vs2
        {
            get
            {
                return this.WorkOrder.Opt4vs2;
            }
        }
        public int? Opt4vs3
        {
            get
            {
                return this.WorkOrder.Opt4vs3;
            }
        }


        partial void OnFactoryWorkChanged()
        {
            //double d2 = 0;
            //double d1 = 0;
            //DateTime? t3 = this.WorkOrder.Project.IsShipWindow ? this.WorkOrder.T3StartShip : this.WorkOrder.T3ShipCompleted;

            if (this.Seq == 2 || this.Seq == 4)//option 2,4
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                this.FirstStation = context.fn_FirstStationByFW(this.FactoryWork, this.WorkOrder.Project.Customer, this.WorkOrder.Factory, this.WorkOrder.Project.DSEQ);
                this.LineWork = context.fn_LWDateByFW(this.FactoryWork, this.WorkOrder.Project.Customer, this.WorkOrder.Factory, this.WorkOrder.Project.DSEQ);

                this.WorkOrder.CalcDefaultLine();

                if (this.Chosen ?? false)
                    DateChanged(false);
            }


        }
        partial void OnChosenChanged()
        {
            if (this.Chosen ?? false)
            {
                DateChanged(true);
                foreach (var item in this.WorkOrder.WOChooseFWs)
                {
                    if (this.Seq == item.Seq) continue;
                    item.Chosen = false;
                }
            }
        }
        internal void DateChanged(bool reconfirm)
        {
            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext; //all like this remark by joseph 15/10/17 
            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
            //wo
            if (this.WorkOrder.IsShipWindow)
            {
                this.WorkOrder.FirstStationStartShip = this.FirstStation;
                this.WorkOrder.FactoryWorkStartShip = this.FactoryWork;
                this.WorkOrder.LineWorkStartShip = this.LineWork;
            }
            else
            {
                this.WorkOrder.FirstStationShipCompleted = this.FirstStation;
                this.WorkOrder.FactoryWorkShipCompleted = this.FactoryWork;
                this.WorkOrder.LineWorkShipCompleted = this.LineWork;
            }

            #region wo Approval cycle
            if (reconfirm)
            {
                this.WorkOrder.OAConfirm = "";
                this.WorkOrder.OAConfirmDate = null;

                this.WorkOrder.PPCConfirm = "";
                this.WorkOrder.PPCConfirmDate = null;

                this.WorkOrder.TopConfirm = "";
                this.WorkOrder.TopConfirmDate = null;

                this.WorkOrder.HeaderConfirm = "";
                this.WorkOrder.HeaderConfirmDate = null;

                this.WorkOrder.ActionStatus = null;
                this.WorkOrder.ActionStatusDate = null;
                this.WorkOrder.UpdateDate = DateTime.Now;
                //this.WorkOrder.Version
            }
            #endregion

            // woc
            foreach (var woc in this.WorkOrder.WorkOrderColors)
            {
                //if (string.IsNullOrEmpty(woc.ModifyPerson))
                //    woc.FactoryWork = this.FactoryWork;
                // rwo
                foreach (var rwo in woc.RoundWorkOrders)
                {
                    rwo.WOVersion = this.WorkOrder.Version;
                    //if (rwo.RoundNo != 1) continue;

                    if (this.Seq == 1 || this.Seq == 3)
                    {
                        rwo.FirstStation = this.FirstStation;
                        rwo.LineWorkStartDate = this.LineWork;
                        rwo.FactoryWorkStartDate = this.FactoryWork;
                    }
                    else
                    {
                        rwo.FactoryWorkStartDate = (this.Seq == 2) ? woc.FWOpt2 : woc.FWOpt4;
                        rwo.FirstStation = context.fn_FirstStationByFW(rwo.FactoryWorkStartDate, this.WorkOrder.Project.Customer, this.WorkOrder.Factory, this.WorkOrder.Project.DSEQ);
                        rwo.LineWorkStartDate = context.fn_LWDateByFW(rwo.FactoryWorkStartDate, this.WorkOrder.Project.Customer, this.WorkOrder.Factory, this.WorkOrder.Project.DSEQ);
                    }

                    //rwo.LCLExFtyDate = this.WorkOrder.LCLExFtyShipCompleted;
                    //rwo.FCLExFtyDate = this.WorkOrder.FCLExFtyShipCompleted;
                    //rwo.T3Date = this.WorkOrder.T3ShipCompleted;
                    //rwo.LineWorkStartDate = this.WorkOrder.LineWorkShipCompleted;
                    //rwo.FactoryWorkStartDate = this.WorkOrder.FactoryWorkShipCompleted;
                    //rwo.FirstQNStartDate = this.WorkOrder.FirstStationShipCompleted;


                    #region rwo Approval cycle
                    if (reconfirm)
                    {
                        rwo.OAConfirm = "";
                        rwo.OAConfirmDate = null;

                        rwo.PPCConfirm = "";
                        rwo.PPCConfirmDate = null;

                        rwo.TopConfirm = "";
                        rwo.TopConfirmDate = null;

                        rwo.HeaderConfirm = "";
                        rwo.HeaderConfirmDate = null;

                        rwo.ActionStatus = null;
                        rwo.ActionStatusDate = null;
                        rwo.WOReviseDate = DateTime.Now;
                        rwo.AmendDate = DateTime.Now;

                    }
                    #endregion
                }
            }


        }

        public DateTime? T3 { get { return this.WorkOrder.T3; } }

    }
    partial class Style : BaseEntity
    {
        RWOSOPCDataContext context = WOPOHelper.RwoCtx;//PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
        public decimal? LablingCost
        {
            get
            {

                return context.PackagingMaterials.Where(P => P.MRGroup == "Labeling").Select(S => S.AllInPrice).Sum();
            }
        }
        public decimal? PackagingCost
        {
            get
            {
                return context.PackagingMaterials.Where(P => P.MRGroup == "Packaging").Select(S => S.AllInPrice).Sum();
            }
        }
        public decimal? PackingCost
        {
            get
            {
                return context.PackagingMaterials.Where(P => P.MRGroup == "Packing").Select(S => S.AllInPrice).Sum();
            }
        }
        public decimal? LablingCostPer
        {
            get
            {
                return Total_Cost > 0 ? LablingCost / Total_Cost : 0;
            }
        }
        public decimal? PackagingCostPer
        {
            get
            {
                return Total_Cost > 0 ? PackagingCost / Total_Cost : 0;
            }
        }
        public decimal? PackingCostPer
        {
            get
            {
                return Total_Cost > 0 ? PackingCost / Total_Cost : 0;
            }
        }
        public decimal Total_Cost
        {
            get
            {
                return (LablingCost ?? 0) + (PackagingCost ?? 0) + (PackingCost ?? 0);
            }
        }
        public IEnumerable<CurrencyExRate> ListCurrency
        {
            get
            {

                return from a in this.PackagingMaterials group a.Currency by new { a.Currency, a.ExRate } into og select new CurrencyExRate { Currency = og.Key.Currency, Exchange = og.Key.ExRate };

            }
        }
    }
    partial class WorkOrderVersion : BaseEntity
    { }

    partial class WorkOrderColor : BaseEntity
    {
        #region
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.WorkOrder.UpdateDate = DateTime.Now;
            }

            return base.Save();
        }

        public string ProjectNo
        {
            get
            {
                return this.WorkOrder.Project.ProjectNo;
            }
        }
        public string Factory
        {
            get
            {
                return this.WorkOrder.Project.Factory;
            }
        }
        public string Customer
        {
            get
            {
                return this.WorkOrder.Project.Customer;
            }
        }

        public string CustStyleNo
        {
            get
            {
                return this.WorkOrder.CustomerStyleNo;
            }
        }

        public int TotalRWO
        {
            get
            {
                return this.RoundWorkOrders.Count;

            }
        }

        public int TotalQty
        {
            get
            {
                return (SampleQty ?? 0) + (BulkQty ?? 0);

            }
        }
        public int? SampleQty
        {
            get
            {
                int? Qty = this.WorkOrderSKUs.Sum(p => p.SampleQty);
                return Qty;

            }
        }


        //用于计算主表（WorkOrder）中的 BulkShipmentQty  Add by shulin 2021-11-09
        public int? DespatchQtyShow
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                // List<WorkOrderSKU> aa = this.WorkOrderSKUs.ToList();

                return this.WorkOrderSKUs.Select(p => p.DespatchQty).Sum();
            }
        }

        public int? SampleQtyShow
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                return (CurrentDataContext as RWOSOPCDataContext).WorkOrderSamples.Where(p =>
                    p.WorkOrderNo == this.WorkOrderNo && p.ColorCode == this.ColorCode).Select(p => p.SampleQty).Sum();
            }
        }




        /************************************************************/



        //計算PP Sample Qty 由David加入2020-08-22
        public int? SampleQty_PPWs
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                return (CurrentDataContext as RWOSOPCDataContext).WorkOrderSamples
                    .Where(p => p.WorkOrderNo == this.WorkOrderNo && p.ColorCode == this.ColorCode && p.WorkShop.StartsWith("PP"))
                    .Select(p => p.SampleQty).Sum();
            }
        }

        //計算other Sample Qty(除了PP) 由David加入2020-08-22
        public int? SampleQty_OtherWs
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                return (CurrentDataContext as RWOSOPCDataContext).WorkOrderSamples
                    .Where(p => p.WorkOrderNo == this.WorkOrderNo && p.ColorCode == this.ColorCode && !p.WorkShop.StartsWith("PP"))
                    .Select(p => p.SampleQty).Sum();
            }
        }



        public int? BulkQty
        {
            get
            {
                int? Qty = this.WorkOrderSKUs.Sum(p => p.BulkQty);
                return Qty;
            }
        }

        public DateTime? FWStartDate
        {
            get
            {
                switch (this.WorkOrder.FWOption ?? 0)
                {
                    case 1:
                    case 3:
                        return (this.WorkOrder.IsShipWindow) ? this.WorkOrder.FactoryWorkStartShip : this.WorkOrder.FactoryWorkShipCompleted;
                    case 2:
                        return this.FWOpt2;
                    case 4:
                        return this.FWOpt4;
                    default:
                        goto case 3;
                }

            }
        }
        public DateTime? ExFtyDate
        {
            get { return this.WorkOrder.LCLExFtyShipCompleted; }
        }

        #endregion
    }
    partial class WorkOrderSample : BaseEntity
    {
        public int? TotalDespatchQty { get; set; }
        //{
        //    get
        //    {
        //        return (this.SampleQty ?? 0) - (this.KeepQty ?? 0);
        //    }
        //    set { }
        //}

        public string SLevel  //Appv, Test, Ref三种Level
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }
                string SqlStr = string.Format("select SLevel from [PH.DespatchSample]..SampleTypeMasterDB where SampleTypeCode = '{0}'", this.SampleType);
                DataTable dt = (CurrentDataContext as RWOSOPCDataContext).ExecuteDataTable(SqlStr, "dt");
                if (dt != null && dt.Rows.Count > 0)
                {
                    return dt.Rows[0]["SLevel"].ToString();
                }
                return "";
            }
            set { }
        }

        partial void OnValidate(ChangeAction action)
        {
            ////计算Bulk Smpl (PP Ws)、Bulk Smpl (Sewing Ws)
            //this.WorkOrderSKU.WorkOrderColor.WorkOrder.ReCalulateSampleQty();
        }

        #region
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.WorkOrderSKU.WorkOrderColor.WorkOrder.UpdateDate = DateTime.Now;
            }

            return base.Save();
        }
        public override bool Delete()
        {
            int sampleQty = 0;
            foreach (WorkOrderSample item in this.WorkOrderSKU.WorkOrderSamples)
            {
                sampleQty += (item.SampleQty ?? 0);
            }

            int delSampleQty = (this.SampleQty ?? 0);
            WorkOrderSKU sku = this.WorkOrderSKU;

            sku.SampleQty = sampleQty - delSampleQty;
            //sku.Save();
            this.WorkOrderSKU.WorkOrderColor.WorkOrder.UpdateDate = DateTime.Now;

            bool b = base.Delete();

            //if (b)
            //{
            //    sku.SampleQty = sampleQty - delSampleQty;
            //    sku.Save();
            //}
            return b;
        }
        public RWOSOPCDataContext Context
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //}
                //return this.CurrentDataContext as RWOSOPCDataContext;
                return WOPOHelper.RwoCtx;
            }
        }

        partial void OnCreated()
        {
            this.SampleID = System.Guid.NewGuid();
        }

        partial void OnSampleQtyChanged()
        {
            int sampleQty = 0;
            foreach (WorkOrderSample item in this.WorkOrderSKU.WorkOrderSamples)
            {
                sampleQty += (item.SampleQty ?? 0);
            }
            this.WorkOrderSKU.SampleQty = sampleQty;
        }

        public string ProjectNo { get { return this.WorkOrderSKU.WorkOrderColor.ProjectNo; } }
        public string Factory { get { return this.WorkOrderSKU.WorkOrderColor.Factory; } }
        public string PHStyleNo { get { return this.WorkOrderSKU.WorkOrderColor.WorkOrder.StyleNo; } }
        public string CustStyleNo { get { return this.WorkOrderSKU.WorkOrderColor.WorkOrder.CustomerStyleNo; } }

        public string CustCup
        {
            get
            {
                return this.WorkOrderSKU.CustCup;
            }
        }

        public string SizeDesc
        {
            get
            {
                return this.WorkOrderSKU.SizeDesc;
            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "size" && o.Value.ToLower() == this.WorkOrderSKU.Size.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }
        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "cup" && o.Value.ToLower() == this.Cup.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public string SymbolShow
        {
            get
            {
                if (!string.IsNullOrEmpty(this.WorkShop) && this.WorkShop.StartsWith("PPWs"))
                    return "**";

                //this.Symbol.Trim();
                return string.IsNullOrEmpty(this.Symbol) ? "" : this.Symbol.Trim();
            }
        }

        #endregion

    }
    partial class WorkOrderSKU : BaseEntity
    {
        #region
        #region Extensibility Method Definitions
        partial void OnSampleQtyChanging(System.Nullable<int> value);
        partial void OnSampleQtyChanged();
        #endregion

        #region Save
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.WorkOrderColor.WorkOrder.UpdateDate = DateTime.Now;
            }

            return base.Save();
        }

        //public override bool Save()
        //{
        //    RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
        //    if (context == null) return base.Save();

        //    IList<object> updateList = context.GetChangeSet().Updates;
        //    foreach (object obj in updateList)
        //    {
        //        if (obj is WorkOrderSKU)
        //        {
        //            WorkOrderSKU s = obj as WorkOrderSKU;
        //            this.AfterUpdateSKU(s);
        //        }
        //    }

        //    if (this.GetChangeSet().Updates.Count > 0)
        //        this.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);

        //    return true;
        //}
        //public void AfterUpdateSKU(WorkOrderSKU instance)
        //{
        //    //WorkOrderSKU s = instance;
        //    //string CustomerID = s.SampleOrder.CustomerID;
        //    //string SampleOrderID = s.SampleOrderID;
        //    //string StyleID = s.StyleID;

        //}
        #endregion

        public string SizeDesc
        {
            get
            {
                return this.CustSize;
            }
        }

        //private string GetSizeDesc()
        //{
        //    bool isfrench = this.WorkOrderColor.WorkOrder.Project.IsFrenchCusomter;

        //    string sizeDesc = string.Format("{0}{1}", (isfrench && this.WorkOrderColor.WorkOrder.SizeMatrix == "6A") ? "F-" : "", this.CustSize);
        //    return sizeDesc;
        //}

        /// <summary>
        /// Xsj:從WorkOrderSample表獲取SampleQty
        /// </summary>
        private int? _SampleQty;
        /// <summary>
        /// Xsj:從WorkOrderSample表獲取SampleQty
        /// </summary>
        public System.Nullable<int> SampleQty
        {
            get
            {
                _SampleQty = 0;
                foreach (WorkOrderSample item in this.WorkOrderSamples)
                {
                    _SampleQty += (item.SampleQty ?? 0);
                }
                return this._SampleQty;
            }
            set
            {
                if ((this._SampleQty != value))
                {
                    int? oldVal = this._SampleQty;
                    this.OnSampleQtyChanging(value, oldVal);
                    this.SendPropertyChanging();
                    this._SampleQty = value;
                    this.SendPropertyChanged("SampleQty");
                    this.OnSampleQtyChanged();
                }
            }
        }
        public int? BulkQty
        {
            get
            {
                //if (!this.DespatchQty.HasValue) return null;

                return (this.DespatchQty ?? 0) - (this.SampleQty ?? 0);
            }
        }

        private void OnSampleQtyChanging(int? value, int? oldVal)
        {
            //int? oldVal = this.SampleQty;
            int? newVal = value;
            int i = (newVal ?? 0) - (oldVal ?? 0);

            string cono = this.Company;
            string sales = this.SalesOrderNo;
            string wo = this.WorkOrderNo;
            string color = this.ColorCode;
            string size = this.Size;
            string cup = this.Cup;

            if (this.WorkOrderColor != null && this.WorkOrderColor.RoundWorkOrders != null)
            {
                foreach (RoundWorkOrder rwo in this.WorkOrderColor.RoundWorkOrders)
                {
                    if (rwo.RoundNo == 1)
                    {
                        if (rwo.RoundWorkOrderDetails == null)
                            return;

                        foreach (RoundWorkOrderDetail item in rwo.RoundWorkOrderDetails)
                        {
                            if (item.Company == cono && item.SalesOrderNo == sales && item.WorkOrderNo == wo && item.ColorCode == color && item.Size == size && item.Cup == cup)
                            {
                                item.SampleQty = newVal;
                                item.BulkQty = (item.BulkQty ?? 0) - i;
                                break;
                            }
                        }
                        break;
                    }
                }
            }
        }

        public RWOSOPCDataContext Context
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //}
                //return this.CurrentDataContext as RWOSOPCDataContext;
                return WOPOHelper.RwoCtx;
            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "size" && o.Value.ToLower() == this.Size.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }
        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "cup" && o.Value.ToLower() == this.Cup.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }
        #endregion



        #region //Xsj20160405:應客戶的要求，對SampleQty進行RWO的拆分

        /// <summary>
        /// Xsj:從WorkOrderSample表獲取類型為PPWS的SampleQty
        /// </summary>
        private int? _ppwsSampleQty;
        /// <summary>
        /// Xsj:從WorkOrderSample表獲取SampleQty
        /// </summary>
        public System.Nullable<int> PPWsSampleQty
        {
            get
            {
                _ppwsSampleQty = 0;
                foreach (WorkOrderSample item in this.WorkOrderSamples)
                {
                    if (item.WorkShop != null && item.WorkShop.StartsWith("PPWs"))
                    {
                        _ppwsSampleQty += (item.SampleQty ?? 0);
                    }
                }
                return this._ppwsSampleQty;
            }
        }

        /// <summary>
        /// Xsj:從WorkOrderSample表獲取類型為PPWS的SampleQty
        /// </summary>
        private int? _pwsSampleQty;
        /// <summary>
        /// Xsj:從WorkOrderSample表獲取SampleQty
        /// </summary>
        public System.Nullable<int> PWsSampleQty
        {
            get
            {
                _pwsSampleQty = 0;
                foreach (WorkOrderSample item in this.WorkOrderSamples)
                {
                    if (item.WorkShop != null && item.WorkShop.StartsWith("PWs"))
                    {
                        _pwsSampleQty += (item.SampleQty ?? 0);
                    }
                }
                return this._pwsSampleQty;
            }
        }
        #endregion

    }


    partial class ShipmentSchedule : BaseEntity
    {
        public decimal ClientPriceTotal
        {
            get
            {
                return (this._ClientPrice ?? 0) * (this._Quantity ?? 0);
            }
        }



        public decimal ToPYHKPrice
        {
            get
            {
                return (this._ClientPrice ?? 0) * Convert.ToDecimal(0.85);
            }
        }

        public decimal ToPYHKPriceTotal
        {
            get
            {
                return ToPYHKPrice * (this._Quantity ?? 0);
            }
        }

        public decimal CMTPriceTotal
        {
            get
            {
                return (this._CMTPrice ?? 0) * (this._Quantity ?? 0);
            }
        }
        public decimal MaterialPriceTotal
        {
            get
            {
                return (this._MaterialPrice ?? 0) * (this._Quantity ?? 0);
            }
        }

        int i;

        //public int Iteml1
        //{
        //    get
        //    {
        //          return i++;
        //    }
        //}


        public int Iteml1
        {
            get;
            set;

        }

    }


    partial class WOSKURatio : BaseEntity
    {
        #region
        partial void OnCreated()
        {
            this.RatioID = System.Guid.NewGuid();
        }

        public RWOSOPCDataContext Context
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //}
                //return this.CurrentDataContext as RWOSOPCDataContext;
                return WOPOHelper.RwoCtx;
            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "size" && o.Value.ToLower() == this.Size.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }
            }
        }

        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "cup" && o.Value == this.Cup
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }
            }
        }
        #endregion
    }

    partial class RoundWorkOrder : BaseEntity
    {
        public string CWOQtyShow //由David加入 2021-12-31, 用於CWO Report中顯示
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                RWOSOPCDataContext db = this.CurrentDataContext as RWOSOPCDataContext;

                var lists = db.RoundWorkOrderDetails.Where(p => p.SalesOrderNo == this.SalesOrderNo && p.WorkOrderNo == this.WorkOrderNo &&
                    p.ColorCode == this.ColorCode && p.RoundNo == this.RoundNo);

                int BulkQty = lists.Select(p => p.BulkQty ?? 0).Sum();
                int SampleQty = lists.Select(p => p.SampleQty ?? 0).Sum();

                return string.Format("{0}(={1}+{2})", BulkQty + SampleQty, BulkQty, SampleQty);
            }
        }


        ////如果aT3与T3日期一样时，用于显示aT3
        //public DateTime? aT3DefaultShow
        //{
        //    get
        //    {
        //        return this.T3Date;
        //    }
        //}

        //public string aT3DateAccept
        //{
        //    get
        //    {
        //        return string.IsNullOrEmpty(this.AjustT3DateConfirm) ? "N" : "Y";
        //    }
        //    set 
        //    {
        //        result
        //    }
        //}

        #region
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.AmendDate = DateTime.Now;
                this.WOReviseDate = DateTime.Now;
            }
            return base.Save();
        }


        /// <summary>
        /// 讽玡琌Confirm瑈祘˙艼
        /// </summary>
        public int CurrentIndex
        {
            get
            {
                int i = 0;
                if (!string.IsNullOrEmpty(this.OAConfirm))
                {
                    i = 0;
                }
                if (!string.IsNullOrEmpty(this.PPCConfirm))
                {
                    i = 1;
                }

                if (!string.IsNullOrEmpty(this.TopConfirm))
                {
                    i = 2;
                }

                if (!string.IsNullOrEmpty(this.HeaderConfirm))
                {
                    i = 3;
                }
                return i;
            }
        }

        public string RoundNos
        {
            get
            {
                return string.Format("{0}/{1}", this.RoundNo, this.RoundTotal ?? 0);

            }
        }

        /// <summary>
        /// 
        /// </summary>
        public string WOcNo
        {
            get
            {
                return string.Format("{0}-{1}/{2}", this.WorkOrderNo, this.WorkOrderColor.RoundNo ?? 0, this.WorkOrderColor.RoundTotal ?? 0);
            }
        }

        /// <summary>
        /// 近礷
        /// </summary>
        public string RoNo
        {
            get
            {
                return string.Format("{0}-{1}", this.WOcNo, this.RoundNos);
            }
        }

        /// <summary>
        /// PH蹿腹
        /// </summary>
        public string PHStyleNO
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.StyleNo;
            }
        }
        /// <summary>
        /// め蹿腹
        /// </summary>
        public string CustStyleNO
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.CustomerStyleNo;
            }
        }

        public string WONrOfColor
        {
            get
            {
                return string.Format("{0}", this.WorkOrderColor.RoundTotal ?? 0);
            }
        }

        public string WONrOfRound
        {
            get
            {
                return string.Format("{0}", this.WorkOrderColor.RoundTotal ?? 0);
            }
        }

        //public int LWShipWindow
        //{
        //    get
        //    {
        //        if (this.LineWorkStartShip.HasValue && this.T3ShipCompleted.HasValue)
        //            return (this.T3ShipCompleted.Value - this.LineWorkStartShip.Value).Days;
        //        else
        //            return 0;
        //    }
        //}
        public int LWWindow
        {
            get
            {
                if (this.LineWorkStartDate.HasValue && this.T3Date.HasValue)
                    //return (this.T3Date.Value - this.LineWorkStartDate.Value).Days + 1;
                    //Xsj20170211:注釋掉以上代碼，添加以下代碼
                    //對應發往廣西廠的WO，需要再原來LineWorkStartDate的基礎上+2day.
                    return (this.T3Date.Value - this.LineWorkStartDate_SpecialFactory.Value).Days + 1;
                else
                    return 0;
            }
        }
        public int T3Window
        {
            get
            {
                if (this.AjustT3Date.HasValue && this.T3Date.HasValue)
                    return (this.T3Date.Value - this.AjustT3Date.Value).Days;
                else
                    return 0;
            }
        }
        public int LWWindow_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();

                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                //Xsj20170211:注釋掉原代碼，添加以下代碼
                //對應發往廣西廠的WO，需要再原來LineWorkStartDate的基礎上+2day.
                //return (context.fn_GetNonWorkingDays(this.LineWorkStartDate, this.T3Date, this.Factory) ?? 0);
                return (context.fn_GetNonWorkingDays(this.LineWorkStartDate_SpecialFactory, this.T3Date, this.Factory) ?? 0);
                //-------------------------------------END------------------------------------------------------
            }
        }
        public int T3Window_NonWorkingdays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                return (context.fn_GetNonWorkingDays(this.AjustT3Date, this.T3Date, this.Factory) ?? 0);
            }
        }

        public string FCLExFtyDateStr
        {
            get
            {
                return this.FCLExFtyDate.HasValue ?
                    string.Format("{0:yyyy/MM/dd}\r\n({1})", this.FCLExFtyDate, FCLExFty_Weekday) : "N.A.";
                //this.FCLExFtyDate.Value.ToString("yyyy/MM/dd") : "N.A.";
            }
        }

        #region Weekday for short
        public string FW_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FactoryWorkStartDate);
            }
        }
        public string LCLExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.LCLExFtyDate);
            }
        }
        public string FCLExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FCLExFtyDate);
            }
        }
        #endregion
        //private bool iSModifyAdjustT3Date = false;
        //public bool ISModifyAdjustT3Date
        //{
        //    get { return iSModifyAdjustT3Date; }
        //    set { iSModifyAdjustT3Date = value; }
        //}

        partial void OnAjustT3DateChanged()
        {
            //if (this.AjustT3Date.HasValue)
            //{
            //    this.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //    ISModifyAdjustT3Date = true;
            //}
            //else
            //{
            //    this.AjustT3DateConfirm = null;
            //}
        }

        public string OAConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.OAConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.OAConfirm);

                    return (user != null) ? user.UserName : this.OAConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string PPCConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.PPCConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.PPCConfirm);

                    return (user != null) ? user.UserName : this.PPCConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string HeaderConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.HeaderConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.HeaderConfirm);

                    return (user != null) ? user.UserName : this.HeaderConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string TopConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.TopConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.TopConfirm);

                    return (user != null) ? user.UserName : this.TopConfirm;
                }
                else
                {
                    return "";
                }
            }
        }

        private PH.Platform.AuthMgr.BO.Auth_User GetUser(string userid)
        {
            PH.Platform.AuthMgr.BO.DataListHelper helper = new PH.Platform.AuthMgr.BO.DataListHelper();
            PH.Platform.AuthMgr.BO.Auth_User user = helper.GetUserList().Where(p => p.UserID == userid).FirstOrDefault();
            return user;
        }

        public System.DateTime? T3
        {
            get
            {
                return this.AjustT3Date.HasValue ? this.AjustT3Date : this.T3Date;
            }
        }

        public int? Qty
        {
            get
            {
                int? qty1 = this.RoundWorkOrderDetails.Sum(p => p.BulkQty);
                //int? qty2 = this.WorkOrderColors.Sum(p => p.SampleQty);
                return qty1;
            }
        }


        public int ActualShptTotalQty
        {
            get
            {
                return (this.ActualShptQtyB ?? 0) + (this.ActualShptQtyHK ?? 0) + (this.ActualShptQtyNZ ?? 0) + (this.ActualShptQtyUK ?? 0) + (this.ActualShptQtyUSA ?? 0);
            }
        }

        public int ShptQtyBalance
        {
            get
            {
                return this.TotalQty - this.ActualShptTotalQty;
            }
        }

        public string RWOTransitDateDesc
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.TransitDateDesc;
                //string cust = this.CustomerCode;
                //return (cust == "BEND" || cust == "SUPD") ? "To be advised" : string.Format("{0:yyyy/MM/dd}", this.TransitDate);
            }
        }
        public string WOTransitDateDesc
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.TransitDateDesc;
                //string cust = this.CustomerCode;
                //return (cust == "BEND" || cust == "SUPD") ? "To be advised" : string.Format("{0:yyyy/MM/dd}", this.TransitDate);
            }
        }

        #region Exfty Date changed


        partial void OnLCLExFtyDateChanged()
        {
            //if (this.WorkOrderColor.WorkOrder.Project.CustomerCode != "TAMA")
            //if (rwo.WorkOrderColor.WorkOrder.Project.Team != "C1")
            //{
            DateTime DT = (DateTime)this.LCLExFtyDate.GetValueOrDefault();
            this._LCLExFtyDate = TranTime(DT, true);
            //rwo.LCLExFtyDate = (DateTime)this.lCLExFtyDateDateEdit.EditValue;

            //this.FactoryWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_FWDate(this.LCLExFtyDate, this.WorkOrderColor.WorkOrder.Project.Customer, this.WorkOrderColor.WorkOrder.Project.Factory);
            //this.LineWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_LWDate(this.LCLExFtyDate, this.WorkOrderColor.WorkOrder.Project.Customer, this.WorkOrderColor.WorkOrder.Project.Factory);
            //this.FirstStation = (this.CurrentDataContext as RWOSOPCDataContext).fn_FirstStationByFW(this.FactoryWorkStartDate, this.WorkOrderColor.WorkOrder.Project.Customer, this.WorkOrderColor.WorkOrder.Project.Factory);
            this.T3Date = (this.CurrentDataContext as RWOSOPCDataContext).fn_T3Date(this.LCLExFtyDate, this.WorkOrderColor.WorkOrder.Project.Factory);
            //this.SetExFtyDate(false, this.LCLExFtyDate);
            //this.SetExFtyDate(true, this.LCLExFtyDate);
            //}
        }
        partial void OnFCLExFtyDateChanged()
        {
            return; //TAMA 已經用 LCL

            //////if (this.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA")
            ////   if (rwo.WorkOrderColor.WorkOrder.Project.Team == "C1")
            //{
            //    DateTime DT = (DateTime)this.FCLExFtyDate.GetValueOrDefault();
            //    this._FCLExFtyDate = TranTime(DT, false);
            //    //rwo.FCLExFtyDate = (DateTime)this.fCLExFtyDateDateEdit.EditValue;
            //    this.FactoryWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_FWDate(this.FCLExFtyDate, this.WorkOrderColor.WorkOrder.Project.Customer, this.WorkOrderColor.WorkOrder.Project.Factory, this.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    this.LineWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_LWDate(this.FCLExFtyDate, this.WorkOrderColor.WorkOrder.Project.Customer, this.WorkOrderColor.WorkOrder.Project.Factory, this.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    this.T3Date = (this.CurrentDataContext as RWOSOPCDataContext).fn_T3Date(this.FCLExFtyDate, this.WorkOrderColor.WorkOrder.Project.Factory);
            //    this.SetExFtyDate(true, this.FCLExFtyDate);
            //}
        }
        private DateTime TranTime(DateTime dt, bool isLcl)
        {
            DateTime dt1 = (isLcl ? this.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted : this.WorkOrderColor.WorkOrder.FCLExFtyShipCompleted).GetValueOrDefault();
            int m = dt1.Minute;
            int s = dt1.Second;
            int d = dt.Day;
            int h = dt1.Hour;
            int mm = dt.Month;
            int y = dt.Year;
            return new DateTime(y, mm, d, h, m, s);
        }
        //private void SetExFtyDate(bool isLCL, DateTime? dt)
        //{
        //    DateTime? tempDt = (this.CurrentDataContext as RWOSOPCDataContext).fn_WeekEndDate(dt);
        //    tempDt = (this.CurrentDataContext as RWOSOPCDataContext).fn_ExftyDate(tempDt, this.WorkOrderColor.WorkOrder.Project.Customer, this.WorkOrderColor.WorkOrder.ShipMode, isLCL, this.WorkOrderColor.WorkOrder.Project.Factory, this.WorkOrderColor.WorkOrder.Project.DSEQ);
        //    //if (isLCL)
        //    //{
        //    this._LCLExFtyDate = tempDt;
        //    //}
        //    //else
        //    //{
        //    //    this.FCLExFtyDate = tempDt;
        //    //}

        //}
        #endregion

        #endregion

        #region from Project object
        public string ProjectNo
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Project.ProjectNo;
            }
        }
        public string Customer
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Project.Customer;
            }
        }
        public string CustomerCode
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Project.CustomerCode;
            }
        }
        public DateTime? SoIssueDate
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Project.SoIssueDate;
            }
        }
        public string Factory
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Project.Factory;
            }
        }

        #endregion

        #region from WO

        public string Category
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Category;
            }
        }
        public int? WOQty
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Qty;
            }
        }

        public DateTime? FWStartDate
        {
            get
            {
                if (this.WorkOrderColor.WorkOrder != null)
                    switch (this.WorkOrderColor.WorkOrder.FWOption ?? 0)
                    {
                        case 1:
                        case 3:
                            return (this.WorkOrderColor.WorkOrder.IsShipWindow) ? this.WorkOrderColor.WorkOrder.FactoryWorkStartShip : this.WorkOrderColor.WorkOrder.FactoryWorkShipCompleted;
                        case 2:
                            return this.WorkOrderColor.FWOpt2;
                        case 4:
                            return this.WorkOrderColor.FWOpt4;
                        default:
                            goto case 3;
                    }
                else return null;
            }
        }
        public DateTime? ExFtyDate
        {
            get { return this.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted; }
        }

        #endregion
        #region WOc

        public int TotalRWO
        {
            get
            {
                return this.WorkOrderColor.RoundWorkOrders.Count;
            }
        }

        #endregion
        #region WorkOrderSKU
        public int TotalQty
        {
            get
            {
                return (SampleQty ?? 0) + (BulkQty ?? 0);
            }
        }
        public int? SampleQty
        {
            get
            {
                int? Qty = this.WorkOrderColor.WorkOrderSKUs.Sum(p => p.SampleQty);
                return Qty;
            }
        }
        public int? BulkQty
        {
            get
            {
                int? Qty = this.WorkOrderColor.WorkOrderSKUs.Sum(p => p.BulkQty);
                return Qty;
            }
        }
        #endregion
        #region how to choose FW

        public int FWvsLW_WorkingDay
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.FWvsLW_WorkingDay;
            }
        }
        private int? _FWvsLW_CalendarDay;
        public int? FWvsLW_CalendarDay
        {
            get
            {
                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 3)
                    {
                        _FWvsLW_CalendarDay = (item.LineWork.HasValue && item.FactoryWork.HasValue) ?
                            (item.LineWork.Value - item.FactoryWork.Value).Days : (int?)null;
                    }
                }

                return _FWvsLW_CalendarDay;
            }
        }
        public int? FWvsLW_NonWorkingDay
        {
            get
            {

                return FWvsLW_CalendarDay.HasValue && FWvsLW_WorkingDay != 0 ? FWvsLW_CalendarDay.Value - FWvsLW_WorkingDay : (int?)null;
            }
        }

        public int? FWOption
        {
            get
            {
                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Chosen ?? false) return item.Seq;
                }
                return null;
            }
        }
        public DateTime? Option1FW
        {
            get
            {
                return GetOptionFW(1);
            }
        }
        public DateTime? Option2FW
        {
            get
            {
                return GetOptionFW(2);
            }
        }
        public DateTime? Option3FW
        {
            get
            {
                return GetOptionFW(3);
            }
        }
        public DateTime? Option4FW
        {
            get
            {
                return GetOptionFW(4);
            }
        }
        private DateTime? GetOptionFW(int seq)
        {
            foreach (var item in this.RWOChooseFWs)
            {
                if (item.Seq == seq) return item.FactoryWork;
            }
            return null;
        }

        public double? EFF
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.EFF ?? this.WorkOrderColor.WorkOrder.EFF_Default;
            }
        }
        public double? CU
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.CU ?? this.WorkOrderColor.WorkOrder.CU_Default;
            }
        }
        public double? SAH
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.Line_SAH ?? this.WorkOrderColor.WorkOrder.SAH;
            }
        }
        public double? WF
        {
            get
            {
                return this.WorkOrderColor.WorkOrder.WF;
            }
        }
        public double? Line_Default { get; set; }
        public double WorkingDaysPerLine { get; set; }
        public double CalendarDaysPerLine { get; set; }
        public double WorkingDaysLines { get { return (this.NumberOfLine ?? 0) == 0 ? 0 : WorkingDaysPerLine / (this.NumberOfLine ?? 0); } }
        public double? CalendarDaysLines
        {
            get
            {
                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 3) return item.LWWindow;
                }

                return null;
            }
        }
        public double? Productivity
        {
            get
            {
                return this.EFF * this.CU / 100;
            }
        }

        public int? Opt3vs1
        {
            get
            {
                int dt1 = 0;
                int dt3 = 0;

                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 1) dt1 = item.LWWindow;
                    else if (item.Seq == 3) dt3 = item.LWWindow;
                }
                //return (dt3 == 0 || dt1 == 0) ? 0 : (dt3 - dt1);
                return (dt3 == 0 || dt1 == 0) ? 0 : (dt1 - dt3);
            }
        }
        public int? Opt3vs2
        {
            get
            {
                int dt2 = 0;
                int dt3 = 0;

                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 2) dt2 = item.LWWindow;
                    else if (item.Seq == 3) dt3 = item.LWWindow;
                }
                //return (dt3 == 0 || dt2 == 0) ? 0 : (dt3 - dt2);
                return (dt3 == 0 || dt2 == 0) ? 0 : (dt2 - dt3);
            }
        }
        public int? Opt2vs1
        {
            get
            {
                int dt1 = 0;
                int dt2 = 0;

                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 1) dt1 = item.LWWindow;
                    else if (item.Seq == 2) dt2 = item.LWWindow;
                }
                return (dt2 == 0 || dt1 == 0) ? 0 : (dt2 - dt1);
            }
        }
        public int? Opt4vs2
        {
            get
            {
                int dt2 = 0;
                int dt4 = 0;

                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 2) dt2 = item.LWWindow;
                    else if (item.Seq == 4) dt4 = item.LWWindow;
                }
                return (dt2 == 0 || dt4 == 0) ? 0 : (dt4 - dt2);
            }
        }
        public int? Opt4vs1
        {
            get
            {
                int dt1 = 0;
                int dt4 = 0;

                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 1) dt1 = item.LWWindow;
                    else if (item.Seq == 4) dt4 = item.LWWindow;
                }
                return (dt1 == 0 || dt4 == 0) ? 0 : (dt4 - dt1);
            }
        }
        public int? Opt4vs3
        {
            get
            {
                int dt3 = 0;
                int dt4 = 0;

                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 3) dt3 = item.LWWindow;
                    else if (item.Seq == 4) dt4 = item.LWWindow;
                }
                return (dt3 == 0 || dt4 == 0) ? 0 : (dt4 - dt3);
            }
        }
        public bool CanAgreeOpt4
        {
            get
            {
                bool bCan = false;
                foreach (var item in this.RWOChooseFWs)
                {
                    if (item.Seq == 2)
                    {
                        bCan = (item.FactoryWork.HasValue);
                    }
                }
                return bCan;
            }
        }



        partial void OnNumberOfLineChanged()
        {
            //option 3-FW:
            foreach (var item in this.RWOChooseFWs)
            {
                if (item.Seq == 3)
                {
                    this.WorkOrderColor.WorkOrder.GetIEBInfor();
                    //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                    //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                    int d = Convert.ToInt32(Math.Ceiling(Math.Round(WorkingDaysLines, 1))) + this.FWvsLW_WorkingDay - 1;
                    DateTime? t3 = this.T3;
                    item.FactoryWork = context.fn_DetachWorkDate(t3, d, this.Factory);

                    item.FirstStation = context.fn_FirstStationByFW(item.FactoryWork, this.Customer, this.Factory, item.DSEQ);
                    item.LineWork = context.fn_LWDateByFW(item.FactoryWork, this.Customer, this.Factory, item.DSEQ);

                    item.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    item.AgreedFWDate = DateTime.Now;

                    if (item.Chosen ?? false)
                        item.DateChanged(false);
                }
            }
        }

        public void CalcFW()
        {
            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
            double whours = this.Factory == "KB" ? 9.67 : 10.67;
            // Working Days = ( Qty x Line_SAH ) / ( Eff% x CU% x WF x Working Hours/day );
            // LW vs T3
            #region PerLine

            double a = (this.EFF ?? 0) / 100 * (this.CU ?? 0) / 100 * (this.WF ?? 0) * whours;
            if (a == 0) WorkingDaysPerLine = 0;
            else
                WorkingDaysPerLine = (this.Qty ?? 0) * (this.SAH ?? 0) / a;

            int d = Convert.ToInt32(Math.Ceiling(Math.Round(WorkingDaysPerLine, 1))) - 1;

            //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
            DateTime? t3 = this.T3;
            DateTime? def_LW = context.fn_DetachWorkDate(t3, d, this.Factory);

            if (def_LW.HasValue && t3.HasValue)
                CalendarDaysPerLine = (t3.Value - def_LW.Value).Days;
            else CalendarDaysPerLine = 0;

            //default_line:
            CalcDefaultLine();

            #endregion

        }
        internal void CalcDefaultLine()
        {
            foreach (var item in this.RWOChooseFWs)
            {
                if (item.Seq == 2)
                {
                    double d2 = 0;
                    double d1 = 0;
                    DateTime? t3 = this.T3;

                    // calc default lines:
                    //if (item.LineWork.HasValue && t3.HasValue)
                    //    d2 = (t3.Value - item.LineWork.Value).Days + 1;

                    //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                    //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                    if (item.LineWork.HasValue)
                    {
                        d2 = (context.fn_GetWorkingDays(item.LineWork, t3, this.Factory) ?? 0) + 1;

                        d1 = this.WorkingDaysPerLine;
                        this.Line_Default = d2 == 0 || d1 == 0 ? (double?)null : d1 / d2;
                    }
                    else this.Line_Default = null;

                }
            }
        }

        #endregion



        //對應發往廣西廠的WO，需要再原來LineWorkShipCompleted的基礎上+2day.
        public DateTime? LineWorkStartDate_SpecialFactory
        {
            get
            {
                DateTime? dt;
                if (this.LineWorkStartDate == null
                    || this.ProductFactory == "SL")
                {
                    dt = this.LineWorkStartDate;
                }
                else
                {
                    RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                    dt = (from val in context.LWPM_Calendars
                          where val.TPLANT == this.ProductFactory
                            && (val.SECTO ?? 0) + (val.SECTT ?? 0) + (val.SECTC ?? 0) > 0
                            && val.DATE1 >= this.LineWorkStartDate.Value.AddDays(2)
                          select val.DATE1).Min();
                }
                return dt;
            }
        }


        //Xsj:2017-02-13 Add to remark the Product Factory
        public string ProductFactory
        {
            get
            {
                string val = this.SpecialFactory;
                if (val == null || val.Trim() == "")
                {
                    if (this.WorkOrderColor != null && this.WorkOrderColor.WorkOrder != null)
                    {
                        val = this.WorkOrderColor.WorkOrder.SpecialFactory;
                    }

                    if (val == null || val.Trim() == "")
                    {
                        if (this.WorkOrderColor.WorkOrder.Project != null || this.WorkOrderColor.WorkOrder.Project.Factory != "")
                        {
                            return val = this.WorkOrderColor.WorkOrder.Project.Factory;
                        }
                        else
                        {
                            val = "";
                        }
                    }
                }
                return val;
            }
        }
        //-----------------------End-------------------------------------------------------------

    }
    partial class RWOChooseFW : BaseEntity
    {
        //Xsj20151217:add 
        public string DSEQ
        {
            get
            {
                return this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ;
            }
        }

        public string ProjectNo
        {
            get
            {
                return this.RoundWorkOrder.ProjectNo;
            }
        }
        public string Factory
        {
            get
            {
                return this.RoundWorkOrder.Factory;
            }
        }
        public string Customer
        {
            get
            {
                return this.RoundWorkOrder.Customer;
            }
        }

        public string Ingredients
        {
            get
            {
                string s = "";
                switch (this.Seq)
                {
                    case 1:
                        s = "The date is based on customer profile's SW CT to calculate";
                        break;
                    case 2:
                        s = "The date is provided by Merchandising Section based on the date that production sample and related materials to be standby";
                        break;
                    case 3:
                        s = "The date is based on IEBOO measure on quantities";
                        break;
                    case 4:
                        s = "The date is agreed by both parties, if option 1-3 is not the best FW Start Date";
                        break;
                    default:
                        break;
                }
                return s;
            }
        }

        public int NonWorkingDays
        {
            get
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                DateTime? t3 = this.RoundWorkOrder.T3;
                return (context.fn_GetNonWorkingDays(this.LineWork, t3, this.Factory) ?? 0);
            }
        }
        public int LWWindow
        {
            get
            {
                DateTime? t3 = this.RoundWorkOrder.T3;
                if (this.LineWork.HasValue && t3.HasValue)
                    return (t3.Value - this.LineWork.Value).Days + 1;
                else
                    return 0;
            }
        }

        public int? Opt3vs1
        {
            get
            {
                return this.RoundWorkOrder.Opt3vs1;
            }
        }
        public int? Opt3vs2
        {
            get
            {
                return this.RoundWorkOrder.Opt3vs2;
            }
        }
        public int? Opt2vs1
        {
            get
            {
                return this.RoundWorkOrder.Opt2vs1;
            }
        }
        public int? Opt4vs2
        {
            get
            {
                return this.RoundWorkOrder.Opt4vs2;
            }
        }

        partial void OnFactoryWorkChanged()
        {
            //double d2 = 0;
            //double d1 = 0;
            //DateTime? t3 = this.WorkOrder.Project.IsShipWindow ? this.WorkOrder.T3StartShip : this.WorkOrder.T3ShipCompleted;

            if (this.Seq == 2 || this.Seq == 4)//option 2,4
            {
                //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
                //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                this.FirstStation = context.fn_FirstStationByFW(this.FactoryWork, this.Customer, this.Factory, this.DSEQ);
                this.LineWork = context.fn_LWDateByFW(this.FactoryWork, this.Customer, this.Factory, this.DSEQ);

                this.RoundWorkOrder.CalcDefaultLine();

                if (this.Chosen ?? false)
                    DateChanged(false);
            }


        }
        partial void OnChosenChanged()
        {
            if (this.Chosen ?? false)
            {
                DateChanged(true);
                foreach (var item in this.RoundWorkOrder.RWOChooseFWs)
                {
                    if (this.Seq == item.Seq) continue;
                    item.Chosen = false;
                }
            }
        }
        internal void DateChanged(bool reconfirm)
        {
            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
            //rwo
            this.RoundWorkOrder.FirstStation = this.FirstStation;
            this.RoundWorkOrder.FactoryWorkStartDate = this.FactoryWork;
            this.RoundWorkOrder.LineWorkStartDate = this.LineWork;

            #region rwo Approval cycle
            if (reconfirm)
            {
                this.RoundWorkOrder.OAConfirm = "";
                this.RoundWorkOrder.OAConfirmDate = null;

                this.RoundWorkOrder.PPCConfirm = "";
                this.RoundWorkOrder.PPCConfirmDate = null;

                this.RoundWorkOrder.TopConfirm = "";
                this.RoundWorkOrder.TopConfirmDate = null;

                this.RoundWorkOrder.HeaderConfirm = "";
                this.RoundWorkOrder.HeaderConfirmDate = null;

                this.RoundWorkOrder.ActionStatus = null;
                this.RoundWorkOrder.ActionStatusDate = null;
                this.RoundWorkOrder.WOReviseDate = DateTime.Now;
                this.RoundWorkOrder.AmendDate = DateTime.Now;

            }
            #endregion

        }
    }

    partial class RoundWorkOrderDetail : BaseEntity
    {
        #region
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.RoundWorkOrder.AmendDate = DateTime.Now;
                this.RoundWorkOrder.WOReviseDate = DateTime.Now;
            }

            return base.Save();
        }

        public RWOSOPCDataContext Context
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //}
                return WOPOHelper.RwoCtx;//this.CurrentDataContext as RWOSOPCDataContext;
            }
        }

        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "cup" && o.Value == this.Cup
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "size" && o.Value.ToLower() == this.Size.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public string SizeDesc
        {
            get
            {
                return this.CustSize;
                //return GetSizeDesc();
            }
        }

        private string GetSizeDesc()
        {
            bool isfrench = this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.IsFrenchCusomter;
            //string sizeDesc = string.Format("{0}{1}", french ? "F-" : "", this.CustSize);
            string sizeDesc = string.Format("{0}{1}", (isfrench && this.RoundWorkOrder.WorkOrderColor.WorkOrder.SizeMatrix == "6A") ? "F-" : "", this.CustSize);
            return sizeDesc;
        }

        public string CustCup
        {
            get
            {
                return GetCustCup();
            }
        }
        private string GetCustCup()
        {
            WorkOrderSKUList list = new WorkOrderSKUList();
            string cup = list.GetCustCup(this.WorkOrderNo, this.ColorCode, this.Size, this.Cup);
            return cup;
        }

        public int? Qty
        {
            get
            {
                if (BulkQty.HasValue && SampleQty.HasValue)
                {
                    return BulkQty - SampleQty;
                }
                return BulkQty;
            }
        }
        #endregion
    }
    partial class RoundWorkOrderDetailTemp1 : BaseEntity
    {
        #region
        public RWOSOPCDataContext Context
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //}
                return WOPOHelper.RwoCtx;
            }
        }

        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "cup" && o.Value == this.Cup
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "size" && o.Value.ToLower() == this.Size.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public string CustCup
        {
            get
            {
                return GetCustCup();
            }
        }

        private string GetCustCup()
        {
            WorkOrderSKUList list = new WorkOrderSKUList();
            string cup = list.GetCustCup(this.WorkOrderNo, this.ColorCode, this.Size, this.Cup);
            return cup;
        }
        #endregion
    }

    partial class RoundWorkOrderII : BaseEntity
    {
        public override bool Save()
        {
            RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            if (context == null) return base.Save();

            IList<object> updateList = context.GetChangeSet().Updates;
            IList<object> insertList = context.GetChangeSet().Inserts;
            IList<object> deleteList = context.GetChangeSet().Deletes;
            if (updateList.Count > 0 || insertList.Count > 0 || deleteList.Count > 0)
            {
                this.AmendDate = DateTime.Now;
                this.WOReviseDate = DateTime.Now;
            }
            return base.Save();
        }

        #region Non/Workingdays
        public void GetNonWorkingdays()
        {
            if (!this.IsSubFactory) return;

            DateTime? rwoFW = this.RoundWorkOrder.FactoryWorkStartDate;
            //DateTime? rwoExFty = (this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA") ?
            //       this.RoundWorkOrder.FCLExFtyDate : this.RoundWorkOrder.LCLExFtyDate;
            DateTime? rwoExFty = this.RoundWorkOrder.LCLExFtyDate;

            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
            DateTime? dt = null;

            #region FW
            dt = rwoFW;
            this.MainFtyFront_Workingdays = 0;

            var a1 = from a in context.CycleTimeProcesses
                     where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
                     && a.CalcDateType == "FW"
                     orderby a.Seq
                     select a;
            foreach (var a in a1)
            {
                if (dt.HasValue)
                {
                    if (a.IsWorkingDay ?? false)
                    {
                        DateTime? dt1 = dt;
                        dt = context.fn_AddWorkDate(dt, a.Days, this.Factory);
                        this.MainFtyFront_Workingdays = (a.Days ?? 0);
                        int d1 = (dt.Value - dt1.Value).Days;
                        this.MainFtyFront_NonWorkingdays = d1 - this.MainFtyFront_Workingdays;
                    }
                    else
                    {
                        DateTime? dt1 = dt;
                        dt = dt.Value.AddDays(a.Days ?? 0);
                        this.TransitFront_days = (a.Days ?? 0);
                        this.TransitFront_NonWorkingdays = (context.fn_GetNonWorkingDays(dt1, dt, this.SubFactory) ?? 0);
                    }
                }
            }

            #endregion

            #region LW,T3
            this.LWWindow_NonWorkingdays = (context.fn_GetNonWorkingDays(this.LineWorkStartDate, this.T3Date, this.SubFactory) ?? 0);
            this.T3Window_NonWorkingdays = (context.fn_GetNonWorkingDays(this.AjustT3Date, this.T3Date, this.SubFactory) ?? 0);

            #endregion

            #region LCL ExFty
            dt = rwoExFty;// this.RoundWorkOrder.LCLExFtyDate;

            var a3 = from a in context.CycleTimeProcesses
                     where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
                     && a.CalcDateType == "ExFty"
                     orderby a.Seq descending
                     select a;
            foreach (var a in a3)
            {
                if (dt.HasValue)
                {
                    if (a.IsWorkingDay ?? false)
                    {
                        DateTime? dt1 = dt;
                        dt = context.fn_DetachWorkDate(dt, a.Days, this.Factory);
                        int d1 = (dt1.Value - dt.Value).Days;
                        this.MainFtyBack_Workingdays = (a.Days ?? 0);
                        this.MainFtyBack_NonWorkingdays = d1 - this.MainFtyBack_Workingdays;
                    }
                    else
                    {
                        DateTime? dt1 = dt;
                        dt = dt.Value.AddDays(-(a.Days ?? 0));
                        this.TransitBack_days = (a.Days ?? 0);
                        this.TransitBack_NonWorkingdays = (context.fn_GetNonWorkingDays(dt1, dt, this.SubFactory) ?? 0);
                    }
                }
            }

            #endregion


        }
        public int MainFtyFront_Workingdays { get; set; }
        public int MainFtyBack_Workingdays { get; set; }
        public int MainFtyFront_NonWorkingdays { get; set; }
        public int MainFtyBack_NonWorkingdays { get; set; }
        public int MainFtyFrontBack_NonWorkingdays { get { return this.MainFtyFront_NonWorkingdays + this.MainFtyBack_NonWorkingdays; } }

        public int LWWindow_NonWorkingdays { get; set; }

        public int TransitFront_days { get; set; }
        public int TransitBack_days { get; set; }
        public int TransitFront_NonWorkingdays { get; set; }
        public int TransitBack_NonWorkingdays { get; set; }
        public int TransitFrontBack_NonWorkingdays { get { return this.TransitFront_NonWorkingdays + this.TransitBack_NonWorkingdays; } }

        public int T3Window_NonWorkingdays { get; set; }

        public string MainFtySuppportWindow
        {
            get
            {
                return string.Format("{0} + {1} = {2}",
                    this.MainFtyFront_Workingdays + this.MainFtyFront_NonWorkingdays,
                    this.MainFtyBack_Workingdays + this.MainFtyBack_NonWorkingdays,
                    (this.MainFtyFront_Workingdays + this.MainFtyFront_NonWorkingdays
                    + this.MainFtyBack_Workingdays + this.MainFtyBack_NonWorkingdays)
                    );
            }
        }
        public string TransitWindow
        {
            get
            {
                return string.Format("{0} + {1} = {2}",
                    this.TransitFront_days,
                    this.TransitBack_days,
                    (this.TransitFront_days + TransitBack_days)
                    );
            }
        }
        #endregion

        #region Weekday for short
        public string FW_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.FactoryWorkStartDate);
            }
        }
        public string ExFty_Weekday
        {
            get
            {
                return DataHelper.GetWeekdayForShort(this.LCLExFtyDate);
            }
        }

        #endregion
        #region applied to Sub-factory
        partial void OnDirectOperationChanged()
        {
            if (!this.IsSubFactory) return;

            DateTime? rwoFW = this.RoundWorkOrder.FactoryWorkStartDate;
            //DateTime? rwoExFty = (this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA") ?
            //    this.RoundWorkOrder.FCLExFtyDate : this.RoundWorkOrder.LCLExFtyDate;
            DateTime? rwoExFty = this.RoundWorkOrder.LCLExFtyDate;

            //RWOSOPCDataContext context = this.CurrentDataContext as RWOSOPCDataContext;
            //if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
            RWOSOPCDataContext context = WOPOHelper.RwoCtx;
            DateTime? dt = null;

            #region FW
            dt = rwoFW;

            var a1 = from a in context.CycleTimeProcesses
                     where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
                     && a.CalcDateType == "FW"
                     orderby a.Seq
                     select a;
            foreach (var a in a1)
            {
                if (dt.HasValue)
                {
                    if (a.IsWorkingDay ?? false)
                        dt = context.fn_AddWorkDate(dt, a.Days, this.Factory);
                    else
                        dt = dt.Value.AddDays(a.Days ?? 0);
                }
            }
            this.FactoryWorkStartDate = dt;

            #endregion

            #region LW
            dt = this.FactoryWorkStartDate;

            var a2 = from a in context.CycleTimeProcesses
                     where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
                     && a.CalcDateType == "LW"
                     orderby a.Seq
                     select a;
            foreach (var a in a2)
            {
                if (dt.HasValue)
                {
                    if (a.IsWorkingDay ?? false)
                        dt = context.fn_AddWorkDate(dt, a.Days, this.SubFactory);
                    else
                        dt = dt.Value.AddDays(a.Days ?? 0);
                }
            }

            this.LineWorkStartDate = dt;
            #endregion

            #region LCL ExFty
            dt = rwoExFty;// this.RoundWorkOrder.LCLExFtyDate;

            var a3 = from a in context.CycleTimeProcesses
                     where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
                     && a.CalcDateType == "ExFty"
                     orderby a.Seq descending
                     select a;
            foreach (var a in a3)
            {
                if (dt.HasValue)
                {
                    if (a.IsWorkingDay ?? false)
                        dt = context.fn_DetachWorkDate(dt, a.Days, this.Factory);
                    else
                        dt = dt.Value.AddDays(-(a.Days ?? 0));
                }
            }

            this.LCLExFtyDate = dt;

            #endregion

            #region FCL ExFty
            //dt = this.RoundWorkOrder.FCLExFtyDate;

            //var a4 = from a in context.CycleTimeProcesses
            //         where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
            //         && a.CalcDateType == "ExFty"
            //         orderby a.Seq descending
            //         select a;
            //foreach (var a in a4)
            //{
            //    if (dt.HasValue)
            //    {
            //        if (a.IsWorkingDay ?? false)
            //            dt = context.fn_DetachWorkDate(dt, a.Days, this.Factory);
            //        else
            //            dt = dt.Value.AddDays(-(a.Days ?? 0));
            //    }
            //}
            //this.FCLExFtyDate = dt;
            #endregion


        }

        public RWOIITimeRule GetRWO2Rule(string calcDateType)
        {
            var aa = (from a in (this.CurrentDataContext as RWOSOPCDataContext).RWOIITimeRules
                      where a.Code == (this.DirectOperation ?? 0) && a.StartFactory == this.Factory && a.EndFactory == this.SubFactory
                      && a.CalcDateType == calcDateType
                      select a).FirstOrDefault();
            return aa;
        }
        public int GetRWO2RuleDays(string calcDateType)
        {
            var aa = GetRWO2Rule(calcDateType);
            if (aa == null) return 0;
            return (aa.Days ?? 0);
        }

        public string DirectOperationDesc
        {
            get
            {
                //PH.RWO.BO.RWOSOPCDataContext context = this.CurrentDataContext as PH.RWO.BO.RWOSOPCDataContext;
                //if (context == null)
                //    context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                PH.RWO.BO.RWOSOPCDataContext context = WOPOHelper.RwoCtx;
                var aa = from a in context.RWOIITimeRules
                         where a.Code == (this.DirectOperation ?? 0)
                         select a;
                foreach (var a in aa)
                {
                    return a.Operation;
                }
                //DictionaryList list = new DictionaryList();
                //var a = list.GetDataDictionary("PH.RWO.DirectOperation", string.Format("{0}", this.DirectOperation));
                //if (a != null) return a.DataName;
                return "";
            }
        }

        public decimal? AppliedPercentage
        {
            get
            {
                decimal ttlQty = Convert.ToDecimal(this.RoundWorkOrder.Qty ?? 1);
                decimal qty1 = Convert.ToDecimal(this.Qty ?? 0);

                decimal p = qty1 / ttlQty;
                return p;
            }
        }
        public string AppliedPercentageDesc
        {
            get
            {
                if (!AppliedToALL.HasValue) return "";
                return string.Format("{0} - {1:P0} {2} {3}",
                    ((AppliedToALL ?? false) ? "ALL" : "PARTIAL"),
                    AppliedPercentage,
                    (IsSubFactory ? "sub-contract to" : "keep in"),
                    this.SubFactory
                    );
                //PARTIAL - 44% sub-contract to FJ
                //PARTIAL - 56% keep in SL
            }
        }

        public bool? AppliedToPhaseII
        {
            get
            {
                return this.RoundWorkOrder.AppliedToPhaseII;

            }
        }
        public bool? AppliedToALL
        {
            get
            {
                return this.RoundWorkOrder.AppliedToALL;

            }
        }
        public bool IsSubFactory
        {
            get
            {
                return string.Compare(this.SubFactory, this.Factory, true) != 0;

            }
        }
        public string ProjectNo
        {
            get
            {
                return this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.ProjectNo;
            }
        }
        public string Factory
        {
            get
            {
                return this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory;
            }
        }

        public int CurrentIndex
        {
            get
            {
                int i = 0;
                if (!string.IsNullOrEmpty(this.OAConfirm))
                {
                    i = 0;
                }
                if (!string.IsNullOrEmpty(this.PPCConfirm))
                {
                    i = 1;
                }

                if (!string.IsNullOrEmpty(this.TopConfirm))
                {
                    i = 2;
                }

                if (!string.IsNullOrEmpty(this.HeaderConfirm))
                {
                    i = 3;
                }
                return i;
            }
        }

        public string RoundNos
        {
            get
            {
                //return string.Format("{0}/{1}{2}", this.RoundNo, (this.RoundTotal ?? 0),
                //    ((AppliedToPhaseII ?? false) && (AppliedToALL ?? false)) ? "a"
                //    : (this.SubFactory.ToLower() == "sl" ? "s" : "f"));

                return string.Format("{0}/{1}{2}", this.RoundNo, (this.RoundTotal ?? 0),
                    (
                      (AppliedToPhaseII ?? false) && (AppliedToALL ?? false)) ?
                    // FJ: F , GG: G
                         (this.SubFactory.ToLower() == "fj" ? "F" : "G")
                       : (
                    //SL:s, FJ:f, GG:g
                           this.SubFactory.ToLower() == "sl" ? "s" : (this.SubFactory.ToLower() == "fj" ? "f" : "g")
                         )
                    );
            }
        }

        /// <summary>
        /// 
        /// </summary>
        public string WOcNo
        {
            get
            {
                return string.Format("{0}-{1}/{2}", this.WorkOrderNo, this.RoundWorkOrder.WorkOrderColor.RoundNo ?? 0, this.RoundWorkOrder.WorkOrderColor.RoundTotal ?? 0);
            }
        }

        /// <summary>
        /// 近礷
        /// </summary>
        public string RoNo
        {
            get
            {
                return string.Format("{0}-{1}", this.WOcNo, this.RoundNos);
            }
        }

        /// <summary>
        /// PH蹿腹
        /// </summary>
        public string PHStyleNO
        {
            get
            {
                return this.RoundWorkOrder.WorkOrderColor.WorkOrder.StyleNo;
            }
        }
        /// <summary>
        /// め蹿腹
        /// </summary>
        public string CustStyleNO
        {
            get
            {
                return this.RoundWorkOrder.WorkOrderColor.WorkOrder.CustomerStyleNo;
            }
        }

        public string WONrOfColor
        {
            get
            {
                return string.Format("{0}", this.RoundWorkOrder.WorkOrderColor.RoundTotal ?? 0);
            }
        }

        public string WONrOfRound
        {
            get
            {
                return string.Format("{0}", this.RoundWorkOrder.WorkOrderColor.RoundTotal ?? 0);
            }
        }

        public int LWWindow
        {
            get
            {
                if (this.LineWorkStartDate.HasValue && this.T3Date.HasValue)
                    return (this.T3Date.Value - this.LineWorkStartDate.Value).Days + 1;
                else
                    return 0;
            }
        }
        public int T3Window
        {
            get
            {
                if (this.AjustT3Date.HasValue && this.T3Date.HasValue)
                    return (this.T3Date.Value - this.AjustT3Date.Value).Days;
                else
                    return 0;
            }
        }

        partial void OnAjustT3DateChanged()
        {
            //if (this.AjustT3Date.HasValue)
            //{
            //    this.AjustT3DateConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //    ISModifyAdjustT3Date = true;
            //}
            //else
            //{
            //    this.AjustT3DateConfirm = null;
            //}
        }

        public string OAConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.OAConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.OAConfirm);

                    return (user != null) ? user.UserName : this.OAConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string PPCConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.PPCConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.PPCConfirm);

                    return (user != null) ? user.UserName : this.PPCConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string HeaderConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.HeaderConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.HeaderConfirm);

                    return (user != null) ? user.UserName : this.HeaderConfirm;
                }
                else
                {
                    return "";
                }
            }
        }
        public string TopConfirmUser
        {
            get
            {
                if (!string.IsNullOrEmpty(this.TopConfirm))
                {
                    PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.TopConfirm);

                    return (user != null) ? user.UserName : this.TopConfirm;
                }
                else
                {
                    return "";
                }
            }
        }

        private PH.Platform.AuthMgr.BO.Auth_User GetUser(string userid)
        {
            PH.Platform.AuthMgr.BO.DataListHelper helper = new PH.Platform.AuthMgr.BO.DataListHelper();
            PH.Platform.AuthMgr.BO.Auth_User user = helper.GetUserList().Where(p => p.UserID == userid).FirstOrDefault();
            return user;
        }


        public System.DateTime? T3
        {
            get
            {
                return this.AjustT3Date.HasValue ? this.AjustT3Date : this.T3Date;
            }
        }

        public int? Qty
        {
            get
            {
                int? qty1 = this.RoundWorkOrderDetailIIs.Sum(p => p.BulkQty);
                //int? qty2 = this.WorkOrderColors.Sum(p => p.SampleQty);
                return qty1;
            }
        }

        #region Exfty Date changed


        partial void OnLCLExFtyDateChanged()
        {
            //if (this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode != "TAMA")
            //if (rwo.WorkOrderColor.WorkOrder.Project.Team != "C1")
            {
                DateTime DT = (DateTime)this.LCLExFtyDate.GetValueOrDefault();
                this._LCLExFtyDate = TranTime(DT, true);
                if (!this.IsSubFactory)
                {
                    //rwo.LCLExFtyDate = (DateTime)this.lCLExFtyDateDateEdit.EditValue;
                    this.FactoryWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_FWDate(this.LCLExFtyDate, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, this.SubFactory, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
                    this.LineWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_LWDate(this.LCLExFtyDate, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, this.SubFactory, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
                    this.FirstStation = (this.CurrentDataContext as RWOSOPCDataContext).fn_FirstStationByFW(this.FactoryWorkStartDate, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
                }
                this.T3Date = (this.CurrentDataContext as RWOSOPCDataContext).fn_T3Date(this.LCLExFtyDate, this.SubFactory);
                //this.SetExFtyDate(true, this.LCLExFtyDate);
                //this.SetExFtyDate(false, this.LCLExFtyDate);
            }
        }
        partial void OnFCLExFtyDateChanged()
        {
            return;//TAMA 也已經用 LCL

            //////if (this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.CustomerCode == "TAMA")
            ////   if (rwo.WorkOrderColor.WorkOrder.Project.Team == "C1")
            //{
            //    DateTime DT = (DateTime)this.FCLExFtyDate.GetValueOrDefault();
            //    this._FCLExFtyDate = TranTime(DT, false);
            //    if (!this.IsSubFactory)
            //    {
            //        //rwo.FCLExFtyDate = (DateTime)this.fCLExFtyDateDateEdit.EditValue;
            //        this.FactoryWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_FWDate(this.FCLExFtyDate, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, this.SubFactory, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
            //        this.LineWorkStartDate = (this.CurrentDataContext as RWOSOPCDataContext).fn_LWDate(this.FCLExFtyDate, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, this.SubFactory, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
            //    }
            //    this.T3Date = (this.CurrentDataContext as RWOSOPCDataContext).fn_T3Date(this.FCLExFtyDate, this.SubFactory);
            //    this.SetExFtyDate(true, this.FCLExFtyDate);
            //}
        }
        private DateTime TranTime(DateTime dt, bool isLcl)
        {
            DateTime dt1 = (isLcl ? this.RoundWorkOrder.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted : this.RoundWorkOrder.WorkOrderColor.WorkOrder.FCLExFtyShipCompleted).GetValueOrDefault();
            int m = dt1.Minute;
            int s = dt1.Second;
            int d = dt.Day;
            int h = dt1.Hour;
            int mm = dt.Month;
            int y = dt.Year;
            return new DateTime(y, mm, d, h, m, s);
        }
        //private void SetExFtyDate(bool isLCL, DateTime? dt)
        //{
        //    DateTime? tempDt = (this.CurrentDataContext as RWOSOPCDataContext).fn_WeekEndDate(dt);
        //    tempDt = (this.CurrentDataContext as RWOSOPCDataContext).fn_ExftyDate(tempDt, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Customer, this.RoundWorkOrder.WorkOrderColor.WorkOrder.ShipMode, isLCL, this.SubFactory, this.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.DSEQ);
        //    //if (isLCL)
        //    //{
        //    this._LCLExFtyDate = tempDt;
        //    //}
        //    //else
        //    //{
        //    //    this.FCLExFtyDate = tempDt;
        //    //}

        //}
        #endregion
        #endregion

        partial void OnCreated()
        {
            AnotherQtyChanging = false;
        }
        public bool AnotherQtyChanging { get; set; }
    }
    partial class RoundWorkOrderDetailII : BaseEntity
    {
        #region
        public RWOSOPCDataContext Context
        {
            get
            {
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //}
                //return this.CurrentDataContext as RWOSOPCDataContext;
                return WOPOHelper.RwoCtx;
            }
        }

        public int CupOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "cup" && o.Value == this.Cup
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public int SizeOrder
        {
            get
            {
                var order = (from o in Context.RwoOrders
                             where o.Type.ToLower() == "size" && o.Value.ToLower() == this.Size.ToLower()
                             select o.Orders).FirstOrDefault();

                if (order == null)
                {
                    return 0;
                }
                else
                {
                    return (int)order;
                }

            }
        }

        public string SizeDesc
        {
            get
            {
                return this.CustSize;
                //return GetSizeDesc();
            }
        }

        public string CustCup
        {
            get
            {
                return GetCustCup();
            }
        }
        private string GetCustCup()
        {
            WorkOrderSKUList list = new WorkOrderSKUList();
            string cup = list.GetCustCup(this.WorkOrderNo, this.ColorCode, this.Size, this.Cup);
            return cup;
        }

        public int? TotalQty
        {
            get
            {
                RoundWorkOrderDetail rwod = (from a in this.RoundWorkOrderII.RoundWorkOrder.RoundWorkOrderDetails
                                             where a.Size == this.Size && a.Cup == this.Cup
                                             select a).FirstOrDefault<RoundWorkOrderDetail>();
                if (rwod == null) return this.BulkQty;

                return rwod.BulkQty;
            }

        }

        partial void OnBulkQtyChanged()
        {
            if (this.RoundWorkOrderII.AnotherQtyChanging)
            {
                this.RoundWorkOrderII.AnotherQtyChanging = false;
            }
            else
            {
                if (this.RoundWorkOrderII.RoundWorkOrder.AppliedToALL ?? false) return;
                foreach (var rwo2 in this.RoundWorkOrderII.RoundWorkOrder.RoundWorkOrderIIs)
                {
                    if (rwo2.SubFactory == this.SubFactory) continue;

                    foreach (var rwodetail2 in rwo2.RoundWorkOrderDetailIIs)
                    {

                        if (this.Cup == rwodetail2.Cup && this.Size == rwodetail2.Size)
                        {
                            RoundWorkOrderDetail rwod = (from a in this.RoundWorkOrderII.RoundWorkOrder.RoundWorkOrderDetails
                                                         where a.Size == this.Size && a.Cup == this.Cup
                                                         select a).FirstOrDefault<RoundWorkOrderDetail>();
                            if (rwod == null) return;

                            Int32 ttlqty = rwod.BulkQty ?? 0;
                            Int32 qty = ttlqty - (this.BulkQty ?? 0);
                            this.RoundWorkOrderII.AnotherQtyChanging = true;
                            rwodetail2.BulkQty = qty;
                            this.RoundWorkOrderII.AnotherQtyChanging = false;
                        }
                    }
                }
            }
        }


        public int? Qty
        {
            get
            {
                if (BulkQty.HasValue && SampleQty.HasValue)
                {
                    return BulkQty - SampleQty;
                }
                return BulkQty;
            }
        }
        #endregion
    }
    partial class RWOIITimeRule : BaseEntity
    {
        //public void UpdateDays()
        //{
        //    int day = 0;
        //    foreach (var item in this.CycleTimeProcesses)
        //    {
        //        day += (item.Days ?? 0);
        //    }
        //    this.Days = day;
        //}
        //public int TotalDays
        //{
        //    get
        //    {
        //        int day = 0;
        //        foreach (var item in this.CycleTimeProcesses)
        //        {
        //            day += (item.Days ?? 0);
        //        }
        //        return day;
        //    }
        //}
    }


    #region Amend db
    partial class AmendMaster : BaseEntity
    {
        //public bool CheckFlag { get; set; }
        public int TotalWO
        {
            get
            {
                return this.AmendDetails.Select(p => p.WorkOrderNo).Distinct().Count();
            }
        }

        public string LastConfirmPerson_MM { get; set; }
        public DateTime? LastConfirmDate_MM { get; set; }

        public string LastConfirmPerson_PPC { get; set; }
        public string LastConfirmPerson_Sewing { get; set; }
        public string LastConfirmPerson_Manager { get; set; }

        public string CreateByUserName { get; set; }
        public string Confirm_PPCUserName { get; set; }
        public string Confirm_SewingUserName { get; set; }
        public string Confirm_ManagerUserName { get; set; }


        public string OrderList
        {
            get
            {
                if (this == null)
                    return "";
                else
                {
                    string _list = "";
                    int len = this.AmendDetails.Count; ;
                    int j = 0;
                    foreach (AmendDetail ad in this._AmendDetails)
                    {
                        if (j < len)
                            _list = _list + ad.WorkOrderNo + ";";
                        else
                            _list = _list + ad.WorkOrderNo;
                    }
                    return _list;
                }
            }
        }
    }
    partial class AmendDetail : BaseEntity
    {
        private string[] _woinfos = new string[5] { "", "", "", "", "" };
        public string[] WoInfos
        {
            get
            {

                // _woinfos[0] = ""; _woinfos[1] = ""; _woinfos[2] = ""; _woinfos[3] = ""; _woinfos[4] = "";

                if (this == null)
                    return _woinfos;

                if (_woinfos[0] != "")
                    return _woinfos;

                string sqlstr = string.Format(@"select top 1 bb.factory,bb.projectno,aa.styleno,aa.customerstyleno,convert(varchar(16),aa.LCLExFtyShipCompleted,20) as exitdate from dbo.WorkOrder aa,project bb
                                where aa.salesorderno=bb.salesorderno and aa.workorderno='{0}'", this.WorkOrderNo);


                DbDataReader dread = WOPOHelper.RwoCtx.ExecuteReader(sqlstr);
                if (dread.Read())
                {
                    string factory = dread[0] != null ? dread[0].ToString() : "";
                    string project = dread[1] != null ? dread[1].ToString() : "";

                    string phstyle = dread[2] != null ? dread[2].ToString() : "";
                    string custstyle = dread[3] != null ? dread[3].ToString() : "";
                    string exitdate = dread[4] != null ? dread[4].ToString() : "";
                    _woinfos[0] = factory; _woinfos[1] = project; _woinfos[2] = phstyle; _woinfos[3] = custstyle; _woinfos[4] = exitdate;

                    //_woinfos = factory + "/" + project + "/" + phstyle + "/" + custstyle + "/" + exitdate;                  
                }
                dread.Close();

                return _woinfos;
            }

        }
        public string PhStyleNo
        {
            get
            {

                if (WoInfos[0] != null)
                {
                    //  string[] ss = _woinfos.Split(new char['/']);
                    return WoInfos[2];
                }
                else return "";

            }
            set { }
        }
        public string CustStyle
        {
            get
            {
                if (WoInfos[0] != null)
                {
                    // string[] ss = _woinfos.Split(new char['/']);
                    return WoInfos[3];
                }
                else return "";
            }
            set { }
        }
        public string ExitDate
        {
            get
            {
                if (WoInfos[0] != null)
                {
                    // string[] ss = _woinfos.Split(new char['/']);
                    return WoInfos[4];
                }
                else return "";
            }
            set { }
        }
        public string Factory
        {

            get
            {
                if (WoInfos[0] != null)
                {
                    // string[] ss = _woinfos.Split(new char['/']);
                    return WoInfos[0];
                }
                else return "";
            }
            set { }

        }

        public string Project
        {

            get
            {
                if (WoInfos[0] != null)
                {
                    //string[] ss = _woinfos.Split(new char['/']);
                    return WoInfos[1];
                }
                else return "";
            }
            set { }

        }

    }
    #endregion


    partial class sp_IEBystyleResult
    {

        public bool IsDef { get; set; }
    }
    #endregion

    #region Order Detail

    partial class MR : BaseEntity
    {
    }
    [Table(Name = "dbo.MR")]
    public partial class MR
    {

        private string _SuppRef;

        private string _MaterialGroup;

        private string _MaterialType;

        private string _MaterialCode;

        private string _SupplierUnit;

        private System.Nullable<decimal> _WastageOnCAC;

        private System.Nullable<decimal> _AllInPrice;

        private System.Nullable<int> _MOQ;

        private string _ERPSupplier;

        private string _Currency;

        private System.Nullable<decimal> _ExchangeRate;

        public MR()
        {
        }

        [Column(Storage = "_SuppRef", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string SuppRef
        {
            get
            {
                return this._SuppRef;
            }
            set
            {
                if ((this._SuppRef != value))
                {
                    this._SuppRef = value;
                }
            }
        }

        [Column(Storage = "_MaterialGroup", DbType = "NVarChar(200)")]
        public string MaterialGroup
        {
            get
            {
                return this._MaterialGroup;
            }
            set
            {
                if ((this._MaterialGroup != value))
                {
                    this._MaterialGroup = value;
                }
            }
        }

        [Column(Storage = "_MaterialType", DbType = "VarChar(50)")]
        public string MaterialType
        {
            get
            {
                return this._MaterialType;
            }
            set
            {
                if ((this._MaterialType != value))
                {
                    this._MaterialType = value;
                }
            }
        }

        [Column(Storage = "_MaterialCode", DbType = "VarChar(50)")]
        public string MaterialCode
        {
            get
            {
                return this._MaterialCode;
            }
            set
            {
                if ((this._MaterialCode != value))
                {
                    this._MaterialCode = value;
                }
            }
        }

        [Column(Storage = "_SupplierUnit", DbType = "NVarChar(200)")]
        public string SupplierUnit
        {
            get
            {
                return this._SupplierUnit;
            }
            set
            {
                if ((this._SupplierUnit != value))
                {
                    this._SupplierUnit = value;
                }
            }
        }

        [Column(Storage = "_WastageOnCAC", DbType = "Decimal(15,4)")]
        public System.Nullable<decimal> WastageOnCAC
        {
            get
            {
                return this._WastageOnCAC;
            }
            set
            {
                if ((this._WastageOnCAC != value))
                {
                    this._WastageOnCAC = value;
                }
            }
        }

        [Column(Storage = "_AllInPrice", DbType = "Decimal(15,4)")]
        public System.Nullable<decimal> AllInPrice
        {
            get
            {
                return this._AllInPrice;
            }
            set
            {
                if ((this._AllInPrice != value))
                {
                    this._AllInPrice = value;
                }
            }
        }

        [Column(Storage = "_MOQ", DbType = "Int")]
        public System.Nullable<int> MOQ
        {
            get
            {
                return this._MOQ;
            }
            set
            {
                if ((this._MOQ != value))
                {
                    this._MOQ = value;
                }
            }
        }

        [Column(Storage = "_ERPSupplier", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
        public string ERPSupplier
        {
            get
            {
                return this._ERPSupplier;
            }
            set
            {
                if ((this._ERPSupplier != value))
                {
                    this._ERPSupplier = value;
                }
            }
        }

        [Column(Storage = "_Currency", DbType = "NVarChar(5)")]
        public string Currency
        {
            get
            {
                return this._Currency;
            }
            set
            {
                if ((this._Currency != value))
                {
                    this._Currency = value;
                }
            }
        }

        [Column(Storage = "_ExchangeRate", DbType = "Decimal(15,4)")]
        public System.Nullable<decimal> ExchangeRate
        {
            get
            {
                return this._ExchangeRate;
            }
            set
            {
                if ((this._ExchangeRate != value))
                {
                    this._ExchangeRate = value;
                }
            }
        }
    }

    public class OrderDetail
    {
        private string _Company;
        private string _Customer;
        private string _SalesOrderNO;
        private string _ProjectNO;
        private string _DeliveryTerm;
        private string _PaymentTerm;
        private System.Nullable<System.DateTime> _SoIssueDate;
        private string _Season;
        private string _Curr;
        private System.Nullable<decimal> _ExRate;
        private string _Suspension;
        private string _Factory;
        private string _Status;
        private string _WorkOrderNO;
        private string _CustomerPO;
        private string _CustomerStyleNO;
        private string _StyleNO;
        private string _ShipMode;
        private string _Destination;
        private System.Nullable<decimal> _HKPrice;
        private System.Nullable<System.DateTime> _ConfirmedDate;
        private string _ProductDescription;
        private string _ColorCode;

        private int _RoundNO;

        private System.Nullable<int> _RoundTotal;

        private System.Nullable<System.DateTime> _DeliveryDate;

        private System.Nullable<System.DateTime> _FCLExFtyDate;

        private System.Nullable<System.DateTime> _LCLExFtyDate;

        private System.Nullable<int> _BulkQty;

        private System.Nullable<int> _SampleQty;

        private string _CAT;

        private string _Remark;

        private string _RWO;

        private System.Nullable<System.DateTime> _RWOExFty;

        private System.Nullable<int> _Qty1;

        private System.Nullable<int> _Qty2;

        private System.Nullable<int> _Qty3;

        private System.Nullable<int> _Qty4;

        private System.Nullable<int> _Qty5;

        private System.Nullable<int> _Qty6;

        public OrderDetail()
        {
        }


        public string Company
        {
            get
            {
                return this._Company;
            }
            set
            {
                if ((this._Company != value))
                {
                    this._Company = value;
                }
            }
        }


        public string Customer
        {
            get
            {
                return this._Customer;
            }
            set
            {
                if ((this._Customer != value))
                {
                    this._Customer = value;
                }
            }
        }


        public string SalesOrderNO
        {
            get
            {
                return this._SalesOrderNO;
            }
            set
            {
                if ((this._SalesOrderNO != value))
                {
                    this._SalesOrderNO = value;
                }
            }
        }


        public string ProjectNO
        {
            get
            {
                return this._ProjectNO;
            }
            set
            {
                if ((this._ProjectNO != value))
                {
                    this._ProjectNO = value;
                }
            }
        }


        public string DeliveryTerm
        {
            get
            {
                return this._DeliveryTerm;
            }
            set
            {
                if ((this._DeliveryTerm != value))
                {
                    this._DeliveryTerm = value;
                }
            }
        }

        public string PaymentTerm
        {
            get
            {
                return this._PaymentTerm;
            }
            set
            {
                if ((this._PaymentTerm != value))
                {
                    this._PaymentTerm = value;
                }
            }
        }

        public System.Nullable<System.DateTime> SoIssueDate
        {
            get
            {
                return this._SoIssueDate;
            }
            set
            {
                if ((this._SoIssueDate != value))
                {
                    this._SoIssueDate = value;
                }
            }
        }

        public string Season
        {
            get
            {
                return this._Season;
            }
            set
            {
                if ((this._Season != value))
                {
                    this._Season = value;
                }
            }
        }

        public string Curr
        {
            get
            {
                return this._Curr;
            }
            set
            {
                if ((this._Curr != value))
                {
                    this._Curr = value;
                }
            }
        }

        public System.Nullable<decimal> ExRate
        {
            get
            {
                return this._ExRate;
            }
            set
            {
                if ((this._ExRate != value))
                {
                    this._ExRate = value;
                }
            }
        }

        public string Suspension
        {
            get
            {
                return this._Suspension;
            }
            set
            {
                if ((this._Suspension != value))
                {
                    this._Suspension = value;
                }
            }
        }

        public string Factory
        {
            get
            {
                return this._Factory;
            }
            set
            {
                if ((this._Factory != value))
                {
                    this._Factory = value;
                }
            }
        }

        public string Status
        {
            get
            {
                return this._Status;
            }
            set
            {
                if ((this._Status != value))
                {
                    this._Status = value;
                }
            }
        }

        public string WorkOrderNO
        {
            get
            {
                return this._WorkOrderNO;
            }
            set
            {
                if ((this._WorkOrderNO != value))
                {
                    this._WorkOrderNO = value;
                }
            }
        }

        public string CustomerPO
        {
            get
            {
                return this._CustomerPO;
            }
            set
            {
                if ((this._CustomerPO != value))
                {
                    this._CustomerPO = value;
                }
            }
        }
        public string CustomerStyleNO
        {
            get
            {
                return this._CustomerStyleNO;
            }
            set
            {
                if ((this._CustomerStyleNO != value))
                {
                    this._CustomerStyleNO = value;
                }
            }
        }

        public string StyleNO
        {
            get
            {
                return this._StyleNO;
            }
            set
            {
                if ((this._StyleNO != value))
                {
                    this._StyleNO = value;
                }
            }
        }

        public string ShipMode
        {
            get
            {
                return this._ShipMode;
            }
            set
            {
                if ((this._ShipMode != value))
                {
                    this._ShipMode = value;
                }
            }
        }

        public string Destination
        {
            get
            {
                return this._Destination;
            }
            set
            {
                if ((this._Destination != value))
                {
                    this._Destination = value;
                }
            }
        }

        public System.Nullable<decimal> HKPrice
        {
            get
            {
                return this._HKPrice;
            }
            set
            {
                if ((this._HKPrice != value))
                {
                    this._HKPrice = value;
                }
            }
        }

        public System.Nullable<System.DateTime> ConfirmedDate
        {
            get
            {
                return this._ConfirmedDate;
            }
            set
            {
                if ((this._ConfirmedDate != value))
                {
                    this._ConfirmedDate = value;
                }
            }
        }

        public string ProductDescription
        {
            get
            {
                return this._ProductDescription;
            }
            set
            {
                if ((this._ProductDescription != value))
                {
                    this._ProductDescription = value;
                }
            }
        }

        public string ColorCode
        {
            get
            {
                return this._ColorCode;
            }
            set
            {
                if ((this._ColorCode != value))
                {
                    this._ColorCode = value;
                }
            }
        }

        public int RoundNO
        {
            get
            {
                return this._RoundNO;
            }
            set
            {
                if ((this._RoundNO != value))
                {
                    this._RoundNO = value;
                }
            }
        }
        public System.Nullable<int> RoundTotal
        {
            get
            {
                return this._RoundTotal;
            }
            set
            {
                if ((this._RoundTotal != value))
                {
                    this._RoundTotal = value;
                }
            }
        }
        public System.Nullable<System.DateTime> DeliveryDate
        {
            get
            {
                return this._DeliveryDate;
            }
            set
            {
                if ((this._DeliveryDate != value))
                {
                    this._DeliveryDate = value;
                }
            }
        }

        public System.Nullable<System.DateTime> FCLExFtyDate
        {
            get
            {
                return this._FCLExFtyDate;
            }
            set
            {
                if ((this._FCLExFtyDate != value))
                {
                    this._FCLExFtyDate = value;
                }
            }
        }

        public System.Nullable<System.DateTime> LCLExFtyDate
        {
            get
            {
                return this._LCLExFtyDate;
            }
            set
            {
                if ((this._LCLExFtyDate != value))
                {
                    this._LCLExFtyDate = value;
                }
            }
        }

        public System.Nullable<int> BulkQty
        {
            get
            {
                return this._BulkQty;
            }
            set
            {
                if ((this._BulkQty != value))
                {
                    this._BulkQty = value;
                }
            }
        }

        public System.Nullable<int> SampleQty
        {
            get
            {
                return this._SampleQty;
            }
            set
            {
                if ((this._SampleQty != value))
                {
                    this._SampleQty = value;
                }
            }
        }

        public string CAT
        {
            get
            {
                return this._CAT;
            }
            set
            {
                if ((this._CAT != value))
                {
                    this._CAT = value;
                }
            }
        }

        public string Remark
        {
            get
            {
                return this._Remark;
            }
            set
            {
                if ((this._Remark != value))
                {
                    this._Remark = value;
                }
            }
        }

        public string RWO
        {
            get
            {
                return this._RWO;
            }
            set
            {
                if ((this._RWO != value))
                {
                    this._RWO = value;
                }
            }
        }

        public System.Nullable<System.DateTime> RWOExFty
        {
            get
            {
                return this._RWOExFty;
            }
            set
            {
                if ((this._RWOExFty != value))
                {
                    this._RWOExFty = value;
                }
            }
        }
        public System.Nullable<int> Qty1
        {
            get
            {
                return this._Qty1;
            }
            set
            {
                if ((this._Qty1 != value))
                {
                    this._Qty1 = value;
                }
            }
        }
        public System.Nullable<int> Qty2
        {
            get
            {
                return this._Qty2;
            }
            set
            {
                if ((this._Qty2 != value))
                {
                    this._Qty2 = value;
                }
            }
        }
        public System.Nullable<int> Qty3
        {
            get
            {
                return this._Qty3;
            }
            set
            {
                if ((this._Qty3 != value))
                {
                    this._Qty3 = value;
                }
            }
        }
        public System.Nullable<int> Qty4
        {
            get
            {
                return this._Qty4;
            }
            set
            {
                if ((this._Qty4 != value))
                {
                    this._Qty4 = value;
                }
            }
        }
        public System.Nullable<int> Qty5
        {
            get
            {
                return this._Qty5;
            }
            set
            {
                if ((this._Qty5 != value))
                {
                    this._Qty5 = value;
                }
            }
        }
        public System.Nullable<int> Qty6
        {
            get
            {
                return this._Qty6;
            }
            set
            {
                if ((this._Qty6 != value))
                {
                    this._Qty6 = value;
                }
            }
        }

        public System.Nullable<Decimal> QtyDA
        {
            set { }
            get
            {
                return Convert.ToDecimal(this.BulkQty / 12.0);
            }
        }
        public System.Nullable<Decimal> Amount
        {
            set { }
            get
            {
                return this.HKPrice * this.BulkQty;
            }
        }
        public System.Nullable<Decimal> RateAmount
        {
            set { }
            get
            {
                return this.ExRate * this.HKPrice * this.BulkQty;
            }
        }

        public System.Nullable<int> EQty1
        {
            get;
            set;
        }
        public System.Nullable<int> EQty2
        {
            get;
            set;
        }
        public System.Nullable<int> EQty3
        {
            get;
            set;
        }
        public System.Nullable<int> EQty4
        {
            get;
            set;
        }
        public System.Nullable<int> EQty5
        {
            get;
            set;
        }
        public System.Nullable<int> EQty6
        {
            get;
            set;
        }

        public System.Nullable<int> CQty1
        {
            get;
            set;
        }
        public System.Nullable<int> CQty2
        {
            get;
            set;
        }
        public System.Nullable<int> CQty3
        {
            get;
            set;
        }
        public System.Nullable<int> CQty4
        {
            get;
            set;
        }
        public System.Nullable<int> CQty5
        {
            get;
            set;
        }
        public System.Nullable<int> CQty6
        {
            get;
            set;
        }

        public System.Nullable<int> TQty1
        {
            get;
            set;
        }
        public System.Nullable<int> TQty2
        {
            get;
            set;
        }
        public System.Nullable<int> TQty3
        {
            get;
            set;
        }
        public System.Nullable<int> TQty4
        {
            get;
            set;
        }
        public System.Nullable<int> TQty5
        {
            get;
            set;
        }
        public System.Nullable<int> TQty6
        {
            get;
            set;
        }

        public System.Nullable<int> DQty1
        {
            get;
            set;
        }
        public System.Nullable<int> DQty2
        {
            get;
            set;
        }
        public System.Nullable<int> DQty3
        {
            get;
            set;
        }
        public System.Nullable<int> DQty4
        {
            get;
            set;
        }
        public System.Nullable<int> DQty5
        {
            get;
            set;
        }
        public System.Nullable<int> DQty6
        {
            get;
            set;
        }


        public System.Nullable<int> Month1
        {
            get;
            set;
        }
        public System.Nullable<int> Month2
        {
            get;
            set;
        }
        public System.Nullable<int> Month3
        {
            get;
            set;
        }
        public System.Nullable<int> Month4
        {
            get;
            set;
        }

    }
    public class OrderDetailShip
    {

        private System.Nullable<int> _DT;

        private string _TM;

        private string _CONO;

        private string _CUST;

        private string _PRJNO;

        private string _JOBNO;

        private string _CORDN;

        private string _PSTL;

        private string _PCOL;

        private System.Nullable<int> _OQTY;

        private System.Nullable<int> _DTDR;

        private string _CSTYL;

        private string _SHPM;

        private string _PAYM;

        private string _INVN;

        private string _CAT;

        private string _CURR;

        private System.Nullable<decimal> _PRICE;

        private System.Nullable<int> _SHPQTY;

        private System.Nullable<decimal> _CRRT;

        private string _ORDNO;

        private System.Nullable<int> _ORDL;

        private string _SLMN;

        private string _FACTORY;

        private System.Nullable<System.DateTime> _SAILDT;

        private string _INVNO;

        private string _VESSEL;

        private System.Nullable<double> _QUOTA;

        private System.Nullable<int> _OQTYNEW;

        private string _CATNEW;

        private System.Nullable<System.DateTime> _DTDRNEW;

        private string _FACTORYNEW;

        private System.Nullable<decimal> _AMOUNTNEW;

        public OrderDetailShip()
        {
        }

        public System.Nullable<int> DT
        {
            get
            {
                return this._DT;
            }
            set
            {
                if ((this._DT != value))
                {
                    this._DT = value;
                }
            }
        }

        public string TM
        {
            get
            {
                return this._TM;
            }
            set
            {
                if ((this._TM != value))
                {
                    this._TM = value;
                }
            }
        }

        public string CONO
        {
            get
            {
                return this._CONO;
            }
            set
            {
                if ((this._CONO != value))
                {
                    this._CONO = value;
                }
            }
        }

        public string CUST
        {
            get
            {
                return this._CUST;
            }
            set
            {
                if ((this._CUST != value))
                {
                    this._CUST = value;
                }
            }
        }

        public string PRJNO
        {
            get
            {
                return this._PRJNO;
            }
            set
            {
                if ((this._PRJNO != value))
                {
                    this._PRJNO = value;
                }
            }
        }

        public string JOBNO
        {
            get
            {
                return this._JOBNO;
            }
            set
            {
                if ((this._JOBNO != value))
                {
                    this._JOBNO = value;
                }
            }
        }

        public string CORDN
        {
            get
            {
                return this._CORDN;
            }
            set
            {
                if ((this._CORDN != value))
                {
                    this._CORDN = value;
                }
            }
        }

        public string PSTL
        {
            get
            {
                return this._PSTL;
            }
            set
            {
                if ((this._PSTL != value))
                {
                    this._PSTL = value;
                }
            }
        }

        public string PCOL
        {
            get
            {
                return this._PCOL;
            }
            set
            {
                if ((this._PCOL != value))
                {
                    this._PCOL = value;
                }
            }
        }

        public System.Nullable<int> OQTY
        {
            get
            {
                return this._OQTY;
            }
            set
            {
                if ((this._OQTY != value))
                {
                    this._OQTY = value;
                }
            }
        }

        public System.Nullable<int> DTDR
        {
            get
            {
                return this._DTDR;
            }
            set
            {
                if ((this._DTDR != value))
                {
                    this._DTDR = value;
                }
            }
        }

        public string CSTYL
        {
            get
            {
                return this._CSTYL;
            }
            set
            {
                if ((this._CSTYL != value))
                {
                    this._CSTYL = value;
                }
            }
        }

        public string SHPM
        {
            get
            {
                return this._SHPM;
            }
            set
            {
                if ((this._SHPM != value))
                {
                    this._SHPM = value;
                }
            }
        }

        public string PAYM
        {
            get
            {
                return this._PAYM;
            }
            set
            {
                if ((this._PAYM != value))
                {
                    this._PAYM = value;
                }
            }
        }

        public string INVN
        {
            get
            {
                return this._INVN;
            }
            set
            {
                if ((this._INVN != value))
                {
                    this._INVN = value;
                }
            }
        }

        public string CAT
        {
            get
            {
                return this._CAT;
            }
            set
            {
                if ((this._CAT != value))
                {
                    this._CAT = value;
                }
            }
        }

        public string CURR
        {
            get
            {
                return this._CURR;
            }
            set
            {
                if ((this._CURR != value))
                {
                    this._CURR = value;
                }
            }
        }

        public System.Nullable<decimal> PRICE
        {
            get
            {
                return this._PRICE;
            }
            set
            {
                if ((this._PRICE != value))
                {
                    this._PRICE = value;
                }
            }
        }

        public System.Nullable<int> SHPQTY
        {
            get
            {
                return this._SHPQTY;
            }
            set
            {
                if ((this._SHPQTY != value))
                {
                    this._SHPQTY = value;
                }
            }
        }

        public System.Nullable<decimal> CRRT
        {
            get
            {
                return this._CRRT;
            }
            set
            {
                if ((this._CRRT != value))
                {
                    this._CRRT = value;
                }
            }
        }

        public string ORDNO
        {
            get
            {
                return this._ORDNO;
            }
            set
            {
                if ((this._ORDNO != value))
                {
                    this._ORDNO = value;
                }
            }
        }

        public System.Nullable<int> ORDL
        {
            get
            {
                return this._ORDL;
            }
            set
            {
                if ((this._ORDL != value))
                {
                    this._ORDL = value;
                }
            }
        }

        public string SLMN
        {
            get
            {
                return this._SLMN;
            }
            set
            {
                if ((this._SLMN != value))
                {
                    this._SLMN = value;
                }
            }
        }

        public string FACTORY
        {
            get
            {
                return this._FACTORY;
            }
            set
            {
                if ((this._FACTORY != value))
                {
                    this._FACTORY = value;
                }
            }
        }

        public System.Nullable<System.DateTime> SAILDT
        {
            get
            {
                return this._SAILDT;
            }
            set
            {
                if ((this._SAILDT != value))
                {
                    this._SAILDT = value;
                }
            }
        }

        public string INVNO
        {
            get
            {
                return this._INVNO;
            }
            set
            {
                if ((this._INVNO != value))
                {
                    this._INVNO = value;
                }
            }
        }

        public string VESSEL
        {
            get
            {
                return this._VESSEL;
            }
            set
            {
                if ((this._VESSEL != value))
                {
                    this._VESSEL = value;
                }
            }
        }

        public System.Nullable<double> QUOTA
        {
            get
            {
                return this._QUOTA;
            }
            set
            {
                if ((this._QUOTA != value))
                {
                    this._QUOTA = value;
                }
            }
        }

        public System.Nullable<int> OQTYNEW
        {
            get
            {
                return this._OQTYNEW;
            }
            set
            {
                if ((this._OQTYNEW != value))
                {
                    this._OQTYNEW = value;
                }
            }
        }

        public string CATNEW
        {
            get
            {
                return this._CATNEW;
            }
            set
            {
                if ((this._CATNEW != value))
                {
                    this._CATNEW = value;
                }
            }
        }

        public System.Nullable<System.DateTime> DTDRNEW
        {
            get
            {
                return this._DTDRNEW;
            }
            set
            {
                if ((this._DTDRNEW != value))
                {
                    this._DTDRNEW = value;
                }
            }
        }

        public string FACTORYNEW
        {
            get
            {
                return this._FACTORYNEW;
            }
            set
            {
                if ((this._FACTORYNEW != value))
                {
                    this._FACTORYNEW = value;
                }
            }
        }

        public System.Nullable<decimal> AMOUNTNEW
        {
            get
            {
                return this._AMOUNTNEW;
            }
            set
            {
                if ((this._AMOUNTNEW != value))
                {
                    this._AMOUNTNEW = value;
                }
            }
        }
    }

    #endregion

    #region Packing
    partial class PackagingMaterial : BaseEntity
    {
        public string MRType { get { return this.PHMaterial.Substring(0, 3); } }
        public decimal YY { get { return (this.QtyPer ?? 0) * (1 + (this.WastageOnCAC ?? 0)); } }
    }
    partial class CustomerBrandCategory : BaseEntity
    {
        partial void OnCreated()
        {
            this.GID = Guid.NewGuid();
            this.Brand = "";
            this.Category = "";
            this.StyleNo = "";
            this.StyleDesc = "";
        }
        public Boolean FlatFold
        {
            get
            {
                return Convert.ToInt32(this.FlatOrHalfFold) == 1 ? true : false;
            }
        }
        public Boolean HalfFold
        {
            get
            {
                return Convert.ToInt32(this.FlatOrHalfFold) == 2 ? true : false;
            }
        }
        public Boolean Hookandeye1
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 1 ? true : false;
            }
        }
        public Boolean Hookandeye2
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 2 ? true : false;
            }
        }
        public Boolean Hookandeye3
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 3 ? true : false;
            }
        }
        public Boolean Hookandeye4
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 4 ? true : false;
            }
        }

        public Boolean? CartonBeltRequisition1
        {
            get
            {
                //return Convert.ToBoolean(this.CartonBeltRequisition) ? true : false;
                return GetSingleDoubleValue(this.CartonBeltRequisition, true);
            }
        }
        public Boolean? CartonBeltRequisition2
        {
            get
            {
                //return Convert.ToBoolean(this.CartonBeltRequisition) ? false : true;
                return GetSingleDoubleValue(this.CartonBeltRequisition, false);
            }
        }
        public Boolean? Sky_SingleDouble1
        {
            get
            {
                //return Convert.ToBoolean(this.Sky_SingleDouble) ? true : false;
                return GetSingleDoubleValue(this.Sky_SingleDouble, true);
            }
        }
        public Boolean? Sky_SingleDouble2
        {
            get
            {
                //return Convert.ToBoolean(this.Sky_SingleDouble) ? false : true;
                return GetSingleDoubleValue(this.Sky_SingleDouble, false);
            }
        }
        public Boolean? SideMark_SingleDouble1
        {
            get
            {
                //return Convert.ToBoolean(this.SideMark_SingleDouble) ? true : false;
                return GetSingleDoubleValue(this.SideMark_SingleDouble, true);
            }
        }
        public Boolean? SideMark_SingleDouble2
        {
            get
            {
                //return Convert.ToBoolean(this.SideMark_SingleDouble) ? false : true;
                return GetSingleDoubleValue(this.SideMark_SingleDouble, false);
            }
        }
        public Boolean? InnerBoxMark_SingleDouble1
        {
            get
            {
                //return Convert.ToBoolean(this.InnerBoxMark_SingleDouble) ? true : false;
                return GetSingleDoubleValue(this.InnerBoxMark_SingleDouble, true);
            }
        }
        public Boolean? InnerBoxMark_SingleDouble2
        {
            get
            {
                //return Convert.ToBoolean(this.InnerBoxMark_SingleDouble) ? false : true;
                return GetSingleDoubleValue(this.InnerBoxMark_SingleDouble, false);
            }
        }
        public Boolean? SideMarkPaper_SingleDouble1
        {
            get
            {
                //return Convert.ToBoolean(this.SideMarkPaper_SingleDouble) ? true : false;
                return GetSingleDoubleValue(this.SideMarkPaper_SingleDouble, true);
            }
        }
        public Boolean? SideMarkPaper_SingleDouble2
        {
            get
            {
                return GetSingleDoubleValue(this.SideMarkPaper_SingleDouble, false);
                //return Convert.ToBoolean(this.SideMarkPaper_SingleDouble) ? false : true;
            }
        }
        public Boolean? Boat_SingleDouble1
        {
            get
            {
                return GetSingleDoubleValue(this.Boat_SingleDouble, true);
                // return Convert.ToBoolean(this.Boat_SingleDouble) ? true : false;
            }
        }
        public Boolean? Boat_SingleDouble2
        {
            get
            {
                return GetSingleDoubleValue(this.Boat_SingleDouble, false);
                //return Convert.ToBoolean(this.Boat_SingleDouble) ? false : true;
            }
        }

        private bool? GetSingleDoubleValue(bool? value, bool isTrue)
        {
            //return value.HasValue ? ((value ?? false) ? isTrue : !isTrue) : value;
            return value.HasValue ? value.Value == isTrue : value;
        }

    }
    partial class CustomerCup : BaseEntity
    {
        partial void OnCreated()
        {
            this.ClrCode = "";
            this.Cups = "";
            this.Size = "";
        }
        public string Brand { get { return this.CustomerBrandCategory.Brand; } }
        public string Category { get { return this.CustomerBrandCategory.Category; } }
        public string StyleNo { get { return this.CustomerBrandCategory.StyleNo; } }
    }
    partial class CustomerLabeling : BaseEntity
    {
        public string Brand { get { return this.CustomerBrandCategory.Brand; } }
        public string Category { get { return this.CustomerBrandCategory.Category; } }
        public string StyleNo { get { return this.CustomerBrandCategory.StyleNo; } }
    }
    partial class CustomerPacking : BaseEntity
    {
        public string Brand { get { return this.CustomerBrandCategory.Brand; } }
        public string Category { get { return this.CustomerBrandCategory.Category; } }
        public string StyleNo { get { return this.CustomerBrandCategory.StyleNo; } }
    }
    partial class WorkOrderCategory : BaseEntity
    {
        partial void OnCreated()
        {
            this.Brand = "";
            this.StyleNo = "";
            this.StyleDesc = "";
            this.Category = "";
        }

        public string Customer { get { return this.WorkOrder.Project.CustomerCode; } }
        public string CustCode { get { return this.WorkOrder.Project.Customer; } }
        public string Factory { get { return this.WorkOrder.Project.Factory; } }
        public string ProjectNo { get { return this.WorkOrder.Project.ProjectNo; } }
        public DateTime? WOCreateDate { get { return this.WorkOrder.WOCreateDate; } }
        public string PHStyle { get { return this.WorkOrder.StyleNo; } }
        public string CustStyle { get { return this.WorkOrder.CustomerStyleNo; } }


        public Boolean FlatFold
        {
            get
            {
                return Convert.ToInt32(this.FlatOrHalfFold) == 1 ? true : false;
            }
        }
        public Boolean HalfFold
        {
            get
            {
                return Convert.ToInt32(this.FlatOrHalfFold) == 2 ? true : false;
            }
        }
        public Boolean Hookandeye1
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 1 ? true : false;
            }
        }
        public Boolean Hookandeye2
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 2 ? true : false;
            }
        }
        public Boolean Hookandeye3
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 3 ? true : false;
            }
        }
        public Boolean Hookandeye4
        {
            get
            {
                return Convert.ToInt32(this.Hookandeye) == 4 ? true : false;
            }
        }


        public Boolean CartonBeltRequisition1
        {
            get
            {
                return Convert.ToBoolean(this.CartonBeltRequisition) ? true : false;
            }
        }
        public Boolean CartonBeltRequisition2
        {
            get
            {
                return Convert.ToBoolean(this.CartonBeltRequisition) ? false : true;
            }
        }
        public Boolean Sky_SingleDouble1
        {
            get
            {
                return Convert.ToBoolean(this.Sky_SingleDouble) ? true : false;
            }
        }
        public Boolean Sky_SingleDouble2
        {
            get
            {
                return Convert.ToBoolean(this.Sky_SingleDouble) ? false : true;
            }
        }
        public Boolean SideMark_SingleDouble1
        {
            get
            {
                return Convert.ToBoolean(this.SideMark_SingleDouble) ? true : false;
            }
        }
        public Boolean SideMark_SingleDouble2
        {
            get
            {
                return Convert.ToBoolean(this.SideMark_SingleDouble) ? false : true;
            }
        }
        public Boolean InnerBoxMark_SingleDouble1
        {
            get
            {
                return Convert.ToBoolean(this.InnerBoxMark_SingleDouble) ? true : false;
            }
        }
        public Boolean InnerBoxMark_SingleDouble2
        {
            get
            {
                return Convert.ToBoolean(this.InnerBoxMark_SingleDouble) ? false : true;
            }
        }
        public Boolean SideMarkPaper_SingleDouble1
        {
            get
            {
                return Convert.ToBoolean(this.SideMarkPaper_SingleDouble) ? true : false;
            }
        }
        public Boolean SideMarkPaper_SingleDouble2
        {
            get
            {
                return Convert.ToBoolean(this.SideMarkPaper_SingleDouble) ? false : true;
            }
        }
        public Boolean Boat_SingleDouble1
        {
            get
            {
                return Convert.ToBoolean(this.Boat_SingleDouble) ? true : false;
            }
        }
        public Boolean Boat_SingleDouble2
        {
            get
            {
                return Convert.ToBoolean(this.Boat_SingleDouble) ? false : true;
            }
        }


    }
    partial class WorkOrderCategoryCup : BaseEntity
    {
        partial void OnCreated()
        {
            this.ClrCode = "";
            this.Cups = "";
            this.Size = "";
        }
    }
    partial class WorkOrderCategoryLabeling : BaseEntity { }
    partial class WorkOrderCategoryPacking : BaseEntity { }
    #endregion

    #region View

    partial class View_RWO_ConfirmRight : BaseEntity
    {
        public bool Choice
        {
            get;
            set;
        }
    }
    partial class View_RWOConfirm : BaseEntity
    {
        public bool ConfirmFlag { get; set; }
        public bool RejectFlag { get; set; }
        public bool HoldFlag { get; set; }

        public int Qty
        {
            get
            {
                return (this.BulkQty ?? 0) + (this.SampleQty ?? 0);
            }
        }
        public string RWO
        {
            get
            {
                return string.Format("{0}/{1}", this.RoundNo, this.RoundTotal);
            }
        }

        public System.DateTime? T3
        {
            get
            {
                return this.AjustT3Date.HasValue ? this.AjustT3Date : this.T3Date;
            }
        }
        public DateTime? ExFtyDate
        {
            //get { return this.CustomerCode == "TAMA" ? this.FCLExFtyDate : this.LCLExFtyDate; }
            get { return this.LCLExFtyDate; }
        }

        public int LWWindow
        {
            get
            {
                if (this.LineWorkStartDate.HasValue && this.T3Date.HasValue)
                    //return (this.T3Date.Value - this.LineWorkStartDate.Value).Days + 1; 
                    //Xsj20170211:注釋掉以上代碼，添加以下代碼
                    //對應發往廣西廠的WO，需要再原來LineWorkStartDate的基礎上+2day.
                    return (this.T3Date.Value - this.LineWorkStartDate_SpecialFactory.Value).Days + 1;
                else
                    return 0;
            }
        }

        public ConfirmProcessingType ProcessingType { get; set; }
        public string ProcessingTypeDesc
        {
            get
            {
                switch (this.ProcessingType)
                {
                    case ConfirmProcessingType.OA:
                        return "OA";
                    case ConfirmProcessingType.PPC:
                        return "PPC";
                    case ConfirmProcessingType.TOP:
                        return "Fty Sr Mgt";
                    case ConfirmProcessingType.Header:
                        return "Header Office Mer. Mgr";
                    default:
                        return "";
                }
            }
        }
    }
    partial class View_RWOIIConfirm : BaseEntity
    {
        public bool ConfirmFlag { get; set; }
        public bool RejectFlag { get; set; }
        public bool HoldFlag { get; set; }
        public int Qty
        {
            get
            {
                return (this.BulkQty ?? 0) + (this.SampleQty ?? 0);
            }
        }
        public string RWO
        {
            get
            {
                //return string.Format("{0}/{1}{2}", this.RoundNo, (this.RoundTotal ?? 0),
                //    ((AppliedToPhaseII ?? false) && (AppliedToALL ?? false)) ? "a"
                //    : (this.SubFactory.ToLower() == "sl" ? "s" : "f"));

                return string.Format("{0}/{1}{2}", this.RoundNo, (this.RoundTotal ?? 0),
                    (
                      (AppliedToPhaseII ?? false) && (AppliedToALL ?? false)) ?
                    // FJ: F , GG: G
                         (this.SubFactory.ToLower() == "fj" ? "F" : "G")
                       : (
                    //SL:s, FJ:f, GG:g
                           this.SubFactory.ToLower() == "sl" ? "s" : (this.SubFactory.ToLower() == "fj" ? "f" : "g")
                         )
                    );

            }
        }
        public System.DateTime? T3
        {
            get
            {
                return this.AjustT3Date.HasValue ? this.AjustT3Date : this.T3Date;
            }
        }
        public DateTime? ExFtyDate
        {
            get { return this.LCLExFtyDate; }
        }
        public int LWWindow
        {
            get
            {
                if (this.LineWorkStartDate.HasValue && this.T3Date.HasValue)
                    return (this.T3Date.Value - this.LineWorkStartDate.Value).Days + 1;
                else
                    return 0;
            }
        }
        //private string _CustomerCode;
        //public string CustomerCode
        //{
        //    get
        //    {
        //        if (_CustomerCode == null)
        //        {
        //            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
        //            CustomerList list = new CustomerList();
        //            _CustomerCode = list.GetCustomerByCode(this.Customer);
        //        }
        //        return _CustomerCode;
        //    }
        //}

        public ConfirmProcessingType ProcessingType { get; set; }
        public string ProcessingTypeDesc
        {
            get
            {
                switch (this.ProcessingType)
                {
                    case ConfirmProcessingType.OA:
                        return "OA";
                    case ConfirmProcessingType.PPC:
                        return "PPC";
                    case ConfirmProcessingType.TOP:
                        return "Fty Sr Mgt";
                    case ConfirmProcessingType.Header:
                        return "Header Office Mer. Mgr";
                    default:
                        return "";
                }
            }
        }
    }
    partial class View_RejectWorkFolw : BaseEntity
    { }
    partial class View_WOConfirm : BaseEntity
    {
        #region Extensibility Method Definitions
        partial void OnConfirmFlagChanging(bool value);
        partial void OnConfirmFlagChanged();
        partial void OnRejectFlagChanging(bool value);
        partial void OnRejectFlagChanged();
        partial void OnHoldFlagChanging(bool value);
        partial void OnHoldFlagChanged();
        #endregion


        #region 由David加入2022-01-06
        //LWNonShipWindow  SW window
        //Chosenvs3 SW buffer
        private WorkOrder WO
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                return (CurrentDataContext as RWOSOPCDataContext).WorkOrders.FirstOrDefault(p => p.WorkOrderNo == this.WorkOrderNo);
            }
        }

        public int SWWindow
        {
            get
            {
                return WO == null ? 0 : WO.LWNonShipWindow;
            }
        }

        public int? SWBuffer
        {
            get
            {
                return WO == null ? 0 : WO.Chosenvs3;
            }
        }


        #endregion



        partial void OnConfirmFlagChanging(bool value)
        {
            if (value)
            {
                RejectFlag = false;
                HoldFlag = false;
            }
        }
        partial void OnHoldFlagChanging(bool value)
        {
            if (value)
            {
                RejectFlag = false;
                ConfirmFlag = false;
            }
        }
        partial void OnRejectFlagChanging(bool value)
        {
            if (value)
            {
                HoldFlag = false;
                ConfirmFlag = false;
            }
        }
        private bool _ConfirmFlag;
        private bool _RejectFlag;
        private bool _HoldFlag;
        public bool ConfirmFlag
        {
            get { return _ConfirmFlag; }
            set
            {
                //_ConfirmFlag = value;
                //if (_ConfirmFlag)
                //{
                //    RejectFlag = false;
                //    HoldFlag = false;
                //}

                if ((this._ConfirmFlag != value))
                {
                    this.OnConfirmFlagChanging(value);
                    //this.SendPropertyChanging();
                    this._ConfirmFlag = value;
                    //this.SendPropertyChanged("ConfirmFlag");
                    this.OnConfirmFlagChanged();
                }
            }
        }
        public bool RejectFlag
        {
            get { return _RejectFlag; }
            set
            {
                //_RejectFlag = value;
                //if (_RejectFlag)
                //{
                //    ConfirmFlag = false;
                //    HoldFlag = false;
                //}
                if ((this._RejectFlag != value))
                {
                    this.OnRejectFlagChanging(value);
                    //this.SendPropertyChanging();
                    this._RejectFlag = value;
                    //this.SendPropertyChanged("RejectFlag");
                    this.OnRejectFlagChanged();
                }
            }
        }
        public bool HoldFlag
        {
            get { return _HoldFlag; }
            set
            {
                //_HoldFlag = value;
                //if (_HoldFlag)
                //{
                //    RejectFlag = false;
                //    ConfirmFlag = false;
                //}
                if ((this._HoldFlag != value))
                {
                    this.OnHoldFlagChanging(value);
                    //this.SendPropertyChanging();
                    this._HoldFlag = value;
                    //this.SendPropertyChanged("HoldFlag");
                    this.OnHoldFlagChanged();
                }
            }
        }
        public int Qty
        {
            get
            {
                return (this.BulkQty ?? 0) + (this.SampleQty ?? 0);
            }
        }
        public System.DateTime? T3
        {
            get
            {
                return this.T3Adjust.HasValue ? this.T3Adjust : this.T3ShipCompleted;
            }
        }
        public DateTime? ExFtyDate
        {
            //get { return this.CustomerCode == "TAMA" && this.ShipMode.Contains("BOAT") ? this.FCLExFtyShipCompleted : this.LCLExFtyShipCompleted; }
            get { return this.LCLExFtyShipCompleted; }
        }
        public int LWWindow
        {
            get { return this.Customer.StartsWith("HBIU") ? LWShipWindow : LWNonShipWindow; }
        }
        public int LWShipWindow
        {
            get
            {
                if (this.LineWorkStartShip.HasValue && this.T3ShipCompleted.HasValue)
                    return (this.T3ShipCompleted.Value - this.LineWorkStartShip.Value).Days + 1;
                else
                    return 0;
            }
        }
        public int LWNonShipWindow
        {
            get
            {
                if (this.LineWorkShipCompleted.HasValue && this.T3ShipCompleted.HasValue)
                    return (this.T3ShipCompleted.Value - this.LineWorkShipCompleted.Value).Days + 1;
                else
                    return 0;
            }
        }

        public ConfirmProcessingType ProcessingType { get; set; }
        public string ProcessingTypeDesc
        {
            get
            {
                switch (this.ProcessingType)
                {
                    case ConfirmProcessingType.OA:
                        return "OA";
                    case ConfirmProcessingType.PPC:
                        return "PPC";
                    case ConfirmProcessingType.TOP:
                        return "Fty Sr Mgt";
                    case ConfirmProcessingType.Header:
                        return "Header Office Mer. Mgr";
                    default:
                        return "";
                }
            }
        }
    }
    partial class View_Export : BaseEntity
    {
    }
    partial class View_ConfirmWorkFlow : BaseEntity
    {
    }

    #endregion

    #region alone class

    partial class GetCustomerSampleOrderSortResult
    {
        public override string ToString()
        {
            return string.Format("{0};{1}", this.SampleOrderType, this.WorkShop);
        }
    }

    partial class Customers : BaseEntity
    {
    }
    partial class CustomerCode : BaseEntity
    {
    }


    partial class Right : BaseEntity
    {
        public string WORWO
        {
            get
            {
                return (this.Phase == 2) ? "RWO PII" : ((this.IsRWO) ? "RWO" : "WO");
            }
        }
        public IEnumerable<CustomerCode> CustomerCodes
        {
            get
            {
                CustomerCodeList list = new CustomerCodeList();
                return list.GetCustomerCodes(this.CustomerCode);
            }
        }
        public string SubCustomers
        {
            get
            {
                string s = "";
                foreach (var item in CustomerCodes)
                {
                    s += string.Format("{0};", item.CustomerCode1);
                }
                return s;
            }
        }
    }
    partial class RwoOrders : BaseEntity
    {
    }
    partial class CustomerCommission : BaseEntity
    {
    }
    public partial class CycleTimeProcess : BaseEntity
    {
        public string CalcBy
        {
            get
            {
                return (this.IsWorkingDay ?? false) ? "Working day" : "Calendar day";
            }
        }
        public string FrontBack
        {
            get
            {
                return (!this.IsFront.HasValue) ? "" : ((this.IsFront ?? false) ? "前部" : "後部");
            }
        }
        public string DirectDesc
        {
            get
            {
                switch (this.Direct)
                {
                    case 1: return "主廠";
                    case 2: return "加工廠";
                    case 3: return "主廠->加工廠";
                    case 4: return "加工廠->主廠";
                    default:
                        return "";
                }
            }
        }
        //partial void OnDaysChanged()
        //{
        //    if (this.RWOIITimeRule != null)
        //    {
        //        this.RWOIITimeRule.UpdateDays();
        //    }
        //}
    }

    #endregion

    #region List

    public class CustomerCodeList : BaseEntityList<CustomerCode, RWOSOPCDataContext>
    {
        public IEnumerable<string> GetDistinctCustomers()
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = (from a in CurrentDataContext.CustomerCodes
                      orderby a.Customer
                      select a.Customer).Distinct();
            return aa;
        }
        public IEnumerable<string> GetCustomers()
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = from a in CurrentDataContext.CustomerCodes
                     orderby a.CustomerCode1
                     select a.CustomerCode1;
            return aa;
        }
        public IEnumerable<CustomerCode> GetCustomerCodes(string customer)
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = from a in CurrentDataContext.CustomerCodes
                     where a.Customer == customer
                     orderby a.CustomerCode1
                     select a;
            return aa;
        }
    }
    public class CustomerBrandCategoryList : BaseEntityList<CustomerBrandCategory, RWOSOPCDataContext>
    {
        public CustomerBrandCategory GetCustomerBrandCategory(string cust, string custcode, string brand, string styleno, string styledesc)
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = (from a in CurrentDataContext.CustomerBrandCategories
                      where a.Customer == cust && a.CustCode == custcode && a.StyleNo == styleno && a.Brand == brand && a.StyleDesc == styledesc
                      select a).FirstOrDefault<CustomerBrandCategory>();
            return aa;
        }
        public IEnumerable<CustomerBrandCategory> GetCustomerBrandCategories(string cust, string custcode)
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = from a in CurrentDataContext.CustomerBrandCategories
                     where a.Customer == cust && a.CustCode == custcode
                     select a;
            return aa;
        }
        public IEnumerable<CustomerBrandCategory> GetCustomerBrandCategories(string cust, string custcode, string brand)
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = from a in CurrentDataContext.CustomerBrandCategories
                     where a.Customer == cust && a.CustCode == custcode && a.Brand == brand
                     select a;
            return aa;
        }
        public IEnumerable<CustomerBrandCategory> GetCustomerBrandCategories(string cust, string custcode, string brand, string styleno)
        {
            this.CurrentDataContext.CommandTimeout = 1000;
            var aa = from a in CurrentDataContext.CustomerBrandCategories
                     where a.Customer == cust && a.CustCode == custcode && a.Brand == brand && a.StyleNo == styleno
                     select a;
            return aa;
        }
    }
    public class WorkOrderCategoryList : BaseEntityList<WorkOrderCategory, RWOSOPCDataContext>
    {

    }
    //PeterZhou -->Restore
    public class SPCStylederList : BaseEntityList<PH.SPC.BO.Style, PH.SPC.BO.SPCDataContext>
    {
        public IEnumerable<PH.SPC.BO.Style> GetStylebyWorkorder(WorkOrder wo)
        {
            var aa = from a in this.CurrentDataContext.Styles
                     where a.WorkOrderID == wo.WorkOrderNo && a.StyleID == wo.StyleNo
                     select a;
            return aa;
        }
    }

    #endregion

    #region enum

    public enum ConfirmProcessingType
    {
        None, OA, PPC, TOP, Header
    }
    public enum WOActionStatus : int
    {
        Reject = -1,
        Hold = 0,
        Confirm = 1
    }

    public enum ProjectStatusGroupby
    {
        ALL, Outstanding, Completed
    }
    #endregion

    #region Custom Class

    public class CurrencyExRate
    {
        public string Currency { get; set; }
        public decimal? Exchange { get; set; }
    }
    public class FWColor
    {
        public WorkOrder WO { get; set; }
        public int Seq { get; set; }
        public DateTime? FW2 { get; set; }
        public DateTime? FW4 { get; set; }
        public DateTime? FW3 { get; set; }
        public DateTime? FW1 { get; set; }
        public string ColorCode { get; set; }
    }


    #endregion

    #region Temp Class -- RWO Entrance Key

    //WOc(WorkOrderColor)-->SplitRWO(RoundWorkOrder)-->FWChoose(RWOChooseFW)
    public class TempWOc
    {
        public TempWOc(WorkOrderColor woc)
        {
            _OrgWOc = woc;
            SplitRWOs = new List<TempSplitRWO>();

            _isSingleRWO = null;
            _roundTotal = 0;
            _fwExftyOption = TempFWExfty.None;
        }

        private RWOSOPCDataContext _context;
        public RWOSOPCDataContext Context
        {
            get
            {

                //if (_context == null) _context = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                //_context.CommandTimeout = 1000;
                _context = WOPOHelper.RwoCtx; //modify by joseph
                return _context;
            }
            set { _context = value; }
        }

        /// <summary>
        /// Xsj:外部傳入的需要拆分RWO的WorkOrderColor對象。
        /// </summary>
        private WorkOrderColor _OrgWOc;
        /// <summary>
        /// Xsj:外部傳入的需要拆分RWO的WorkOrderColor對象。
        /// </summary>
        public WorkOrderColor OrgWOc { get { return _OrgWOc; } }//源

        public string ProjectNo { get { return _OrgWOc.ProjectNo; } }
        public string SalesOrderNo { get { return _OrgWOc.SalesOrderNo; } }
        public string Customer { get { return _OrgWOc.Customer; } }
        public string Factory { get { return _OrgWOc.Factory; } }
        public string WorkOrderNo { get { return _OrgWOc.WorkOrderNo; } }

        //Xsj20151217:add 
        public string Dseq
        {
            get
            {
                return _OrgWOc.WorkOrder.Project.DSEQ;
            }
        }

        public string ColorCode { get { return _OrgWOc.ColorCode; } }
        public DateTime? FWStartDate { get { return _OrgWOc.FWStartDate; } }//Option 1
        public DateTime? ExFtyDate { get { return _OrgWOc.ExFtyDate; } }
        public int TotalQty { get { return _OrgWOc.TotalQty; } }
        public int? SampleQty { get { return _OrgWOc.SampleQty; } }
        public int? BulkQty { get { return _OrgWOc.BulkQty; } }


        /// <summary>
        /// Xsj:預分割的RWO記錄
        /// </summary>
        public List<TempSplitRWO> SplitRWOs { get; set; }

        /// <summary>
        /// Xsj:是否只有一輪？
        /// </summary>
        private bool? _isSingleRWO;
        /// <summary>
        /// Xsj:是否只有一輪？
        /// </summary>
        public bool? IsSingleRWO
        {
            get { return _isSingleRWO; }
            set
            {
                //if (_isSingleRWO != value)
                //{
                _isSingleRWO = value;
                if (_isSingleRWO ?? false)
                {
                    RoundTotal = 1;
                }
                //SplitRWOs.Clear();
                //}
            }
        }

        private int _roundTotal;
        /// <summary>
        /// Xsj:分拆的RWO輪數
        /// </summary>
        public int RoundTotal
        {
            get { return _roundTotal; }
            set
            {
                //if (_roundTotal != value)
                //{
                _roundTotal = value;
                InitSplitRWOs();
                //}
            }
        }

        private TempFWExfty _fwExftyOption;
        /// <summary>
        /// Xsj:Multi RWO的FWStartDate，ExFtyDate取決關係
        /// </summary>
        public TempFWExfty FWExftyOption
        {
            get { return _fwExftyOption; }
            set
            {
                if (_fwExftyOption != value)
                {
                    _fwExftyOption = value;
                    //Xsj:刷新產生RWO記錄的FWStartDate，ExFtyDate
                    RefreshFWWxfty();
                }
            }
        }


        /// <summary>
        /// Xsj:預產生RWO記錄。
        /// </summary>
        public void InitSplitRWOs()
        {
            this.SplitRWOs.Clear();
            for (int i = 0; i < RoundTotal; i++)
            {
                TempSplitRWO sr = new TempSplitRWO();
                sr.WOc = this;
                sr.ColorCode = this.ColorCode;
                sr.Rwo = i + 1;
                sr.TotalRwo = RoundTotal;
                sr.FWStartDate = this.FWStartDate;
                sr.ExFtyDate = this.ExFtyDate;

                //if (RoundTotal == 1)
                //    sr.Qty = this.BulkQty;

                this.SplitRWOs.Add(sr);
            }
            //single rwo
            if (RoundTotal == 1)
            {
                TempSplitRWO sr = this.SplitRWOs[0];
                if (sr != null)
                {
                    sr.InitRWOSKUs();
                    sr.Qty = sr.SumSubQty;
                }
            }

        }

        /// <summary>
        /// Xsj:刷新產生RWO記錄的FWStartDate，ExFtyDate
        /// </summary>
        public void RefreshFWWxfty()
        {
            foreach (TempSplitRWO sr in this.SplitRWOs)
            {
                if (this.FWExftyOption == TempFWExfty.Exfty)
                    sr.FWStartDate = this.FWStartDate;
                if (this.FWExftyOption == TempFWExfty.FW)
                    sr.ExFtyDate = this.ExFtyDate;
            }
        }

        /// <summary>
        /// Xsj:計算需要分配的拉的數量
        /// </summary>
        public void CalcDefalutFWandLine()
        {
            foreach (var item in this.SplitRWOs)
            {
                item.CalcFW();
            }
        }

        /// <summary>
        /// Xsj:計算每一輪的T3Date
        /// </summary>
        public void CalcT3Date()
        {
            foreach (var item in this.SplitRWOs)
            {
                item.CalcT3Date();
            }
        }
    }

    public class TempSplitRWO
    {
        public TempSplitRWO()
        {
            FWChooses = new List<TempFWChoose>();
            RWOSKUs = new List<TempRWOSKU>();
        }
        public TempWOc WOc { get; set; }

        public string ColorCode { get; set; }

        /// <summary>
        /// Xsj:RWONO
        /// </summary>
        public int Rwo { get; set; }
        /// <summary>
        /// Xsj:總的輪數
        /// </summary>
        public int TotalRwo { get; set; }
        public string RwoNo { get { return string.Format("{0}/{1}", Rwo, TotalRwo); } }

        public DateTime? FWStartDate { get; set; }//Option 2
        public DateTime? ExFtyDate { get; set; }

        public DateTime? T3Date { get; set; }
        //{
        //    get
        //    {
        //        if (ExFtyDate.HasValue)
        //        {
        //            return this.WOc.Context.fn_T3Date(this.ExFtyDate, this.WOc.Factory);
        //            //return ExFtyDate.Value.AddDays(-1);
        //        }
        //        else
        //            return ExFtyDate;
        //    }
        //}
        public DateTime? AT3Date { get; set; }
        public DateTime? T3 { get { return AT3Date.HasValue ? AT3Date : T3Date; } }

        /// <summary>
        /// Xsj:本輪RWO的BulkQty拆分數量（=SumSubQty：本輪RWO的SKU拆分數量）
        /// </summary>
        public int? Qty { get; set; }

        /// <summary>
        /// Xsj:RWO的BulkQty的SKU拆分數量
        /// </summary>
        public int? SumSubQty
        {
            get
            {
                int qty = 0;
                foreach (TempRWOSKU sku in this.RWOSKUs)
                {
                    qty += sku.BulkQty ?? 0;
                }
                return qty;
            }
        }

        /// <summary>
        /// Xsj:最多的BulkQty可分拆數量
        /// </summary>
        public int? MaxSubQty
        {
            get
            {
                int qty = 0;
                foreach (TempRWOSKU sku in this.RWOSKUs)
                {
                    qty += sku.MaxBulkQty ?? 0;
                }
                return qty;
            }
        }

        public double WorkingDaysPerLine { get; set; }
        public double CalendarDaysPerLine { get; set; }
        public double WorkingDaysLines { get { return (this.NumberOfLine ?? 0) == 0 ? 0 : WorkingDaysPerLine / (this.NumberOfLine ?? 0); } }
        public double? CalendarDaysLines
        {
            get
            {
                foreach (var item in this.FWChooses)
                {
                    if (item.Seq == 3) return item.LWWindow;
                }

                return null;
            }
        }

        public double? NumberOfLine { get; set; }
        public double? DefaultLine { get; set; }
        public DateTime? FWSuggested { get; set; }//Option 3
        public int? DaysDiff
        {
            get
            {
                if (FWSuggested.HasValue)
                    return (FWSuggested.Value - FWStartDate.Value).Days;
                else
                    return null;
            }
        }

        /// <summary>
        /// Xsj:預產生的RWO審核流程數據
        /// </summary>
        public List<TempFWChoose> FWChooses { get; set; }
        public List<TempRWOSKU> RWOSKUs { get; set; }

        #region Option 3: FWvsLW

        public int FWvsLW_WorkingDay
        {
            get
            {
                return this.WOc.OrgWOc.WorkOrder.FWvsLW_WorkingDay;
            }
        }
        private int? _FWvsLW_CalendarDay;
        public int? FWvsLW_CalendarDay
        {
            get
            {
                DateTime? lw = this.WOc.Context.fn_LWDateByFW(this.FWSuggested, this.WOc.Customer, this.WOc.Factory, this.WOc.Dseq);
                _FWvsLW_CalendarDay = (lw.HasValue && this.FWSuggested.HasValue) ?
                    (lw.Value - this.FWSuggested.Value).Days : (int?)null;

                return _FWvsLW_CalendarDay;
            }
        }
        public int? FWvsLW_NonWorkingDay
        {
            get
            {
                return FWvsLW_CalendarDay.HasValue && FWvsLW_WorkingDay != 0 ? FWvsLW_CalendarDay.Value - FWvsLW_WorkingDay : (int?)null;
            }
        }

        #endregion

        public int? Opt3vs1
        {
            get
            {
                int dt1 = 0;
                int dt3 = 0;

                foreach (var item in this.FWChooses)
                {
                    if (item.Seq == 1) dt1 = item.LWWindow;
                    else if (item.Seq == 3) dt3 = item.LWWindow;
                }
                return (dt3 == 0 || dt1 == 0) ? 0 : (dt3 - dt1);
            }
        }
        public int? Opt3vs2
        {
            get
            {
                int dt2 = 0;
                int dt3 = 0;

                foreach (var item in this.FWChooses)
                {
                    if (item.Seq == 2) dt2 = item.LWWindow;
                    else if (item.Seq == 3) dt3 = item.LWWindow;
                }
                return (dt3 == 0 || dt2 == 0) ? 0 : (dt3 - dt2);
            }
        }
        public int? Opt2vs1
        {
            get
            {
                int dt1 = 0;
                int dt2 = 0;

                foreach (var item in this.FWChooses)
                {
                    if (item.Seq == 1) dt1 = item.LWWindow;
                    else if (item.Seq == 2) dt2 = item.LWWindow;
                }
                return (dt2 == 0 || dt1 == 0) ? 0 : (dt2 - dt1);
            }
        }
        public int? Opt4vs2
        {
            get
            {
                int dt2 = 0;
                int dt4 = 0;

                foreach (var item in this.FWChooses)
                {
                    if (item.Seq == 2) dt2 = item.LWWindow;
                    else if (item.Seq == 4) dt4 = item.LWWindow;
                }
                return (dt2 == 0 || dt4 == 0) ? 0 : (dt4 - dt2);
            }
        }
        public bool CanAgreeOpt4
        {
            get
            {
                bool bCan = false;
                foreach (var item in this.FWChooses)
                {
                    if (item.Seq == 2)
                    {
                        bCan = (item.FWStartDate.HasValue);
                    }
                }
                return bCan;
            }
        }


        /// <summary>
        /// Xsj:初始化審核流程數據
        /// </summary>
        public void InitFWChooses()
        {
            this.FWChooses.Clear();
            for (int i = 1; i < 5; i++)
            {
                TempFWChoose c = new TempFWChoose();
                c.SplitRWO = this;
                c.Seq = i;
                c.Chosen = false;

                if (i == 1)
                    c.FWStartDate = this.WOc.FWStartDate;
                else if (i == 2)
                    c.FWStartDate = this.FWStartDate;
                else if (i == 3)
                    c.FWStartDate = this.FWSuggested;

                this.FWChooses.Add(c);
            }
        }

        /*
        /// <summary>
        /// Xsj:生成RWO的SKU信息
        /// </summary>
        public void InitRWOSKUs()
        {
            if ((this.Qty ?? 0) == 0)
            {
                RWOSKUs.Clear();
                foreach (WorkOrderSKU wsku in this.WOc.OrgWOc.WorkOrderSKUs)
                {
                    TempRWOSKU sku = new TempRWOSKU();
                    sku.SplitRWO = this;
                    sku.SizeCode = wsku.Size;
                    sku.SizeDesc = wsku.SizeDesc;
                    sku.CupCode = wsku.Cup;
                    sku.CustCup = wsku.CustCup;
                    sku.CustSize = wsku.CustSize;
                    sku.TtlBulkQty = wsku.BulkQty;
                    //Xsj:默認拆分數量=最多可拆分數量
                    sku.MaxBulkQty = sku.BulkQty = GetSubBulkQty(sku, sku.TtlBulkQty ?? 0); 
                    //Xsj:-------原來的邏輯是只有第一輪有SampleQty---------
                    if (this.Rwo == 1)
                    {
                        sku.SampleQty = wsku.SampleQty;
                    } 
                    RWOSKUs.Add(sku);
                }


                //only one round
                //foreach (RoundWorkOrder rwo in this.WOc.OrgWOc.RoundWorkOrders)
                //{
                //    foreach (RoundWorkOrderDetail rwod in rwo.RoundWorkOrderDetails)
                //    {
                //        TempRWOSKU sku = new TempRWOSKU();
                //        sku.SplitRWO = this;
                //        sku.SizeCode = rwod.Size;
                //        sku.SizeDesc = rwod.SizeDesc;
                //        sku.CupCode = rwod.Cup;
                //        sku.CustCup = rwod.CustCup;
                //        sku.CustSize = rwod.CustSize;
                //        sku.TtlBulkQty = rwod.BulkQty;

                //        sku.MaxBulkQty = sku.BulkQty = GetSubBulkQty(sku, rwod.BulkQty ?? 0);
                //        if (this.Rwo == 1)
                //            sku.SampleQty = rwod.SampleQty;

                //        RWOSKUs.Add(sku);
                //    }
                //}
            }
            else //refresh Maxqty
            {
                foreach (TempRWOSKU sku in this.RWOSKUs)
                {
                    int? qty = GetSubBulkQty(sku, sku.TtlBulkQty ?? 0);
                    sku.MaxBulkQty = qty + sku.BulkQty ?? 0;
                }
            }
        }
        */

        /// <summary>
        /// Xsj:生成RWO的SKU信息
        /// </summary>
        public void InitRWOSKUs()
        {
            if ((this.Qty ?? 0) == 0)
            {
                RWOSKUs.Clear();
                //Xsj:先判斷是否存在PPWs板
                bool isPPWsAlive = false;
                foreach (WorkOrderSKU wsku in this.WOc.OrgWOc.WorkOrderSKUs)
                {
                    if ((wsku.PPWsSampleQty ?? 0) > 0)  //Xsj:需要生產PPWs板,則第一輪只排PPWs吧板數。不排大貨數。
                    {
                        isPPWsAlive = true;
                        break;
                    }
                }


                foreach (WorkOrderSKU wsku in this.WOc.OrgWOc.WorkOrderSKUs)
                {
                    TempRWOSKU sku = new TempRWOSKU();
                    sku.SplitRWO = this;
                    sku.SizeCode = wsku.Size;
                    sku.SizeDesc = wsku.SizeDesc;
                    sku.CupCode = wsku.Cup;
                    sku.CustCup = wsku.CustCup;
                    sku.CustSize = wsku.CustSize;
                    sku.TtlBulkQty = wsku.BulkQty;
                    //Xsj:默認拆分數量=最多可拆分數量
                    sku.MaxBulkQty = sku.BulkQty = GetSubBulkQty(sku, sku.TtlBulkQty ?? 0);

                    //Xsj:-------原來的邏輯是只有第一輪有SampleQty---------
                    //if (this.Rwo == 1)
                    //{
                    //    sku.SampleQty = wsku.SampleQty;
                    //}

                    //Xsj:為了拆分SampleQty而注釋掉以上代碼，添加以下代碼
                    if (this.TotalRwo == 1)
                    {
                        sku.MaxSampleQty = sku.SampleQty = wsku.SampleQty;
                    }
                    else
                    {
                        if (this.Rwo == 1)
                        {
                            if (isPPWsAlive)  //Xsj:需要生產PPWs板,則第一輪只排PPWs吧板數。不排大貨數。
                            {
                                sku.MaxBulkQty = sku.BulkQty = 0;
                                sku.MaxSampleQty = sku.SampleQty = wsku.PPWsSampleQty ?? 0;
                            }
                            else //Xsj:不生產PPWs板，則第一輪的板數為PWs的板數。
                            {
                                sku.MaxSampleQty = sku.SampleQty = wsku.PWsSampleQty ?? 0;
                            }
                        }
                        else
                        {
                            //Xsj:第一輪后生產PWs(或剩下的板數)
                            sku.MaxSampleQty = sku.SampleQty = GetSubSampleQty(sku, wsku.SampleQty ?? 0);
                        }
                    }
                    //-----------------------------------------------------

                    RWOSKUs.Add(sku);
                }


                //only one round
                //foreach (RoundWorkOrder rwo in this.WOc.OrgWOc.RoundWorkOrders)
                //{
                //    foreach (RoundWorkOrderDetail rwod in rwo.RoundWorkOrderDetails)
                //    {
                //        TempRWOSKU sku = new TempRWOSKU();
                //        sku.SplitRWO = this;
                //        sku.SizeCode = rwod.Size;
                //        sku.SizeDesc = rwod.SizeDesc;
                //        sku.CupCode = rwod.Cup;
                //        sku.CustCup = rwod.CustCup;
                //        sku.CustSize = rwod.CustSize;
                //        sku.TtlBulkQty = rwod.BulkQty;

                //        sku.MaxBulkQty = sku.BulkQty = GetSubBulkQty(sku, rwod.BulkQty ?? 0);
                //        if (this.Rwo == 1)
                //            sku.SampleQty = rwod.SampleQty;

                //        RWOSKUs.Add(sku);
                //    }
                //}
            }
            else //refresh Maxqty
            {
                foreach (TempRWOSKU sku in this.RWOSKUs)
                {
                    int? qty = GetSubBulkQty(sku, sku.TtlBulkQty ?? 0);
                    sku.MaxBulkQty = qty + sku.BulkQty ?? 0;
                }
            }
        }


        /// <summary>
        /// Xsj:獲取指定SKU的可拆分數量
        /// </summary>
        /// <param name="tsku"></param>
        /// <param name="ttlQty"></param>
        /// <returns></returns>
        private int GetSubBulkQty(TempRWOSKU tsku, int ttlQty)
        {
            int qty = 0;
            foreach (TempSplitRWO sr in this.WOc.SplitRWOs)
            {
                //if (sr.Rwo == this.Rwo) continue;

                foreach (TempRWOSKU sku in sr.RWOSKUs)
                {
                    if (sku.SizeCode == tsku.SizeCode && sku.CupCode == tsku.CupCode)
                        qty += sku.BulkQty ?? 0;
                }
            }
            return ttlQty - qty;
        }

        /// <summary>
        /// Xsj:計算FWDate
        /// </summary>
        internal void CalcFW()
        {
            double whours = this.WOc.Factory == "KB" ? 9.67 : 10.67;
            // Working Days = ( Qty x Line_SAH ) / ( Eff% x CU% x WF x Working Hours/day );
            // LW vs T3
            #region PerLine

            if (!this.WOc.OrgWOc.WorkOrder.EFF.HasValue || !this.WOc.OrgWOc.WorkOrder.CU.HasValue || !this.WOc.OrgWOc.WorkOrder.WF.HasValue || !this.WOc.OrgWOc.WorkOrder.Line_SAH.HasValue)
                this.WOc.OrgWOc.WorkOrder.GetIEBInfor();

            double a = (this.WOc.OrgWOc.WorkOrder.EFF ?? 0) / 100 * (this.WOc.OrgWOc.WorkOrder.CU ?? 0) / 100 * (this.WOc.OrgWOc.WorkOrder.WF ?? 0) * whours;
            if (a == 0) this.WorkingDaysPerLine = 0;
            else
                this.WorkingDaysPerLine = (this.Qty ?? 0) * (this.WOc.OrgWOc.WorkOrder.Line_SAH ?? (this.WOc.OrgWOc.WorkOrder.SAH ?? 0)) / a;

            int d = Convert.ToInt32(Math.Ceiling(Math.Round(this.WorkingDaysPerLine, 1))) - 1;

            //DateTime? t3 = this.Project.IsShipWindow ? this.T3StartShip : this.T3ShipCompleted;
            DateTime? t3 = this.T3;
            DateTime? def_LW = this.WOc.Context.fn_DetachWorkDate(t3, d, this.WOc.Factory);

            if (def_LW.HasValue && t3.HasValue)
                this.CalendarDaysPerLine = (t3.Value - def_LW.Value).Days;
            else this.CalendarDaysPerLine = 0;

            //default_line:
            CalcDefaultLine();

            #endregion

        }

        /// <summary>
        /// Xsj:計算需要的Line數
        /// </summary>
        internal void CalcDefaultLine()
        {
            //foreach (var item in this.FWChooses)
            //{
            //    if (item.Seq == 2)
            //    {
            double d2 = 0;
            double d1 = 0;
            DateTime? t3 = this.T3;

            DateTime? lw = this.WOc.Context.fn_LWDateByFW(this.FWStartDate, this.WOc.Customer, this.WOc.Factory, this.WOc.Dseq);
            if (lw.HasValue)
            {
                d2 = (this.WOc.Context.fn_GetWorkingDays(lw, t3, this.WOc.Factory) ?? 0) + 1;

                d1 = this.WorkingDaysPerLine;
                this.DefaultLine = d2 == 0 || d1 == 0 ? (double?)null : d1 / d2;
            }
            else this.DefaultLine = null;

            //    }
            //}
        }

        /// <summary>
        /// Xsj:Line數量改變后，從新計算FW建議開始日期
        /// </summary>
        public void NumberOfLineChanged()
        {
            //this.WorkOrderColor.WorkOrder.GetIEBInfor();

            int d = Convert.ToInt32(Math.Ceiling(Math.Round(this.WorkingDaysLines, 1))) + this.FWvsLW_WorkingDay - 1;
            DateTime? t3 = this.T3;
            this.FWSuggested = this.WOc.Context.fn_DetachWorkDate(t3, d, this.WOc.Factory);

            //item.FirstStation = context.fn_FirstStationByFW(item.FactoryWork, this.Customer, this.Factory);
            //item.LineWork = context.fn_LWDateByFW(item.FactoryWork, this.Customer, this.Factory);

            //item.AgreedFWPerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //item.AgreedFWDate = DateTime.Now;

        }

        /// <summary>
        /// Xsj:調用存儲過程fn_T3Date，由廠別和離廠日期推算而來。
        /// </summary>
        internal void CalcT3Date()
        {
            if (ExFtyDate.HasValue)
                this.T3Date = this.WOc.Context.fn_T3Date(this.ExFtyDate, this.WOc.Factory);
            else
                this.T3Date = ExFtyDate;
        }



        //=================================================================================
        //Xsj:添加用於分拆SampleOrderQty
        /// <summary>
        /// Xsj:本輪RWO的SampleQty拆分數量（=SumSubQty：本輪RWO的SKU拆分數量）
        /// </summary>
        public int? SampleQty { get; set; }

        /// <summary>
        /// Xsj:RWO的SampleQty的SKU拆分數量
        /// </summary>
        public int? SumSubSampleQty
        {
            get
            {
                int qty = 0;
                foreach (TempRWOSKU sku in this.RWOSKUs)
                {
                    qty += sku.SampleQty ?? 0;
                }
                return qty;
            }
        }

        /// <summary>
        /// Xsj:最多的SampleQty可分拆數量
        /// </summary>
        public int? MaxSubSampleQty
        {
            get
            {
                int qty = 0;
                foreach (TempRWOSKU sku in this.RWOSKUs)
                {
                    //qty += sku.MaxBulkQty ?? 0; 
                    qty += sku.SampleQty ?? 0;
                }
                return qty;
            }
        }


        /// <summary>
        /// Xsj:獲取指定SampleQty的可拆分數量
        /// </summary>
        /// <param name="tsku"></param>
        /// <param name="ttlQty"></param>
        /// <returns></returns>
        private int GetSubSampleQty(TempRWOSKU tsku, int ttlQty)
        {
            int qty = 0;
            foreach (TempSplitRWO sr in this.WOc.SplitRWOs)
            {
                foreach (TempRWOSKU sku in sr.RWOSKUs)
                {
                    if (sku.SizeCode == tsku.SizeCode && sku.CupCode == tsku.CupCode)
                        qty += sku.SampleQty ?? 0;
                }
            }
            return ttlQty - qty;
        }
        //=================================================================================

    }
    public class TempFWChoose
    {
        public int Seq { get; set; }

        public DateTime? FirstStation { get; set; }
        private DateTime? _FWStartDate;
        public DateTime? FWStartDate { get { return _FWStartDate; } set { _FWStartDate = value; CalcStationLWDate(); } }
        private DateTime? _LWStartDate;
        public DateTime? LWStartDate { get { return _LWStartDate; } set { _LWStartDate = value; CalcNonWorkingDays(); } }

        public bool Chosen { get; set; }
        public TempSplitRWO SplitRWO { get; set; }
        public string RwoNo { get { return SplitRWO.RwoNo; } }
        public string ColorCode { get { return SplitRWO.ColorCode; } }
        public int LWWindow
        {
            get
            {
                if (this.FWStartDate.HasValue)
                    return (SplitRWO.T3.Value - this.FWStartDate.Value).Days + 4;
                else return 0;
            }
        }
        public int? NonWorkingDays { get; set; }
        //{
        //    get
        //    {
        //        DateTime? t3 = this.SplitRWO.T3;
        //        return (this.SplitRWO.WOc.Context.fn_GetNonWorkingDays(this.LWStartDate, t3, this.SplitRWO.WOc.Factory) ?? 0);
        //    }
        //}

        public int? Opt3vs1
        {
            get
            {
                return this.SplitRWO.Opt3vs1;
            }
        }
        public int? Opt3vs2
        {
            get
            {
                return this.SplitRWO.Opt3vs2;
            }
        }
        public int? Opt2vs1
        {
            get
            {
                return this.SplitRWO.Opt2vs1;
            }
        }
        public int? Opt4vs2
        {
            get
            {
                return this.SplitRWO.Opt4vs2;
            }
        }

        internal void CalcStationLWDate()
        {
            this.FirstStation = this.SplitRWO.WOc.Context.fn_FirstStationByFW(this.FWStartDate, this.SplitRWO.WOc.Customer, this.SplitRWO.WOc.Factory, this.SplitRWO.WOc.Dseq);
            this.LWStartDate = this.SplitRWO.WOc.Context.fn_LWDateByFW(this.FWStartDate, this.SplitRWO.WOc.Customer, this.SplitRWO.WOc.Factory, this.SplitRWO.WOc.Dseq);
        }
        internal void CalcNonWorkingDays()
        {
            DateTime? t3 = this.SplitRWO.T3;
            this.NonWorkingDays = (this.SplitRWO.WOc.Context.fn_GetNonWorkingDays(this.LWStartDate, t3, this.SplitRWO.WOc.Factory) ?? 0);
        }
    }
    public class TempRWOSKU
    {
        public TempRWOSKU()
        {

        }
        public TempSplitRWO SplitRWO { get; set; }

        public string ColorCode { get { return SplitRWO.ColorCode; } }
        public int Rwo { get { return SplitRWO.Rwo; } }
        public int TotalRwo { get { return SplitRWO.TotalRwo; } }
        public string RwoNo { get { return SplitRWO.RwoNo; } }

        public string SizeCode { get; set; }
        public string SizeDesc { get; set; }
        public string CupCode { get; set; }
        public string CustCup { get; set; }
        public string CustSize { get; set; }

        public int? SampleQty { get; set; }
        public int? TtlBulkQty { get; set; }
        public int? MaxBulkQty { get; set; }
        public int? BulkQty { get; set; }
        public double? Ratio { get; set; }


        //-------------------Start------------------
        //Xsj20160406:為分割SampleQty而添加以下代碼
        /// <summary>
        /// Xsj:最大的可分割
        /// </summary>
        public int? MaxSampleQty
        {
            get;
            set;
        }
        //-------------------End--------------------

    }

    public enum TempFWExfty
    {
        None, FW, Exfty, Both
    }
    #endregion


    #region SOSS

    public class SOSSHeader
    {
        public SOSSHeader()
        {
            Details = new List<SOSSDetail>();
        }
        public string Company { get; set; }//key
        public string SalesOrderNo { get; set; }//key
        public string ProjectNo { get; set; }
        public string Customer { get; set; }
        public string Factory { get; set; }
        public int? SoIssueDate1 { get; set; }
        public DateTime? SoIssueDate { get; set; }
        public string Season { get; set; }
        public string Currency { get; set; }
        public string PaymentTerm { get; set; }
        public string DeliveryTerm { get; set; }
        public decimal? ExRate { get; set; }
        public string PrjStatus { get; set; }

        public string PreparedBy { get; set; }
        public string ConfirmedBy { get; set; }
        public string ApprovedBy { get; set; }
        public DateTime? ConfirmedDate { get; set; }
        public DateTime? ApprovedBDate { get; set; }

        public decimal? TotalQty
        {
            get
            {
                decimal? d = 0;
                foreach (var item in this.Details)
                {
                    d += (item.TotalQty);
                }
                return d;
            }
        }
        public decimal? TotalAmount
        {
            get
            {
                decimal? d = 0;
                foreach (var item in this.Details)
                {
                    d += (item.Amount ?? 0);
                }
                return d;
            }
        }


        public string Remark { get; set; }

        public List<SOSSDetail> Details { get; set; }
    }
    public class SOSSDetail
    {
        public SOSSDetail()
        {

        }

        public SOSSHeader Header { get; set; }
        //Project
        public string Company { get; set; }//key
        public string SalesOrderNo { get; set; }//key
        public string ProjectNo { get; set; }
        public string Customer { get; set; }
        public string Factory { get; set; }
        public int? SoIssueDate1 { get; set; }
        public DateTime? SoIssueDate { get; set; }
        public string Season { get; set; }
        public string Currency { get; set; }
        public string PaymentTerm { get; set; }
        public string DeliveryTerm { get; set; }
        public decimal? ExRate { get; set; }
        public string PrjStatus { get; set; }

        //WO
        public string DSEQ { get; set; }
        public string WorkOrderNo { get; set; }

        public string StyleNo { get; set; }
        public string CustomerStyleNo { get; set; }
        public string ClassCode { get; set; }
        public int? SalesOrderLine { get; set; }//key
        public string ShipMode { get; set; }
        public string FRTCode { get; set; }
        public string WOStatus { get; set; }
        public string Category { get; set; }
        public string CollectionName { get; set; }
        public string CustomerOrderNo { get; set; }

        public int? DeliveryDate1 { get; set; }
        public DateTime? DeliveryDate { get; set; }
        public string CatNo { get; set; }

        public decimal TotalQty
        {
            get
            {
                return (Qty1 ?? 0) + (Qty2 ?? 0) + (Qty3 ?? 0) + (Qty4 ?? 0) + (Qty5 ?? 0) + (Qty6 ?? 0) + (Qty7 ?? 0) + (Qty8 ?? 0) + (Qty9 ?? 0)
                    + (Qty10 ?? 0) + (Qty11 ?? 0) + (Qty12 ?? 0) + (Qty13 ?? 0) + (Qty14 ?? 0) + (Qty15 ?? 0) + (Qty16 ?? 0) + (Qty17 ?? 0) + (Qty18 ?? 0)
                    + (Qty19 ?? 0) + (Qty20 ?? 0) + (Qty21 ?? 0) + (Qty22 ?? 0) + (Qty23 ?? 0) + (Qty24 ?? 0) + (Qty25 ?? 0) + (Qty26 ?? 0) + (Qty27 ?? 0);
            }
        }
        public decimal TotalSampleQty
        {
            get
            {
                return (SampleQty1 ?? 0) + (SampleQty2 ?? 0) + (SampleQty3 ?? 0) + (SampleQty4 ?? 0) + (SampleQty5 ?? 0) + (SampleQty6 ?? 0) + (SampleQty7 ?? 0) + (SampleQty8 ?? 0) + (SampleQty9 ?? 0)
                    + (SampleQty10 ?? 0) + (SampleQty11 ?? 0) + (SampleQty12 ?? 0) + (SampleQty13 ?? 0) + (SampleQty14 ?? 0) + (SampleQty15 ?? 0) + (SampleQty16 ?? 0) + (SampleQty17 ?? 0) + (SampleQty18 ?? 0)
                    + (SampleQty19 ?? 0) + (SampleQty20 ?? 0) + (SampleQty21 ?? 0) + (SampleQty22 ?? 0) + (SampleQty23 ?? 0) + (SampleQty24 ?? 0) + (SampleQty25 ?? 0) + (SampleQty26 ?? 0) + (SampleQty27 ?? 0);
            }
        }
        public decimal? UnitPrice { get; set; }
        public string FPrice { get; set; }//DBC?
        public decimal? Amount
        {
            get
            {
                return TotalQty * ExRate * UnitPrice;
            }
        }
        public decimal? SampleAmount
        {
            get
            {
                return TotalSampleQty * ExRate * UnitPrice;
            }
        }

        public string PE { get; set; }
        public decimal? Commission { get; set; }//已經*100
        public decimal? Deviation { get; set; }//已經*100
        public decimal? SpecialCost { get; set; }
        public decimal? DocAdminCost { get; set; }
        public decimal? MCQ { get; set; }
        public decimal? MOQ { get; set; }
        public decimal? SubCharge { get; set; }
        public decimal? ProfitMargin { get; set; }
        public decimal? MarginPer
        {
            get
            {
                decimal salesPrice = ((this.UnitPrice ?? 0) - (MOQ ?? 0) - (MCQ ?? 0) - (SubCharge ?? 0)) * (this.ExRate ?? 0);

                decimal d1 = (salesPrice * (1 - (Commission ?? 0) / 100));
                return (d1 == 0) ? 0 :
                   100 * (salesPrice * (1 - (Commission ?? 0) / 100 - (Deviation ?? 0) / 100) - (CACCost ?? 0) - (DocAdminCost ?? 0) - (SpecialCost ?? 0)) / d1;
            }
        }

        public decimal? CACCost { get; set; }
        public string ExftyDate1 { get; set; }
        public DateTime? ExftyDate { get; set; }
        public string CoreMaterialETADate1 { get; set; }
        public DateTime? CoreMaterialETADate { get; set; }


        //color
        public string Color1 { get; set; }
        public string Color2 { get; set; }
        public string Color3 { get; set; }
        public string Color4 { get; set; }
        public string Color5 { get; set; }
        public string Color6 { get; set; }
        public string Color7 { get; set; }
        public string Color8 { get; set; }
        public string Color9 { get; set; }
        public string Color10 { get; set; }
        public string Color11 { get; set; }
        public string Color12 { get; set; }
        public string Color13 { get; set; }
        public string Color14 { get; set; }
        public string Color15 { get; set; }
        public string Color16 { get; set; }
        public string Color17 { get; set; }
        public string Color18 { get; set; }
        public string Color19 { get; set; }
        public string Color20 { get; set; }
        public string Color21 { get; set; }
        public string Color22 { get; set; }
        public string Color23 { get; set; }
        public string Color24 { get; set; }
        public string Color25 { get; set; }
        public string Color26 { get; set; }
        public string Color27 { get; set; }
        //qty
        public decimal? Qty1 { get; set; }
        public decimal? Qty2 { get; set; }
        public decimal? Qty3 { get; set; }
        public decimal? Qty4 { get; set; }
        public decimal? Qty5 { get; set; }
        public decimal? Qty6 { get; set; }
        public decimal? Qty7 { get; set; }
        public decimal? Qty8 { get; set; }
        public decimal? Qty9 { get; set; }
        public decimal? Qty10 { get; set; }
        public decimal? Qty11 { get; set; }
        public decimal? Qty12 { get; set; }
        public decimal? Qty13 { get; set; }
        public decimal? Qty14 { get; set; }
        public decimal? Qty15 { get; set; }
        public decimal? Qty16 { get; set; }
        public decimal? Qty17 { get; set; }
        public decimal? Qty18 { get; set; }
        public decimal? Qty19 { get; set; }
        public decimal? Qty20 { get; set; }
        public decimal? Qty21 { get; set; }
        public decimal? Qty22 { get; set; }
        public decimal? Qty23 { get; set; }
        public decimal? Qty24 { get; set; }
        public decimal? Qty25 { get; set; }
        public decimal? Qty26 { get; set; }
        public decimal? Qty27 { get; set; }
        //sample qty
        public decimal? SampleQty1 { get; set; }
        public decimal? SampleQty2 { get; set; }
        public decimal? SampleQty3 { get; set; }
        public decimal? SampleQty4 { get; set; }
        public decimal? SampleQty5 { get; set; }
        public decimal? SampleQty6 { get; set; }
        public decimal? SampleQty7 { get; set; }
        public decimal? SampleQty8 { get; set; }
        public decimal? SampleQty9 { get; set; }
        public decimal? SampleQty10 { get; set; }
        public decimal? SampleQty11 { get; set; }
        public decimal? SampleQty12 { get; set; }
        public decimal? SampleQty13 { get; set; }
        public decimal? SampleQty14 { get; set; }
        public decimal? SampleQty15 { get; set; }
        public decimal? SampleQty16 { get; set; }
        public decimal? SampleQty17 { get; set; }
        public decimal? SampleQty18 { get; set; }
        public decimal? SampleQty19 { get; set; }
        public decimal? SampleQty20 { get; set; }
        public decimal? SampleQty21 { get; set; }
        public decimal? SampleQty22 { get; set; }
        public decimal? SampleQty23 { get; set; }
        public decimal? SampleQty24 { get; set; }
        public decimal? SampleQty25 { get; set; }
        public decimal? SampleQty26 { get; set; }
        public decimal? SampleQty27 { get; set; }
    }

    public class SOSSClassCode
    {
        public string StyleNo { get; set; }
        public string ClassCode { get; set; }
    }

    #endregion


    /*
     * 
     * Add by ChandlerXiao for PO Print 
     * 
     * */
    public class WOPOHelper
    {
        /// <summary>
        /// Xsj:供應商編碼
        /// </summary>
        public string SupplierCode
        {
            get;
            set;
        }

        public string SupplierName
        {
            get;
            set;
        }

        static RWOSOPCDataContext _rwodc;
        // static BasicInfoDataContext _basicctx;
        public static RWOSOPCDataContext RwoCtx
        {
            get
            {
                if (_rwodc == null)
                {
                    _rwodc = PH.Platform.BO.ContextBuilder.CreateContext<RWOSOPCDataContext>();
                    _rwodc.CommandTimeout = 8000;
                }
                return _rwodc;
            }

        }

        //public static BasicInfoDataContext BasicCtx
        //{
        //    get
        //    {
        //        if (_basicctx == null)
        //        {
        //            _basicctx = PH.Platform.BO.ContextBuilder.CreateContext<BasicInfoDataContext>();
        //            _basicctx.CommandTimeout = 1000;
        //        }
        //        return _basicctx;
        //    }

        //}


    }

    public partial class ProjectDeleteLog : BaseEntity { }

    public class WOColor
    {
        public int SeqNo { get; set; }
        public DateTime? FWStartDate { get; set; }
        public string ColorCode { get; set; }
        //public int? Qty { get; set; }

        //應王生的要求加入以下字段, 由david加入 2020-08-05
        public int? BulkShipmentQty { get; set; }
        public int? BulkSampleQtyByPPWs { get; set; }
        public int? BulkSampleQtyBySewingWs { get; set; }
        public int? TotalQty
        {
            get
            {
                return (this.BulkShipmentQty ?? 0) + (this.BulkSampleQtyByPPWs ?? 0) + (this.BulkSampleQtyBySewingWs ?? 0);
            }
        }

        //1st new column named "Bulk shpt qty"
        //Middle new column named "Bulk smpl* qty"
        //Last new column named "Bulk smpl qty" 

        //Beside, would like to add remarks below this table of:
        //+ means those bulk smpl made in PP Ws only.
        //* means those bulk smpl made in Sewing Ws.

        //For said 2 columns with symbol "*" & "+", it will more easy to indicate the bulk smpl to be made at which area
    }

    public partial class Email : BaseEntity
    {

    }

    public partial class WONotepadReason : BaseEntity
    {

    }

    public partial class PaymentTerm : BaseEntity
    {

    }

    public partial class PaymentTermsDetail : BaseEntity
    {

    }

    public class SelectPaymentTermsResult
    {
        public string Code { get; set; }
        public string Description { get; set; }

        public string Customer { get; set; }
        public string FromCustPODescription { get; set; }
        public string FromCustPOExplanation { get; set; }
    }


    public partial class LWPM_CustomerProfile : BaseEntity
    {
        //public PaymentTerm PaymentTermsObj
        //{
        //    get
        //    {
        //        if (CurrentDataContext == null)
        //        {
        //            CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
        //        }
        //        return (CurrentDataContext as RWOSOPCDataContext).PaymentTerms.FirstOrDefault(p => p.Code == this.PaymentTermsCode);
        //    }
        //}

        //public string PaymentTermsDescription
        //{
        //    get
        //    {
        //        return PaymentTermsObj == null ? null : PaymentTermsObj.Description;
        //    }
        //}

        //public string PaymentTermsExplanation
        //{
        //    get
        //    {
        //        return PaymentTermsObj == null ? null : PaymentTermsObj.Explanation;
        //    }
        //}
        public string OddEvenRowFlag { get; set; }

        public float? TotalCT4WorkDaysShow
        {
            get
            {
                return (LSTR ?? 0) + (SWW ?? 0) + (ATTIME1 ?? 0);
            }
        }

        public float? TotalCT1ToCT5NewDaysShow
        {
            get
            {
                return (ORDDAY ?? 0) + (PSP1 ?? 0) + (FRST ?? 0) + (TotalCT4WorkDaysShow ?? 0) + (EXFDAY ?? 0);
            }
        }

        public float? TotalCT1ToCT5RepeatDaysShow
        {
            get
            {
                if (!CT2RepeatDays.HasValue) return null;

                return (ORDDAY ?? 0) + (CT2RepeatDays ?? 0) + (FRST ?? 0) + (TotalCT4WorkDaysShow ?? 0) + (EXFDAY ?? 0);
            }
        }


        public float? TotalCT1ToCT5FlowDaysShow
        {
            get
            {
                if (!PSP1_R.HasValue) return null;

                return (ORDDAY ?? 0) + (PSP1_R ?? 0) + (FRST ?? 0) + (TotalCT4WorkDaysShow ?? 0) + (EXFDAY ?? 0);
            }
        }

        public float? TotalCT3ToCT4DaysShow
        {
            get
            {
                return (FRST ?? 0) + (TotalCT4WorkDaysShow ?? 0);
            }
        }

        //标识CT5是基于Ocean还是Air计算的
        public string CT5Symbol
        {
            get
            {
                if ((string.IsNullOrEmpty(EXFWK) || EXFWK == "n/a") && (!string.IsNullOrEmpty(AEXFWK) && AEXFWK != "n/a"))
                {
                    return "A";
                }
                return null;
            }
        }

        //一个Customer有几个Fty Site
        public string TotalFactorySite
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<RWOSOPCDataContext>();
                }

                int RowCount = (CurrentDataContext as RWOSOPCDataContext).LWPM_CustomerProfiles.Where(p => p.CUST == this.CUST && p.DSEQ == this.DSEQ).Select(p => p.TPLANT).Distinct().Count();

                return RowCount > 1 ? "Both" : this.TPLANT;
            }
        }


        //int _OceanLCLOutboundHandlingLoadingShow;
        //public int OceanLCLOutboundHandlingLoadingShow
        //{
        //    get
        //    {
        //        Save();
        //        return _OceanLCLOutboundHandlingLoadingShow;
        //    }
        //}

        //int _OceanLCLOutboundHandlingBoardingShow;
        //public int OceanLCLOutboundHandlingBoardingShow
        //{
        //    get
        //    {
        //        Save();
        //        return _OceanLCLOutboundHandlingBoardingShow;
        //    }
        //}



        //int _OceanFCLOutboundHandlingLoadingShow;
        //public int OceanFCLOutboundHandlingLoadingShow
        //{
        //    get
        //    {
        //        Save();
        //        return _OceanFCLOutboundHandlingLoadingShow;
        //    }
        //}

        //int _OceanFCLOutboundHandlingBoardingShow;
        //public int OceanFCLOutboundHandlingBoardingShow
        //{
        //    get
        //    {
        //        Save();
        //        return _OceanFCLOutboundHandlingBoardingShow;
        //    }
        //}



        //int _AirLCLOutboundHandlingLoadingShow;
        //public int AirLCLOutboundHandlingLoadingShow
        //{
        //    get
        //    {
        //        Save();
        //        return _AirLCLOutboundHandlingLoadingShow;
        //    }
        //}

        //int _AirLCLOutboundHandlingBoardingShow;
        //public int AirLCLOutboundHandlingBoardingShow
        //{
        //    get
        //    {
        //        Save();
        //        return _AirLCLOutboundHandlingBoardingShow;
        //    }
        //}

        public override bool Save()
        {
            //计算Ocean LCL Outbound Handing (Ex-fty till on Board) - Boarding
            int NeedDays = 0;
            int DeliveryWk = GetWeekDay(LMTH);
            int ExftyWk = GetWeekDay(EXFWK);
            int ClosingWk = GetWeekDay(CJSWK);

            if (ClosingWk == DeliveryWk) NeedDays = 0;
            if (ClosingWk > DeliveryWk) NeedDays = 7 - (ClosingWk - DeliveryWk);
            else if (ClosingWk < DeliveryWk) NeedDays = DeliveryWk - ClosingWk;

            if (OceanLCLClosingWkFlag == "*") NeedDays += 7;
            OceanLCLOutboundHandlingBoarding = NeedDays;
            //_OceanLCLOutboundHandlingBoardingShow = NeedDays;

            //计算Ocean LCL Outbound Handing (Ex-fty till on Board) - Loading
            if (ExftyWk == ClosingWk) NeedDays = 0;
            if (ExftyWk > ClosingWk) NeedDays = 7 - (ExftyWk - ClosingWk);
            else if (ExftyWk < ClosingWk) NeedDays = ClosingWk - ExftyWk;

            if (OceanLCLExftWkFlag == "*") NeedDays += 7;
            OceanLCLOutboundHandlingLoading = NeedDays;
            //_OceanLCLOutboundHandlingLoadingShow = NeedDays;



            //计算Ocean FCL Outbound Handing (Ex-fty till on Board) - Boarding
            DeliveryWk = GetWeekDay(AETD1);
            ExftyWk = GetWeekDay(EXFWK1);
            ClosingWk = GetWeekDay(CJSWK1);

            if (ClosingWk == DeliveryWk) NeedDays = 0;
            if (ClosingWk > DeliveryWk) NeedDays = 7 - (ClosingWk - DeliveryWk);
            else if (ClosingWk < DeliveryWk) NeedDays = DeliveryWk - ClosingWk;

            OceanFCLOutboundHandlingBoarding = NeedDays;
            //_OceanFCLOutboundHandlingBoardingShow = NeedDays;

            //计算Ocean FCL Outbound Handing (Ex-fty till on Board) - Loading
            if (ExftyWk == ClosingWk) NeedDays = 0;
            if (ExftyWk > ClosingWk) NeedDays = 7 - (ExftyWk - ClosingWk);
            else if (ExftyWk < ClosingWk) NeedDays = ClosingWk - ExftyWk;

            OceanFCLOutboundHandlingLoading = NeedDays;
            //_OceanFCLOutboundHandlingLoadingShow = NeedDays;



            //计算Air LCL Outbound Handing (Ex-fty till on Board) - Boarding
            DeliveryWk = GetWeekDay(ETD1);
            ExftyWk = GetWeekDay(AEXFWK);
            ClosingWk = GetWeekDay(ACJSWK);

            if (ClosingWk == DeliveryWk) NeedDays = 0;
            if (ClosingWk > DeliveryWk) NeedDays = 7 - (ClosingWk - DeliveryWk);
            else if (ClosingWk < DeliveryWk) NeedDays = DeliveryWk - ClosingWk;

            if (AirLCLClosingWkFlag == "*") NeedDays += 7;
            AirLCLOutboundHandlingBoarding = NeedDays;
            //_AirLCLOutboundHandlingBoardingShow = NeedDays;

            //计算Ocean LCL Outbound Handing (Ex-fty till on Board) - Loading
            if (ExftyWk == ClosingWk) NeedDays = 0;
            if (ExftyWk > ClosingWk) NeedDays = 7 - (ExftyWk - ClosingWk);
            else if (ExftyWk < ClosingWk) NeedDays = ClosingWk - ExftyWk;

            if (AirLCLExftWkFlag == "*") NeedDays += 7;
            AirLCLOutboundHandlingLoading = NeedDays;
            //_AirLCLOutboundHandlingLoadingShow = NeedDays;


            //计算CT5
            if (!string.IsNullOrEmpty(EXFWK) && EXFWK != "n/a") EXFDAY = OceanLCLOutboundHandlingBoarding + OceanLCLOutboundHandlingLoading;
            else if (!string.IsNullOrEmpty(AEXFWK) && AEXFWK != "n/a") EXFDAY = AirLCLOutboundHandlingBoarding + AirLCLOutboundHandlingLoading;
            else EXFDAY = 0;

            return base.Save();
        }

        private int GetWeekDay(string AWeek)
        {
            int Wk = 0;
            switch (AWeek)
            {
                case "Monday":
                case "Mon":
                    Wk = 1;
                    break;

                case "Tuesday":
                case "Tue":
                    Wk = 2;
                    break;

                case "Wednesday":
                case "Wed":
                    Wk = 3;
                    break;

                case "Thursday":
                case "Thu":
                    Wk = 4;
                    break;

                case "Friday":
                case "Fri":
                    Wk = 5;
                    break;

                case "Saturday":
                case "Sat":
                    Wk = 6;
                    break;

                case "Sunday":
                case "Sun":
                    Wk = 7;
                    break;

                default:
                    Wk = 0;
                    break;
            }

            return Wk;

        }



    }
}

