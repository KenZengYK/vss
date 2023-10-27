object frmsample_pdn: Tfrmsample_pdn
  Left = 192
  Top = 114
  Caption = 'Sample Qty by PDN'
  ClientHeight = 409
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 805
    Height = 311
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = frmqn_sample.DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 65
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'PQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QN Qty'
        Width = 65
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Picked Qty'
        Width = 65
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'T1_SP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sample Qty|Total'
        Width = 65
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T1_WR'
        Footers = <>
        Title.Caption = 'Sample Qty| '
        Width = 65
        OnEditButtonClick = DBGridEh1Columns4EditButtonClick
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 805
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label11: TLabel
      Left = 344
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object Label13: TLabel
      Left = 408
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Taking Sample Date '
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Prior'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Next'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphRight
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 160
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300008030222220330000803000222033000000303
        0222033333333303000203300000330303020308888803030302030888880303
        0302030888880003030203088888080303020000000000000302220308888808
        0302220000000000000222220308888808022222000000000002}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 232
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Preview'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 304
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object DateEdit1: TDateEdit
      Left = 512
      Top = 8
      Width = 113
      Height = 21
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 104
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Project'
    end
    object Label2: TLabel
      Left = 224
      Top = 8
      Width = 27
      Height = 13
      Caption = 'RWO'
    end
    object Label3: TLabel
      Left = 360
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 424
      Top = 8
      Width = 26
      Height = 13
      Caption = 'QN# '
    end
    object Label5: TLabel
      Left = 520
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label6: TLabel
      Left = 608
      Top = 8
      Width = 41
      Height = 13
      Caption = 'QN QTY'
    end
    object DBText1: TDBText
      Left = 144
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 256
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'J2_job'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 368
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 464
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 552
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Acol'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 664
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Line'
    end
    object DBText7: TDBText
      Left = 40
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 320
      Top = 8
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'CWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 312
      Top = 8
      Width = 9
      Height = 13
      Caption = ' - '
    end
    object Label8: TLabel
      Left = 16
      Top = 32
      Width = 61
      Height = 13
      Caption = 'The 1st time '
    end
    object Label10: TLabel
      Left = 176
      Top = 32
      Width = 36
      Height = 13
      Caption = 'PDN # '
    end
    object Label12: TLabel
      Left = 472
      Top = 32
      Width = 3
      Height = 13
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 216
      Top = 32
      Width = 137
      Height = 21
      TabOrder = 0
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo_sample'
    FieldDefs = <
      item
        Name = 'PLINE'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SIZ'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'S_SP'
        DataType = ftInteger
      end
      item
        Name = 'S_WR'
        DataType = ftInteger
      end
      item
        Name = 'S_LS'
        DataType = ftInteger
      end
      item
        Name = 'T2_SP'
        DataType = ftInteger
      end
      item
        Name = 'T2_WR'
        DataType = ftInteger
      end
      item
        Name = 'T2_LS'
        DataType = ftInteger
      end
      item
        Name = 'AQ_SP'
        DataType = ftInteger
      end
      item
        Name = 'AQ_WR'
        DataType = ftInteger
      end
      item
        Name = 'AQ_LS'
        DataType = ftInteger
      end
      item
        Name = 'T3_SP'
        DataType = ftInteger
      end
      item
        Name = 'T3_WR'
        DataType = ftInteger
      end
      item
        Name = 'T3_LS'
        DataType = ftInteger
      end
      item
        Name = 'T1_SP'
        DataType = ftInteger
      end
      item
        Name = 'T1_WR'
        DataType = ftInteger
      end
      item
        Name = 'T1_LS'
        DataType = ftInteger
      end
      item
        Name = 'T1USER'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SUSER'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AQUSER'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'T2USER'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'T3USER'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'S2W'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 56
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 128
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 120
    Top = 128
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 128
  end
end
