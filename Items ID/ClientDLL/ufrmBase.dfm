object frmBase: TfrmBase
  Left = 14
  Top = 0
  Width = 798
  Height = 570
  Caption = 'frmBase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Title: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Title'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG'
    Left = 16
    Top = 16
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG'
    Left = 104
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 136
    Top = 16
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 328
    Top = 19
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = 16746118
    end
  end
  object ClientDataSet_Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG_temp'
    Left = 180
    Top = 17
  end
  object DataSource_Temp: TDataSource
    DataSet = ClientDataSet_Temp
    Left = 212
    Top = 17
  end
  object DataSet_Language: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPHG'
    Left = 256
    Top = 16
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Left = 360
    Top = 18
  end
end
