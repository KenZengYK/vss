object frmselpkopt: Tfrmselpkopt
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Choose Operation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 688
    Height = 405
    Align = alClient
    DataSource = DataSource1
    DrawMemoText = True
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        Title.Caption = #23458#25142
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'OPTC'
        Footers = <>
        Title.Caption = #24037#24207'|'#32232#34399
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'OPTD'
        Footers = <>
        Title.Caption = #24037#24207'|'#25551#36848
        Width = 210
      end
      item
        EditButtons = <>
        FieldName = 'SAM'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SAH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RT'
        Footers = <>
        Title.Caption = #24314#35696#21934#20729
      end
      item
        EditButtons = <>
        FieldName = 'MARKS'
        Footers = <>
        ShowImageAndText = True
        Title.Caption = #20633#27880
        Width = 438
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 688
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_pack_opt'
    FieldDefs = <
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'OPTC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OPTD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SAM'
        DataType = ftFloat
      end
      item
        Name = 'SAH'
        DataType = ftFloat
      end
      item
        Name = 'RT'
        DataType = ftFloat
      end
      item
        Name = 'MARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'cust;dseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 152
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
  end
end
