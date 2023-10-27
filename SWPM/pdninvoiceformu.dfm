object frmpdninvoice: Tfrmpdninvoice
  Left = 122
  Top = 91
  Caption = 'Commercial Invoice (Standard Format)'
  ClientHeight = 393
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 233
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Cust '
    end
    object SpeedButton1: TSpeedButton
      Left = 112
      Top = 16
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Invoice # '
    end
    object Label3: TLabel
      Left = 416
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Invoice Date  '
    end
    object Label4: TLabel
      Left = 416
      Top = 40
      Width = 71
      Height = 13
      Caption = 'Payment Term '
    end
    object Label5: TLabel
      Left = 416
      Top = 64
      Width = 47
      Height = 13
      Caption = 'Incoterm  '
    end
    object Label6: TLabel
      Left = 416
      Top = 88
      Width = 81
      Height = 13
      Caption = 'Country of Origin '
    end
    object Label7: TLabel
      Left = 416
      Top = 112
      Width = 57
      Height = 13
      Caption = 'Ship Mode  '
    end
    object Label8: TLabel
      Left = 416
      Top = 136
      Width = 77
      Height = 13
      Caption = 'Name of Vessel '
    end
    object Label9: TLabel
      Left = 416
      Top = 160
      Width = 79
      Height = 13
      Caption = 'Departure Date  '
    end
    object Label10: TLabel
      Left = 416
      Top = 184
      Width = 75
      Height = 13
      Caption = 'Port of Loading '
    end
    object Label11: TLabel
      Left = 416
      Top = 208
      Width = 88
      Height = 13
      Caption = 'Port of Discharge  '
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 16
      Width = 81
      Height = 21
      DataField = 'CUST'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 40
      Width = 393
      Height = 89
      DataField = 'ADDR'
      DataSource = DataSource1
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 136
      Width = 393
      Height = 89
      DataField = 'MEMO1'
      DataSource = DataSource1
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 264
      Top = 16
      Width = 137
      Height = 21
      Hint = 'Double Click to amend invoice #'
      DataField = 'INV'
      DataSource = DataSource1
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      OnDblClick = DBEdit2DblClick
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 488
      Top = 16
      Width = 137
      Height = 21
      DataField = 'INVDT'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 4
      Visible = True
    end
    object DBEdit3: TDBEdit
      Left = 488
      Top = 40
      Width = 137
      Height = 21
      DataField = 'PAYTERM'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 488
      Top = 64
      Width = 224
      Height = 21
      DataField = 'INCOTERM'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 504
      Top = 88
      Width = 137
      Height = 21
      DataField = 'COUNTRY'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 504
      Top = 112
      Width = 137
      Height = 21
      DataField = 'SHPM'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 504
      Top = 136
      Width = 297
      Height = 21
      DataField = 'VESSEL'
      DataSource = DataSource1
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 504
      Top = 184
      Width = 137
      Height = 21
      DataField = 'LPORT'
      DataSource = DataSource1
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 504
      Top = 208
      Width = 137
      Height = 21
      DataField = 'DPORT'
      DataSource = DataSource1
      TabOrder = 11
    end
    object DBDateTimeEditEh2: TDBDateTimeEditEh
      Left = 504
      Top = 160
      Width = 137
      Height = 21
      DataField = 'DEPARTDT'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 12
      Visible = True
    end
    object BitBtn5: TBitBtn
      Left = 647
      Top = 200
      Width = 65
      Height = 25
      Caption = 'Copy from'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 13
      OnClick = BitBtn5Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 233
    Width = 802
    Height = 119
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource2
    DrawMemoText = True
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove]
    RowDetailPanel.Color = clBtnFace
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'ITEM'
        Width = 34
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'SPMARKS'
        Footers = <>
        Title.Caption = 'SHIPPING MARKS'
        Width = 193
        OnEditButtonClick = DBGridEh1Columns1EditButtonClick
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'STYLEDES'
        Footers = <>
        Title.Caption = 'DESCRIPTION'
        Width = 254
        OnEditButtonClick = DBGridEh1Columns2EditButtonClick
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'J_NO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PROJECT #'
        Width = 85
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'J2_JOB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WO #'
        Width = 67
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'ARTNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PH STYLE'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CSTYLE'
        Footers = <>
        Title.Caption = 'ITEM #'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'TSTYLE'
        Footers = <>
        Title.Caption = 'THEME / STYLE'
        Width = 115
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CUSTPO'
        Footers = <>
        Title.Caption = 'Order No. (PO #)'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'BDC'
        Footers = <>
        Title.Caption = 'Reference No.'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'HSCODE'
        Footers = <>
        Title.Caption = 'HS CODE'
        Width = 100
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CAT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CATEGORY'
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'CERT'
        Footers = <>
        Title.Caption = 'CERTIFICATE OF ORIGIN'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        Title.Caption = 'QUANTITY'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'BOX'
        Footers = <>
        Title.Caption = 'Carton'
        Width = 42
      end
      item
        Color = 13499643
        DisplayFormat = '0.000'
        EditButtons = <>
        FieldName = 'UPRIC'
        Footers = <>
        Title.Caption = 'UNIT PRICE'
        Width = 60
      end
      item
        Color = 13499643
        EditButtons = <>
        FieldName = 'CURR'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CURRENCY'
      end
      item
        Color = 13499643
        DisplayFormat = '#,0.00'
        EditButtons = <>
        FieldName = 'AMT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'AMOUNT'
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'QTY1'
        Footers = <>
        Title.Caption = 'SET|QUANTITY'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'UNIT1'
        Footers = <>
        Title.Caption = 'SET|UNIT'
        Width = 40
      end
      item
        DisplayFormat = '0.000'
        EditButtons = <>
        FieldName = 'UPRIC1'
        Footers = <>
        Title.Caption = 'SET|UNIT PRICE'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'ass_qty'
        Footers = <>
        Title.Caption = 'ASST|Qty'
        Width = 57
      end
      item
        DisplayFormat = '0.000'
        EditButtons = <>
        FieldName = 'ass_upx'
        Footers = <>
        Title.Caption = 'ASST|Unit Price'
        Width = 62
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'REMARKS'
        Footers = <>
        Title.Caption = 'Remark (if necessary)'
        Width = 138
        OnEditButtonClick = DBGridEh1Columns21EditButtonClick
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 352
    Width = 802
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
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
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object pgfooter: TCheckBox
      Left = 416
      Top = 8
      Width = 145
      Height = 17
      Caption = 'Show Page Footer '
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 176
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Manufacturing Invoice'
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
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 312
      Top = 8
      Width = 73
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 4
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_inv'
    FieldDefs = <
      item
        Name = 'INV'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INVDT'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ADDR'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'MEMO1'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'PAYTERM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'INCOTERM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COUNTRY'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VESSEL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DEPARTDT'
        DataType = ftDate
      end
      item
        Name = 'LPORT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DPORT'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 208
    Top = 56
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 56
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_inv1'
    FieldDefs = <
      item
        Name = 'INV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TPLANT'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'XH'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SPMARKS'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ARTNO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'TSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'BDC'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CAT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CERT'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'UPRIC'
        DataType = ftBCD
        Precision = 4
        Size = 3
      end
      item
        Name = 'CURR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'AMT'
        DataType = ftBCD
        Precision = 4
        Size = 2
      end
      item
        Name = 'STYLEDES'
        DataType = ftWideString
        Size = 300
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'SHPNO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VOYN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'QTY1'
        DataType = ftInteger
      end
      item
        Name = 'UNIT1'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'UPRIC1'
        DataType = ftFloat
      end
      item
        Name = 'VOL1'
        DataType = ftFloat
      end
      item
        Name = 'GWGHT'
        DataType = ftFloat
      end
      item
        Name = 'NWGHT'
        DataType = ftFloat
      end
      item
        Name = 'REMARKS'
        DataType = ftWideString
        Size = 300
      end
      item
        Name = 'HSCODE'
        DataType = ftWideString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'inv;tplant;xh'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query2AfterOpen
    AfterPost = Query2AfterPost
    Left = 272
    Top = 56
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 336
    Top = 56
  end
  object Query4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
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
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 368
    Top = 56
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tbl_pdn_inv a,tbl_pdn_inv1 b where a.inv=b.inv and' +
      ' a.tplant=b.tplant and a.inv='#39'PH-56949'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 400
    Top = 56
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 304
    Top = 56
  end
  object DataSource3: TDataSource
    DataSet = Query5
    Left = 432
    Top = 56
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline1'
    Left = 464
    Top = 56
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'INV'
      FieldName = 'INV'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'INVDT'
      FieldName = 'INVDT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CUST'
      FieldName = 'CUST'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'TPLANT'
      FieldName = 'TPLANT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ADDR'
      FieldName = 'ADDR'
      FieldLength = 250
      DisplayWidth = 250
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'MEMO1'
      FieldName = 'MEMO1'
      FieldLength = 250
      DisplayWidth = 250
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'PAYTERM'
      FieldName = 'PAYTERM'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'INCOTERM'
      FieldName = 'INCOTERM'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'COUNTRY'
      FieldName = 'COUNTRY'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'SHPM'
      FieldName = 'SHPM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'VESSEL'
      FieldName = 'VESSEL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'DEPARTDT'
      FieldName = 'DEPARTDT'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'LPORT'
      FieldName = 'LPORT'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'DPORT'
      FieldName = 'DPORT'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'INVMARKS'
      FieldName = 'INVMARKS'
      FieldLength = 500
      DisplayWidth = 500
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'SHPNO'
      FieldName = 'SHPNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'MP'
      FieldName = 'MP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'INV1'
      FieldName = 'INV1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'TPLANT1'
      FieldName = 'TPLANT1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'XH'
      FieldName = 'XH'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'SPMARKS'
      FieldName = 'SPMARKS'
      FieldLength = 500
      DisplayWidth = 500
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'J_NO'
      FieldName = 'J_NO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'J2_JOB'
      FieldName = 'J2_JOB'
      FieldLength = 10
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'ARTNO'
      FieldName = 'ARTNO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'CSTYLE'
      FieldName = 'CSTYLE'
      FieldLength = 35
      DisplayWidth = 35
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'TSTYLE'
      FieldName = 'TSTYLE'
      FieldLength = 35
      DisplayWidth = 35
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'CUSTPO'
      FieldName = 'CUSTPO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'BDC'
      FieldName = 'BDC'
      FieldLength = 35
      DisplayWidth = 35
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'CAT'
      FieldName = 'CAT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'CERT'
      FieldName = 'CERT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object ppDBPipeline1ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTY'
      FieldName = 'QTY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBPipeline1ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPRIC'
      FieldName = 'UPRIC'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 7
      Position = 31
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'CURR'
      FieldName = 'CURR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline1ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMT'
      FieldName = 'AMT'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 11
      Position = 33
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'STYLEDES'
      FieldName = 'STYLEDES'
      FieldLength = 300
      DisplayWidth = 300
      Position = 34
    end
    object ppDBPipeline1ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'BOX'
      FieldName = 'BOX'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'SHPNO1'
      FieldName = 'SHPNO1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'PDN'
      FieldName = 'PDN'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'VOYN'
      FieldName = 'VOYN'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppDBPipeline1ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTY1'
      FieldName = 'QTY1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'UNIT1'
      FieldName = 'UNIT1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 40
    end
    object ppDBPipeline1ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'UPRIC1'
      FieldName = 'UPRIC1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 41
    end
    object ppDBPipeline1ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOL1'
      FieldName = 'VOL1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object ppDBPipeline1ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'GWGHT'
      FieldName = 'GWGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 43
    end
    object ppDBPipeline1ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'NWGHT'
      FieldName = 'NWGHT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'REMARKS'
      FieldName = 'REMARKS'
      FieldLength = 300
      DisplayWidth = 300
      Position = 45
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'HSCODE'
      FieldName = 'HSCODE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 46
    end
    object ppDBPipeline1ppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'ASS_QTY'
      FieldName = 'ASS_QTY'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 47
    end
    object ppDBPipeline1ppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'ASS_UPX'
      FieldName = 'ASS_UPX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 496
    Top = 56
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 101865
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 47625
        mmLeft = 2910
        mmTop = 45508
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'COMMERCIAL INVOICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2910
        mmTop = 37306
        mmWidth = 62177
        BandType = 0
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'ADDR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 25135
        mmLeft = 3704
        mmTop = 46302
        mmWidth = 116946
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'MEMO1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 19579
        mmLeft = 3704
        mmTop = 72761
        mmWidth = 116946
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Invoice No.  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 34660
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Invoice Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 39688
        mmWidth = 19579
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'INV'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 34660
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'INVDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 39688
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Payment Term:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 46831
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Incoterm:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 51858
        mmWidth = 15081
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PAYTERM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 46831
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'INCOTERM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 51858
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Country of Origin:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 56886
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship Mode:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 65881
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'COUNTRY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 56886
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 65881
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Name of Vessel:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 70908
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Departure Date:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 75936
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VESSEL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 150548
        mmTop = 70908
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEPARTDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 75936
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Port of Loading:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 80963
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Port of Discharge:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 122238
        mmTop = 85990
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LPORT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 80963
        mmWidth = 43656
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DPORT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 85990
        mmWidth = 43656
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 47361
        mmLeft = 121179
        mmTop = 45508
        mmWidth = 1588
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 71967
        mmWidth = 118269
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 6879
        mmLeft = 2910
        mmTop = 95250
        mmWidth = 191823
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Item  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 96838
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipping Marks  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20902
        mmTop = 96838
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Description of Goods  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 96838
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Quantity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 137848
        mmTop = 96838
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unit Price  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 155575
        mmTop = 96838
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Amount  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 96838
        mmWidth = 12700
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 10848
        mmTop = 95250
        mmWidth = 1588
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 53975
        mmTop = 95250
        mmWidth = 1588
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 134938
        mmTop = 95250
        mmWidth = 1588
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 154252
        mmTop = 95250
        mmWidth = 1588
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 172773
        mmTop = 95250
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'P.H. Garment Mfg. CO., Ltd.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7535
        mmLeft = 32015
        mmTop = 8467
        mmWidth = 133879
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Unit 1901, Tower 1, Ever Gain Plaza, 88 Container Port Road, Kwa' +
          'i Chung, Hong Kong.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 6350
        mmTop = 17992
        mmWidth = 184944
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 74877
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 75142
        mmLeft = 2910
        mmTop = 0
        mmWidth = 191823
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'XH'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 3969
        mmTop = 10848
        mmWidth = 5821
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'SPMARKS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 54769
        mmLeft = 11642
        mmTop = 794
        mmWidth = 41804
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'STYLEDES'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 19315
        mmLeft = 54504
        mmTop = 794
        mmWidth = 80169
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 75142
        mmLeft = 10848
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 75142
        mmLeft = 53975
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 75142
        mmLeft = 134938
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Order No. / Ref No.    BDC#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 21167
        mmWidth = 36777
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Theme / Style   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 25135
        mmWidth = 20108
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'P/O No. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 54504
        mmTop = 29104
        mmWidth = 10922
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Item No.   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 33073
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BDC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 92075
        mmTop = 21167
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 25135
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUSTPO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 29104
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 33073
        mmWidth = 43127
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project No.   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 41804
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Work Order  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 45773
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PH Style No.   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 49742
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ARTNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 49742
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 41804
        mmWidth = 43127
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Category  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 54769
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Certificate of Origin   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54504
        mmTop = 58738
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CAT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 54769
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CERT'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 58738
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 144812
        mmTop = 10848
        mmWidth = 635
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UPRIC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.000;-#,0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 171683
        mmTop = 10848
        mmWidth = 635
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AMT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 193189
        mmTop = 10848
        mmWidth = 635
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 173832
        mmTop = 10848
        mmWidth = 635
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 155311
        mmTop = 10848
        mmWidth = 635
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PCS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 146579
        mmTop = 10848
        mmWidth = 5842
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 75142
        mmLeft = 154252
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 75142
        mmLeft = 172773
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object qty001: TppDBText
        UserName = 'qty001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 144886
        mmTop = 16404
        mmWidth = 635
        BandType = 4
      end
      object unit001: TppDBText
        UserName = 'unit001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UNIT1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 146579
        mmTop = 16404
        mmWidth = 635
        BandType = 4
      end
      object upric001: TppDBText
        UserName = 'upric001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UPRIC1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 171609
        mmTop = 16404
        mmWidth = 635
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HS Code   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 54504
        mmTop = 37042
        mmWidth = 13885
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'HSCODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 37042
        mmWidth = 43127
        BandType = 4
      end
      object memo003: TppMemo
        UserName = 'memo003'
        KeepTogether = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 11642
        mmLeft = 54504
        mmTop = 62706
        mmWidth = 80169
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object wo0001: TppLabel
        UserName = 'wo0001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 82021
        mmTop = 45773
        mmWidth = 52388
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 66940
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAL: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3704
        mmTop = 7144
        mmWidth = 10753
        BandType = 7
      end
      object ttl001: TppLabel
        UserName = 'ttl001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 2921
        mmLeft = 15610
        mmTop = 7144
        mmWidth = 179123
        BandType = 7
      end
      object ttl002: TppLabel
        UserName = 'ttl002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 3704
        mmTop = 12435
        mmWidth = 6350
        BandType = 7
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'INVMARKS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 48419
        mmLeft = 3704
        mmTop = 17727
        mmWidth = 139436
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 134938
        mmTop = 0
        mmWidth = 59796
        BandType = 7
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CURR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 173302
        mmTop = 1323
        mmWidth = 635
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AMT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 180182
        mmTop = 1323
        mmWidth = 13716
        BandType = 7
      end
      object ppLabel28: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAL: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118798
        mmTop = 1323
        mmWidth = 12435
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 154252
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 172773
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 135996
        mmTop = 1323
        mmWidth = 13589
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 134409
        mmTop = 1323
        mmWidth = 15155
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
