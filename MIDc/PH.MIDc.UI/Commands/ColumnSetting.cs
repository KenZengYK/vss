using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class ColumnSetting
    {
        public ColumnSetting()
        {
            _visible = true;
            _sortOrder = DevExpress.Data.ColumnSortOrder.None;
        }

        private string _fieldName;
        public string FieldName
        {
            get { return _fieldName; }
            set { _fieldName = value; }
        }

        private string _caption;
        public string Caption
        {
            get { return _caption; }
            set { _caption = value; }
        }

        private bool _visible;
        public bool Visible
        {
            get { return _visible; }
            set { _visible = value; }
        }

        private int _width;
        public int Width
        {
            get { return _width; }
            set { _width = value; }
        }

        private DevExpress.Data.ColumnSortOrder _sortOrder;
        public DevExpress.Data.ColumnSortOrder SortOrder
        {
            get { return _sortOrder; }
            set { _sortOrder = value; }
        }
    }
}
