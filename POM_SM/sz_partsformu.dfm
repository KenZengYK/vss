object frmsz_parts: Tfrmsz_parts
  Left = 0
  Top = 0
  Caption = #32068#20214#36039#26009
  ClientHeight = 450
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 701
    object Label1: TLabel
      Left = 46
      Top = 15
      Width = 27
      Height = 13
      Caption = #27454#34399' '
    end
    object DBEdit1: TDBEdit
      Left = 78
      Top = 11
      Width = 179
      Height = 21
      DataField = 'Stylno'
      DataSource = frmsiztbl.DataSource1
      ReadOnly = True
      TabOrder = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 828
    Height = 368
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 701
    ExplicitHeight = 522
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      object cxGrid1DBTableView1parts_d: TcxGridDBColumn
        Caption = #32068#20214#20195#34399
        DataBinding.FieldName = 'parts_d'
        HeaderAlignmentHorz = taCenter
        Width = 67
      end
      object cxGrid1DBTableView1parts_d_brif: TcxGridDBColumn
        Caption = #31777#21934#25551#36848
        DataBinding.FieldName = 'parts_d_brif'
        HeaderAlignmentHorz = taCenter
        Width = 266
      end
      object cxGrid1DBTableView1parts_d_detail: TcxGridDBColumn
        Caption = #35443#32048#25551#36848
        DataBinding.FieldName = 'parts_d_detail'
        HeaderAlignmentHorz = taCenter
        Width = 471
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 409
    Width = 828
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 563
    ExplicitWidth = 701
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from sz_parts'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    Left = 132
    Top = 96
    object Query1stylno: TStringField
      FieldName = 'stylno'
    end
    object Query1id: TIntegerField
      FieldName = 'id'
    end
    object Query1parts_d: TStringField
      FieldName = 'parts_d'
    end
    object Query1parts_d_brif: TStringField
      FieldName = 'parts_d_brif'
      Size = 100
    end
    object Query1parts_d_detail: TStringField
      FieldName = 'parts_d_detail'
      Size = 250
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 132
    Top = 144
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 180
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 176
    Top = 96
  end
end
