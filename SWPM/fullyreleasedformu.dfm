object frmfullyreleased: Tfrmfullyreleased
  Left = 0
  Top = 0
  Caption = 'Fully released items dd'
  ClientHeight = 287
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 75
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Fty '
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 18
      Height = 13
      Caption = 'Div '
    end
    object Label3: TLabel
      Left = 295
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Cust Class '
    end
    object Label4: TLabel
      Left = 460
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Proj# '
    end
    object Label5: TLabel
      Left = 32
      Top = 43
      Width = 73
      Height = 13
      Caption = 'Ex-fty dd from '
    end
    object Label6: TLabel
      Left = 224
      Top = 43
      Width = 13
      Height = 13
      Caption = 'to '
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 16
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'SL'
        'GX'
        'CN'
        'CL'
        'ALL')
    end
    object ComboBox2: TComboBox
      Left = 200
      Top = 16
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Items.Strings = (
        ''
        'A'
        'B'
        'C'
        'D')
    end
    object Edit1: TEdit
      Left = 351
      Top = 16
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 492
      Top = 16
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object DateEdit1: TDateEdit
      Left = 112
      Top = 43
      Width = 98
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object DateEdit2: TDateEdit
      Left = 243
      Top = 43
      Width = 98
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 616
      Top = 43
      Width = 73
      Height = 25
      Caption = 'Confirm'
      Default = True
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
      TabOrder = 6
      OnClick = BitBtn1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 75
    Width = 791
    Height = 171
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Filter.OnChanged = cxView1DataControllerFilterChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#0'
          Kind = skSum
          Column = cxSCQTY
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxSHPQTY
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxDEDUCTQTY
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxBALQTY
        end
        item
          Format = '#0'
          Kind = skSum
          Column = cxJ2_JOB
        end
        item
          Column = cxJ_NO
        end
        item
          Column = cxARTNO
        end
        item
          Column = cxFULLYRELEASED
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.BandHeaderHeight = 30
      Bands = <
        item
          Caption = 'Fty'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Proj#'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'WO'#13#10'Ttl'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'ERP Sty#'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Qty'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Ex-fty dd'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Sty'#13#10'Status'
          HeaderAlignmentVert = vaTop
        end
        item
          Caption = 'Fully'#13#10'Released dd'
          HeaderAlignmentVert = vaTop
        end>
      object cxJ_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'J_NO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxJ2_JOB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'J2_JOB'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxARTNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ARTNO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxSCQTY: TcxGridDBBandedColumn
        Caption = 'WO Qty'#13#10'(Sty)'
        DataBinding.FieldName = 'SCQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxSHPQTY: TcxGridDBBandedColumn
        Caption = 'Shpt Qty'
        DataBinding.FieldName = 'SHPQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxDEDUCTQTY: TcxGridDBBandedColumn
        Caption = 'Short Shpt'#13#10'Qty'
        DataBinding.FieldName = 'DEDUCTQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxBALQTY: TcxGridDBBandedColumn
        Caption = 'Shpt'#13#10'Bal Qty'
        DataBinding.FieldName = 'BALQTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxYQLCRQ: TcxGridDBBandedColumn
        Caption = 'Def.'#13#10'/Adj.'
        DataBinding.FieldName = 'YQLCRQ'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxPDN_A: TcxGridDBBandedColumn
        Caption = 'Latest'#13#10'Actual'
        DataBinding.FieldName = 'PDN_A'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 60
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxCMPL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CMPL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 55
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxFULLYRELEASED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FULLYRELEASED'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.InputKind = ikStandard
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.WeekNumbers = True
        HeaderAlignmentHorz = taCenter
        Width = 88
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxFTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FTY'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 246
    Width = 791
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 18
      Top = 9
      Width = 73
      Height = 25
      Caption = 'Save'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
        2222200000000002222203300007030222220330000703000222033000000303
        0222033333333303000203300000330303020307777703030302030777770303
        0302030777770003030203077777070303020000000000000302220307777707
        0302220000000000000222220307777707022222000000000002}
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 90
      Top = 9
      Width = 73
      Height = 25
      Caption = 'Exit'
      Kind = bkClose
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 152
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_swpm_fullyreleased'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'J2_JOB'
        DataType = ftInteger
      end
      item
        Name = 'ARTNO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SCQTY'
        DataType = ftInteger
      end
      item
        Name = 'SHPQTY'
        DataType = ftInteger
      end
      item
        Name = 'DEDUCTQTY'
        DataType = ftInteger
      end
      item
        Name = 'BALQTY'
        DataType = ftInteger
      end
      item
        Name = 'YQLCRQ'
        DataType = ftDate
      end
      item
        Name = 'PDN_A'
        DataType = ftDate
      end
      item
        Name = 'CMPL'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FULLYRELEASED'
        DataType = ftDate
      end
      item
        Name = 'FTY'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'fty;j_no;artno'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 136
    Top = 152
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 152
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 192
    Top = 152
  end
  object qry1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 424
    Top = 152
  end
  object qry2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 456
    Top = 152
  end
end
