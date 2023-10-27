object frmairrequestform: Tfrmairrequestform
  Left = 147
  Top = 41
  Caption = 'Reasons for Ship Mode Change'
  ClientHeight = 583
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 23
    Height = 13
    Caption = 'PDN'
  end
  object Label2: TLabel
    Left = 360
    Top = 16
    Width = 43
    Height = 13
    Caption = 'Manifest '
  end
  object Label3: TLabel
    Left = 40
    Top = 40
    Width = 59
    Height = 13
    Caption = 'Stage Code '
  end
  object Label4: TLabel
    Left = 360
    Top = 40
    Width = 28
    Height = 13
    Caption = 'AR # '
  end
  object Shape1: TShape
    Left = 24
    Top = 64
    Width = 657
    Height = 1
  end
  object Label5: TLabel
    Left = 40
    Top = 72
    Width = 81
    Height = 13
    Caption = 'Forwarder Name '
  end
  object Label6: TLabel
    Left = 48
    Top = 96
    Width = 68
    Height = 13
    Caption = 'Delivery Term '
  end
  object Label7: TLabel
    Left = 40
    Top = 144
    Width = 57
    Height = 13
    Caption = 'Head Office'
  end
  object Label8: TLabel
    Left = 184
    Top = 144
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label9: TLabel
    Left = 328
    Top = 144
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Label10: TLabel
    Left = 456
    Top = 144
    Width = 41
    Height = 13
    Caption = 'Supplier '
  end
  object Label11: TLabel
    Left = 576
    Top = 144
    Width = 29
    Height = 13
    Caption = 'Other '
  end
  object Label12: TLabel
    Left = 40
    Top = 192
    Width = 57
    Height = 13
    Caption = 'Head Office'
  end
  object Label13: TLabel
    Left = 184
    Top = 192
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label14: TLabel
    Left = 328
    Top = 192
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Label15: TLabel
    Left = 456
    Top = 192
    Width = 41
    Height = 13
    Caption = 'Supplier '
  end
  object Label16: TLabel
    Left = 576
    Top = 192
    Width = 29
    Height = 13
    Caption = 'Other '
  end
  object Label17: TLabel
    Left = 40
    Top = 240
    Width = 57
    Height = 13
    Caption = 'Head Office'
  end
  object Label18: TLabel
    Left = 184
    Top = 240
    Width = 38
    Height = 13
    Caption = 'Factory '
  end
  object Label19: TLabel
    Left = 328
    Top = 240
    Width = 47
    Height = 13
    Caption = 'Customer '
  end
  object Label20: TLabel
    Left = 456
    Top = 240
    Width = 41
    Height = 13
    Caption = 'Supplier '
  end
  object Label21: TLabel
    Left = 576
    Top = 240
    Width = 29
    Height = 13
    Caption = 'Other '
  end
  object Shape2: TShape
    Left = 24
    Top = 264
    Width = 657
    Height = 1
  end
  object Label22: TLabel
    Left = 40
    Top = 272
    Width = 43
    Height = 13
    Caption = 'Reason: '
  end
  object SpeedButton1: TSpeedButton
    Left = 112
    Top = 296
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
  object DBText1: TDBText
    Left = 88
    Top = 16
    Width = 169
    Height = 17
    DataField = 'PDN'
    DataSource = frmvoyage.DataSource1
  end
  object DBText2: TDBText
    Left = 416
    Top = 16
    Width = 137
    Height = 17
    DataField = 'VOYN'
    DataSource = frmvoyage.DataSource1
  end
  object DBText3: TDBText
    Left = 112
    Top = 40
    Width = 145
    Height = 17
    Hint = 
      'Stage code description: - '#13#13'1.0  Application'#13'2.0  Active'#13'3.0  No' +
      'tice to factory GM & PHHK GM'#13'4.0  Debit Note'#13'5.0  Acted'
    DataField = 'STAGECODE'
    DataSource = DataSource1
    ParentShowHint = False
    ShowHint = True
  end
  object DBText4: TDBText
    Left = 416
    Top = 40
    Width = 145
    Height = 17
    DataField = 'AFRNO'
    DataSource = DataSource1
  end
  object Shape3: TShape
    Left = 24
    Top = 440
    Width = 657
    Height = 1
  end
  object Label23: TLabel
    Left = 40
    Top = 448
    Width = 126
    Height = 13
    Caption = 'Estimated freight rate(HK$)'
  end
  object Label24: TLabel
    Left = 376
    Top = 472
    Width = 126
    Height = 13
    Caption = 'Actual Volumn Weight(kg) '
  end
  object Shape4: TShape
    Left = 24
    Top = 520
    Width = 657
    Height = 1
  end
  object Label25: TLabel
    Left = 152
    Top = 144
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label26: TLabel
    Left = 272
    Top = 144
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label27: TLabel
    Left = 424
    Top = 144
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label28: TLabel
    Left = 544
    Top = 144
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label29: TLabel
    Left = 656
    Top = 144
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label30: TLabel
    Left = 152
    Top = 192
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label31: TLabel
    Left = 264
    Top = 192
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label32: TLabel
    Left = 424
    Top = 192
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label33: TLabel
    Left = 544
    Top = 192
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label34: TLabel
    Left = 656
    Top = 192
    Width = 17
    Height = 13
    Caption = ' %  '
  end
  object Label35: TLabel
    Left = 40
    Top = 472
    Width = 110
    Height = 13
    Caption = 'Actual freight rate(HK$)'
  end
  object Label36: TLabel
    Left = 376
    Top = 96
    Width = 41
    Height = 13
    Caption = 'MAWB#'
  end
  object Label37: TLabel
    Left = 296
    Top = 72
    Width = 119
    Height = 13
    Caption = 'Forwarder flight invoice #'
  end
  object Label38: TLabel
    Left = 40
    Top = 496
    Width = 48
    Height = 13
    Caption = 'Invoice # '
  end
  object Label39: TLabel
    Left = 376
    Top = 496
    Width = 117
    Height = 13
    Caption = 'Actual Volumn of Goods '
  end
  object Label40: TLabel
    Left = 376
    Top = 448
    Width = 128
    Height = 13
    Caption = 'Estimated freight cost(HK$)'
  end
  object SpeedButton2: TSpeedButton
    Left = 280
    Top = 192
    Width = 25
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
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 280
    Top = 240
    Width = 25
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
    OnClick = SpeedButton2Click
  end
  object DBCheckBox1: TDBCheckBox
    Left = 40
    Top = 120
    Width = 193
    Height = 17
    Caption = 'Freight cost different on (Request)'
    DataField = 'ISREQUESTED'
    DataSource = DataSource1
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox2: TDBCheckBox
    Left = 40
    Top = 168
    Width = 217
    Height = 17
    Caption = 'Freight cost different on (Confirmed)'
    DataField = 'ISCONFIRMED'
    DataSource = DataSource1
    TabOrder = 10
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBCheckBox3: TDBCheckBox
    Left = 40
    Top = 216
    Width = 209
    Height = 17
    Caption = 'Freight cost different on (Actual HK$)'
    DataField = 'ISACTUALED'
    DataSource = DataSource1
    TabOrder = 16
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 72
    Width = 137
    Height = 21
    DataField = 'FORWARDERNAME'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 40
    Top = 360
    Width = 641
    Height = 73
    DataField = 'REASONMEMO'
    DataSource = DataSource1
    ScrollBars = ssBoth
    TabOrder = 23
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 296
    Width = 73
    Height = 21
    DataField = 'RCODE'
    DataSource = DataSource1
    TabOrder = 22
  end
  object DBComboBox1: TDBComboBox
    Left = 128
    Top = 96
    Width = 81
    Height = 21
    DataField = 'DELIVERYTERM'
    DataSource = DataSource1
    Items.Strings = (
      'FOB'
      'C&F'
      'CIF')
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 448
    Width = 137
    Height = 21
    DataField = 'ESTFRTRATE'
    DataSource = DataSource1
    TabOrder = 24
  end
  object DBEdit4: TDBEdit
    Left = 504
    Top = 472
    Width = 137
    Height = 21
    DataField = 'ACTVOLWEIGHT'
    DataSource = DataSource1
    TabOrder = 27
  end
  object DBEdit5: TDBEdit
    Left = 104
    Top = 144
    Width = 41
    Height = 21
    DataField = 'PER_HEADOFFICE'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 224
    Top = 144
    Width = 41
    Height = 21
    DataField = 'PER_FACTORY'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 376
    Top = 144
    Width = 41
    Height = 21
    DataField = 'PER_BUYER'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 496
    Top = 144
    Width = 41
    Height = 21
    DataField = 'PER_SUPPLIER'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 608
    Top = 144
    Width = 41
    Height = 21
    Color = 13365228
    DataField = 'PER_OTHER'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit10: TDBEdit
    Left = 104
    Top = 192
    Width = 41
    Height = 21
    DataField = 'PER_HEADOFFICE_CONF'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit11: TDBEdit
    Left = 224
    Top = 192
    Width = 41
    Height = 21
    DataField = 'PER_FACTORY_CONF'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit12: TDBEdit
    Left = 376
    Top = 192
    Width = 41
    Height = 21
    DataField = 'PER_BUYER_CONF'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit13: TDBEdit
    Left = 496
    Top = 192
    Width = 41
    Height = 21
    DataField = 'PER_SUPPLIER_CONF'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBEdit14: TDBEdit
    Left = 608
    Top = 192
    Width = 41
    Height = 21
    Color = 13365228
    DataField = 'PER_OTHER_CONF'
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 15
  end
  object DBEdit15: TDBEdit
    Left = 104
    Top = 240
    Width = 57
    Height = 21
    DataField = 'HEADOFFICE_ACTCOST'
    DataSource = DataSource1
    TabOrder = 17
  end
  object DBEdit16: TDBEdit
    Left = 224
    Top = 240
    Width = 57
    Height = 21
    DataField = 'FACTORY_ACTCOST'
    DataSource = DataSource1
    TabOrder = 18
  end
  object DBEdit17: TDBEdit
    Left = 376
    Top = 240
    Width = 57
    Height = 21
    DataField = 'BUYER_ACTCOST'
    DataSource = DataSource1
    TabOrder = 19
  end
  object DBEdit18: TDBEdit
    Left = 496
    Top = 240
    Width = 57
    Height = 21
    DataField = 'SUPPLIER_ACTCOST'
    DataSource = DataSource1
    TabOrder = 20
  end
  object DBEdit19: TDBEdit
    Left = 608
    Top = 240
    Width = 57
    Height = 21
    DataField = 'OTHER_ACTCOST'
    DataSource = DataSource1
    TabOrder = 21
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 528
    Width = 81
    Height = 41
    Caption = 'Application'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
      55555575555555775F55509999999901055557F55555557F75F5001111111101
      105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
      01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
      0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
      0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
      0005555555575FF7777555555555000555555555555577755555555555555555
      5555555555555555555555555555555555555555555555555555}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 30
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 528
    Width = 33
    Height = 41
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
    Layout = blGlyphTop
    ParentDoubleBuffered = False
    TabOrder = 31
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 136
    Top = 528
    Width = 33
    Height = 41
    Caption = 'Debit '
    DoubleBuffered = True
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FF0000000000
      000FFF7888888888880FFF7FFFFFFFFFF80FFF7FFFFFFFFFF80FFF7FFFFFFFFF
      F80FFF7FFFFFFFFFF80FFF7FFFFFFFFFF80FFF7FFFFFFFFFF80FFF7FFFFFFFFF
      F80FFF7FFFFFFFFFF80FFF7FFFFFFFFFF80FFF7FFFFFFFFFF80FFF7FFFFFFFF0
      000FFF7FFFFFFFF8F7FFFF7FFFFFFFF87FFFFF7777777777FFFF}
    Layout = blGlyphTop
    ParentDoubleBuffered = False
    TabOrder = 32
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 168
    Top = 528
    Width = 73
    Height = 41
    Caption = 'Project Detail'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 33
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 240
    Top = 528
    Width = 49
    Height = 41
    Caption = 'Report'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 34
    OnClick = BitBtn5Click
  end
  object cxDBLabel1: TcxDBLabel
    Left = 144
    Top = 288
    DataBinding.DataField = 'RDESC'
    DataBinding.DataSource = DataSource1
    Properties.WordWrap = True
    Height = 73
    Width = 537
  end
  object BitBtn6: TBitBtn
    Left = 288
    Top = 528
    Width = 105
    Height = 41
    Caption = 'Approval by HK OA'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333C3333333333333337F3333333333333C0C3333
      333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
      3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
      333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
      0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
      0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
      3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
      3333333333777333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 36
    OnClick = BitBtn6Click
  end
  object DBEdit20: TDBEdit
    Left = 168
    Top = 472
    Width = 137
    Height = 21
    DataField = 'ACTFRTRATE'
    DataSource = DataSource1
    TabOrder = 26
  end
  object DBEdit21: TDBEdit
    Left = 424
    Top = 96
    Width = 137
    Height = 21
    DataField = 'MAWB'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit22: TDBEdit
    Left = 424
    Top = 72
    Width = 137
    Height = 21
    DataField = 'FORWARDERINV'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit23: TDBEdit
    Left = 168
    Top = 496
    Width = 137
    Height = 21
    DataField = 'INVNO'
    DataSource = DataSource1
    TabOrder = 28
  end
  object DBEdit24: TDBEdit
    Left = 504
    Top = 496
    Width = 137
    Height = 21
    DataField = 'CBM'
    DataSource = DataSource1
    TabOrder = 29
  end
  object BitBtn7: TBitBtn
    Left = 392
    Top = 528
    Width = 105
    Height = 41
    Caption = 'Approval by Fty GM'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333C3333333333333337F3333333333333C0C3333
      333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
      3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
      333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
      0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
      0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
      3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
      3333333333777333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 37
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 496
    Top = 528
    Width = 105
    Height = 41
    Caption = 'Approval by HK GM'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333C3333333333333337F3333333333333C0C3333
      333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
      3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
      333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
      0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
      0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
      3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
      3333333333777333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 38
    OnClick = BitBtn8Click
  end
  object DBEdit25: TDBEdit
    Left = 504
    Top = 448
    Width = 137
    Height = 21
    DataField = 'ESTTTLFRTCOST'
    DataSource = DataSource1
    TabOrder = 25
  end
  object BitBtn9: TBitBtn
    Left = 600
    Top = 528
    Width = 41
    Height = 41
    Caption = 'Email'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
      000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
      FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
      FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
      9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
      0000777777777777777733333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    Layout = blGlyphTop
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 39
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 640
    Top = 528
    Width = 41
    Height = 41
    DoubleBuffered = True
    Kind = bkClose
    Layout = blGlyphTop
    ParentDoubleBuffered = False
    TabOrder = 40
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_shmchgreason'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'MANIFEST'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PER_FACTORY'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_BUYER'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_SUPPLIER'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_OTHER'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'REASONTYPE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PER_HEADOFFICE'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'STAGECODE'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AFRNO'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FORWARDERNAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DELIVERYTERM'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ESTFRTRATE'
        DataType = ftBCD
        Precision = 15
        Size = 4
      end
      item
        Name = 'ACTFRTRATE'
        DataType = ftBCD
        Precision = 15
        Size = 4
      end
      item
        Name = 'ESTTTLFRTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'ACTTTLFRTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'ACTVOLWEIGHT'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'APPUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APPTIME'
        DataType = ftDateTime
      end
      item
        Name = 'ACTUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ACTTIME'
        DataType = ftDateTime
      end
      item
        Name = 'NOTICEUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'NOTICETIME'
        DataType = ftDateTime
      end
      item
        Name = 'NOTICECODE'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBITUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBITTIME'
        DataType = ftDateTime
      end
      item
        Name = 'ACTEDUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ACTEDTIME'
        DataType = ftDateTime
      end
      item
        Name = 'PER_HEADOFFICE_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'HEADOFFICE_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_FACTORY_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'FACTORY_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_BUYER_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'BUYER_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_SUPPLIER_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'SUPPLIER_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_OTHER_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'OTHER_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBIT_MESSRS'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'DEBIT_ATTN'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEBIT_AIRFRTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_CHARGE'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_REMARK'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'REASONMEMO'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'RCODE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RDESC'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'MAWB'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ISREQUESTED'
        DataType = ftBoolean
      end
      item
        Name = 'ISCONFIRMED'
        DataType = ftBoolean
      end
      item
        Name = 'ISACTUALED'
        DataType = ftBoolean
      end
      item
        Name = 'CURRENCY'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'FORWARDERINV'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBIT_VNDR'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ULIST'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'INVNO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'DEBIT_NO1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBIT_MESSRS1'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'DEBIT_ATTN1'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEBIT_AIRFRTCOST1'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_CHARGE1'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_REMARK1'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'DEBIT_VNDR1'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FTY_SIGNED'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'HK_SIGNED'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'OA_SIGNED'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SL01'
        DataType = ftFloat
      end
      item
        Name = 'KB01'
        DataType = ftFloat
      end
      item
        Name = 'FJ01'
        DataType = ftFloat
      end
      item
        Name = 'SL02'
        DataType = ftFloat
      end
      item
        Name = 'KB02'
        DataType = ftFloat
      end
      item
        Name = 'FJ02'
        DataType = ftFloat
      end
      item
        Name = 'CL01'
        DataType = ftFloat
      end
      item
        Name = 'CL02'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 48
    Top = 65528
    object Query1SEQ: TIntegerField
      FieldName = 'SEQ'
      Required = True
    end
    object Query1SEQ1: TIntegerField
      FieldName = 'SEQ1'
      Required = True
    end
    object Query1PDN: TWideStringField
      FieldName = 'PDN'
      Required = True
    end
    object Query1MANIFEST: TWideStringField
      FieldName = 'MANIFEST'
      Required = True
    end
    object Query1PER_FACTORY: TBCDField
      FieldName = 'PER_FACTORY'
      OnChange = Query1PER_FACTORYChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_BUYER: TBCDField
      FieldName = 'PER_BUYER'
      OnChange = Query1PER_FACTORYChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_SUPPLIER: TBCDField
      FieldName = 'PER_SUPPLIER'
      OnChange = Query1PER_FACTORYChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_OTHER: TBCDField
      FieldName = 'PER_OTHER'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1REASONTYPE: TIntegerField
      FieldName = 'REASONTYPE'
      Required = True
    end
    object Query1PER_HEADOFFICE: TBCDField
      FieldName = 'PER_HEADOFFICE'
      OnChange = Query1PER_FACTORYChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1STAGECODE: TWideStringField
      FieldName = 'STAGECODE'
    end
    object Query1AFRNO: TWideStringField
      FieldName = 'AFRNO'
      Size = 15
    end
    object Query1FORWARDERNAME: TWideStringField
      FieldName = 'FORWARDERNAME'
      Size = 50
    end
    object Query1DELIVERYTERM: TWideStringField
      FieldName = 'DELIVERYTERM'
      Size = 10
    end
    object Query1ESTFRTRATE: TBCDField
      FieldName = 'ESTFRTRATE'
      DisplayFormat = '0.0000'
      Precision = 15
    end
    object Query1ACTFRTRATE: TBCDField
      FieldName = 'ACTFRTRATE'
      DisplayFormat = '0.0000'
      Precision = 15
    end
    object Query1ESTTTLFRTCOST: TBCDField
      FieldName = 'ESTTTLFRTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1ACTTTLFRTCOST: TBCDField
      FieldName = 'ACTTTLFRTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1ACTVOLWEIGHT: TBCDField
      FieldName = 'ACTVOLWEIGHT'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1APPUSER: TWideStringField
      FieldName = 'APPUSER'
    end
    object Query1APPTIME: TDateTimeField
      FieldName = 'APPTIME'
    end
    object Query1ACTUSER: TWideStringField
      FieldName = 'ACTUSER'
    end
    object Query1ACTTIME: TDateTimeField
      FieldName = 'ACTTIME'
    end
    object Query1NOTICEUSER: TWideStringField
      FieldName = 'NOTICEUSER'
    end
    object Query1NOTICETIME: TDateTimeField
      FieldName = 'NOTICETIME'
    end
    object Query1NOTICECODE: TWideStringField
      FieldName = 'NOTICECODE'
    end
    object Query1DEBITUSER: TWideStringField
      FieldName = 'DEBITUSER'
    end
    object Query1DEBITTIME: TDateTimeField
      FieldName = 'DEBITTIME'
    end
    object Query1ACTEDUSER: TWideStringField
      FieldName = 'ACTEDUSER'
    end
    object Query1ACTEDTIME: TDateTimeField
      FieldName = 'ACTEDTIME'
    end
    object Query1PER_HEADOFFICE_CONF: TBCDField
      FieldName = 'PER_HEADOFFICE_CONF'
      OnChange = Query1PER_HEADOFFICE_CONFChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1HEADOFFICE_ACTCOST: TBCDField
      FieldName = 'HEADOFFICE_ACTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_FACTORY_CONF: TBCDField
      FieldName = 'PER_FACTORY_CONF'
      OnChange = Query1PER_HEADOFFICE_CONFChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1FACTORY_ACTCOST: TBCDField
      FieldName = 'FACTORY_ACTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_BUYER_CONF: TBCDField
      FieldName = 'PER_BUYER_CONF'
      OnChange = Query1PER_HEADOFFICE_CONFChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1BUYER_ACTCOST: TBCDField
      FieldName = 'BUYER_ACTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_SUPPLIER_CONF: TBCDField
      FieldName = 'PER_SUPPLIER_CONF'
      OnChange = Query1PER_HEADOFFICE_CONFChange
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1SUPPLIER_ACTCOST: TBCDField
      FieldName = 'SUPPLIER_ACTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1PER_OTHER_CONF: TBCDField
      FieldName = 'PER_OTHER_CONF'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1OTHER_ACTCOST: TBCDField
      FieldName = 'OTHER_ACTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1DEBIT_NO: TWideStringField
      FieldName = 'DEBIT_NO'
    end
    object Query1DEBIT_MESSRS: TWideStringField
      FieldName = 'DEBIT_MESSRS'
      Size = 1000
    end
    object Query1DEBIT_ATTN: TWideStringField
      FieldName = 'DEBIT_ATTN'
      Size = 100
    end
    object Query1DEBIT_AIRFRTCOST: TBCDField
      FieldName = 'DEBIT_AIRFRTCOST'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1DEBIT_CHARGE: TBCDField
      FieldName = 'DEBIT_CHARGE'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1DEBIT_REMARK: TWideStringField
      FieldName = 'DEBIT_REMARK'
      Size = 1000
    end
    object Query1REASONMEMO: TWideStringField
      FieldName = 'REASONMEMO'
      Size = 1000
    end
    object Query1RCODE: TWideStringField
      FieldName = 'RCODE'
      Size = 10
    end
    object Query1RDESC: TWideStringField
      FieldName = 'RDESC'
      Size = 2000
    end
    object Query1MAWB: TWideStringField
      FieldName = 'MAWB'
    end
    object Query1CURRENCY: TWideStringField
      FieldName = 'CURRENCY'
      Size = 30
    end
    object Query1FORWARDERINV: TWideStringField
      FieldName = 'FORWARDERINV'
    end
    object Query1DEBIT_VNDR: TWideStringField
      FieldName = 'DEBIT_VNDR'
      Size = 100
    end
    object Query1ULIST: TWideStringField
      FieldName = 'ULIST'
      Size = 100
    end
    object Query1INVNO: TWideStringField
      FieldName = 'INVNO'
      Size = 50
    end
    object Query1CBM: TFloatField
      FieldName = 'CBM'
      DisplayFormat = '0.00'
    end
    object Query1DEBIT_NO1: TWideStringField
      FieldName = 'DEBIT_NO1'
    end
    object Query1DEBIT_MESSRS1: TWideStringField
      FieldName = 'DEBIT_MESSRS1'
      Size = 1000
    end
    object Query1DEBIT_ATTN1: TWideStringField
      FieldName = 'DEBIT_ATTN1'
      Size = 100
    end
    object Query1DEBIT_AIRFRTCOST1: TBCDField
      FieldName = 'DEBIT_AIRFRTCOST1'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1DEBIT_CHARGE1: TBCDField
      FieldName = 'DEBIT_CHARGE1'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object Query1DEBIT_REMARK1: TWideStringField
      FieldName = 'DEBIT_REMARK1'
      Size = 1000
    end
    object Query1DEBIT_VNDR1: TWideStringField
      FieldName = 'DEBIT_VNDR1'
      Size = 100
    end
    object Query1FTY_SIGNED: TWideStringField
      FieldName = 'FTY_SIGNED'
    end
    object Query1HK_SIGNED: TWideStringField
      FieldName = 'HK_SIGNED'
    end
    object Query1OA_SIGNED: TWideStringField
      FieldName = 'OA_SIGNED'
    end
    object Query1SL01: TFloatField
      FieldName = 'SL01'
      DisplayFormat = '0.00'
    end
    object Query1KB01: TFloatField
      FieldName = 'KB01'
      DisplayFormat = '0.00'
    end
    object Query1FJ01: TFloatField
      FieldName = 'FJ01'
      DisplayFormat = '0.00'
    end
    object Query1SL02: TFloatField
      FieldName = 'SL02'
      DisplayFormat = '0.00'
    end
    object Query1KB02: TFloatField
      FieldName = 'KB02'
      DisplayFormat = '0.00'
    end
    object Query1FJ02: TFloatField
      FieldName = 'FJ02'
      DisplayFormat = '0.00'
    end
    object Query1ISREQUESTED: TBooleanField
      FieldName = 'ISREQUESTED'
    end
    object Query1ISCONFIRMED: TBooleanField
      FieldName = 'ISCONFIRMED'
    end
    object Query1ISACTUALED: TBooleanField
      FieldName = 'ISACTUALED'
    end
    object Query1CL01: TFloatField
      FieldName = 'CL01'
      DisplayFormat = '0.00'
    end
    object Query1CL02: TFloatField
      FieldName = 'CL02'
      DisplayFormat = '0.00'
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_rwo'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
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
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'BCN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CASTL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUSTPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CNAME'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq;seq1;j_no;j2_job;rwo;dseq'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 80
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 112
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnDataChange = DataSource1DataChange
    Left = 144
    Top = 65528
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline1'
    Left = 336
    Top = 65528
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    Left = 368
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 78581
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Air-freight Request Form - Ship Mode Change   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 33338
        mmTop = 5027
        mmWidth = 126736
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From : HKOA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 17992
        mmWidth = 17992
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory :  SL / KB '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 23548
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 30692
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 14023
        mmTop = 30692
        mmWidth = 635
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 30692
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AR#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 107156
        mmTop = 30692
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AFRNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 115888
        mmTop = 30692
        mmWidth = 635
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 172244
        mmTop = 30692
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 30692
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipment Details: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 38100
        mmWidth = 29633
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 18785
        mmLeft = 3440
        mmTop = 42863
        mmWidth = 189971
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 52123
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship Mode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4233
        mmTop = 44715
        mmWidth = 13504
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Flight No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 20373
        mmTop = 44715
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date / Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43392
        mmTop = 43656
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plan '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44979
        mmTop = 48154
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 57679
        mmTop = 48154
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Departure '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 84402
        mmTop = 44715
        mmWidth = 11515
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Port of Loading '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 98161
        mmTop = 44715
        mmWidth = 20024
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Destination '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 123031
        mmTop = 44715
        mmWidth = 14986
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Forwarder '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 144727
        mmTop = 44715
        mmWidth = 13494
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 18785
        mmTop = 42863
        mmWidth = 2646
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
        mmHeight = 18785
        mmLeft = 40746
        mmTop = 42863
        mmWidth = 2646
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
        mmHeight = 18785
        mmLeft = 83608
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 96838
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 119063
        mmTop = 42863
        mmWidth = 2646
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
        mmHeight = 18785
        mmLeft = 138642
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 166688
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40746
        mmTop = 47096
        mmWidth = 28840
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 54769
        mmTop = 47096
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Summary Report: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3440
        mmTop = 64294
        mmWidth = 29337
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 10054
        mmLeft = 3440
        mmTop = 68791
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4498
        mmTop = 70115
        mmWidth = 10414
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24077
        mmTop = 70115
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Clr Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 49742
        mmTop = 70115
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 63236
        mmTop = 70115
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipped'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 63236
        mmTop = 74348
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. of '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 70115
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chargeable '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89694
        mmTop = 70115
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vol Weight '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 74348
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Air freight  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 107950
        mmTop = 70379
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rate '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 107950
        mmTop = 74613
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Other  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 141288
        mmTop = 70115
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Charge '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 141552
        mmTop = 74348
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Deduction '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 156898
        mmTop = 74348
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sea freight  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 156634
        mmTop = 70115
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Air   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175419
        mmTop = 70115
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Freight Cost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 74348
        mmWidth = 16140
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
        mmHeight = 10054
        mmLeft = 23019
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 48419
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 62177
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 107156
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 122238
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 88636
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 155575
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 10054
        mmLeft = 174096
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MAWB#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171980
        mmTop = 44715
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FORWARDERNAME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 139700
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 119592
        mmTop = 53446
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 97631
        mmTop = 53446
        mmWidth = 20638
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ONDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy-MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 84667
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 4498
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VESS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 19315
        mmTop = 53446
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Submission Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 134938
        mmTop = 17992
        mmWidth = 23019
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 17992
        mmWidth = 11113
        BandType = 0
      end
      object pdt001: TppLabel
        UserName = 'pdt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '09-09-09 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 41540
        mmTop = 53446
        mmWidth = 12065
        BandType = 0
      end
      object adt001: TppLabel
        UserName = 'adt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '09-09-09  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 55563
        mmTop = 53446
        mmWidth = 12869
        BandType = 0
      end
      object ptm001: TppLabel
        UserName = 'ptm001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plan '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 41540
        mmTop = 57150
        mmWidth = 6350
        BandType = 0
      end
      object atm001: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 55563
        mmTop = 57150
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MAWB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 167746
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stage Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135202
        mmTop = 30692
        mmWidth = 15875
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'STAGECODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 152400
        mmTop = 30692
        mmWidth = 635
        BandType = 0
      end
      object voyn001: TppLabel
        UserName = 'voyn001'
        HyperlinkColor = clBlue
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
        mmLeft = 54504
        mmTop = 30692
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'pkgs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 74348
        mmWidth = 6879
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
        mmHeight = 10054
        mmLeft = 138907
        mmTop = 68792
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Air freight  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 70379
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 123825
        mmTop = 74613
        mmWidth = 6646
        BandType = 0
      end
      object stgdesc001: TppLabel
        UserName = 'stgdesc001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2921
        mmLeft = 152400
        mmTop = 34660
        mmWidth = 13504
        BandType = 0
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 69586
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Closing '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 70644
        mmTop = 43656
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date/Time  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 70644
        mmTop = 48154
        mmWidth = 12700
        BandType = 0
      end
      object idt001: TppLabel
        UserName = 'idt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '09-09-09  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 70115
        mmTop = 53446
        mmWidth = 12965
        BandType = 0
      end
      object itm001: TppLabel
        UserName = 'itm001'
        HyperlinkColor = clBlue
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
        mmLeft = 70115
        mmTop = 57150
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5027
        mmLeft = 3440
        mmTop = 0
        mmWidth = 189971
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 4233
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 24077
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ACOL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 49742
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 73799
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 87556
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VWGHT1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 106077
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AIRRATE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 121158
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OCHARGE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 154242
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BCHARGE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 172774
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RCHARGE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 191686
        mmTop = 1058
        mmWidth = 550
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 88636
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 107156
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 122238
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 155575
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 174096
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 76200
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 23019
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 48419
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 62177
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 138907
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object x001: TppLabel
        UserName = 'x001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 132864
        mmTop = 1058
        mmWidth = 5249
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 141288
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5027
        mmLeft = 3440
        mmTop = 0
        mmWidth = 189971
        BandType = 7
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 76200
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine32: TppLine
        UserName = 'Line32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 62177
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 88636
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 174096
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 794
        mmWidth = 9525
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
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 59743
        mmTop = 794
        mmWidth = 14605
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
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 76295
        mmTop = 794
        mmWidth = 11811
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
        DataField = 'RCHARGE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 173302
        mmTop = 794
        mmWidth = 19008
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason of ship mode change: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 21431
        mmWidth = 48154
        BandType = 7
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RCODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 4763
        mmTop = 26458
        mmWidth = 550
        BandType = 7
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RDESC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 16669
        mmLeft = 11377
        mmTop = 26458
        mmWidth = 182034
        BandType = 7
      end
      object u001: TppLabel
        UserName = 'u001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prepared by: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 82021
        mmWidth = 16933
        BandType = 7
      end
      object u002: TppLabel
        UserName = 'u002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Confirmed by: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 82021
        mmWidth = 18521
        BandType = 7
      end
      object u003: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Approved by: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 82021
        mmWidth = 17463
        BandType = 7
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 3440
        mmTop = 99219
        mmWidth = 38100
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 100806
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HKOA Manager '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 105304
        mmWidth = 20638
        BandType = 7
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 66675
        mmTop = 99219
        mmWidth = 38100
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 100806
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory GM '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 105304
        mmWidth = 15610
        BandType = 7
      end
      object ppLine37: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 135732
        mmTop = 99219
        mmWidth = 38100
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 100806
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK GM '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 105304
        mmWidth = 10054
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Remarks: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 63236
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REASONMEMO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 12965
        mmLeft = 4233
        mmTop = 68263
        mmWidth = 189177
        BandType = 7
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 107156
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VWGHT1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 89271
        mmTop = 794
        mmWidth = 17357
        BandType = 7
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'For accounts dept use: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 111390
        mmWidth = 37835
        BandType = 7
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5821
        mmLeft = 4498
        mmTop = 115888
        mmWidth = 189177
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Debit to  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 117211
        mmWidth = 11377
        BandType = 7
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 20638
        mmTop = 115888
        mmWidth = 4233
        BandType = 7
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 80698
        mmTop = 115888
        mmWidth = 4233
        BandType = 7
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'D/N #   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 81492
        mmTop = 117211
        mmWidth = 9525
        BandType = 7
      end
      object ppLine41: TppLine
        UserName = 'Line401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 97367
        mmTop = 115888
        mmWidth = 4233
        BandType = 7
      end
      object ppLine42: TppLine
        UserName = 'Line402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 141552
        mmTop = 115888
        mmWidth = 4233
        BandType = 7
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Amount(HKD)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142346
        mmTop = 117211
        mmWidth = 20108
        BandType = 7
      end
      object ppLine43: TppLine
        UserName = 'Line43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 163513
        mmTop = 115888
        mmWidth = 4233
        BandType = 7
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBIT_VNDR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 21960
        mmTop = 117211
        mmWidth = 635
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
        DataField = 'DEBIT_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 98425
        mmTop = 117211
        mmWidth = 635
        BandType = 7
      end
      object damt001: TppLabel
        UserName = 'damt001'
        HyperlinkColor = clBlue
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
        mmLeft = 164836
        mmTop = 117211
        mmWidth = 20108
        BandType = 7
      end
      object ppLine44: TppLine
        UserName = 'Line44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 122238
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine45: TppLine
        UserName = 'Line45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 138907
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppLine46: TppLine
        UserName = 'Line46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 155575
        mmTop = 0
        mmWidth = 2646
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BCHARGE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 154421
        mmTop = 794
        mmWidth = 18881
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OCHARGE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 135647
        mmTop = 794
        mmWidth = 19135
        BandType = 7
      end
      object x002: TppLabel
        UserName = 'x002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 132864
        mmTop = 794
        mmWidth = 5249
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 16669
        mmLeft = 11377
        mmTop = 44186
        mmWidth = 182034
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo3: TppMemo
        UserName = 'Memo3'
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
        Transparent = True
        mmHeight = 16669
        mmLeft = 3440
        mmTop = 123296
        mmWidth = 150019
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 7673
        mmLeft = 4233
        mmTop = 90488
        mmWidth = 25400
        BandType = 7
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 7673
        mmLeft = 67469
        mmTop = 90488
        mmWidth = 25400
        BandType = 7
      end
      object ppImage3: TppImage
        UserName = 'Image3'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 7673
        mmLeft = 136790
        mmTop = 90488
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Freight cost defference on (actual HK$) :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 6350
        mmWidth = 53446
        BandType = 7
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Head office :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 10583
        mmWidth = 18373
        BandType = 7
      end
      object ppDBText36: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'HEADOFFICE_ACTCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 24342
        mmTop = 10583
        mmWidth = 635
        BandType = 7
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 15346
        mmWidth = 13494
        BandType = 7
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FACTORY_ACTCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 19579
        mmTop = 15346
        mmWidth = 20373
        BandType = 7
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 51594
        mmTop = 10583
        mmWidth = 16404
        BandType = 7
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BUYER_ACTCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 69056
        mmTop = 10583
        mmWidth = 635
        BandType = 7
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Supplier :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96309
        mmTop = 10583
        mmWidth = 14288
        BandType = 7
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SUPPLIER_ACTCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 111390
        mmTop = 10583
        mmWidth = 635
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Other :   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 140759
        mmTop = 10583
        mmWidth = 11113
        BandType = 7
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTHER_ACTCOST'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 152400
        mmTop = 10583
        mmWidth = 635
        BandType = 7
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' ( SL: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42069
        mmTop = 15346
        mmWidth = 7673
        BandType = 7
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SL02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 50536
        mmTop = 15346
        mmWidth = 16933
        BandType = 7
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RX: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 98690
        mmTop = 15346
        mmWidth = 5461
        BandType = 7
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KB02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 15346
        mmWidth = 16933
        BandType = 7
      end
      object ppLabel81: TppLabel
        UserName = 'Label801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GG: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3175
        mmLeft = 71702
        mmTop = 15346
        mmWidth = 6085
        BandType = 7
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FJ02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 15346
        mmWidth = 16933
        BandType = 7
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' ) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 153459
        mmTop = 15346
        mmWidth = 2646
        BandType = 7
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CL02'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 134144
        mmTop = 15346
        mmWidth = 16933
        BandType = 7
      end
      object ppLabel83: TppLabel
        UserName = 'Label802'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CL: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 128059
        mmTop = 15346
        mmWidth = 5207
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tbl_pdn_airdtl a,tbl_pdn_shmchgreason b where a.se' +
      'q=77 and a.seq1=1 and a.seq=b.seq and a.seq1=b.seq1'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'CSTYLE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CNAME'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'J_NO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'AIRRATE'
        DataType = ftFloat
      end
      item
        Name = 'OCHARGE'
        DataType = ftFloat
      end
      item
        Name = 'BCHARGE'
        DataType = ftFloat
      end
      item
        Name = 'RCHARGE'
        DataType = ftFloat
      end
      item
        Name = 'VWGHT'
        DataType = ftFloat
      end
      item
        Name = 'VWGHT1'
        DataType = ftFloat
      end
      item
        Name = 'VNDR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VESS'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'LPORT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'SEQ2'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SEQ11'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'MANIFEST'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PER_FACTORY'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_BUYER'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_SUPPLIER'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_OTHER'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'REASONTYPE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PER_HEADOFFICE'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'STAGECODE'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'AFRNO'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FORWARDERNAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DELIVERYTERM'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ESTFRTRATE'
        DataType = ftBCD
        Precision = 15
        Size = 4
      end
      item
        Name = 'ACTFRTRATE'
        DataType = ftBCD
        Precision = 15
        Size = 4
      end
      item
        Name = 'ESTTTLFRTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'ACTTTLFRTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'ACTVOLWEIGHT'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'APPUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'APPTIME'
        DataType = ftDateTime
      end
      item
        Name = 'ACTUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ACTTIME'
        DataType = ftDateTime
      end
      item
        Name = 'NOTICEUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'NOTICETIME'
        DataType = ftDateTime
      end
      item
        Name = 'NOTICECODE'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBITUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBITTIME'
        DataType = ftDateTime
      end
      item
        Name = 'ACTEDUSER'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ACTEDTIME'
        DataType = ftDateTime
      end
      item
        Name = 'PER_HEADOFFICE_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'HEADOFFICE_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_FACTORY_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'FACTORY_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_BUYER_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'BUYER_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_SUPPLIER_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'SUPPLIER_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_OTHER_CONF'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'OTHER_ACTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBIT_MESSRS'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'DEBIT_ATTN'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEBIT_AIRFRTCOST'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_CHARGE'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_REMARK'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'REASONMEMO'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'RCODE'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RDESC'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'MAWB'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ISREQUESTED'
        DataType = ftBoolean
      end
      item
        Name = 'ISCONFIRMED'
        DataType = ftBoolean
      end
      item
        Name = 'ISACTUALED'
        DataType = ftBoolean
      end
      item
        Name = 'CURRENCY'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'FORWARDERINV'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBIT_VNDR'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ULIST'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'INVNO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CBM1'
        DataType = ftFloat
      end
      item
        Name = 'DEBIT_NO1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'DEBIT_MESSRS1'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'DEBIT_ATTN1'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEBIT_AIRFRTCOST1'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_CHARGE1'
        DataType = ftBCD
        Precision = 15
        Size = 2
      end
      item
        Name = 'DEBIT_REMARK1'
        DataType = ftWideString
        Size = 1000
      end
      item
        Name = 'DEBIT_VNDR1'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FTY_SIGNED'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'HK_SIGNED'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'OA_SIGNED'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SL01'
        DataType = ftFloat
      end
      item
        Name = 'KB01'
        DataType = ftFloat
      end
      item
        Name = 'FJ01'
        DataType = ftFloat
      end
      item
        Name = 'SL02'
        DataType = ftFloat
      end
      item
        Name = 'KB02'
        DataType = ftFloat
      end
      item
        Name = 'FJ02'
        DataType = ftFloat
      end
      item
        Name = 'CL01'
        DataType = ftFloat
      end
      item
        Name = 'CL02'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq;seq1;j_no;j2_job;rwo;dseq'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 272
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = Query4
    OnDataChange = DataSource1DataChange
    Left = 304
    Top = 65528
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 400
    Top = 65528
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 63500
      mmPrintPosition = 0
      object ppLabel56: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Air-freight Request Form - Ship Mode Change   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 33338
        mmTop = 5027
        mmWidth = 126736
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'From : HKOA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 17992
        mmWidth = 17992
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory :  SL / KB '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 23548
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 30692
        mmWidth = 9260
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 14023
        mmTop = 30692
        mmWidth = 635
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 30692
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AR#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 109273
        mmTop = 30692
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText27: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AFRNO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 118004
        mmTop = 30692
        mmWidth = 635
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 30692
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 182298
        mmTop = 30692
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipment Details: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 38100
        mmWidth = 29633
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape1'
        mmHeight = 18785
        mmLeft = 3440
        mmTop = 42863
        mmWidth = 189971
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 52123
        mmWidth = 189971
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship Mode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4233
        mmTop = 44715
        mmWidth = 13504
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Flight No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 20373
        mmTop = 44715
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date / Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 43656
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plan '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 44715
        mmTop = 48154
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56621
        mmTop = 48154
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Departure '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 83873
        mmTop = 44715
        mmWidth = 11515
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Port of Loading '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 98161
        mmTop = 44715
        mmWidth = 20024
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Destination '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 123031
        mmTop = 44715
        mmWidth = 14986
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Forwarder '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 44715
        mmWidth = 13494
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 18785
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 40746
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 82815
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 96838
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 119063
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine53: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 138642
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 166688
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLine55: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40746
        mmTop = 47096
        mmWidth = 27517
        BandType = 0
      end
      object ppLine56: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14552
        mmLeft = 54504
        mmTop = 47096
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MAWB#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171715
        mmTop = 44715
        mmWidth = 12171
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FORWARDERNAME'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 139436
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6858
        mmLeft = 119592
        mmTop = 53446
        mmWidth = 18785
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText17'
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6604
        mmLeft = 97896
        mmTop = 53446
        mmWidth = 20638
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ONDT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'yy-MM-dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 84138
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 4498
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VESS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 19315
        mmTop = 53446
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Submission Date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 134938
        mmTop = 17992
        mmWidth = 23019
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 159544
        mmTop = 17992
        mmWidth = 11113
        BandType = 0
      end
      object pdt002: TppLabel
        UserName = 'pdt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '09-09-09 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 41540
        mmTop = 53446
        mmWidth = 12065
        BandType = 0
      end
      object adt002: TppLabel
        UserName = 'adt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '09-09-09 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 55298
        mmTop = 53446
        mmWidth = 12065
        BandType = 0
      end
      object ptm002: TppLabel
        UserName = 'ptm002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plan '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 41540
        mmTop = 57150
        mmWidth = 6350
        BandType = 0
      end
      object atm002: TppLabel
        UserName = 'atm002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 55298
        mmTop = 57150
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MAWB'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 167482
        mmTop = 54769
        mmWidth = 635
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Stage Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 137319
        mmTop = 30692
        mmWidth = 15748
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'STAGECODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 154517
        mmTop = 30692
        mmWidth = 635
        BandType = 0
      end
      object voyn002: TppLabel
        UserName = 'voyn002'
        HyperlinkColor = clBlue
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
        mmLeft = 54504
        mmTop = 30692
        mmWidth = 13758
        BandType = 0
      end
      object stgdesc002: TppLabel
        UserName = 'stgdesc002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 154517
        mmTop = 34660
        mmWidth = 11811
        BandType = 0
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 18785
        mmLeft = 68263
        mmTop = 42863
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Closing  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 69056
        mmTop = 43656
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date / Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 69056
        mmTop = 47890
        mmWidth = 12700
        BandType = 0
      end
      object idt002: TppLabel
        UserName = 'idt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '09-09-09 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 68792
        mmTop = 53446
        mmWidth = 12171
        BandType = 0
      end
      object itm002: TppLabel
        UserName = 'itm002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 68792
        mmTop = 57150
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine57: TppLine
        UserName = 'Line57'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 529
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 127794
      mmPrintPosition = 0
      object ppLabel103: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reason of ship mode change: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 3440
        mmTop = 2117
        mmWidth = 48175
        BandType = 7
      end
      object ppDBText46: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RCODE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 4763
        mmTop = 7144
        mmWidth = 550
        BandType = 7
      end
      object ppDBText47: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RDESC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 21960
        mmLeft = 11377
        mmTop = 7144
        mmWidth = 182034
        BandType = 7
      end
      object u004: TppLabel
        UserName = 'u004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prepared by: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 67998
        mmWidth = 16933
        BandType = 7
      end
      object u005: TppLabel
        UserName = 'u005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Confirmed by: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 67998
        mmWidth = 18521
        BandType = 7
      end
      object u006: TppLabel
        UserName = 'u006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Approved by: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 67998
        mmWidth = 17463
        BandType = 7
      end
      object ppLine81: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 3440
        mmTop = 86784
        mmWidth = 38100
        BandType = 7
      end
      object ppLabel107: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 88371
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel108: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HKOA Manager '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 92869
        mmWidth = 20638
        BandType = 7
      end
      object ppLine82: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 66675
        mmTop = 86784
        mmWidth = 38100
        BandType = 7
      end
      object ppLabel109: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 88371
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel110: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory GM '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 92869
        mmWidth = 15610
        BandType = 7
      end
      object ppLine83: TppLine
        UserName = 'Line37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 135732
        mmTop = 86784
        mmWidth = 38100
        BandType = 7
      end
      object ppLabel111: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 88371
        mmWidth = 7673
        BandType = 7
      end
      object ppLabel112: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HK GM '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 92869
        mmWidth = 10054
        BandType = 7
      end
      object ppLabel113: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Remarks: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 49213
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText48: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REASONMEMO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 12965
        mmLeft = 4233
        mmTop = 54240
        mmWidth = 189177
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'For accounts dept use: - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 3440
        mmTop = 101600
        mmWidth = 37835
        BandType = 7
      end
      object ppShape10: TppShape
        UserName = 'Shape5'
        mmHeight = 5821
        mmLeft = 4233
        mmTop = 106098
        mmWidth = 189177
        BandType = 7
      end
      object ppLabel115: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Debit to  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 107421
        mmWidth = 11377
        BandType = 7
      end
      object ppLine85: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 20373
        mmTop = 106098
        mmWidth = 4233
        BandType = 7
      end
      object ppLine86: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 80433
        mmTop = 106098
        mmWidth = 4233
        BandType = 7
      end
      object ppLabel116: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'D/N #   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 81227
        mmTop = 107421
        mmWidth = 9525
        BandType = 7
      end
      object ppLine87: TppLine
        UserName = 'Line401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 97102
        mmTop = 106098
        mmWidth = 4233
        BandType = 7
      end
      object ppLine88: TppLine
        UserName = 'Line402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 141288
        mmTop = 106098
        mmWidth = 4233
        BandType = 7
      end
      object ppLabel117: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Amount(HKD)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142082
        mmTop = 107421
        mmWidth = 20108
        BandType = 7
      end
      object ppLine89: TppLine
        UserName = 'Line43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 163248
        mmTop = 106098
        mmWidth = 4233
        BandType = 7
      end
      object ppDBText49: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBIT_VNDR'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 21696
        mmTop = 107421
        mmWidth = 635
        BandType = 7
      end
      object ppDBText50: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBIT_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 98161
        mmTop = 107421
        mmWidth = 635
        BandType = 7
      end
      object damt002: TppLabel
        UserName = 'damt002'
        HyperlinkColor = clBlue
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
        mmLeft = 164571
        mmTop = 107421
        mmWidth = 20108
        BandType = 7
      end
      object Memo2: TppMemo
        UserName = 'Memo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 16669
        mmLeft = 11377
        mmTop = 30163
        mmWidth = 182034
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo2: TppMemo
        UserName = 'Memo1'
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
        Transparent = True
        mmHeight = 14023
        mmLeft = 3704
        mmTop = 112713
        mmWidth = 137584
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppImage4: TppImage
        UserName = 'Image4'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 7673
        mmLeft = 4233
        mmTop = 78052
        mmWidth = 25400
        BandType = 7
      end
      object ppImage5: TppImage
        UserName = 'Image5'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 7673
        mmLeft = 67469
        mmTop = 78052
        mmWidth = 25400
        BandType = 7
      end
      object ppImage6: TppImage
        UserName = 'Image6'
        AlignHorizontal = ahLeft
        AlignVertical = avTop
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 7673
        mmLeft = 136525
        mmTop = 78052
        mmWidth = 25400
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
