object frmpdn_defectnotepad: Tfrmpdn_defectnotepad
  Left = 0
  Top = 0
  Caption = 'Defect Notepad'
  ClientHeight = 305
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 184
    Top = 261
    Width = 3
    Height = 13
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -272
    ExplicitWidth = 809
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 23
      Height = 13
      Caption = 'PDN '
    end
    object DBText1: TDBText
      Left = 64
      Top = 16
      Width = 121
      Height = 17
      DataField = 'PDN'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Ex-fty Date'
    end
    object DBText2: TDBText
      Left = 312
      Top = 16
      Width = 121
      Height = 17
      DataField = 'EXFTY'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 56
    Width = 489
    Height = 185
    DataField = 'DS_MARKS'
    DataSource = frmpdn.DataSource1
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 256
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
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 256
    Width = 73
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 3
  end
end
