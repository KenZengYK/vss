object frmxgtm: Tfrmxgtm
  Left = 204
  Top = 172
  Caption = #25913#36890#30908
  ClientHeight = 230
  ClientWidth = 393
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
  object Label1: TLabel
    Left = 16
    Top = 18
    Width = 48
    Height = 13
    Caption = #25289#24067#24373#25976
  end
  object Label2: TLabel
    Left = 152
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 200
    Width = 57
    Height = 25
    Caption = 'OK'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Edit1: TEdit
    Left = 72
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 328
    Top = 200
    Width = 57
    Height = 25
    Caption = 'Cancel'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object sgrid1: TStringGrid
    Left = 16
    Top = 56
    Width = 369
    Height = 121
    ColCount = 3
    DefaultColWidth = 200
    RowCount = 4
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goTabs]
    TabOrder = 3
    ColWidths = (
      200
      73
      69)
  end
  object Query1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 208
    Top = 8
  end
  object Query2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 240
    Top = 8
  end
  object Query3: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 272
    Top = 8
  end
end
