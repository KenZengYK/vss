object frmoutput_faesah: Tfrmoutput_faesah
  Left = 0
  Top = 0
  Caption = 'Output & SAH (FAE) by Customer'
  ClientHeight = 358
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 19
      Width = 44
      Height = 13
      Caption = 'Factory: '
    end
    object xh1: TRadioGroup
      Left = 140
      Top = 8
      Width = 193
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Factory'
        'Sub-contractor')
      TabOrder = 1
    end
    object xh2: TRadioGroup
      Left = 347
      Top = 8
      Width = 162
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'by Product'
        'by WO')
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 515
      Top = 0
      Width = 290
      Height = 43
      Caption = 'Period Range'
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 19
        Width = 31
        Height = 13
        Caption = 'From: '
      end
      object Label2: TLabel
        Left = 152
        Top = 19
        Width = 19
        Height = 13
        Caption = 'To: '
      end
      object DateEdit1: TDateEdit
        Left = 44
        Top = 19
        Width = 101
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 177
        Top = 19
        Width = 105
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object BitBtn1: TBitBtn
      Left = 811
      Top = 14
      Width = 57
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
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 16
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'SL'
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 51
    Width = 837
    Height = 266
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = view_ttlsah
        end
        item
          Format = '#0'
          Kind = skSum
          Column = view_output
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = view_psah
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = view_fsah
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = view_asah
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = view_esah
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      object view_cust: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'CUST'
        HeaderAlignmentHorz = taCenter
      end
      object view_prod: TcxGridDBColumn
        Caption = 'Product Code'
        DataBinding.FieldName = 'PROD'
        HeaderAlignmentHorz = taCenter
      end
      object view_prjno: TcxGridDBColumn
        Caption = 'Project #'
        DataBinding.FieldName = 'PRJNO'
        HeaderAlignmentHorz = taCenter
      end
      object view_wo: TcxGridDBColumn
        Caption = 'WO #'
        DataBinding.FieldName = 'WO'
        HeaderAlignmentHorz = taCenter
      end
      object view_line: TcxGridDBColumn
        Caption = 'Line'
        DataBinding.FieldName = 'line'
        HeaderAlignmentHorz = taCenter
      end
      object view_cstyle: TcxGridDBColumn
        Caption = 'Cust Style'
        DataBinding.FieldName = 'Cstyle'
        HeaderAlignmentHorz = taCenter
        Width = 123
      end
      object view_ttlsah: TcxGridDBColumn
        Caption = 'TTL SAH'
        DataBinding.FieldName = 'ttlsah'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        HeaderAlignmentHorz = taCenter
      end
      object view_output: TcxGridDBColumn
        Caption = 'Output'
        DataBinding.FieldName = 'output'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#0'
        HeaderAlignmentHorz = taCenter
      end
      object view_sah: TcxGridDBColumn
        Caption = 'W/A SAH'
        DataBinding.FieldName = 'Sah'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.0000'
        HeaderAlignmentHorz = taCenter
      end
      object view_psah: TcxGridDBColumn
        Caption = 'TTL SAH (P)'
        DataBinding.FieldName = 'TPSAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object view_fsah: TcxGridDBColumn
        Caption = 'TTL SAH (F)'
        DataBinding.FieldName = 'TFSAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object view_asah: TcxGridDBColumn
        Caption = 'TTL SAH (AL)'
        DataBinding.FieldName = 'TASAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object view_esah: TcxGridDBColumn
        Caption = 'TTL SAH (E)'
        DataBinding.FieldName = 'TESAH'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '0.00'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 317
    Width = 837
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 16
      Top = 6
      Width = 105
      Height = 25
      Caption = 'Export to Excel'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 127
      Top = 6
      Width = 105
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select * from sp_gentmeff_customer_out('#39'SL'#39','#39'2013-05-01'#39','#39'2013-0' +
      '5-20'#39') '
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query1AfterOpen
    Left = 48
    Top = 128
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 144
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel File (*.xls)|*.xls|All (*.*)|*.*'
    Left = 184
    Top = 144
  end
end
