object frmselectitem: Tfrmselectitem
  Left = 27
  Top = 42
  Width = 753
  Height = 508
  Caption = #36984#25799#29289#26009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 24
    Top = 440
    Width = 65
    Height = 25
    Caption = #30906#23450
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 440
    Width = 65
    Height = 25
    Caption = #21462#28040
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333333333333333FFF33FF333FFF339993370733
      999333777FF37FF377733339993000399933333777F777F77733333399970799
      93333333777F7377733333333999399933333333377737773333333333990993
      3333333333737F73333333333331013333333333333777FF3333333333910193
      333333333337773FF3333333399000993333333337377737FF33333399900099
      93333333773777377FF333399930003999333337773777F777FF339993370733
      9993337773337333777333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 16
    Width = 697
    Height = 409
    Color = 11795962
    DataSource = DataSource1
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Worder'
        Footers = <>
        Title.Caption = 'WORDER'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Oper'
        Footers = <>
        Title.Caption = 'OPER'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'Operdesc'
        Footers = <>
        Title.Caption = 'OPERDESC'
        Width = 218
      end
      item
        EditButtons = <>
        FieldName = 'Mcode'
        Footers = <>
        Title.Caption = 'CODE'
      end
      item
        EditButtons = <>
        FieldName = 'Idno'
        Footers = <>
        Title.Caption = 'IDNO.'
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'QTY'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'Uom'
        Footers = <>
        Title.Caption = 'UOM'
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'Aqty'
        Footers = <>
        Title.Caption = 'QTY_ALLOC'
        Width = 74
      end>
  end
  object Query1: TQuery
    DatabaseName = 'phlib'
    SQL.Strings = (
      
        'select distinct odsc41,word42 as worder,opsq42 as oper,comp42 as' +
        ' code,sum(corq42) as qty,wuom42 as uom,sum(aqty02) as qty_alloc,' +
        'locn02 from msp42,msp41,pcp02 where cono42=cono41 and word42=wor' +
        'd41 and opsq42=opsq41 and cono02=cono42 and cseq02=cseq42 and op' +
        'sq02=opsq42 and comp02=comp42 and cono42='#39'T1'#39' and word42='#39'W00036' +
        '0'#39' group by word42,opsq42,comp42,wuom42,odsc41,locn02')
    Left = 385
    Top = 440
  end
  object DataSource1: TDataSource
    DataSet = Query5
    Left = 544
    Top = 440
  end
  object Query2: TQuery
    DatabaseName = 'phlib'
    Left = 320
    Top = 440
  end
  object Query3: TQuery
    DatabaseName = 'phlib'
    Left = 413
    Top = 440
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 441
    Top = 440
  end
  object ClientDataSet5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from ido3'
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 516
    Top = 440
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 572
    Top = 440
  end
  object Query4: TQuery
    DatabaseName = 'C:\temp'
    RequestLive = True
    Left = 600
    Top = 440
  end
  object Query5: TQuery
    DatabaseName = 'C:\temp'
    RequestLive = True
    Left = 632
    Top = 440
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmlogin.SocketConnection1
    Left = 470
    Top = 440
  end
end
