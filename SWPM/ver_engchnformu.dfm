object frmver_engchn: Tfrmver_engchn
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = 'Eng_Chn Mapping'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Module'
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'GAI')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 688
    Height = 364
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
        Color = 13499643
        EditButtons = <>
        FieldName = 'F_MOD'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Module'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'F_FRM'
        Footers = <>
        PickList.Strings = (
          'WGAI'
          'QNCAL'
          'QNNOTE'
          'QNSEW'
          'QNWFMC')
        Title.Caption = 'Form'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'F_LBL_GRD'
        Footers = <>
        PickList.Strings = (
          'LABEL'
          'GRID')
        Title.Caption = 'Label or Grid'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'F_XH'
        Footers = <>
        Title.Caption = 'Seq'
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'F_ENG'
        Footers = <>
        Title.Caption = 'Description|Eng'
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'F_CHN'
        Footers = <>
        Title.Caption = 'Description|Chn'
        Width = 300
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 688
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
      Width = 73
      Height = 25
      TabOrder = 3
      Kind = bkClose
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SEQ'
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RWO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ACOL'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'BCN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CASTL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUSTPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CNAME'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq;seq1;j_no;j2_job;rwo;dseq'
      end>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 120
    Top = 80
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 80
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_ver_engchn'
    FieldDefs = <
      item
        Name = 'F_MOD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'F_FRM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'F_LBL_GRD'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'F_XH'
        DataType = ftInteger
      end
      item
        Name = 'F_ENG'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'F_CHN'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'f_mod;f_frm;f_lbl_grd;f_xh'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    OnNewRecord = Query1NewRecord
    Left = 88
    Top = 80
    object Query1F_MOD: TStringField
      FieldName = 'F_MOD'
      Size = 50
    end
    object Query1F_FRM: TStringField
      FieldName = 'F_FRM'
      Size = 50
    end
    object Query1F_LBL_GRD: TStringField
      FieldName = 'F_LBL_GRD'
    end
    object Query1F_XH: TIntegerField
      FieldName = 'F_XH'
    end
    object Query1F_ENG: TStringField
      FieldName = 'F_ENG'
      Size = 100
    end
    object Query1F_CHN: TStringField
      FieldName = 'F_CHN'
      Size = 100
    end
  end
end
