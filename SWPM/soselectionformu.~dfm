object frmsoselection: Tfrmsoselection
  Left = 192
  Top = 114
  Width = 696
  Height = 511
  Caption = 'SO Selection'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 75
      Height = 13
      Caption = 'Customer Code '
    end
    object Label2: TLabel
      Left = 248
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Project # '
    end
    object Label3: TLabel
      Left = 456
      Top = 16
      Width = 28
      Height = 13
      Caption = 'SO # '
    end
    object ComboBox1: TComboBox
      Left = 104
      Top = 16
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'SARA1'
        'CANA1'
        'TAMA1'
        'NEXT1')
    end
    object Edit1: TEdit
      Left = 296
      Top = 16
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object Edit2: TEdit
      Left = 488
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
      OnChange = ComboBox1Change
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 688
    Height = 387
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = BitBtn1Click
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CUSTOMER'
        Footers = <>
        Title.Caption = 'Customer'
      end
      item
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        Title.Caption = 'Project #'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'SOPNO'
        Footers = <>
        Title.Caption = 'SO #'
      end
      item
        EditButtons = <>
        FieldName = 'ORDLINE'
        Footers = <>
        Title.Caption = 'SO Line'
      end
      item
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        Title.Caption = 'WO #'
      end
      item
        EditButtons = <>
        FieldName = 'ACOL'
        Footers = <>
        Title.Caption = 'Clr Code'
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DDT'
        Footers = <>
        Title.Caption = 'Ex-fty'
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 436
    Width = 688
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Choose'
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
    CommandText = 
      'select distinct a.customer,a.j_no,a.sopno,a.ordline,b.j2_job,a.a' +
      'col,b.qty from tbl_erpsop a,tbl_erpwo b where a.sopno=b.sopno an' +
      'd a.ordline=b.ordline and a.acol=b.acol and a.j_no='#39'SARA1485'#39
    FieldDefs = <
      item
        Name = 'CUSTOMER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SOPNO'
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
        Name = 'ACOL'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 56
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 88
  end
end
