object frmnote_lwo: Tfrmnote_lwo
  Left = 192
  Top = 114
  Width = 521
  Height = 347
  Caption = 'Notepad for Diff of Split / Pick Qty'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 0
    Top = 0
    Width = 513
    Height = 272
    Align = alClient
    DataField = 'REMARKS'
    DataSource = frmlwo.DataSource2
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 513
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 0
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
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 272
    object T1: TMenuItem
      Caption = 'T1 Notepad'
      OnClick = T1Click
    end
    object T2: TMenuItem
      Caption = 'T2 Notepad'
      OnClick = T2Click
    end
    object T3: TMenuItem
      Caption = 'T3 Notepad'
      OnClick = T3Click
    end
    object T4: TMenuItem
      Caption = 'T4 Notepad'
      OnClick = T4Click
    end
  end
end
