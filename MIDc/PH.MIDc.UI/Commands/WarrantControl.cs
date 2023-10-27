using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.MIDc.BO;
using System.Reflection; 
using DevExpress.XtraBars;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public class WarrantControl
    {
        private static List<GetObjectCodeFileWarrantResult> ObjectFiledList;
        private static List<RoleField> RoleFieldList;
        private static string UserID { get; set; }
        private static string ObjectCode { get; set; }
        private static string Status { get; set; }

        public static void WarrantControlFieldList(Control stl, string userId, string status)
        {
            if (userId.ToLower() == "Admin".ToLower())
                return;

            InitValue(stl, userId, status);

            SelectControls(stl);             
            

        }
                
        /// <summary>
        /// 控制某界面内，只可以编辑已设定的控件，其它只可显视
        /// </summary>
        /// <param name="stl">需要控制的主控件，如from</param>
        /// <param name="userId">当前登入用户</param>
        /// <param name="status">状态</param>
        public static void WarrantControlCanEditWithIt(Control stl, string userId, string status)
        {
            if (userId.ToLower() == "Admin".ToLower())
                return;

            InitValue(stl, userId, status);

            SelectControlsCanEditWithIt(stl);

        }

        public static void WarrantControlFiled(Control stl, DevExpress.XtraBars.BarButtonItem control, string userId, string status)
        {
            if (userId.ToLower() == "Admin".ToLower())
                return;

            InitValue(stl, userId, status);

            bool tag = true;
            foreach (RoleField rolefield in RoleFieldList)
            {
                if (rolefield.ControlName == control.Name && (Status == rolefield.Status || rolefield.Status == "all"))
                {
                    tag = true;

                    foreach (GetObjectCodeFileWarrantResult obj in ObjectFiledList)
                    {
                        if (obj.ControlName == control.Name)
                        {
                            if (obj.UserID.ToLower() == UserID.ToLower())
                            {
                                control.Enabled = true;
                                tag = false;
                            }
                        }
                    }

                    if (tag)
                    {
                        control.Enabled = false;
                    }
                }
            }
        }

        /// <summary>
        /// 判断某界用是否充许用户只编辑某些控件，其它显示
        /// </summary>
        /// <param name="ObjectCode"></param>
        /// <param name="userId"></param>
        /// <returns></returns>
        public static bool IsWarrentControl(string ObjectCode, string userId)
        {

            ObjectFiledList = new List<GetObjectCodeFileWarrantResult>();
            RoleFieldList = new List<RoleField>();

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext < MIDcDataContext>();
            var all = from c in context.GetObjectCodeFileWarrant(ObjectCode, UserID) select c;

            foreach (GetObjectCodeFileWarrantResult obj in all)
            {
                ObjectFiledList.Add(obj);
            }


            if (ObjectFiledList.Count == 0)
                return true;
            else
                return false;


        }

        private static void InitValue(Control stl, string userId, string status)
        {
            
            UserID = userId;
            ObjectCode = stl.GetType().FullName;
            Status = status;

            ObjectFiledList = new List<GetObjectCodeFileWarrantResult>();
            RoleFieldList = new List<RoleField>();

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext < MIDcDataContext>();
            var all = from c in context.GetObjectCodeFileWarrant(ObjectCode, UserID) select c;

            foreach (GetObjectCodeFileWarrantResult obj in all)
            {
                ObjectFiledList.Add(obj);
            }

            var all2 = from c in context.RoleFields where c.ObjectCode == ObjectCode select c;
            foreach (RoleField obj in all2)
            {
                RoleFieldList.Add(obj);
            }
        
        }       

        private static void SelectControls(Control control)
        {

            bool tag = true;
            foreach (RoleField rolefield in RoleFieldList)
            {
                if (rolefield.ControlName == control.Name && (Status == rolefield.Status || rolefield.Status == "all"))
                {
                    tag = true;

                    foreach (GetObjectCodeFileWarrantResult obj in ObjectFiledList)
                    {
                        if (obj.ControlName == control.Name)
                        {
                            if (obj.UserID.ToLower() == UserID.ToLower())
                            {
                                SetOptionValue(control, rolefield, true);
                                tag = false;
                            }
                        }
                    }

                    if (tag)
                    {
                        SetOptionValue(control, rolefield, false);
                    }
                }
            }

            foreach (Control subctl in control.Controls)
            {
                SelectControls(subctl);
            }

        }

        private static void SelectControlsCanEditWithIt(Control control)
        {
            foreach (Control childCT in control.Controls)
            {
                foreach (RoleField rolefield in RoleFieldList)
                {
                    if (rolefield.ControlName != childCT.Name)
                    {                        
                        SetOptionValue(childCT, rolefield, false);  
                    
                    } 
                }            
            }         

        }

        private static void SetOptionValue(Control control, RoleField rolefiled,bool value)
        {
            switch (rolefiled.ControlType)
            {
                case "DevExpress.XtraEditors.SimpleButton":
                    {
                        switch (rolefiled.OperationType)
                        {
                            case "Enabled":
                                control.Enabled = value;
                                break;
                            default:
                                break;
                        }
                    }
                    break;

                case "DevExpress.XtraBars.BarButtonItem":
                    {
                        switch (rolefiled.OperationType)
                        {
                            case "Enabled":
                                control.Enabled = value;
                                break;
                            default:
                                break;
                        }
                    } 
                    break;

                default:
                    break;
            }
        
        }

        public static bool WarrantControlReturnValue(Control stl, string userId)
        {
            if (userId.ToLower() == "Admin".ToLower())
                return true;

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext < MIDcDataContext>();
            var all = from c in context.GetObjectCodeFileWarrant(stl.GetType().FullName, userId) select c;

            if (all.Count() > 0)
                return true;
            else
                return false;


        }





        public static void SetOptionvalue(Control ct)
        { 
            foreach(Control obj in ct.Controls)
            {
                SetChildOptionValue(obj);

                SetOptionvalue(obj);
            }
            
        
        }

        private static void SetChildOptionValue(Control control)
        {
            switch (control.ToString())
            {
                case "DevExpress.XtraEditors.SimpleButton":
                    (control as DevExpress.XtraEditors.SimpleButton).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.SpinEdit":
                    (control as DevExpress.XtraEditors.SpinEdit).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.LookUpEdit":
                    (control as DevExpress.XtraEditors.LookUpEdit).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.TextEdit":
                    (control as DevExpress.XtraEditors.TextEdit).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.ButtonEdit":
                    (control as DevExpress.XtraEditors.ButtonEdit).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.MemoEdit":
                    (control as DevExpress.XtraEditors.MemoEdit).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.CheckEdit":
                    (control as DevExpress.XtraEditors.CheckEdit).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.SimpleButton ":
                    (control as DevExpress.XtraEditors.SimpleButton).Enabled = false;
                    break;
                case "DevExpress.XtraEditors.DateEdit":
                    (control as DevExpress.XtraEditors.DateEdit).Enabled = false;
                    break;                
                default:
                    break;
            }
        }

    }
}
