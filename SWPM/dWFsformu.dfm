object frmdWFs: TfrmdWFs
  Left = 192
  Top = 114
  Width = 505
  Height = 323
  Caption = 'dWF Setting'
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
    Left = 24
    Top = 24
    Width = 449
    Height = 201
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        FieldName = 'CODE'
        Footers = <>
        Title.Caption = 'Code'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'SWF'
        Footers = <>
        Title.Caption = 'Stationed WF'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'MWF1'
        Footers = <>
        Title.Caption = 'Mobile WF Fill Def Gap'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'MWF2'
        Footers = <>
        Title.Caption = 'Mobile WF Fill LB'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'FWF'
        Footers = <>
        Title.Caption = 'Floater'
        Width = 75
      end>
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 240
    Width = 73
    Height = 25
    Caption = 'AddNew'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      0400000000007000000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333300033333300333330F03333
      3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
      3300333330F033333300333330F0333333003333300033333300333333333333
      33003333333333333300}
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      E6000000424DE60000000000000076000000280000000E0000000E0000000100
      0400000000007000000000000000000000001000000000000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3300333333333333330033333333333333003333333333333300333333333333
      330033333333333333003300000000003300330FFFFFFFF03300330000000000
      3300333333333333330033333333333333003333333333333300333333333333
      33003333333333333300}
  end
  object BitBtn3: TBitBtn
    Left = 168
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = BitBtn3Click
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
  object BitBtn4: TBitBtn
    Left = 240
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Select'
    TabOrder = 4
    OnClick = BitBtn4Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn5: TBitBtn
    Left = 312
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Preview'
    TabOrder = 5
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object BitBtn6: TBitBtn
    Left = 384
    Top = 240
    Width = 73
    Height = 25
    TabOrder = 6
    Kind = bkClose
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from wf_structrue'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 16
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 48
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblline where pline='#39'T002'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 80
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
  end
end