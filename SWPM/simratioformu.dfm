object frmsimratio: Tfrmsimratio
  Left = 192
  Top = 114
  Width = 705
  Height = 478
  Caption = 'Ratio Enquiry'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 697
    Height = 403
    Align = alClient
    DataSource = frmsimfactory.DataSource3
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PLINE'
        Footers = <>
        Title.Caption = 'Line'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'PGRP'
        Footers = <>
        Title.Caption = 'Customer'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'FLAG6'
        Footers = <>
        Title.Caption = 'Prod Code'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'REFDT1'
        Footers = <>
        Title.Caption = 'Reference Period|From'
      end
      item
        EditButtons = <>
        FieldName = 'REFDT2'
        Footers = <>
        Title.Caption = 'Reference Period|To'
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'REFRATIO1'
        Footers = <>
        Title.Caption = 'Ratio|New Style'
        Width = 60
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'REFRATIO2'
        Footers = <>
        Title.Caption = 'Ratio|Repeated Style'
        Width = 60
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'REFRATIO3'
        Footers = <>
        Title.Caption = 'Ratio|Within 1 Week'
        Width = 60
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'REFRATIO4'
        Footers = <>
        Title.Caption = 'Ratio|Within 2 Weeks'
        Width = 60
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'REFRATIO5'
        Footers = <>
        Title.Caption = 'Ratio|Within 3 Weeks'
        Width = 60
      end
      item
        DisplayFormat = '#0'
        EditButtons = <>
        FieldName = 'REFRATIO6'
        Footers = <>
        Title.Caption = 'Ratio|Longer than 3 Weeks'
        Width = 60
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 403
    Width = 697
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 24
      Top = 8
      Width = 73
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
end
