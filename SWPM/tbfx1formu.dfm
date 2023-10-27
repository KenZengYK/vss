object frmtbfx1: Tfrmtbfx1
  Left = 192
  Top = 107
  Caption = 'frmtbfx1'
  ClientHeight = 339
  ClientWidth = 528
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
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select line,wkno,secto*workert as tcap from week52 where line='#39'T' +
      '01'#39' and wkno>=50'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
    Top = 24
  end
end
