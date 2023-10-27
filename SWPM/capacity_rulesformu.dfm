object frmcapacity_rules: Tfrmcapacity_rules
  Left = 192
  Top = 114
  Width = 641
  Height = 467
  Caption = 'Capacity Planning  - Basic Rules Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label23: TLabel
    Left = 29
    Top = 304
    Width = 555
    Height = 39
    Caption = 
      'PS:  PPC do not need to input factory capacity by customer, only' +
      ' need to confirm the default LW calendar + OT3, '#13#10'        ratio ' +
      'for B/K/U, W/A SAH for B/K/U, W/A Eff% for B/K/U and so on, syst' +
      'em will auto-calculate the total factory '#13#10'        capacity (SAH' +
      '), and divided by W/A SAH into Quantity  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 24
    Width = 281
    Height = 129
    Caption = 'Sect Hrs by week'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 119
      Height = 13
      Caption = 'General (N1+N2+OT1): - '
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 146
      Height = 13
      Caption = 'General (N1+N2+OT1+OT2): - '
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 33
      Height = 13
      Caption = 'OT3: - '
    end
    object Label4: TLabel
      Left = 240
      Top = 24
      Width = 17
      Height = 13
      Caption = 'hrs '
    end
    object Label5: TLabel
      Left = 240
      Top = 48
      Width = 17
      Height = 13
      Caption = 'hrs '
    end
    object Label6: TLabel
      Left = 240
      Top = 72
      Width = 17
      Height = 13
      Caption = 'hrs '
    end
    object Label13: TLabel
      Left = 16
      Top = 104
      Width = 144
      Height = 13
      Caption = 'Should base on LW calendar  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 176
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '120'
    end
    object Edit2: TEdit
      Left = 176
      Top = 48
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '128'
    end
    object Edit3: TEdit
      Left = 176
      Top = 72
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '12'
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 160
    Width = 281
    Height = 129
    Caption = 'Def Eff %'
    TabOrder = 2
    object Label7: TLabel
      Left = 16
      Top = 24
      Width = 71
      Height = 13
      Caption = 'New Style(s): - '
    end
    object Label8: TLabel
      Left = 16
      Top = 48
      Width = 71
      Height = 13
      Caption = 'Flow Style(s): - '
    end
    object Label9: TLabel
      Left = 16
      Top = 72
      Width = 95
      Height = 13
      Caption = 'Associate Style(s): - '
    end
    object Label10: TLabel
      Left = 208
      Top = 24
      Width = 11
      Height = 13
      Caption = '% '
    end
    object Label11: TLabel
      Left = 208
      Top = 48
      Width = 11
      Height = 13
      Caption = '% '
    end
    object Label12: TLabel
      Left = 208
      Top = 72
      Width = 11
      Height = 13
      Caption = '% '
    end
    object Label14: TLabel
      Left = 13
      Top = 104
      Width = 171
      Height = 13
      Caption = 'Should base on customer and style  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 240
      Top = 48
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
    end
    object Edit4: TEdit
      Left = 144
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '60'
    end
    object Edit5: TEdit
      Left = 144
      Top = 48
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '90'
    end
    object Edit6: TEdit
      Left = 144
      Top = 72
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '80'
    end
  end
  object GroupBox3: TGroupBox
    Left = 320
    Top = 24
    Width = 281
    Height = 129
    Caption = 'WF'
    TabOrder = 1
    object Label15: TLabel
      Left = 16
      Top = 24
      Width = 77
      Height = 13
      Caption = 'Line(s) for Bra: - '
    end
    object Label16: TLabel
      Left = 16
      Top = 48
      Width = 97
      Height = 13
      Caption = 'Line(s) for Knicker: - '
    end
    object Label17: TLabel
      Left = 16
      Top = 72
      Width = 113
      Height = 13
      Caption = 'Line(s) for Underwear: - '
    end
    object Label18: TLabel
      Left = 240
      Top = 24
      Width = 25
      Height = 13
      Caption = 'WFs '
    end
    object Label19: TLabel
      Left = 240
      Top = 48
      Width = 25
      Height = 13
      Caption = 'WFs '
    end
    object Label20: TLabel
      Left = 240
      Top = 72
      Width = 25
      Height = 13
      Caption = 'WFs '
    end
    object Label21: TLabel
      Left = 16
      Top = 104
      Width = 130
      Height = 13
      Caption = 'Should base on line profile  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit7: TEdit
      Left = 176
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '25'
    end
    object Edit8: TEdit
      Left = 176
      Top = 48
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '18'
    end
    object Edit9: TEdit
      Left = 176
      Top = 72
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '25'
    end
  end
  object GroupBox4: TGroupBox
    Left = 320
    Top = 160
    Width = 281
    Height = 129
    Caption = 'Others'
    TabOrder = 3
    object Label22: TLabel
      Left = 16
      Top = 24
      Width = 50
      Height = 13
      Caption = '1. CU %: - '
    end
    object Label25: TLabel
      Left = 240
      Top = 24
      Width = 14
      Height = 13
      Caption = '%  '
    end
    object Label24: TLabel
      Left = 16
      Top = 56
      Width = 243
      Height = 13
      Caption = '2. Driven back T3 date based on  customer profile  '
    end
    object Edit10: TEdit
      Left = 176
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '97'
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 376
    Width = 73
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 4
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
    Left = 104
    Top = 376
    Width = 73
    Height = 25
    TabOrder = 5
    Kind = bkClose
  end
end
