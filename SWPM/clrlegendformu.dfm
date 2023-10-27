object frmclrlegend: Tfrmclrlegend
  Left = 192
  Top = 114
  Width = 417
  Height = 195
  BorderIcons = []
  Caption = 'Color Legend'
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
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 376
    Height = 32
    Caption = 
      'Red Color - Waiting for Scheduling with WOc && RWO # '#13#10'or Delive' +
      'ry Date in 30 Days'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 376
    Height = 20
    Caption = 'Purple Color - Delivery Date in 60 Days             '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 375
    Height = 20
    Caption = 'Green Color - Delivery Data in 90 Days             '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
