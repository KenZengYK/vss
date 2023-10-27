using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Reflection;


namespace PH.SPC.UI
{
    public class Tools
    {
        
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

    }

    public class PHDateFormatter : IFormatProvider, ICustomFormatter
    {
        // The GetFormat method of the IFormatProvider interface.
        // This must return an object that provides formatting services for the specified type.
        public object GetFormat(Type format)
        {
            if (format == typeof(ICustomFormatter)) return this;
            else return null;
        }
        // The Format method of the ICustomFormatter interface.
        // This must format the specified value according to the specified format settings.
        public string Format(string format, object arg, IFormatProvider provider)
        {
            if (format == null || Type.GetTypeCode(arg.GetType()) != TypeCode.DateTime)
            {
                if (arg is IFormattable)
                    return ((IFormattable)arg).ToString(format, provider);
                else
                    return arg.ToString();
            }
            DateTime dt = (DateTime)arg;
            if (dt == DateTime.MinValue || dt == Convert.ToDateTime("1899/12/30"))
                return "";
            else
                return dt.ToString(format);// Convert.ToString(dt, provider);
        }
    }
    
}
