object frmreduce_notepad: Tfrmreduce_notepad
  Left = 0
  Top = 0
  Caption = #25578#20986'('#24310#36978#36208#36008')'#20043#35468#34399' - '#20633#27880
  ClientHeight = 426
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 890
    Height = 385
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -72
    ExplicitTop = -6
    ExplicitWidth = 825
    ExplicitHeight = 269
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1keycode5: TcxGridDBColumn
        Caption = #35468#34399
        DataBinding.FieldName = 'keycode5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 44
      end
      object cxGrid1DBTableView1projectno5: TcxGridDBColumn
        Caption = #24037#31243#34399
        DataBinding.FieldName = 'projectno5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 65
      end
      object cxGrid1DBTableView1workorderno5: TcxGridDBColumn
        Caption = #21046#21934#34399'('#33394#20381#38752')'
        DataBinding.FieldName = 'workorderno5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 58
      end
      object cxGrid1DBTableView1custstyle5: TcxGridDBColumn
        Caption = #23458#26041#27454#34399
        DataBinding.FieldName = 'custstyle5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 110
      end
      object cxGrid1DBTableView1phcolor5: TcxGridDBColumn
        Caption = #24288#26041#33394#34399
        DataBinding.FieldName = 'phcolor5'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
      end
      object cxGrid1DBTableView1qty5: TcxGridDBColumn
        Caption = 'PDN'#23433#25490#25976#37327
        DataBinding.FieldName = 'qty15'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 49
      end
      object cxGrid1DBTableView1marks: TcxGridDBColumn
        Caption = #20633#27880
        DataBinding.FieldName = 'marks'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 500
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 385
    Width = 890
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 32
    ExplicitTop = 264
    ExplicitWidth = 185
    object RzBackground2: TRzBackground
      Left = 1
      Top = 1
      Width = 888
      Height = 39
      Active = True
      Align = alClient
      GradientColorStart = 14216405
      GradientColorStop = 16776176
      GradientDirection = gdVerticalEnd
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      ExplicitLeft = -39
      ExplicitTop = 6
      ExplicitWidth = 1265
    end
    object BitBtn3: TBitBtn
      Left = 24
      Top = 8
      Width = 81
      Height = 25
      Caption = #20445#23384
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 8
      Width = 81
      Height = 25
      Caption = #36864#20986
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object ADODataSet1: TADODataSet
    Connection = frmCarte_Main.ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select * from tbl_carte_sopc5_transfer where act_cmpdt5>='#39'2016-1' +
      '2-05'#39
    CommandTimeout = 300
    IndexFieldNames = 
      'cust5;projectno5;custpo5;custstyle5;phcolor5;workorderno5;rwo_wo' +
      '5;keycode5'
    Parameters = <>
    Left = 272
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 304
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = frmCarte_Main.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 336
    Top = 8
  end
end
