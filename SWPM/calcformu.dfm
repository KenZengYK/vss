object frmcalc: Tfrmcalc
  Left = 192
  Top = 107
  Caption = 'Calculator for on-std %'
  ClientHeight = 280
  ClientWidth = 433
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
  object Label1: TLabel
    Left = 24
    Top = 200
    Width = 77
    Height = 13
    Caption = 'Weight Average'
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 24
    Width = 393
    Height = 81
    Caption = 'Section Hr by Phase'
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 14
      Height = 13
      Caption = '1st'
    end
    object Label4: TLabel
      Left = 152
      Top = 24
      Width = 18
      Height = 13
      Caption = '2nd'
    end
    object Label5: TLabel
      Left = 288
      Top = 24
      Width = 15
      Height = 13
      Caption = '3rd'
    end
    object Label6: TLabel
      Left = 16
      Top = 48
      Width = 15
      Height = 13
      Caption = '4th'
    end
    object Label7: TLabel
      Left = 152
      Top = 48
      Width = 15
      Height = 13
      Caption = '5th'
    end
    object Label8: TLabel
      Left = 288
      Top = 48
      Width = 15
      Height = 13
      Caption = '6th'
    end
    object lr1: TCurrencyEdit
      Left = 40
      Top = 24
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      TabOrder = 0
      OnChange = lr1Change
    end
    object lr2: TCurrencyEdit
      Left = 176
      Top = 24
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      TabOrder = 1
      OnChange = lr1Change
    end
    object lr3: TCurrencyEdit
      Left = 312
      Top = 24
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      TabOrder = 2
      OnChange = lr1Change
    end
    object lr4: TCurrencyEdit
      Left = 40
      Top = 48
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      TabOrder = 3
      OnChange = lr1Change
    end
    object lr5: TCurrencyEdit
      Left = 176
      Top = 48
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      TabOrder = 4
      OnChange = lr1Change
    end
    object lr6: TCurrencyEdit
      Left = 312
      Top = 48
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0'
      TabOrder = 5
      OnChange = lr1Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 112
    Width = 393
    Height = 81
    Caption = 'On-std % by Phase'
    TabOrder = 1
    object Label9: TLabel
      Left = 16
      Top = 24
      Width = 14
      Height = 13
      Caption = '1st'
    end
    object Label10: TLabel
      Left = 152
      Top = 24
      Width = 18
      Height = 13
      Caption = '2nd'
    end
    object Label11: TLabel
      Left = 288
      Top = 24
      Width = 15
      Height = 13
      Caption = '3rd'
    end
    object Label12: TLabel
      Left = 16
      Top = 48
      Width = 15
      Height = 13
      Caption = '4th'
    end
    object Label13: TLabel
      Left = 152
      Top = 48
      Width = 15
      Height = 13
      Caption = '5th'
    end
    object Label14: TLabel
      Left = 288
      Top = 48
      Width = 15
      Height = 13
      Caption = '6th'
    end
    object le1: TCurrencyEdit
      Left = 40
      Top = 24
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0.00'
      TabOrder = 0
      OnChange = lr1Change
    end
    object le2: TCurrencyEdit
      Left = 176
      Top = 24
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0.00'
      TabOrder = 1
      OnChange = lr1Change
    end
    object le3: TCurrencyEdit
      Left = 312
      Top = 24
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0.00'
      TabOrder = 2
      OnChange = lr1Change
    end
    object le4: TCurrencyEdit
      Left = 40
      Top = 48
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0.00'
      TabOrder = 3
      OnChange = lr1Change
    end
    object le5: TCurrencyEdit
      Left = 176
      Top = 48
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0.00'
      TabOrder = 4
      OnChange = lr1Change
    end
    object le6: TCurrencyEdit
      Left = 312
      Top = 48
      Width = 65
      Height = 21
      AutoSize = False
      DisplayFormat = '#0.00'
      TabOrder = 5
      OnChange = lr1Change
    end
  end
  object Edit1: TEdit
    Left = 112
    Top = 200
    Width = 97
    Height = 21
    Color = 11267047
    ReadOnly = True
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
end
