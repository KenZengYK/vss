object frmxgcm: Tfrmxgcm
  Left = 196
  Top = 107
  Width = 321
  Height = 276
  Caption = #21152#23610#30908#23565#25033'/Add Corresp. Size'
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
    Left = 24
    Top = 24
    Width = 113
    Height = 26
    Alignment = taRightJustify
    AutoSize = False
    Caption = #22044#26550#35215#21123#24037#21934#34399':'#13#10'Marker Planning Job #'
  end
  object Label2: TLabel
    Left = 24
    Top = 59
    Width = 113
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #27454#34399'/Style#:'
  end
  object Label3: TLabel
    Left = 24
    Top = 91
    Width = 113
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = #21046#21934#23610#30908'/WO Sz:'
  end
  object Label4: TLabel
    Left = 24
    Top = 123
    Width = 114
    Height = 26
    Alignment = taRightJustify
    AutoSize = False
    Caption = #32299#21512#23610#30908#22044':'#13#10'Sewing Sz LBL'
  end
  object Label5: TLabel
    Left = 24
    Top = 158
    Width = 114
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = #32025#27171#23610#30908'/Pattern Sz:'
  end
  object Edit1: TEdit
    Left = 144
    Top = 20
    Width = 145
    Height = 21
    Color = 11795962
    ReadOnly = True
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 54
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Visible = False
    OnEnter = ComboBox1Enter
  end
  object ComboBox2: TComboBox
    Left = 144
    Top = 86
    Width = 65
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Visible = False
    OnEnter = ComboBox2Enter
  end
  object Edit2: TEdit
    Left = 144
    Top = 119
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 192
    Width = 89
    Height = 33
    Caption = #30906#23450'/Cfm'
    ModalResult = 1
    TabOrder = 5
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
    Left = 200
    Top = 192
    Width = 89
    Height = 33
    Cancel = True
    Caption = #21462#28040'/CxL'
    ModalResult = 2
    TabOrder = 6
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object Edit3: TEdit
    Left = 144
    Top = 54
    Width = 145
    Height = 21
    Color = 11795962
    ReadOnly = True
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 144
    Top = 86
    Width = 65
    Height = 21
    Color = 11795962
    ReadOnly = True
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 144
    Top = 154
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 4
  end
  object query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 112
    Top = 192
  end
  object query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 192
  end
  object query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 176
    Top = 192
  end
end
