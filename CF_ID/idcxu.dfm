object frmidcx: Tfrmidcx
  Left = 142
  Top = 129
  Width = 433
  Height = 349
  Caption = '查詢ID'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label23: TLabel
    Left = 16
    Top = 16
    Width = 107
    Height = 13
    Caption = '請輸入要查詢之ID:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 68
    Height = 13
    Caption = '不接受之ID:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 3
    Height = 13
    Visible = False
  end
  object Label3: TLabel
    Left = 224
    Top = 48
    Width = 55
    Height = 13
    Caption = '短碼之ID:'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 280
    Top = 16
    Width = 3
    Height = 13
    Visible = False
  end
  object MaskEdit1: TMaskEdit
    Left = 134
    Top = 14
    Width = 91
    Height = 21
    EditMask = '######-S####;1;_'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    MaxLength = 12
    ParentFont = False
    TabOrder = 1
    Text = '      -S    '
    OnKeyPress = MaskEdit1KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 280
    Width = 65
    Height = 25
    Caption = '確定'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 344
    Top = 280
    Width = 65
    Height = 25
    Caption = '取消'
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object ListBox1: TListBox
    Left = 16
    Top = 72
    Width = 185
    Height = 193
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    Sorted = True
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 224
    Top = 72
    Width = 185
    Height = 193
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '新細明體'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    Sorted = True
    TabOrder = 4
    OnClick = ListBox2Click
  end
end
