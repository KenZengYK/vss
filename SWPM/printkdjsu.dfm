object frmprintkdjs: Tfrmprintkdjs
  Left = -4
  Top = -4
  Caption = 'frmprintkdjs'
  ClientHeight = 572
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select distinct pline,kdjs,cfksrq from tblshedule where kdjs<>0 ' +
      'order by pline'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 240
    Top = 24
  end
end
