object frmGAI_AL_detail: TfrmGAI_AL_detail
  Left = 0
  Top = 0
  Caption = 'Follow up content (in seq)'
  ClientHeight = 314
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbmmo1: TDBMemo
    Left = 24
    Top = 16
    Width = 569
    Height = 233
    DataField = 'REMARKS'
    DataSource = frmGAI_Actionlog.DataSource3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn5: TBitBtn
    Left = 24
    Top = 264
    Width = 81
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
    TabOrder = 1
    OnClick = BitBtn5Click
  end
  object BitBtn6: TBitBtn
    Left = 104
    Top = 264
    Width = 81
    Height = 25
    Caption = 'Exit'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
