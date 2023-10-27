object frmganotepad: Tfrmganotepad
  Left = 192
  Top = 114
  Width = 737
  Height = 491
  Caption = 'GA Notepad - Explanation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -8
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 16
    Top = 24
    Width = 537
    Height = 49
  end
  object Label1: TLabel
    Left = 136
    Top = 32
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label2: TLabel
    Left = 136
    Top = 48
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label3: TLabel
    Left = 424
    Top = 32
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label4: TLabel
    Left = 424
    Top = 48
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Bevel2: TBevel
    Left = 16
    Top = 80
    Width = 697
    Height = 225
  end
  object Label5: TLabel
    Left = 24
    Top = 88
    Width = 36
    Height = 13
    Caption = #25928#29575#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 128
    Width = 60
    Height = 13
    Caption = #24120#35211#21407#22240#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 232
    Top = 144
    Width = 12
    Height = 13
    Caption = #20154
  end
  object Label8: TLabel
    Left = 288
    Top = 144
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label9: TLabel
    Left = 184
    Top = 176
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label10: TLabel
    Left = 184
    Top = 192
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label11: TLabel
    Left = 184
    Top = 208
    Width = 12
    Height = 13
    Caption = #33274
  end
  object Label12: TLabel
    Left = 240
    Top = 208
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label13: TLabel
    Left = 184
    Top = 224
    Width = 12
    Height = 13
    Caption = #20154
  end
  object Label14: TLabel
    Left = 240
    Top = 224
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label15: TLabel
    Left = 544
    Top = 168
    Width = 12
    Height = 13
    Caption = #20154
  end
  object Label16: TLabel
    Left = 600
    Top = 168
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label17: TLabel
    Left = 544
    Top = 184
    Width = 12
    Height = 13
    Caption = #20154
  end
  object Label18: TLabel
    Left = 600
    Top = 184
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label19: TLabel
    Left = 600
    Top = 208
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label20: TLabel
    Left = 600
    Top = 224
    Width = 24
    Height = 13
    Caption = #31680#26178
  end
  object Label21: TLabel
    Left = 24
    Top = 264
    Width = 60
    Height = 13
    Caption = #20854#23427#21407#22240#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 16
    Top = 312
    Width = 697
    Height = 81
  end
  object Label22: TLabel
    Left = 24
    Top = 320
    Width = 36
    Height = 13
    Caption = #20633#27880#65306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label23: TLabel
    Left = 256
    Top = 416
    Width = 3
    Height = 13
    Visible = False
  end
  object n01: TCheckBox
    Left = 24
    Top = 32
    Width = 81
    Height = 17
    Caption = #30070#20540#31680#26178
    TabOrder = 0
  end
  object ne01: TEdit
    Left = 96
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 1
  end
  object n02: TCheckBox
    Left = 24
    Top = 48
    Width = 81
    Height = 17
    Caption = #26089#26371
    TabOrder = 2
  end
  object ne02: TEdit
    Left = 96
    Top = 48
    Width = 33
    Height = 21
    TabOrder = 3
  end
  object n03: TCheckBox
    Left = 336
    Top = 32
    Width = 81
    Height = 17
    Caption = #36681#33394
    TabOrder = 4
  end
  object ne03: TEdit
    Left = 384
    Top = 32
    Width = 33
    Height = 21
    TabOrder = 5
  end
  object n04: TCheckBox
    Left = 336
    Top = 48
    Width = 81
    Height = 17
    Caption = #36681#27454
    TabOrder = 6
  end
  object ne04: TEdit
    Left = 384
    Top = 48
    Width = 33
    Height = 21
    TabOrder = 7
  end
  object y01: TCheckBox
    Left = 24
    Top = 104
    Width = 81
    Height = 17
    Caption = #20559#39640
    TabOrder = 8
    OnClick = y01Click
  end
  object y02: TCheckBox
    Left = 296
    Top = 104
    Width = 81
    Height = 17
    Caption = #20559#20302
    TabOrder = 9
    OnClick = y01Click
  end
  object y03: TCheckBox
    Left = 536
    Top = 104
    Width = 81
    Height = 17
    Caption = #28961#29986#37327
    TabOrder = 10
    OnClick = y01Click
  end
  object cy01: TCheckBox
    Left = 40
    Top = 144
    Width = 149
    Height = 17
    Caption = #27231#21729'/'#20854#20182#25289#21729#33256#26178#24171#24037
    TabOrder = 11
  end
  object cye01: TEdit
    Left = 192
    Top = 144
    Width = 33
    Height = 21
    TabOrder = 12
  end
  object cye02: TEdit
    Left = 248
    Top = 144
    Width = 33
    Height = 21
    TabOrder = 13
  end
  object cy02: TCheckBox
    Left = 40
    Top = 160
    Width = 149
    Height = 17
    Caption = #21069#24037#24207#24171#21518#24037#24207#21098#32218
    TabOrder = 14
  end
  object cy03: TCheckBox
    Left = 40
    Top = 176
    Width = 104
    Height = 17
    Caption = #27424#35009#29255#20379#25033
    TabOrder = 15
  end
  object cye03: TEdit
    Left = 144
    Top = 176
    Width = 33
    Height = 21
    TabOrder = 16
  end
  object cy04: TCheckBox
    Left = 40
    Top = 192
    Width = 104
    Height = 17
    Caption = #27424#21103#26009#20379#25033
    TabOrder = 17
  end
  object cye04: TEdit
    Left = 144
    Top = 192
    Width = 33
    Height = 21
    TabOrder = 18
  end
  object cy05: TCheckBox
    Left = 40
    Top = 208
    Width = 104
    Height = 17
    Caption = #20462#36554#24433#38911
    TabOrder = 19
  end
  object cye05: TEdit
    Left = 144
    Top = 208
    Width = 33
    Height = 21
    TabOrder = 20
  end
  object cye06: TEdit
    Left = 200
    Top = 208
    Width = 33
    Height = 21
    TabOrder = 21
  end
  object cy06: TCheckBox
    Left = 40
    Top = 224
    Width = 104
    Height = 17
    Caption = #25214#26039#37341
    TabOrder = 22
  end
  object cye07: TEdit
    Left = 144
    Top = 224
    Width = 33
    Height = 21
    TabOrder = 23
  end
  object cye08: TEdit
    Left = 200
    Top = 224
    Width = 33
    Height = 21
    TabOrder = 24
  end
  object cy07: TCheckBox
    Left = 400
    Top = 144
    Width = 153
    Height = 17
    Caption = #25289#21729#23565#35442#27454#24335#26222#36941#29087#32244
    TabOrder = 25
  end
  object cy08: TCheckBox
    Left = 400
    Top = 168
    Width = 81
    Height = 17
    Caption = #32763#26597'/'#36820#24037
    TabOrder = 26
  end
  object cye09: TEdit
    Left = 504
    Top = 168
    Width = 33
    Height = 21
    TabOrder = 27
  end
  object cye10: TEdit
    Left = 560
    Top = 168
    Width = 33
    Height = 21
    TabOrder = 28
  end
  object cy09: TCheckBox
    Left = 400
    Top = 184
    Width = 104
    Height = 17
    Caption = #24037#20154#35531#20551'/'#32570#24109
    TabOrder = 29
  end
  object cye11: TEdit
    Left = 504
    Top = 184
    Width = 33
    Height = 21
    TabOrder = 30
  end
  object cye12: TEdit
    Left = 560
    Top = 184
    Width = 33
    Height = 21
    TabOrder = 31
  end
  object cy10: TCheckBox
    Left = 400
    Top = 208
    Width = 97
    Height = 17
    Caption = #20027#26009#21697#36074#21839#38988
    TabOrder = 32
  end
  object cy11: TCheckBox
    Left = 400
    Top = 224
    Width = 97
    Height = 17
    Caption = #21103#26009#21697#36074#21839#38988
    TabOrder = 33
  end
  object cye14: TEdit
    Left = 560
    Top = 224
    Width = 33
    Height = 21
    TabOrder = 34
  end
  object cye13: TEdit
    Left = 560
    Top = 208
    Width = 33
    Height = 21
    TabOrder = 35
  end
  object oye01: TEdit
    Left = 24
    Top = 280
    Width = 185
    Height = 21
    TabOrder = 36
  end
  object oye02: TEdit
    Left = 272
    Top = 280
    Width = 185
    Height = 21
    TabOrder = 37
  end
  object oye03: TEdit
    Left = 520
    Top = 280
    Width = 185
    Height = 21
    TabOrder = 38
  end
  object me01: TMemo
    Left = 24
    Top = 336
    Width = 681
    Height = 49
    TabOrder = 39
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 408
    Width = 73
    Height = 25
    Caption = #20445#23384
    TabOrder = 40
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
      2222200000000002222203300007030222220330000703000222033000000303
      0222033333333303000203300000330303020307777703030302030777770303
      0302030777770003030203077777070303020000000000000302220307777707
      0302220000000000000222220307777707022222000000000002}
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 408
    Width = 73
    Height = 25
    Caption = #36864#20986
    TabOrder = 41
    Kind = bkClose
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 24
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
    Top = 65528
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 65528
  end
end
