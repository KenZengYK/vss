object frmal_supplement: Tfrmal_supplement
  Left = 0
  Top = 0
  Caption = 'Supplement Sheet'
  ClientHeight = 331
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 726
    Height = 290
    Align = alClient
    TabOrder = 0
    object cxView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxView1CustomDrawCell
      DataController.DataSource = ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Column = cxView1pline
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxView1qty
        end
        item
          Column = cxView1kh
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxView1est_days
        end
        item
          Column = cxView1exfty
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object cxView1prjno: TcxGridDBColumn
        Caption = 'CF_ID#'
        DataBinding.FieldName = 'prjno'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 130
      end
      object cxView1pline: TcxGridDBColumn
        Caption = 'Line#'
        DataBinding.FieldName = 'pline'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxView1kh: TcxGridDBColumn
        Caption = 'Style#'
        DataBinding.FieldName = 'kh'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
      end
      object cxView1sah: TcxGridDBColumn
        Caption = 'SAH (850)'
        DataBinding.FieldName = 'sah'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
      end
      object cxView1rs: TcxGridDBColumn
        Caption = 'WF'
        DataBinding.FieldName = 'rs'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
      end
      object cxView1qty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxView1est_days: TcxGridDBColumn
        Caption = 'est. days'#13#10'by style'
        DataBinding.FieldName = 'est_days'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
      end
      object cxView1est_days1: TcxGridDBColumn
        Caption = 'est. days'#13#10'by line'
        DataBinding.FieldName = 'est_days1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
        Styles.Header = frmcmpl_actionlog.cxStyle1
        Width = 60
      end
      object cxView1exfty: TcxGridDBColumn
        Caption = 'Ex-fty dd'
        DataBinding.FieldName = 'exfty'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxView1pline_seq: TcxGridDBColumn
        DataBinding.FieldName = 'pline_seq'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 290
    Width = 726
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btn1: TBitBtn
      Left = 97
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Export'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btn2Click
    end
  end
  object ds_al_styles: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from cut_al_dashboard_styles'
    CommandTimeout = 300
    IndexFieldNames = 'pline;kh'
    Parameters = <>
    Left = 544
    Top = 1
  end
  object ds1: TDataSource
    DataSet = ds_al_styles
    Left = 588
  end
  object dlgSave1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 768
  end
  object qryAQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 544
    Top = 57
  end
  object qryAQuery2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 584
    Top = 57
  end
end
