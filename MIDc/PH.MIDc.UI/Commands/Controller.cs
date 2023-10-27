using System.Collections.Generic;
using System.Text;
using System.Reflection;
using PH.MIDc.BO;
using System.Linq;

using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Windows.Forms;
using DevExpress.Utils;
using DevExpress.Utils.Drawing;
using DevExpress.LookAndFeel;
using DevExpress.LookAndFeel.Helpers;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraEditors.Registrator;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public static class Controller
    {
        #region Strings
        public static readonly string[] CompositionStr = new string[10]{ 
                "Polyamide(NYLON)",
                "Polyamide(SPECIAL)",
                "Elasthanne",
                "Cotton",
                "Rayon",
                "Polyester",
                "Viscose",
                "Rubber",
                "Silk",
                "Linen"};

        public static readonly string[] ImportTypes = new string[26]{
            "Status",
            "Factory",
            "Color",
            "Size",
            "Composition",
            "Currency",
            "DeliveryTerms",
            "LaceCode",
            "MaterialGroup",
            "MaterialType",
            "ProductRange",
            "PatternCode",
            "PaymentTerms",
            "Season",
            "ColorFamily",
            "ShipMode",
            "SpecialLabel",
            "Unit",
            "A.Rate",
            "HsCode",
            "SupplierProfile",
            "CompositionDetail",
            "RatioPrice",
            "PriceHistory",
            "SampleOrderNo",
            "MIDcDetail"
        };

        public static readonly string[] PriceColorDefaultStr = new string[12]{ 
                "ALL",
                "WHITE",
                "BLACK",
                "PASTEL",
                "MEDIUM",
                "DARK",
                "2TONE",
                "PRINT",
                "GOLD",
                "SILVER",
                "CLEAR",
                "STDC"
        };

        public static readonly string[] CompositionDefaultStr = new string[9]{ 
                "POLYAMIDE",
                "ELASTANE",//ELASTHANNE
                "COTTON",
                "RAYON",
                "POLYESTER",
                "VISCOSE",
                "RUBBER",
                "SILK",
                "LINEN"};
        #endregion

        #region AS400 DB connection
        private static AS400Interface.IDataAccess _AS400DB;
        public static AS400Interface.IDataAccess AS400DB
        {
            get
            {
                if (_AS400DB == null)
                {
                    string as400url = string.Format("tcp://{0}:{1}/{2}", "10.2.1.242", 14100, "As400Server");
                    _AS400DB = (AS400Interface.IDataAccess)Activator.GetObject(typeof(AS400Interface.IDataAccess), as400url);
                }
                return _AS400DB;
            }
            //set { _AS400DB = value; }
        }
        #endregion
        #region SQL2000 DB connection
        private static PHSQLServerInterface.IDataAccess _SQL2000DB;
        public static PHSQLServerInterface.IDataAccess SQL2000DB
        {
            get
            {
                if (_SQL2000DB == null)
                {
                    string sql2000url = string.Format("tcp://{0}:{1}/{2}", "10.2.1.242", 15323, "PHSQLServer");
                    _SQL2000DB = (PHSQLServerInterface.IDataAccess)Activator.GetObject(typeof(PHSQLServerInterface.IDataAccess), sql2000url);
                }
                return _SQL2000DB;
            }
        }
        #endregion
        #region SQL2005 DB connection
        private static PHSQLServerInterface.IDataAccess _SQL2005DB;
        public static PHSQLServerInterface.IDataAccess SQL2005DB
        {
            get
            {
                if (_SQL2005DB == null)
                {
                    string sql2005url = string.Format("tcp://{0}:{1}/{2}", "10.2.1.242", 17323, "PHSQLServer2005");
                    _SQL2005DB = (PHSQLServerInterface.IDataAccess)Activator.GetObject(typeof(PHSQLServerInterface.IDataAccess), sql2005url);
                }
                return _SQL2005DB;
            }
        }
        #endregion

        #region Create CloneTo Code
        public static void WriteCloneTo()
        {
            WriteObjects<PH.MIDc.BO.CompositionDetail>("cd");
            WriteObjects<PH.BasicInfo.BO.SupplierProfile>("sp");

            WriteObjects<PH.MIDc.BO.Spec>("s");
            WriteObjects<PH.MIDc.BO.Detail>("d");

        }
        public static void WriteObjects<EntityType>(string s)
        {
            //List<EntityType> objects = new List<EntityType>();
            string sType = typeof(EntityType).Name;
            using (System.IO.StreamWriter sw = System.IO.File.CreateText("C:\\temp\\" + sType + ".txt"))
            {
                //EntityType newObj = default(EntityType);
                sw.WriteLine(string.Format("{0} {1}= obj as {0};", sType, s));

                //newObj = (EntityType)typeof(EntityType).GetConstructor(new Type[0]).Invoke(null);

                foreach (FieldInfo fi in typeof(EntityType).GetFields(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
                {
                    NonSerializedAttribute n = (NonSerializedAttribute)Attribute.GetCustomAttribute(fi, typeof(NonSerializedAttribute));
                    if (n != null)
                        continue;

                    if (fi.FieldType.IsGenericType)
                        sw.WriteLine(string.Format("{0}.{1}=this.{1}; //is List<>", s, fi.Name));
                    else
                        sw.WriteLine(string.Format("{0}.{1}=this.{1};", s, fi.Name));

                }

            }


        }
        #endregion

        #region Binding Control
        /// <summary>
        /// binding all controls
        /// </summary>
        /// <param name="control">control which want to binding</param>
        /// <param name="dataSource">dataSource</param>
        public static void BindingControls(Control control, object dataSource)
        {
            BindingControls(control, dataSource, -1);
        }
        /// <summary>
        /// binding controls
        /// </summary>
        /// <param name="control">control which want to binding</param>
        /// <param name="dataSource">dataSource</param>
        /// <param name="level">want to binding child controls level,if level==-1,binding all controls</param>
        public static void BindingControls(Control control, object dataSource, int level)
        {
            BindingControls(control, dataSource, level, null);
            //BindingControl("EditValue", control, dataSource);
            //if (level == 0) return;
            //int chileLevel = level--;

            //DevExpress.XtraEditors.BaseEdit editor;
            //foreach (Control c in control.Controls)
            //{
            //    if (c is DevExpress.XtraEditors.BaseEdit)
            //    {
            //        editor = (c as DevExpress.XtraEditors.BaseEdit);
            //        BindingControl("EditValue", editor, dataSource);
            //    }
            //    BindingControls(c, dataSource, chileLevel);
            //}
        }
        public static void BindingControls(Control control, object dataSource, int level, Control exceptControl)
        {
            if (exceptControl != null && exceptControl.Name == control.Name) return;
            if (control is Label)
                BindingControl("Text", control, dataSource);
            else
                BindingControl("EditValue", control, dataSource);
            if (level == 0) return;
            int chileLevel = level--;

            DevExpress.XtraEditors.BaseEdit editor;
            foreach (Control c in control.Controls)
            {
                if (exceptControl != null && exceptControl.Name == control.Name) continue;
                if (c is DevExpress.XtraEditors.BaseEdit)
                {

                    editor = (c as DevExpress.XtraEditors.BaseEdit);
                    BindingControl("EditValue", editor, dataSource);
                }
                else if (control is Label)
                {
                    BindingControl("Text", control, dataSource);
                }
                BindingControls(c, dataSource, chileLevel, exceptControl);
            }
            SetEditorAppearanceForeColorDeeps(control);
        }

        public static void BindingControl(string property, Control control, object dataSource)
        {
            if (control == null) return;
            EnableLabel(control);

            string dataMember;

            if (control.Tag != null && control.Tag is string && control.Tag.ToString().Trim() != string.Empty && !(control is DevExpress.XtraEditors.ControlNavigator))
            {
                if (control is DevExpress.XtraEditors.SimpleButton) return;

                dataMember = control.Tag.ToString();
                Binding bd = control.DataBindings[property];
                if (bd != null) control.DataBindings.Remove(bd);

                try
                {
                    control.DataBindings.Add(property, dataSource, dataMember);
                }
                catch { }
            }
        }
        public static void EnableLabel(Control control)
        {
            if (control is Label)
                control.Enabled = true;
        }
        #endregion

        #region DateTime Formatter
        public static void DateTimeFormatterControls(Control control, string format)
        {
            DateTimeFormatterControls(control, format, -1);
        }
        public static void DateTimeFormatterControls(Control control, string format, int level)
        {
            DateTimeFormatterControl(control, format);
            if (level == 0) return;
            int chileLevel = level--;

            foreach (Control c in control.Controls)
            {
                DateTimeFormatterControl(c, format);
                DateTimeFormatterControls(c, format, chileLevel);
            }
        }
        public static void DateTimeFormatterControl(Control control, string format)
        {
            DevExpress.XtraEditors.DateEdit editor;
            DevExpress.XtraGrid.GridControl gc;
            if (control is DevExpress.XtraEditors.DateEdit)
            {
                editor = (control as DevExpress.XtraEditors.DateEdit);
                editor.Properties.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;

                editor.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
                editor.Properties.DisplayFormat.FormatString = format;
                editor.Properties.DisplayFormat.Format = new PHDateFormatter();

                editor.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
                editor.Properties.EditFormat.FormatString = format;
                editor.Properties.EditFormat.Format = new PHDateFormatter();

            }
            else if (control is DevExpress.XtraGrid.GridControl)
            {
                gc = (control as DevExpress.XtraGrid.GridControl);
                foreach (DevExpress.XtraEditors.Repository.RepositoryItem item in gc.RepositoryItems)
                {
                    if (item is DevExpress.XtraEditors.Repository.RepositoryItemDateEdit)
                    {
                        DevExpress.XtraEditors.Repository.RepositoryItemDateEdit ride = (item as DevExpress.XtraEditors.Repository.RepositoryItemDateEdit);
                        ride.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;

                        ride.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
                        ride.DisplayFormat.FormatString = format;
                        ride.DisplayFormat.Format = new PHDateFormatter();

                        ride.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
                        ride.EditFormat.FormatString = format;
                        ride.EditFormat.Format = new PHDateFormatter();
                    }
                }
            }
        }

        public static string PHDateTimeString(DateTime dt, string format)
        {
            if (dt == DateTime.MaxValue || dt == DateTime.MinValue || dt == Convert.ToDateTime("1899/12/30"))
                return "";
            else if (format == "")
                return dt.ToString();
            else
                return dt.ToString(format);
        }
        #endregion

        #region Remove Binding Control
        /// <summary>
        /// Remove binding all controls
        /// </summary>
        /// <param name="control">control which want to Remove binding</param>
        /// <param name="dataSource">dataSource</param>
        public static void RemoveBindingControls(Control control)
        {
            RemoveBindingControls(control, -1);
        }
        /// <summary>
        ///Remove binding controls
        /// </summary>
        /// <param name="control">control which want to Remove binding</param>
        /// <param name="dataSource">dataSource</param>
        /// <param name="level">want to Remove binding child controls level,if level==-1,Remove binding all controls</param>
        public static void RemoveBindingControls(Control control, int level)
        {
            if (control is Label)
                RemoveBindingControl("Text", control);
            else
                RemoveBindingControl("EditValue", control);
            if (level == 0) return;
            int chileLevel = level--;

            DevExpress.XtraEditors.BaseEdit editor;
            foreach (Control c in control.Controls)
            {
                if (c is DevExpress.XtraEditors.BaseEdit)
                {
                    editor = (c as DevExpress.XtraEditors.BaseEdit);
                    RemoveBindingControl("EditValue", editor);
                }
                else if (control is Label)
                {
                    RemoveBindingControl("Text", control);
                }
                RemoveBindingControls(c, chileLevel);
            }
        }
        public static void RemoveBindingControl(string property, Control control)
        {
            if (control == null) return;

            string dataMember;

            if (control.Tag != null && control.Tag is string && control.Tag.ToString().Trim() != string.Empty && !(control is DevExpress.XtraEditors.ControlNavigator))
            {
                dataMember = control.Tag.ToString();
                Binding bd = control.DataBindings[property];
                if (bd != null) control.DataBindings.Remove(bd);
            }
        }

        #endregion

        #region Grid save

        public static void PostGridValue(DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            if (view.PostEditor())
            {
                view.HideEditor();
                view.UpdateCurrentRow();
            }
        }
        #endregion

        #region Fields
        public static string HandleTips = "";
        public static int ProgressValue = 0;
        public static int ProgressValue_Insert = 0;
        public static int HandleInsertMax = 100;
        public static int HandleMax = 100;

        public static HandleStatus HandleDataStatus = HandleStatus.None;
        #endregion

        #region Quotation
        public static void WriteQuotationToRDB(PH.MIDc.BO.Detail d)
        {
            //@MaterialType varchar(3),
            //@SuppRef varchar(50),
            //@MaterialCode varchar(9),
            //@MaterialGroup varchar(3),
            //@MarkerWidth decimal(15,3),
            //@MarkerWidthS  varchar(30),
            //@Wastage decimal(15,3),
            //@DeliveryTerm varchar(50),
            //@AvgPrice decimal(15,3),
            //@ExchangeRate decimal(15,4),
            //@AllInPrice decimal(15,3),
            //@PHUnit varchar(5),
            //@SupplierName varchar(100)
            if (d == null) return;
            if (d.MIDStatus == MIDc_MIDStatus.TMID_WIP) return;

            string sSQL = string.Format("exec sp_MIDc_Quotation1 '{0}','{1}','{2}','{3}',{4},'{5}', {6},'{7}',{8},{9},{10},'{11}','{12}'",
                d.MaterialType,
                ConvertDBString(d.SuppRef),
                ConvertDBString(d.MaterialCode),
                d.MaterialGroup,
                (d.MarkerWidth ?? 0),
                d.MarkerWidthS1,
                (d.WastageOnCAC ?? 0) + (d.Relaxtion ?? 0),
                ConvertDBString(d.DeliveryTerm),
                d.AvgPrice_Supplier,
                d.ExchangeRate,
                d.AllInPrice,
                d.PHUnit,
                ConvertDBString(d.SupplierName));
            try
            {
                SQL2000DB.Execute(sSQL);
            }
            catch (Exception e)
            {
                // MessageBox.Show(string.Format("{0}:{1}", e.Message, e.InnerException));
            }
        }
        public static string ConvertDBString(string value)
        {
            if (value == null) return "";
            return value.Replace("'", "''");
        }
        public static void BatchWriteToQuotation(MIDc_MIDStatus filter)
        {
            PH.MIDc.BO.MIDcDataContext context= ContextBuilder.CreateContext<  MIDcDataContext>();
            var aa = from d in context.Details
                     where (d.MIDStatus !=MIDc_MIDStatus.TMID_WIP )
                     select d;

            //DetailByMIDStatusQuery query = new DetailByMIDStatusQuery(filter);
            //List<MIDc_Detail> ds = Controller.MIDcDB.GetAll<MIDc_Detail>(query);
            //Controller.HandleInsertMax = ds.Count;
            int i = 0;
            foreach (Detail d in aa)
            {
                i++;
                //Controller.HandleTips = string.Format("{0}", d.SuppRef);
                //Controller.ProgressValue_Insert = i;

                //d.GetARate(Controller.MIDcDB);
                //d.GetSupplierProfile(d.Supplier, Controller.MIDcDB);
                //d.GetCurrency(d.Currency, Controller.MIDcDB);
                //d.GetRatioPrices(Controller.MIDcDB);

                Controller.WriteQuotationToRDB(d);
            }
        }
        #endregion

        #region control readonly
        public static void ControlReadonly(Control control, bool readOnly, bool viewOnly)
        {
            DevExpress.XtraEditors.BaseEdit editor;
            foreach (Control c in control.Controls)
            {
                c.Enabled = true;
                if (c is DevExpress.XtraEditors.BaseEdit)
                {
                    if (viewOnly)
                    {
                        editor = (c as DevExpress.XtraEditors.BaseEdit);
                        editor.Properties.ReadOnly = true;

                        if (c is DevExpress.XtraEditors.ButtonEdit)
                        {
                            (c as DevExpress.XtraEditors.ButtonEdit).Properties.Buttons.Clear();
                            (c as DevExpress.XtraEditors.ButtonEdit).Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;

                        }
                    }
                    else
                        c.Enabled = !readOnly;
                }
                else if (c is DevExpress.XtraGrid.GridControl)
                {
                    DevExpress.XtraGrid.Views.Base.ColumnView view = ((DevExpress.XtraGrid.Views.Base.ColumnView)((c as DevExpress.XtraGrid.GridControl).MainView));
                    if (viewOnly)
                    {
                        view.OptionsBehavior.Editable = true;
                        foreach (DevExpress.XtraGrid.Columns.GridColumn gc in view.Columns)
                        {
                            gc.OptionsColumn.ReadOnly = true;
                            gc.ColumnEdit = null;
                        }
                    }
                    else
                        view.OptionsBehavior.Editable = !readOnly;
                }
                else if (c is DevExpress.XtraEditors.ControlNavigator)
                {
                    if (viewOnly) c.Enabled = false;
                    else
                        c.Enabled = !readOnly;
                    //(c as DevExpress.XtraEditors.ControlNavigator).Visible = !readOnly;
                }
                ControlReadonly(c, readOnly, viewOnly);
            }
        }
        public static void GridColumnReadOnly(Control control)
        {
            foreach (Control c in control.Controls)
            {
                if (c is DevExpress.XtraGrid.GridControl)
                {
                    DevExpress.XtraGrid.Views.Base.ColumnView view = ((DevExpress.XtraGrid.Views.Base.ColumnView)((c as DevExpress.XtraGrid.GridControl).MainView));

                    view.OptionsBehavior.Editable = true;
                    foreach (DevExpress.XtraGrid.Columns.GridColumn gc in view.Columns)
                    {
                        if (gc.FieldName == "Selected") gc.OptionsColumn.ReadOnly = false;
                        else gc.OptionsColumn.ReadOnly = true;
                        gc.OptionsColumn.AllowEdit = true;
                        //gc.ColumnEdit = null;
                    }
                }
                GridColumnReadOnly(c);
            }
        }
        #endregion

        #region Disable SpinEdit mouse Scrolling
        public static void DisableSpinEditScrollings(Control control)
        {
            DevExpress.XtraEditors.BaseSpinEdit editor;
            foreach (Control c in control.Controls)
            {
                if (c is DevExpress.XtraEditors.BaseSpinEdit)
                {
                    editor = (c as DevExpress.XtraEditors.BaseSpinEdit);
                    DisableSpinEditScrolling(editor);
                }
                DisableSpinEditScrollings(c);
            }
        }
        public static void DisableSpinEditScrolling(DevExpress.XtraEditors.BaseSpinEdit editor)
        {
            (editor.Controls[0] as DevExpress.XtraEditors.TextBoxMaskBox).MouseWheel += new MouseEventHandler(SpinEdit_MouseWheel);
        }
        public static void SpinEdit_MouseWheel(object sender, MouseEventArgs e)
        {
            if (e.Delta != 0)
                DevExpress.Utils.DXMouseEventArgs.GetMouseArgs(e).Handled = true;
        }
        #endregion

        #region Editor color: black
        public static void SetEditorAppearanceForeColorDeeps(Control control)
        {
            SetEditorAppearanceForeColorDeep(control);
            foreach (Control c in control.Controls)
            {
                SetEditorAppearanceForeColorDeep(c);
                SetEditorAppearanceForeColorDeeps(c);
            }
        }
        public static void SetEditorAppearanceForeColorDeep(Control control)
        {
            DevExpress.XtraEditors.BaseEdit editor;

            if (!(control is DevExpress.XtraEditors.BaseEdit)) return;

            editor = (control as DevExpress.XtraEditors.BaseEdit);
            editor.Properties.Appearance.ForeColor =
                editor.Properties.AppearanceReadOnly.ForeColor =
                editor.Properties.AppearanceDisabled.ForeColor = System.Drawing.Color.Black;
        }

        #endregion

        #region GetGridColumnByFieldName
        public static DevExpress.XtraGrid.Columns.GridColumn GetGridColumnByFieldName(string FieldName, DevExpress.XtraGrid.Views.Grid.GridView gv)
        {
            return gv.Columns.ColumnByFieldName(FieldName);
        }
        public static DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn GetGridColumnByFieldName(string FieldName, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gv)
        {
            return gv.Columns.ColumnByFieldName(FieldName);
        }
        #endregion
        public static bool IsOdd(int n)
        {
            return Convert.ToBoolean((int)(n & 1));
        }

        public static void SetColumnPHSpinEdit(DevExpress.XtraGrid.Views.Grid.GridView view, string fieldName, RepositoryItemPHSpinEdit rise)
        {
            DevExpress.XtraGrid.Columns.GridColumn col = Controller.GetGridColumnByFieldName(fieldName, view);
            if (col != null) col.ColumnEdit = rise;
        }
    }

    public enum HandleStatus
    {
        None, Progressing, Finished, Cancel
    }

    [UserRepositoryItem("Register")]
    public class RepositoryItemPHSpinEdit : RepositoryItemSpinEdit
    {
        static RepositoryItemPHSpinEdit()
        {
            Register();
        }
        public RepositoryItemPHSpinEdit() { }

        internal const string EditorName = "PHSpinEdit";

        public static void Register()
        {
            //Image img = DevExpress.Utils.Controls.ImageHelper.CreateBitmapFromResources("PH.Common.UI.Resources.OK.bmp",
            //   typeof(RepositoryItemPHSpinEdit).Assembly);

            EditorRegistrationInfo.Default.Editors.Add(new EditorClassInfo(EditorName, typeof(PHSpinEdit),
                typeof(RepositoryItemPHSpinEdit), typeof(DevExpress.XtraEditors.ViewInfo.BaseSpinEditViewInfo),
                new DevExpress.XtraEditors.Drawing.ButtonEditPainter(), true, null,
                typeof(DevExpress.Accessibility.BaseSpinEditAccessible)));
        }
        public override string EditorTypeName
        {
            get { return EditorName; }
        }
    }
    public class PHSpinEdit : SpinEdit
    {
        static PHSpinEdit()
        {
            RepositoryItemPHSpinEdit.Register();
        }
        public PHSpinEdit()
        {
            Controller.DisableSpinEditScrolling(this);
        }

        public override string EditorTypeName
        {
            get { return RepositoryItemPHSpinEdit.EditorName; }
        }
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        public new RepositoryItemPHSpinEdit Properties
        {
            get { return base.Properties as RepositoryItemPHSpinEdit; }
        }

        protected override void OnSpin(DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            if (Properties.Increment == Decimal.Zero)
            {
                e.Handled = true;
                return;
            }
            else
            {
                base.OnSpin(e);
            }
        }
    }

}
