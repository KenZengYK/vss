object frmnewcap_wfdetail: Tfrmnewcap_wfdetail
  Left = 163
  Top = 116
  Width = 745
  Height = 675
  Caption = 'DHL of Line WF - Control and Maintain (Detail)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label55: TLabel
    Left = 24
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Factory: '
  end
  object Label56: TLabel
    Left = 184
    Top = 16
    Width = 29
    Height = 13
    Caption = 'Date: '
  end
  object GroupBox1: TGroupBox
    Left = 256
    Top = 48
    Width = 225
    Height = 545
    Caption = 'On-duty WF (+/-)'
    TabOrder = 0
    object Bevel2: TBevel
      Left = 8
      Top = 24
      Width = 209
      Height = 241
    end
    object Bevel5: TBevel
      Left = 8
      Top = 280
      Width = 209
      Height = 201
    end
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 73
      Height = 13
      Caption = 'Hand Worker : '
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 53
      Height = 13
      Caption = 'Inspector:  '
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 54
      Height = 13
      Caption = 'Machinist:  '
    end
    object Label4: TLabel
      Left = 120
      Top = 32
      Width = 74
      Height = 13
      Caption = 'Stationed WF : '
    end
    object Label5: TLabel
      Left = 120
      Top = 72
      Width = 60
      Height = 13
      Caption = 'Mobile WF:  '
    end
    object Label6: TLabel
      Left = 120
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Floater:  '
    end
    object Label7: TLabel
      Left = 120
      Top = 152
      Width = 67
      Height = 13
      Caption = 'Specific WF:  '
    end
    object Label8: TLabel
      Left = 120
      Top = 192
      Width = 94
      Height = 13
      Caption = 'Apprentice (if any):  '
    end
    object Label9: TLabel
      Left = 96
      Top = 456
      Width = 30
      Height = 13
      Caption = 'Total: '
    end
    object Label19: TLabel
      Left = 40
      Top = 520
      Width = 93
      Height = 13
      Caption = 'Total On-duty WF : '
    end
    object Label39: TLabel
      Left = 16
      Top = 288
      Width = 73
      Height = 13
      Caption = 'Hand Worker : '
    end
    object Label40: TLabel
      Left = 16
      Top = 328
      Width = 53
      Height = 13
      Caption = 'Inspector:  '
    end
    object Label41: TLabel
      Left = 16
      Top = 368
      Width = 54
      Height = 13
      Caption = 'Machinist:  '
    end
    object Label42: TLabel
      Left = 120
      Top = 288
      Width = 74
      Height = 13
      Caption = 'Stationed WF : '
    end
    object Label43: TLabel
      Left = 120
      Top = 328
      Width = 60
      Height = 13
      Caption = 'Mobile WF:  '
    end
    object Label44: TLabel
      Left = 120
      Top = 368
      Width = 41
      Height = 13
      Caption = 'Floater:  '
    end
    object Label45: TLabel
      Left = 120
      Top = 408
      Width = 67
      Height = 13
      Caption = 'Specific WF:  '
    end
    object Label57: TLabel
      Left = 96
      Top = 240
      Width = 30
      Height = 13
      Caption = 'Total: '
    end
    object Label59: TLabel
      Left = 16
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Assembly Line'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label60: TLabel
      Left = 16
      Top = 272
      Width = 46
      Height = 13
      Caption = 'Core-tech'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label64: TLabel
      Left = 88
      Top = 488
      Width = 36
      Height = 13
      Caption = 'Trainee'
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 48
      Width = 73
      Height = 21
      DataField = 'D01'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 88
      Width = 73
      Height = 21
      DataField = 'D02'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 128
      Width = 73
      Height = 21
      DataField = 'D03'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 136
      Top = 48
      Width = 73
      Height = 21
      DataField = 'D11'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 136
      Top = 88
      Width = 73
      Height = 21
      DataField = 'D12'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 136
      Top = 128
      Width = 73
      Height = 21
      DataField = 'D13'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 136
      Top = 168
      Width = 73
      Height = 21
      DataField = 'D14'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 136
      Top = 208
      Width = 73
      Height = 21
      DataField = 'D15'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 136
      Top = 456
      Width = 73
      Height = 21
      DataField = 'D16'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 8
    end
    object DBEdit19: TDBEdit
      Left = 136
      Top = 520
      Width = 73
      Height = 21
      Color = 12778745
      DataField = 'ONDUTYWF'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 9
    end
    object DBEdit39: TDBEdit
      Left = 32
      Top = 304
      Width = 73
      Height = 21
      DataField = 'DC01'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 10
    end
    object DBEdit40: TDBEdit
      Left = 32
      Top = 344
      Width = 73
      Height = 21
      DataField = 'DC02'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 11
    end
    object DBEdit41: TDBEdit
      Left = 32
      Top = 384
      Width = 73
      Height = 21
      DataField = 'DC03'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 12
    end
    object DBEdit42: TDBEdit
      Left = 136
      Top = 304
      Width = 73
      Height = 21
      DataField = 'DC04'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 13
    end
    object DBEdit43: TDBEdit
      Left = 136
      Top = 344
      Width = 73
      Height = 21
      DataField = 'DC05'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 14
    end
    object DBEdit44: TDBEdit
      Left = 136
      Top = 384
      Width = 73
      Height = 21
      DataField = 'DC06'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 15
    end
    object DBEdit45: TDBEdit
      Left = 136
      Top = 424
      Width = 73
      Height = 21
      DataField = 'DC07'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 16
    end
    object DBEdit46: TDBEdit
      Left = 136
      Top = 240
      Width = 73
      Height = 21
      Color = 12778745
      DataField = 'DT01'
      DataSource = frmnewcap_wf.DataSource1
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit58: TDBEdit
      Left = 136
      Top = 488
      Width = 73
      Height = 21
      DataField = 'TD01'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 18
    end
  end
  object GroupBox2: TGroupBox
    Left = 488
    Top = 48
    Width = 225
    Height = 545
    Caption = 'On-hand WF (+/-)'
    TabOrder = 1
    object Bevel3: TBevel
      Left = 8
      Top = 24
      Width = 209
      Height = 241
    end
    object Bevel6: TBevel
      Left = 8
      Top = 280
      Width = 209
      Height = 201
    end
    object Label10: TLabel
      Left = 16
      Top = 32
      Width = 73
      Height = 13
      Caption = 'Hand Worker : '
    end
    object Label11: TLabel
      Left = 16
      Top = 72
      Width = 53
      Height = 13
      Caption = 'Inspector:  '
    end
    object Label12: TLabel
      Left = 16
      Top = 112
      Width = 54
      Height = 13
      Caption = 'Machinist:  '
    end
    object Label13: TLabel
      Left = 120
      Top = 32
      Width = 74
      Height = 13
      Caption = 'Stationed WF : '
    end
    object Label14: TLabel
      Left = 120
      Top = 72
      Width = 60
      Height = 13
      Caption = 'Mobile WF:  '
    end
    object Label15: TLabel
      Left = 120
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Floater:  '
    end
    object Label16: TLabel
      Left = 120
      Top = 152
      Width = 67
      Height = 13
      Caption = 'Specific WF:  '
    end
    object Label17: TLabel
      Left = 120
      Top = 192
      Width = 94
      Height = 13
      Caption = 'Apprentice (if any):  '
    end
    object Label18: TLabel
      Left = 96
      Top = 456
      Width = 30
      Height = 13
      Caption = 'Total: '
    end
    object Label20: TLabel
      Left = 40
      Top = 520
      Width = 97
      Height = 13
      Caption = 'Total On-hand WF : '
    end
    object Label47: TLabel
      Left = 16
      Top = 288
      Width = 73
      Height = 13
      Caption = 'Hand Worker : '
    end
    object Label48: TLabel
      Left = 16
      Top = 328
      Width = 53
      Height = 13
      Caption = 'Inspector:  '
    end
    object Label49: TLabel
      Left = 16
      Top = 368
      Width = 54
      Height = 13
      Caption = 'Machinist:  '
    end
    object Label50: TLabel
      Left = 120
      Top = 288
      Width = 74
      Height = 13
      Caption = 'Stationed WF : '
    end
    object Label51: TLabel
      Left = 120
      Top = 328
      Width = 60
      Height = 13
      Caption = 'Mobile WF:  '
    end
    object Label52: TLabel
      Left = 120
      Top = 368
      Width = 41
      Height = 13
      Caption = 'Floater:  '
    end
    object Label53: TLabel
      Left = 120
      Top = 408
      Width = 67
      Height = 13
      Caption = 'Specific WF:  '
    end
    object Label58: TLabel
      Left = 96
      Top = 240
      Width = 30
      Height = 13
      Caption = 'Total: '
    end
    object Label61: TLabel
      Left = 16
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Assembly Line'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label62: TLabel
      Left = 16
      Top = 272
      Width = 46
      Height = 13
      Caption = 'Core-tech'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label65: TLabel
      Left = 88
      Top = 488
      Width = 36
      Height = 13
      Caption = 'Trainee'
    end
    object DBEdit10: TDBEdit
      Left = 32
      Top = 48
      Width = 73
      Height = 21
      DataField = 'H01'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 32
      Top = 88
      Width = 73
      Height = 21
      DataField = 'H02'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 1
    end
    object DBEdit12: TDBEdit
      Left = 32
      Top = 128
      Width = 73
      Height = 21
      DataField = 'H03'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 2
    end
    object DBEdit13: TDBEdit
      Left = 136
      Top = 48
      Width = 73
      Height = 21
      DataField = 'H11'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 3
    end
    object DBEdit14: TDBEdit
      Left = 136
      Top = 88
      Width = 73
      Height = 21
      DataField = 'H12'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 4
    end
    object DBEdit15: TDBEdit
      Left = 136
      Top = 128
      Width = 73
      Height = 21
      DataField = 'H13'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 5
    end
    object DBEdit16: TDBEdit
      Left = 136
      Top = 168
      Width = 73
      Height = 21
      DataField = 'H14'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 6
    end
    object DBEdit17: TDBEdit
      Left = 136
      Top = 208
      Width = 73
      Height = 21
      DataField = 'H15'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 7
    end
    object DBEdit18: TDBEdit
      Left = 136
      Top = 456
      Width = 73
      Height = 21
      DataField = 'H16'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 8
    end
    object DBEdit20: TDBEdit
      Left = 136
      Top = 520
      Width = 73
      Height = 21
      Color = 12778745
      DataField = 'INHANDWF'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 9
    end
    object DBEdit47: TDBEdit
      Left = 32
      Top = 304
      Width = 73
      Height = 21
      DataField = 'HC01'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 10
    end
    object DBEdit48: TDBEdit
      Left = 32
      Top = 344
      Width = 73
      Height = 21
      DataField = 'HC02'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 11
    end
    object DBEdit49: TDBEdit
      Left = 32
      Top = 384
      Width = 73
      Height = 21
      DataField = 'HC03'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 12
    end
    object DBEdit50: TDBEdit
      Left = 136
      Top = 304
      Width = 73
      Height = 21
      DataField = 'HC04'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 13
    end
    object DBEdit51: TDBEdit
      Left = 136
      Top = 344
      Width = 73
      Height = 21
      DataField = 'HC05'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 14
    end
    object DBEdit52: TDBEdit
      Left = 136
      Top = 384
      Width = 73
      Height = 21
      DataField = 'HC06'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 15
    end
    object DBEdit53: TDBEdit
      Left = 136
      Top = 424
      Width = 73
      Height = 21
      DataField = 'HC07'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 16
    end
    object DBEdit54: TDBEdit
      Left = 136
      Top = 240
      Width = 73
      Height = 21
      Color = 12778745
      DataField = 'HT01'
      DataSource = frmnewcap_wf.DataSource1
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit59: TDBEdit
      Left = 136
      Top = 488
      Width = 73
      Height = 21
      DataField = 'TH01'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 18
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 600
    Width = 97
    Height = 25
    Caption = 'Save && Close'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000CE0E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777744447777777777444444447777777444777744
      4777777447777774477777447777777744777744777777774477774477777777
      4477774477777777447777744777747447777774477774444777777777777444
      7777777777777444477777777777777777777777777777777777}
  end
  object GroupBox3: TGroupBox
    Left = 24
    Top = 48
    Width = 225
    Height = 545
    Caption = 'On-line WF (+/-)'
    TabOrder = 3
    object Bevel1: TBevel
      Left = 8
      Top = 24
      Width = 209
      Height = 241
    end
    object Bevel4: TBevel
      Left = 8
      Top = 280
      Width = 209
      Height = 201
    end
    object Label21: TLabel
      Left = 16
      Top = 32
      Width = 73
      Height = 13
      Caption = 'Hand Worker : '
    end
    object Label22: TLabel
      Left = 16
      Top = 72
      Width = 53
      Height = 13
      Caption = 'Inspector:  '
    end
    object Label23: TLabel
      Left = 16
      Top = 112
      Width = 54
      Height = 13
      Caption = 'Machinist:  '
    end
    object Label24: TLabel
      Left = 120
      Top = 32
      Width = 74
      Height = 13
      Caption = 'Stationed WF : '
    end
    object Label25: TLabel
      Left = 120
      Top = 72
      Width = 60
      Height = 13
      Caption = 'Mobile WF:  '
    end
    object Label26: TLabel
      Left = 120
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Floater:  '
    end
    object Label27: TLabel
      Left = 120
      Top = 152
      Width = 67
      Height = 13
      Caption = 'Specific WF:  '
    end
    object Label28: TLabel
      Left = 120
      Top = 192
      Width = 94
      Height = 13
      Caption = 'Apprentice (if any):  '
    end
    object Label29: TLabel
      Left = 96
      Top = 456
      Width = 30
      Height = 13
      Caption = 'Total: '
    end
    object Label30: TLabel
      Left = 40
      Top = 520
      Width = 89
      Height = 13
      Caption = 'Total On-line WF : '
    end
    object Label31: TLabel
      Left = 16
      Top = 288
      Width = 73
      Height = 13
      Caption = 'Hand Worker : '
    end
    object Label32: TLabel
      Left = 16
      Top = 328
      Width = 53
      Height = 13
      Caption = 'Inspector:  '
    end
    object Label33: TLabel
      Left = 16
      Top = 368
      Width = 54
      Height = 13
      Caption = 'Machinist:  '
    end
    object Label34: TLabel
      Left = 120
      Top = 288
      Width = 74
      Height = 13
      Caption = 'Stationed WF : '
    end
    object Label35: TLabel
      Left = 120
      Top = 328
      Width = 60
      Height = 13
      Caption = 'Mobile WF:  '
    end
    object Label36: TLabel
      Left = 120
      Top = 368
      Width = 41
      Height = 13
      Caption = 'Floater:  '
    end
    object Label37: TLabel
      Left = 120
      Top = 408
      Width = 67
      Height = 13
      Caption = 'Specific WF:  '
    end
    object Label38: TLabel
      Left = 16
      Top = 16
      Width = 67
      Height = 13
      Caption = 'Assembly Line'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 16
      Top = 272
      Width = 46
      Height = 13
      Caption = 'Core-tech'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label54: TLabel
      Left = 96
      Top = 240
      Width = 30
      Height = 13
      Caption = 'Total: '
    end
    object Label63: TLabel
      Left = 88
      Top = 488
      Width = 36
      Height = 13
      Caption = 'Trainee'
    end
    object DBEdit21: TDBEdit
      Left = 32
      Top = 48
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 0
    end
    object DBEdit22: TDBEdit
      Left = 32
      Top = 88
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 1
    end
    object DBEdit23: TDBEdit
      Left = 32
      Top = 128
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 2
    end
    object DBEdit24: TDBEdit
      Left = 136
      Top = 48
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 3
    end
    object DBEdit25: TDBEdit
      Left = 136
      Top = 88
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 4
    end
    object DBEdit26: TDBEdit
      Left = 136
      Top = 128
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 5
    end
    object DBEdit27: TDBEdit
      Left = 136
      Top = 168
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 6
    end
    object DBEdit28: TDBEdit
      Left = 136
      Top = 208
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 7
    end
    object DBEdit29: TDBEdit
      Left = 136
      Top = 456
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 8
    end
    object DBEdit30: TDBEdit
      Left = 136
      Top = 520
      Width = 73
      Height = 21
      Color = 12778745
      DataField = 'ONLINEWF'
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 9
    end
    object DBEdit31: TDBEdit
      Left = 32
      Top = 304
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 10
    end
    object DBEdit32: TDBEdit
      Left = 32
      Top = 344
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 11
    end
    object DBEdit33: TDBEdit
      Left = 32
      Top = 384
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 12
    end
    object DBEdit34: TDBEdit
      Left = 136
      Top = 304
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 13
    end
    object DBEdit35: TDBEdit
      Left = 136
      Top = 344
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 14
    end
    object DBEdit36: TDBEdit
      Left = 136
      Top = 384
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 15
    end
    object DBEdit37: TDBEdit
      Left = 136
      Top = 424
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 16
    end
    object DBEdit38: TDBEdit
      Left = 136
      Top = 240
      Width = 73
      Height = 21
      Color = 12778745
      DataField = 'ONLINEWF'
      DataSource = frmnewcap_wf.DataSource1
      ReadOnly = True
      TabOrder = 17
    end
    object DBEdit57: TDBEdit
      Left = 136
      Top = 488
      Width = 73
      Height = 21
      DataSource = frmnewcap_wf.DataSource1
      TabOrder = 18
    end
  end
  object DBEdit55: TDBEdit
    Left = 72
    Top = 16
    Width = 65
    Height = 21
    DataField = 'TPLANT'
    DataSource = frmnewcap_wf.DataSource1
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit56: TDBEdit
    Left = 216
    Top = 16
    Width = 97
    Height = 21
    DataField = 'DT'
    DataSource = frmnewcap_wf.DataSource1
    ReadOnly = True
    TabOrder = 5
  end
end
