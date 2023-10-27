object frmonhand_dwf: Tfrmonhand_dwf
  Left = 0
  Top = 0
  Caption = 'On-hand dWF (present)'
  ClientHeight = 241
  ClientWidth = 385
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
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 8
    Width = 337
    Height = 169
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Fty'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'ONHAND_WF'
        Footers = <>
        Title.Caption = 'On-hand dWF'
        Width = 98
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 192
    Width = 185
    Height = 25
    Caption = 'Save && update to all balancing'
    DoubleBuffered = True
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
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 208
    Top = 192
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_cap_onhandwf'
    FieldDefs = <
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'YR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'M1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SDESC'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SDESC1'
        DataType = ftWideString
        Size = 80
      end
      item
        Name = 'W1'
        DataType = ftFloat
      end
      item
        Name = 'W2'
        DataType = ftFloat
      end
      item
        Name = 'W3'
        DataType = ftFloat
      end
      item
        Name = 'W4'
        DataType = ftFloat
      end
      item
        Name = 'W5'
        DataType = ftFloat
      end
      item
        Name = 'W6'
        DataType = ftFloat
      end
      item
        Name = 'SEQ2'
        DataType = ftInteger
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'GRP1'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FCHOICE'
        DataType = ftBoolean
      end
      item
        Name = 'CFMD'
        DataType = ftBoolean
      end
      item
        Name = 'APPR'
        DataType = ftBoolean
      end
      item
        Name = 'WFP'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 296
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 152
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 360
    Top = 152
  end
end
