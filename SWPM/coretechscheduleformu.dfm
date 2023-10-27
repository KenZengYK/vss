object frmcoretechschedule: Tfrmcoretechschedule
  Left = 78
  Top = 114
  Caption = 'Scheduling for Core tech'
  ClientHeight = 543
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 369
    Top = 0
    Width = 2
    Height = 502
    ExplicitHeight = 504
  end
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 891
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 504
    ExplicitWidth = 899
    object BitBtn1: TBitBtn
      Left = 40
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Confirm'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 502
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 504
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 369
      Height = 88
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 369
        Height = 13
        Align = alTop
        Caption = 'Select QNs for core tech to schedule: - '
        ExplicitWidth = 187
      end
      object Label3: TLabel
        Left = 8
        Top = 24
        Width = 19
        Height = 13
        Caption = 'Ws '
      end
      object Label4: TLabel
        Left = 96
        Top = 24
        Width = 23
        Height = 13
        Caption = 'Line '
      end
      object Label5: TLabel
        Left = 184
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Project '
      end
      object Label6: TLabel
        Left = 16
        Top = 56
        Width = 99
        Height = 13
        Caption = 'Core tech start date  '
      end
      object Edit1: TEdit
        Left = 32
        Top = 24
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = Edit1Change
      end
      object Edit2: TEdit
        Left = 120
        Top = 24
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = Edit1Change
      end
      object Edit3: TEdit
        Left = 224
        Top = 24
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit1Change
      end
      object DateEdit1: TDateEdit
        Left = 120
        Top = 56
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 0
      Top = 88
      Width = 369
      Height = 414
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
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
          FieldName = 'PLINE'
          Footers = <>
          Title.Caption = 'Line'
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'J_NO'
          Footers = <>
          Title.Caption = 'Project'
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'J2_JOB'
          Footers = <>
          Title.Caption = 'WO #'
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'ACOL'
          Footers = <>
          Title.Caption = 'Clr Code'
          Width = 30
        end
        item
          EditButtons = <>
          FieldName = 'RWO'
          Footers = <>
          Title.Caption = 'RWO #'
          Width = 34
        end
        item
          EditButtons = <>
          FieldName = 'FCCS'
          Footers = <>
          Title.Caption = 'QN #'
          Width = 34
        end
        item
          EditButtons = <>
          FieldName = 'CSTYLE'
          Footers = <>
          Title.Caption = 'Cust Style'
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'SCQTY'
          Footers = <>
          Title.Caption = 'QN Qty'
          Width = 43
        end
        item
          DisplayFormat = 'yy/MM/dd'
          EditButtons = <>
          FieldName = 'CFKSRQ'
          Footers = <>
          Title.Caption = 'LW Start Date'
          Width = 55
        end
        item
          DisplayFormat = 'yy/MM/dd hh'
          EditButtons = <>
          FieldName = 'YQLCRQ'
          Footers = <>
          Title.Caption = 'RWO Ex-fty Date'
          Width = 71
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel3: TPanel
    Left = 371
    Top = 0
    Width = 38
    Height = 502
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 504
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 160
      Width = 23
      Height = 22
      Caption = '>'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 8
      Top = 224
      Width = 23
      Height = 22
      Caption = '<'
      OnClick = SpeedButton2Click
    end
  end
  object Panel4: TPanel
    Left = 409
    Top = 0
    Width = 482
    Height = 502
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 490
    ExplicitHeight = 504
    object DBGridEh2: TDBGridEh
      Left = 0
      Top = 0
      Width = 490
      Height = 504
      Align = alClient
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
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
          FieldName = 'CLINE'
          Footers = <>
          Title.Caption = 'Line'
          Width = 42
        end
        item
          DisplayFormat = 'yy/MM/dd'
          EditButtons = <>
          FieldName = 'DT'
          Footers = <>
          Title.Caption = 'Core tech Start Date'
          Width = 56
        end
        item
          EditButtons = <>
          FieldName = 'J_NO'
          Footers = <>
          Title.Caption = 'Project'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'J2_JOB'
          Footers = <>
          Title.Caption = 'WO #'
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'ACOL'
          Footers = <>
          Title.Caption = 'Clr Code'
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'RWO'
          Footers = <>
          Title.Caption = 'RWO #'
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'FCCS'
          Footers = <>
          Title.Caption = 'QN #'
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'CSTYLE'
          Footers = <>
          Title.Caption = 'Cust Style'
          Width = 104
        end
        item
          EditButtons = <>
          FieldName = 'QTY'
          Footers = <>
          Title.Caption = 'QN Qty'
          Width = 53
        end
        item
          DisplayFormat = 'yy/MM/dd hh'
          EditButtons = <>
          FieldName = 'EXFTY'
          Footers = <>
          Title.Caption = 'RWO Ex-fty Date'
          Width = 67
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_coretech_d where pline='#39'T023U'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 328
    Top = 8
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 360
    Top = 8
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tblshedule where tshop='#39'3A'#39' and iecls1='#39'2'#39' and yzh' +
      '=0'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
    Top = 8
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 392
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 328
    Top = 40
  end
end
