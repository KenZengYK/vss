object frmsplash: Tfrmsplash
  Left = 268
  Top = 185
  Cursor = crHourGlass
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmsplash'
  ClientHeight = 89
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 0
    Top = 0
    Cursor = crHourGlass
    AutoSize = False
    Caption = 'Material ID Label ...'
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.Transparent = True
    Style.BorderStyle = ebsOffice11
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.Shadow = True
    Height = 87
    Width = 289
  end
  object cxLabel2: TcxLabel
    Left = 18
    Top = 62
    Cursor = crHourGlass
    AutoSize = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.Transparent = True
    Height = 17
    Width = 249
  end
end
