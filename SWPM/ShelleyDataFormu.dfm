object frmShelleyData: TfrmShelleyData
  Left = 0
  Top = 0
  Caption = 'LWPM data for Shelley'
  ClientHeight = 337
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 10
      Width = 72
      Height = 13
      Caption = 'T2 Date From: '
    end
    object Label2: TLabel
      Left = 376
      Top = 10
      Width = 19
      Height = 13
      Caption = 'To: '
    end
    object Label3: TLabel
      Left = 33
      Top = 10
      Width = 44
      Height = 13
      Caption = 'Factory: '
    end
    object DateEdit1: TDateEdit
      Left = 256
      Top = 10
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 400
      Top = 10
      Width = 105
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 536
      Top = 10
      Width = 75
      Height = 25
      Caption = 'OK'
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
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object ComboBox1: TComboBox
      Left = 79
      Top = 10
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'SL'
        'GG'
        'RX'
        'CL')
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 712
    Height = 255
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Kind = skSum
          Column = cxGrid1DBTableView1QTY
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      object cxGrid1DBTableView1J_NO: TcxGridDBColumn
        Caption = 'Project #'
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 72
      end
      object cxGrid1DBTableView1CUST: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'CUST'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 62
      end
      object cxGrid1DBTableView1J2_JOB: TcxGridDBColumn
        Caption = 'WO #'
        DataBinding.FieldName = 'J2_JOB'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 66
      end
      object cxGrid1DBTableView1FLAG6: TcxGridDBColumn
        Caption = 'Prod Code'
        DataBinding.FieldName = 'FLAG6'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object cxGrid1DBTableView1CSTYLE: TcxGridDBColumn
        Caption = 'Cust Style #'
        DataBinding.FieldName = 'CSTYLE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 148
      end
      object cxGrid1DBTableView1ACOL: TcxGridDBColumn
        Caption = 'Color'
        DataBinding.FieldName = 'ACOL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object cxGrid1DBTableView1QTY: TcxGridDBColumn
        Caption = 'Output'
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 73
      end
      object cxGrid1DBTableView1LINE: TcxGridDBColumn
        Caption = 'Line'
        DataBinding.FieldName = 'LINE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 41
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 712
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn13: TBitBtn
      Left = 25
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Export'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn13Click
    end
    object BitBtn1: TBitBtn
      Left = 104
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 320
    Top = 96
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from sp_getdate4shelley(current_timestamp,'#39'SL'#39','#39'2015-11' +
      '-01'#39','#39'2015-11-05'#39')'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 224
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 96
  end
end
