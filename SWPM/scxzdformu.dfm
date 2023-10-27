object frmscxzd: Tfrmscxzd
  Left = 89
  Top = 83
  Width = 627
  Height = 468
  Caption = '生產線製單情況'
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '新細明體'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 36
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 24
      Height = 12
      Caption = '拉名'
    end
    object Edit1: TEdit
      Left = 64
      Top = 8
      Width = 73
      Height = 20
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 402
    Width = 619
    Height = 39
    Align = alBottom
    TabOrder = 1
    object Label2: TLabel
      Left = 408
      Top = 8
      Width = 3
      Height = 12
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 73
      Height = 25
      Caption = '確定'
      ModalResult = 1
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 105
      Top = 8
      Width = 73
      Height = 25
      Caption = '退出'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 36
    Width = 619
    Height = 366
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 617
      Height = 364
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = CHINESEBIG5_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = '新細明體'
      TitleFont.Style = []
      FooterFont.Charset = CHINESEBIG5_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = '新細明體'
      FooterFont.Style = []
      FooterColor = clWindow
      UseMultiTitle = True
      Columns = <
        item
          FieldName = 'Pline'
          Title.Caption = '拉名'
          Footers = <>
        end
        item
          FieldName = 'J_no'
          Title.Caption = '工程號'
          Footers = <>
        end
        item
          FieldName = 'J2_job'
          Title.Caption = '製單號'
          Footers = <>
        end
        item
          FieldName = 'Artno'
          Title.Caption = '款號'
          Footers = <>
        end
        item
          FieldName = 'Acol'
          Title.Caption = '色號'
          Footers = <>
        end
        item
          FieldName = 'Scqty'
          Title.Caption = '生產數量'
          Footers = <>
        end
        item
          FieldName = 'Cfksrq'
          Title.Caption = '開貨日'
          Footers = <>
        end
        item
          FieldName = 'Cfwcrq'
          Title.Caption = '完成日'
          Footers = <>
        end>
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tblshedule where yzh=false order by pline,seq,cfks' +
      'rq,cfksjs'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 411
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 264
    Top = 411
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tblshedule where yzh=false order by pline,seq,cfks' +
      'rq,cfksjs'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
    Top = 411
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tblshedule where yzh=false order by pline,seq,cfks' +
      'rq,cfksjs'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 328
    Top = 411
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from tblshedule where yzh=false order by pline,seq,cfks' +
      'rq,cfksjs'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 360
    Top = 411
  end
end
