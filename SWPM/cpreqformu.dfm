object frmcpreq: Tfrmcpreq
  Left = 194
  Top = 114
  Width = 618
  Height = 467
  Caption = 'Capacity Requisition (CP_S002)'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Team'
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Customer'
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 16
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'A'
        'B'
        'C'
        'D')
    end
    object Edit1: TEdit
      Left = 224
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 4
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 344
      Top = 16
      Width = 73
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = BitBtn5Click
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 610
    Height = 343
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        PickList.Strings = (
          'KB'
          'SL'
          'SLES')
        Title.Caption = 'Factory'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'GRP'
        Footers = <>
        PickList.Strings = (
          'A'
          'B'
          'C'
          'D')
        Title.Caption = 'Team'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CUST'
        Footers = <>
        PickList.Strings = (
          'TAMA'
          'SARA'
          'LARD'
          'LOVE'
          'LAUS'
          'PTGT'
          'ABEC'
          'CANA'
          'OCTA'
          'ETAM'
          'ESSE'
          'EMPR'
          'TAIL'
          'MAST')
        Title.Caption = 'Customer'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'NY'
        Footers = <>
        PickList.Strings = (
          '2006-08'
          '2006-09'
          '2006-10'
          '2006-11'
          '2006-12'
          '2007-01'
          '2007-02'
          '2007-03'
          '2007-04'
          '2007-05'
          '2007-06'
          '2007-08'
          '2007-09'
          '2007-10'
          '2007-11'
          '2007-12'
          '2008-01'
          '2008-02'
          '2008-03'
          '2008-04'
          '2008-05'
          '2008-06'
          '2008-07'
          '2008-08'
          '2008-09'
          '2008-10'
          '2008-11'
          '2008-12')
        Title.Caption = 'Month'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'WK'
        Footers = <>
        PickList.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '36'
          '37'
          '38'
          '39'
          '40'
          '41'
          '42'
          '43'
          '44'
          '45'
          '46'
          '47'
          '48'
          '49'
          '50'
          '51'
          '52'
          '53')
        Title.Caption = 'Week #'
      end
      item
        EditButtons = <>
        FieldName = 'F6'
        Footers = <>
        PickList.Strings = (
          'B'
          'K'
          'U')
        Title.Caption = 'Product Code'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        Title.Caption = 'Req QTY (dz/week)'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'QTY1'
        Footers = <>
        Title.Caption = 'Booking Qty (dz/week)'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CFM'
        Footers = <>
        Title.Caption = 'Confirmed'
        Width = 54
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 392
    Width = 610
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = 'AddNew'
      TabOrder = 0
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
      Left = 104
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Delete'
      TabOrder = 1
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
      Left = 176
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Save'
      TabOrder = 2
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
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirm'
      TabOrder = 3
      Glyph.Data = {
        72010000424D7201000000000000760000002800000015000000150000000100
        040000000000FC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888088
        8888888885F08888888808088888888885F088000000FFF00000000885F08806
        660FFFFF0666660885F0880E64FFFFFFF066660885F0880E0FFFFF4FFF066608
        85F08800FFFFF4F4FFF0660885F0880FFFFF4F4F4FFF060886C080FF4FFFF4F4
        F4FFF00881110FF4F4FFFF4F4FFFFF08844080FF4FFFFFF4F4FFFFF0844C880F
        F4FFFFFF4F4FFFFF00008800FFFFFFFFFFFFFFF0811888060FFFFFFFFFFFFF08
        8088880660FFFF1FFFFFF00880008806660FF191FFFF06088A2088066660FF19
        1FF0660888AC880666660FF1FF0666088408880EEEEEE0FFF0EEEE0889008800
        0000000F000000088000888888888880888888888000}
    end
    object BitBtn6: TBitBtn
      Left = 322
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Preview'
      TabOrder = 4
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
    object BitBtn7: TBitBtn
      Left = 396
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 5
      Kind = bkClose
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from cust_plan'
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'GRP'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CUST'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NY'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'F6'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTY'
        DataType = ftFloat
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'QTY1'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'tplant;grp;cust;ny;wk;f6'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 72
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 104
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 136
    Top = 104
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 104
  end
end
