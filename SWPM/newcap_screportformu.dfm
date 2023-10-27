object frmnewcap_screport: Tfrmnewcap_screport
  Left = 0
  Top = 0
  Caption = 'CP - analysis reports for SC meeting'
  ClientHeight = 153
  ClientWidth = 217
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
  object BitBtn1: TBitBtn
    Left = 24
    Top = 24
    Width = 169
    Height = 25
    Caption = 'Factory Capacity Forcast'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 64
    Width = 169
    Height = 25
    Caption = 'CP - Current && Forcast Details'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 24
    Top = 104
    Width = 169
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
end
