object frmenquiry: Tfrmenquiry
  Left = 192
  Top = 114
  Caption = 'frmenquiry'
  ClientHeight = 429
  ClientWidth = 649
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
    Width = 649
    Height = 388
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
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
        FieldName = 'cde'
        Footers = <>
        Title.Caption = 'Code'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'edescription'
        Footers = <>
        Title.Caption = 'Description|English'
        Width = 269
      end
      item
        EditButtons = <>
        FieldName = 'description'
        Footers = <>
        Title.Caption = 'Description|Chinese'
        Width = 270
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 388
    Width = 649
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Choose'
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
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 96
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 216
      Top = 8
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 272
      Top = 8
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 416
      Top = 8
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnChange = Edit3Change
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_aql_rpt2'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'PONO'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DT'
        DataType = ftDate
      end
      item
        Name = 'AUD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FTY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACOL1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL4'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL5'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL7'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'QTY1'
        DataType = ftInteger
      end
      item
        Name = 'COL1'
        DataType = ftInteger
      end
      item
        Name = 'CASE1'
        DataType = ftInteger
      end
      item
        Name = 'SIZE1'
        DataType = ftInteger
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'BRAND'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'REMARKS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'SQTY1'
        DataType = ftInteger
      end
      item
        Name = 'RQTY1'
        DataType = ftInteger
      end
      item
        Name = 'REMARKS1'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'AUDIT1'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT2'
        DataType = ftBoolean
      end
      item
        Name = 'AUDIT3'
        DataType = ftBoolean
      end
      item
        Name = 'MEMO1'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'ACL1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ACL7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'cde'
      end
      item
        Name = 'idx2'
        Fields = 'edescription'
      end
      item
        Name = 'idx3'
        Fields = 'description'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmaqlmain.dsp_Conn1
    StoreDefs = True
    Left = 48
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 112
  end
end
