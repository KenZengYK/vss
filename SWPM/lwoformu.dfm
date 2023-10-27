object frmlwo: Tfrmlwo
  Left = 199
  Top = 154
  Caption = 'QN summary'
  ClientHeight = 288
  ClientWidth = 1318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 33
    Width = 1318
    Height = 214
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 2
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <
          item
            Value = 'Total'
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Size'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'RWO Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'PQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'QN Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'AQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Pick Qty (+/-)'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 1|Picked Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Flow 1|Picked Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TTQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 1|T1 Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 1|T1 Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T1B'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 2|Served Qty'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TSQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 2|Sewn Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Flow 2|Sewn Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TAQL'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 2|AQL Qty'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 2|T2 Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Flow 2|T2 Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 3|iPack Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Flow 3|iPack Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 3|cPacked Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Flow 3|cPacked Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Flow 3|T3 Qty'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TEQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Flow 4|Ex-fty Qty|Cut-off'
        Width = 50
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Flow 4|Ex-fty Qty|Actd'
        Width = 27
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TIQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Flow 4|Invoiced'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CMP'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Picked'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'CMP1'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|T1'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CMPS'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Sewn'
      end
      item
        EditButtons = <>
        FieldName = 'CMPAQL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Complete|AQL'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'CMP2'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|T2'
      end
      item
        EditButtons = <>
        FieldName = 'CMPIP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Complete|iP'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'CMP3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|cP'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMP3'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|T3'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'CMP4'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Ex-fty'
      end
      item
        EditButtons = <>
        FieldName = 'CMPI'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Complete|Invoiced'
        Width = 46
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 1318
    Height = 214
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'PSIZ'
        Footers = <
          item
            Value = 'Ttl:-'
            ValueType = fvtStaticText
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Order Information|Size'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'cwoqty1'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Order Information|CWO Qty'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'PQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Order Information|QN Qty|Org.'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Order Information|QN Qty|Adj.'
        Width = 45
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 1|Picked| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns4EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 1|Picked| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TTQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 1|T1| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns5EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP1'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 1|T1| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 15850183
        EditButtons = <>
        FieldName = 'TTQTY'
        Footers = <
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|B Ws|Issued| '
        Visible = False
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMP1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|B Ws|Issued| '
        Title.Color = 16776176
        Visible = False
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'B_QTY'
        Footers = <
          item
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|B Ws|Sewn| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns7EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMPB'
        Footers = <>
        Title.Caption = 'Production flow|Flow 2|B Ws|Sewn| '
        Title.Color = 16776176
        Width = 20
      end
      item
        Color = 15850183
        EditButtons = <>
        FieldName = 'B_QTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|F Ws|Issued| '
        Visible = False
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMPB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|F Ws|Issued| '
        Title.Color = 16776176
        Visible = False
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'T1B'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Production flow|Flow 2|F Ws|Sewn| '
        Visible = False
        Width = 45
        OnEditButtonClick = DBGridEh1Columns9EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMPT1B'
        Footers = <>
        Title.Caption = 'Production flow|Flow 2|F Ws|Sewn| '
        Title.Color = 16776176
        Visible = False
        Width = 20
      end
      item
        Color = 15850183
        EditButtons = <>
        FieldName = 'B_QTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Production flow|Flow 2|AL Ws|Issued| '
        Visible = False
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMPB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|AL Ws|Issued| '
        Title.Color = 16776176
        Visible = False
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TAQL'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Production flow|Flow 2|AL Ws|Sewn| '
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMPAQL'
        Footers = <>
        Title.Caption = 'Production flow|Flow 2|AL Ws|Sewn| '
        Title.Color = 16776176
        Width = 20
      end
      item
        Color = 15850183
        EditButtons = <>
        FieldName = 'TAQL'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Production flow|Flow 2|E Ws|Issued| '
        Visible = False
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CMPAQL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|E Ws|Issued| '
        Title.Color = 16776176
        Visible = False
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TSQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|E Ws|Sewn| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns6EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMPS'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|E Ws|Sewn| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Production flow|Flow 2|Simply Packed (GX sP)| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns15EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|Simply Packed (GX sP)| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|T2| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns15EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP2'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 2|T2| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TPQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 3|Individual Packed (iP)| '
        Width = 50
        OnEditButtonClick = DBGridEh1Columns15EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 3|Individual Packed (iP)| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 3|Carton Packed (cP)| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns17EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Serif'
        Font.Style = []
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 3|Carton Packed (cP)| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TFQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 3|T3| '
        Width = 45
        OnEditButtonClick = DBGridEh1Columns18EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP3'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 3|T3| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'AQ_QTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 4|AQL (Pass)| '
        Width = 47
        OnEditButtonClick = DBGridEh1Columns19EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP_AQ'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 4|AQL (Pass)| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TEQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 4|Ex-fty| '
        Width = 42
        OnEditButtonClick = DBGridEh1Columns10EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMP4'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 4|Ex-fty| '
        Title.Color = 16776176
        Width = 20
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'TIQTY'
        Footers = <
          item
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 4|Invoice| '
        Width = 41
        OnEditButtonClick = DBGridEh1Columns11EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'CMPI'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Production flow|Flow 4|Invoice| '
        Title.Color = 16776176
        Width = 20
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1318
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Proj#'
    end
    object Label2: TLabel
      Left = 309
      Top = 8
      Width = 23
      Height = 13
      Caption = 'QN#'
    end
    object Label3: TLabel
      Left = 431
      Top = 8
      Width = 10
      Height = 13
      Caption = ' - '
    end
    object Label5: TLabel
      Left = 571
      Top = 8
      Width = 57
      Height = 13
      Caption = 'ERP Clr Cde'
    end
    object Label6: TLabel
      Left = 711
      Top = 8
      Width = 36
      Height = 13
      Caption = 'QN Qty'
    end
    object DBText1: TDBText
      Left = 215
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'J_no'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 346
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'J2_job'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 442
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'RWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 479
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'FCCS'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 637
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Acol'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 756
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Scqty'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 91
      Top = 8
      Width = 19
      Height = 13
      Caption = 'Line'
    end
    object DBText7: TDBText
      Left = 115
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'Pline'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 404
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'CWO'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 393
      Top = 8
      Width = 10
      Height = 13
      Caption = ' - '
    end
    object Label4: TLabel
      Left = 467
      Top = 8
      Width = 10
      Height = 13
      Caption = ' - '
    end
    object Label10: TLabel
      Left = 22
      Top = 8
      Width = 16
      Height = 13
      Caption = 'Fty'
    end
    object DBText9: TDBText
      Left = 44
      Top = 8
      Width = 41
      Height = 13
      AutoSize = True
      DataField = 'TPLANT'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 801
      Top = 8
      Width = 21
      Height = 13
      Caption = ' ( = '
    end
    object DBText10: TDBText
      Left = 828
      Top = 8
      Width = 31
      Height = 13
      DataField = 'PFYC'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 865
      Top = 8
      Width = 14
      Height = 13
      Caption = ' + '
    end
    object DBText11: TDBText
      Left = 885
      Top = 8
      Width = 18
      Height = 13
      DataField = 'EYC'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 903
      Top = 8
      Width = 10
      Height = 13
      Caption = ' ) '
    end
    object Label14: TLabel
      Left = 968
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Non QN Qty '
    end
    object DBText12: TDBText
      Left = 1035
      Top = 8
      Width = 54
      Height = 13
      DataField = 'LBL_DIFF'
      DataSource = worksheet1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 247
    Width = 1318
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label8: TLabel
      Left = 376
      Top = 16
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 57
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
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 72
      Top = 8
      Width = 95
      Height = 25
      Caption = 'Confirm SKU'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 166
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Summary'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 262
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Flow 1'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 350
      Top = 8
      Width = 93
      Height = 25
      Caption = 'Flow 2'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 442
      Top = 8
      Width = 88
      Height = 25
      Caption = 'Flow 3'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 529
      Top = 8
      Width = 72
      Height = 25
      Caption = 'Flow 4'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 600
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Remarks'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 688
      Top = 8
      Width = 114
      Height = 25
      Caption = 'Confirm picked'
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377F3333333333000033334224333333333333
        337337F3333333330000333422224333333333333733337F3333333300003342
        222224333333333373333337F3333333000034222A22224333333337F337F333
        7F33333300003222A3A2224333333337F3737F337F33333300003A2A333A2224
        33333337F73337F337F33333000033A33333A222433333337333337F337F3333
        0000333333333A222433333333333337F337F33300003333333333A222433333
        333333337F337F33000033333333333A222433333333333337F337F300003333
        33333333A222433333333333337F337F00003333333333333A22433333333333
        3337F37F000033333333333333A223333333333333337F730000333333333333
        333A333333333333333337330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 968
      Top = 6
      Width = 104
      Height = 25
      Caption = 'SKU Exchange'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FF3FFFFFFF3FFFF003000000030
        0000773777777737777703330030033300037FFF77F77FFF7773700007330000
        003377777733777777F3303003330030003337F77F3377F77733303073333030
        033337F77F3337F77F3337007333300003333777733337777333330033333000
        33333377F3333777F33333073333330033333377333333773333333333333333
        33333333FF333333FF33333973333337933333377FF333377F33333999333399
        93333337773333777F333339933333399333333773FF33377F33333939733793
        93333337377FF773733333333399993333333333337777333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 10
      Visible = False
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 896
      Top = 6
      Width = 89
      Height = 25
      Caption = 'QN Notes'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      ParentDoubleBuffered = False
      TabOrder = 2
      Visible = False
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 801
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 11
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 839
    Top = 179
    Width = 129
    Height = 21
    Date = 39022.986033344900000000
    Time = 39022.986033344900000000
    TabOrder = 3
    Visible = False
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo where pline='#39'T002'#39
    FieldDefs = <
      item
        Name = 'PLINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J_NO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ORDLINE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'J2_JOB'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'RWO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ACOL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'DID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CUP'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'SIZ'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PSIZ'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'AQTY'
        DataType = ftInteger
      end
      item
        Name = 'TQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP'
        DataType = ftBoolean
      end
      item
        Name = 'TQ1'
        DataType = ftInteger
      end
      item
        Name = 'TQ2'
        DataType = ftInteger
      end
      item
        Name = 'TQ3'
        DataType = ftInteger
      end
      item
        Name = 'TQ4'
        DataType = ftInteger
      end
      item
        Name = 'TQ5'
        DataType = ftInteger
      end
      item
        Name = 'TQ6'
        DataType = ftInteger
      end
      item
        Name = 'TQ7'
        DataType = ftInteger
      end
      item
        Name = 'TQ8'
        DataType = ftInteger
      end
      item
        Name = 'TQ9'
        DataType = ftInteger
      end
      item
        Name = 'TQ10'
        DataType = ftInteger
      end
      item
        Name = 'TDT1'
        DataType = ftDate
      end
      item
        Name = 'TDT2'
        DataType = ftDate
      end
      item
        Name = 'TDT3'
        DataType = ftDate
      end
      item
        Name = 'TDT4'
        DataType = ftDate
      end
      item
        Name = 'TDT5'
        DataType = ftDate
      end
      item
        Name = 'TDT6'
        DataType = ftDate
      end
      item
        Name = 'TDT7'
        DataType = ftDate
      end
      item
        Name = 'TDT8'
        DataType = ftDate
      end
      item
        Name = 'TDT9'
        DataType = ftDate
      end
      item
        Name = 'TDT10'
        DataType = ftDate
      end
      item
        Name = 'PQTY'
        DataType = ftInteger
      end
      item
        Name = 'TTQ1'
        DataType = ftInteger
      end
      item
        Name = 'TTQ2'
        DataType = ftInteger
      end
      item
        Name = 'TTQ3'
        DataType = ftInteger
      end
      item
        Name = 'TTQ4'
        DataType = ftInteger
      end
      item
        Name = 'TTQ5'
        DataType = ftInteger
      end
      item
        Name = 'TTQ6'
        DataType = ftInteger
      end
      item
        Name = 'TTQ7'
        DataType = ftInteger
      end
      item
        Name = 'TTQ8'
        DataType = ftInteger
      end
      item
        Name = 'TTQ9'
        DataType = ftInteger
      end
      item
        Name = 'TTQ10'
        DataType = ftInteger
      end
      item
        Name = 'CMP1'
        DataType = ftBoolean
      end
      item
        Name = 'TTQTY'
        DataType = ftInteger
      end
      item
        Name = 'DT'
        DataType = ftDateTime
      end
      item
        Name = 'TTD1'
        DataType = ftDate
      end
      item
        Name = 'TTD2'
        DataType = ftDate
      end
      item
        Name = 'TTD3'
        DataType = ftDate
      end
      item
        Name = 'TTD4'
        DataType = ftDate
      end
      item
        Name = 'TTD5'
        DataType = ftDate
      end
      item
        Name = 'TTD6'
        DataType = ftDate
      end
      item
        Name = 'TTD7'
        DataType = ftDate
      end
      item
        Name = 'TTD8'
        DataType = ftDate
      end
      item
        Name = 'TTD9'
        DataType = ftDate
      end
      item
        Name = 'TTD10'
        DataType = ftDate
      end
      item
        Name = 'PQ1'
        DataType = ftInteger
      end
      item
        Name = 'PQ2'
        DataType = ftInteger
      end
      item
        Name = 'PQ3'
        DataType = ftInteger
      end
      item
        Name = 'PQ4'
        DataType = ftInteger
      end
      item
        Name = 'PQ5'
        DataType = ftInteger
      end
      item
        Name = 'PQ6'
        DataType = ftInteger
      end
      item
        Name = 'PDT1'
        DataType = ftDate
      end
      item
        Name = 'PDT2'
        DataType = ftDate
      end
      item
        Name = 'PDT3'
        DataType = ftDate
      end
      item
        Name = 'PDT4'
        DataType = ftDate
      end
      item
        Name = 'PDT5'
        DataType = ftDate
      end
      item
        Name = 'PDT6'
        DataType = ftDate
      end
      item
        Name = 'FQ1'
        DataType = ftInteger
      end
      item
        Name = 'FQ2'
        DataType = ftInteger
      end
      item
        Name = 'FQ3'
        DataType = ftInteger
      end
      item
        Name = 'FQ4'
        DataType = ftInteger
      end
      item
        Name = 'FQ5'
        DataType = ftInteger
      end
      item
        Name = 'FDT1'
        DataType = ftDate
      end
      item
        Name = 'FDT2'
        DataType = ftDate
      end
      item
        Name = 'FDT3'
        DataType = ftDate
      end
      item
        Name = 'FDT4'
        DataType = ftDate
      end
      item
        Name = 'FDT5'
        DataType = ftDate
      end
      item
        Name = 'TPQTY'
        DataType = ftInteger
      end
      item
        Name = 'TFQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP2'
        DataType = ftBoolean
      end
      item
        Name = 'CMP3'
        DataType = ftBoolean
      end
      item
        Name = 'EQ1'
        DataType = ftInteger
      end
      item
        Name = 'EQ2'
        DataType = ftInteger
      end
      item
        Name = 'EQ3'
        DataType = ftInteger
      end
      item
        Name = 'TED1'
        DataType = ftDate
      end
      item
        Name = 'TED2'
        DataType = ftDate
      end
      item
        Name = 'TED3'
        DataType = ftDate
      end
      item
        Name = 'TEQTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP4'
        DataType = ftBoolean
      end
      item
        Name = 'TSQTY'
        DataType = ftInteger
      end
      item
        Name = 'PQ7'
        DataType = ftInteger
      end
      item
        Name = 'PQ8'
        DataType = ftInteger
      end
      item
        Name = 'PQ9'
        DataType = ftInteger
      end
      item
        Name = 'PQ10'
        DataType = ftInteger
      end
      item
        Name = 'PDT7'
        DataType = ftDate
      end
      item
        Name = 'PDT8'
        DataType = ftDate
      end
      item
        Name = 'PDT9'
        DataType = ftDate
      end
      item
        Name = 'PDT10'
        DataType = ftDate
      end
      item
        Name = 'CMPS'
        DataType = ftBoolean
      end
      item
        Name = 'CMPI'
        DataType = ftBoolean
      end
      item
        Name = 'IQ1'
        DataType = ftInteger
      end
      item
        Name = 'IQ2'
        DataType = ftInteger
      end
      item
        Name = 'IQ3'
        DataType = ftInteger
      end
      item
        Name = 'TIQTY'
        DataType = ftInteger
      end
      item
        Name = 'IDT1'
        DataType = ftDate
      end
      item
        Name = 'IDT2'
        DataType = ftDate
      end
      item
        Name = 'IDT3'
        DataType = ftDate
      end
      item
        Name = 'T3DIFF'
        DataType = ftInteger
      end
      item
        Name = 'T2DIFF'
        DataType = ftInteger
      end
      item
        Name = 'T1DIFF'
        DataType = ftInteger
      end
      item
        Name = 'TSDIFF'
        DataType = ftInteger
      end
      item
        Name = 'PADIFF'
        DataType = ftInteger
      end
      item
        Name = 'PQ11'
        DataType = ftInteger
      end
      item
        Name = 'PQ12'
        DataType = ftInteger
      end
      item
        Name = 'PQ13'
        DataType = ftInteger
      end
      item
        Name = 'PQ14'
        DataType = ftInteger
      end
      item
        Name = 'PQ15'
        DataType = ftInteger
      end
      item
        Name = 'PQ16'
        DataType = ftInteger
      end
      item
        Name = 'PQ17'
        DataType = ftInteger
      end
      item
        Name = 'PQ18'
        DataType = ftInteger
      end
      item
        Name = 'PQ19'
        DataType = ftInteger
      end
      item
        Name = 'PQ20'
        DataType = ftInteger
      end
      item
        Name = 'PDT11'
        DataType = ftDate
      end
      item
        Name = 'PDT12'
        DataType = ftDate
      end
      item
        Name = 'PDT13'
        DataType = ftDate
      end
      item
        Name = 'PDT14'
        DataType = ftDate
      end
      item
        Name = 'PDT15'
        DataType = ftDate
      end
      item
        Name = 'PDT16'
        DataType = ftDate
      end
      item
        Name = 'PDT17'
        DataType = ftDate
      end
      item
        Name = 'PDT18'
        DataType = ftDate
      end
      item
        Name = 'PDT19'
        DataType = ftDate
      end
      item
        Name = 'PDT20'
        DataType = ftDate
      end
      item
        Name = 'EQ4'
        DataType = ftInteger
      end
      item
        Name = 'EQ5'
        DataType = ftInteger
      end
      item
        Name = 'TED4'
        DataType = ftDate
      end
      item
        Name = 'TED5'
        DataType = ftDate
      end
      item
        Name = 'TIP'
        DataType = ftInteger
      end
      item
        Name = 'TAQL'
        DataType = ftInteger
      end
      item
        Name = 'CMPIP'
        DataType = ftBoolean
      end
      item
        Name = 'CMPAQL'
        DataType = ftBoolean
      end
      item
        Name = 'TQN'
        DataType = ftInteger
      end
      item
        Name = 'IGA_P'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EPDN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'IP1'
        DataType = ftInteger
      end
      item
        Name = 'IP2'
        DataType = ftInteger
      end
      item
        Name = 'IP3'
        DataType = ftInteger
      end
      item
        Name = 'IP4'
        DataType = ftInteger
      end
      item
        Name = 'IP5'
        DataType = ftInteger
      end
      item
        Name = 'IPD1'
        DataType = ftDate
      end
      item
        Name = 'IPD2'
        DataType = ftDate
      end
      item
        Name = 'IPD3'
        DataType = ftDate
      end
      item
        Name = 'IPD4'
        DataType = ftDate
      end
      item
        Name = 'IPD5'
        DataType = ftDate
      end
      item
        Name = 'IPDIFF'
        DataType = ftInteger
      end
      item
        Name = 'IDIFF'
        DataType = ftInteger
      end
      item
        Name = 'AQ1'
        DataType = ftInteger
      end
      item
        Name = 'AQ2'
        DataType = ftInteger
      end
      item
        Name = 'AQ3'
        DataType = ftInteger
      end
      item
        Name = 'ADT1'
        DataType = ftDate
      end
      item
        Name = 'ADT2'
        DataType = ftDate
      end
      item
        Name = 'ADT3'
        DataType = ftDate
      end
      item
        Name = 'AQ01'
        DataType = ftInteger
      end
      item
        Name = 'AQ001'
        DataType = ftInteger
      end
      item
        Name = 'AQ02'
        DataType = ftInteger
      end
      item
        Name = 'AQ002'
        DataType = ftInteger
      end
      item
        Name = 'AQ03'
        DataType = ftInteger
      end
      item
        Name = 'AQ003'
        DataType = ftInteger
      end
      item
        Name = 'IQ4'
        DataType = ftInteger
      end
      item
        Name = 'IQ5'
        DataType = ftInteger
      end
      item
        Name = 'IDT4'
        DataType = ftDate
      end
      item
        Name = 'IDT5'
        DataType = ftDate
      end
      item
        Name = 'EQ6'
        DataType = ftInteger
      end
      item
        Name = 'EQ7'
        DataType = ftInteger
      end
      item
        Name = 'EQ8'
        DataType = ftInteger
      end
      item
        Name = 'EQ9'
        DataType = ftInteger
      end
      item
        Name = 'EQ10'
        DataType = ftInteger
      end
      item
        Name = 'IQ6'
        DataType = ftInteger
      end
      item
        Name = 'IQ7'
        DataType = ftInteger
      end
      item
        Name = 'IQ8'
        DataType = ftInteger
      end
      item
        Name = 'IQ9'
        DataType = ftInteger
      end
      item
        Name = 'IQ10'
        DataType = ftInteger
      end
      item
        Name = 'TED6'
        DataType = ftDate
      end
      item
        Name = 'TED7'
        DataType = ftDate
      end
      item
        Name = 'TED8'
        DataType = ftDate
      end
      item
        Name = 'TED9'
        DataType = ftDate
      end
      item
        Name = 'TED10'
        DataType = ftDate
      end
      item
        Name = 'IDT6'
        DataType = ftDate
      end
      item
        Name = 'IDT7'
        DataType = ftDate
      end
      item
        Name = 'IDT8'
        DataType = ftDate
      end
      item
        Name = 'IDT9'
        DataType = ftDate
      end
      item
        Name = 'IDT10'
        DataType = ftDate
      end
      item
        Name = 'EPDN6'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN7'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN8'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN9'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN10'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'T1B'
        DataType = ftInteger
      end
      item
        Name = 'CMPT1B'
        DataType = ftBoolean
      end
      item
        Name = 'BCN1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN2'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN3'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN4'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN5'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN6'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN7'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN8'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN9'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN10'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ADT4'
        DataType = ftDate
      end
      item
        Name = 'ADT5'
        DataType = ftDate
      end
      item
        Name = 'ADT6'
        DataType = ftDate
      end
      item
        Name = 'ADT7'
        DataType = ftDate
      end
      item
        Name = 'ADT8'
        DataType = ftDate
      end
      item
        Name = 'ADT9'
        DataType = ftDate
      end
      item
        Name = 'ADT10'
        DataType = ftDate
      end
      item
        Name = 'AQ10'
        DataType = ftInteger
      end
      item
        Name = 'ETM1'
        DataType = ftTime
      end
      item
        Name = 'ETM2'
        DataType = ftTime
      end
      item
        Name = 'ETM3'
        DataType = ftTime
      end
      item
        Name = 'ETM4'
        DataType = ftTime
      end
      item
        Name = 'ETM5'
        DataType = ftTime
      end
      item
        Name = 'ETM6'
        DataType = ftTime
      end
      item
        Name = 'ETM7'
        DataType = ftTime
      end
      item
        Name = 'ETM8'
        DataType = ftTime
      end
      item
        Name = 'ETM9'
        DataType = ftTime
      end
      item
        Name = 'ETM10'
        DataType = ftTime
      end
      item
        Name = 'AQ11'
        DataType = ftInteger
      end
      item
        Name = 'AQ12'
        DataType = ftInteger
      end
      item
        Name = 'AQ13'
        DataType = ftInteger
      end
      item
        Name = 'AQ14'
        DataType = ftInteger
      end
      item
        Name = 'AQ15'
        DataType = ftInteger
      end
      item
        Name = 'AQ16'
        DataType = ftInteger
      end
      item
        Name = 'AQ17'
        DataType = ftInteger
      end
      item
        Name = 'AQ18'
        DataType = ftInteger
      end
      item
        Name = 'AQ19'
        DataType = ftInteger
      end
      item
        Name = 'AQ20'
        DataType = ftInteger
      end
      item
        Name = 'ADT11'
        DataType = ftDate
      end
      item
        Name = 'ADT12'
        DataType = ftDate
      end
      item
        Name = 'ADT13'
        DataType = ftDate
      end
      item
        Name = 'ADT14'
        DataType = ftDate
      end
      item
        Name = 'ADT15'
        DataType = ftDate
      end
      item
        Name = 'ADT16'
        DataType = ftDate
      end
      item
        Name = 'ADT17'
        DataType = ftDate
      end
      item
        Name = 'ADT18'
        DataType = ftDate
      end
      item
        Name = 'ADT19'
        DataType = ftDate
      end
      item
        Name = 'ADT20'
        DataType = ftDate
      end
      item
        Name = 'TQ11'
        DataType = ftInteger
      end
      item
        Name = 'TQ12'
        DataType = ftInteger
      end
      item
        Name = 'TQ13'
        DataType = ftInteger
      end
      item
        Name = 'TQ14'
        DataType = ftInteger
      end
      item
        Name = 'TQ15'
        DataType = ftInteger
      end
      item
        Name = 'TQ16'
        DataType = ftInteger
      end
      item
        Name = 'TQ17'
        DataType = ftInteger
      end
      item
        Name = 'TQ18'
        DataType = ftInteger
      end
      item
        Name = 'TQ19'
        DataType = ftInteger
      end
      item
        Name = 'TQ20'
        DataType = ftInteger
      end
      item
        Name = 'TDT11'
        DataType = ftDate
      end
      item
        Name = 'TDT12'
        DataType = ftDate
      end
      item
        Name = 'TDT13'
        DataType = ftDate
      end
      item
        Name = 'TDT14'
        DataType = ftDate
      end
      item
        Name = 'TDT15'
        DataType = ftDate
      end
      item
        Name = 'TDT16'
        DataType = ftDate
      end
      item
        Name = 'TDT17'
        DataType = ftDate
      end
      item
        Name = 'TDT18'
        DataType = ftDate
      end
      item
        Name = 'TDT19'
        DataType = ftDate
      end
      item
        Name = 'TDT20'
        DataType = ftDate
      end
      item
        Name = 'TTQ11'
        DataType = ftInteger
      end
      item
        Name = 'TTQ12'
        DataType = ftInteger
      end
      item
        Name = 'TTQ13'
        DataType = ftInteger
      end
      item
        Name = 'TTQ14'
        DataType = ftInteger
      end
      item
        Name = 'TTQ15'
        DataType = ftInteger
      end
      item
        Name = 'TTQ16'
        DataType = ftInteger
      end
      item
        Name = 'TTQ17'
        DataType = ftInteger
      end
      item
        Name = 'TTQ18'
        DataType = ftInteger
      end
      item
        Name = 'TTQ19'
        DataType = ftInteger
      end
      item
        Name = 'TTQ20'
        DataType = ftInteger
      end
      item
        Name = 'TTD11'
        DataType = ftDate
      end
      item
        Name = 'TTD12'
        DataType = ftDate
      end
      item
        Name = 'TTD13'
        DataType = ftDate
      end
      item
        Name = 'TTD14'
        DataType = ftDate
      end
      item
        Name = 'TTD15'
        DataType = ftDate
      end
      item
        Name = 'TTD16'
        DataType = ftDate
      end
      item
        Name = 'TTD17'
        DataType = ftDate
      end
      item
        Name = 'TTD18'
        DataType = ftDate
      end
      item
        Name = 'TTD19'
        DataType = ftDate
      end
      item
        Name = 'TTD20'
        DataType = ftDate
      end
      item
        Name = 'FQ6'
        DataType = ftInteger
      end
      item
        Name = 'FDT6'
        DataType = ftDate
      end
      item
        Name = 'FQ7'
        DataType = ftInteger
      end
      item
        Name = 'FDT7'
        DataType = ftDate
      end
      item
        Name = 'FQ8'
        DataType = ftInteger
      end
      item
        Name = 'FDT8'
        DataType = ftDate
      end
      item
        Name = 'FQ9'
        DataType = ftInteger
      end
      item
        Name = 'FDT9'
        DataType = ftDate
      end
      item
        Name = 'FQ10'
        DataType = ftInteger
      end
      item
        Name = 'FDT10'
        DataType = ftDate
      end
      item
        Name = 'EQ11'
        DataType = ftInteger
      end
      item
        Name = 'EQ12'
        DataType = ftInteger
      end
      item
        Name = 'EQ13'
        DataType = ftInteger
      end
      item
        Name = 'EQ14'
        DataType = ftInteger
      end
      item
        Name = 'EQ15'
        DataType = ftInteger
      end
      item
        Name = 'TED11'
        DataType = ftDate
      end
      item
        Name = 'TED12'
        DataType = ftDate
      end
      item
        Name = 'TED13'
        DataType = ftDate
      end
      item
        Name = 'TED14'
        DataType = ftDate
      end
      item
        Name = 'TED15'
        DataType = ftDate
      end
      item
        Name = 'EPDN11'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN12'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN13'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN14'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EPDN15'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN11'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN12'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN13'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN14'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BCN15'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'ETM11'
        DataType = ftTime
      end
      item
        Name = 'ETM12'
        DataType = ftTime
      end
      item
        Name = 'ETM13'
        DataType = ftTime
      end
      item
        Name = 'ETM14'
        DataType = ftTime
      end
      item
        Name = 'ETM15'
        DataType = ftTime
      end
      item
        Name = 'IQ11'
        DataType = ftInteger
      end
      item
        Name = 'IQ12'
        DataType = ftInteger
      end
      item
        Name = 'IQ13'
        DataType = ftInteger
      end
      item
        Name = 'IQ14'
        DataType = ftInteger
      end
      item
        Name = 'IQ15'
        DataType = ftInteger
      end
      item
        Name = 'IDT11'
        DataType = ftDate
      end
      item
        Name = 'IDT12'
        DataType = ftDate
      end
      item
        Name = 'IDT13'
        DataType = ftDate
      end
      item
        Name = 'IDT14'
        DataType = ftDate
      end
      item
        Name = 'IDT15'
        DataType = ftDate
      end
      item
        Name = 'FQ11'
        DataType = ftInteger
      end
      item
        Name = 'FDT11'
        DataType = ftDate
      end
      item
        Name = 'FQ12'
        DataType = ftInteger
      end
      item
        Name = 'FDT12'
        DataType = ftDate
      end
      item
        Name = 'FQ13'
        DataType = ftInteger
      end
      item
        Name = 'FDT13'
        DataType = ftDate
      end
      item
        Name = 'FQ14'
        DataType = ftInteger
      end
      item
        Name = 'FDT14'
        DataType = ftDate
      end
      item
        Name = 'FQ15'
        DataType = ftInteger
      end
      item
        Name = 'FDT15'
        DataType = ftDate
      end
      item
        Name = 'FQ16'
        DataType = ftInteger
      end
      item
        Name = 'FDT16'
        DataType = ftDate
      end
      item
        Name = 'FQ17'
        DataType = ftInteger
      end
      item
        Name = 'FDT17'
        DataType = ftDate
      end
      item
        Name = 'FQ18'
        DataType = ftInteger
      end
      item
        Name = 'FDT18'
        DataType = ftDate
      end
      item
        Name = 'FQ19'
        DataType = ftInteger
      end
      item
        Name = 'FDT19'
        DataType = ftDate
      end
      item
        Name = 'FQ20'
        DataType = ftInteger
      end
      item
        Name = 'FDT20'
        DataType = ftDate
      end
      item
        Name = 'CMPPF'
        DataType = ftBoolean
      end
      item
        Name = 'CMPAL'
        DataType = ftBoolean
      end
      item
        Name = 'CMPB'
        DataType = ftBoolean
      end
      item
        Name = 'B_QTY'
        DataType = ftInteger
      end
      item
        Name = 'AQ_QTY'
        DataType = ftInteger
      end
      item
        Name = 'CMP_AQ'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'did'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query1AfterOpen
    AfterPost = Query1AfterPost
    Left = 56
    Top = 128
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 88
    Top = 128
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 192
    Top = 128
  end
  object Query4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 216
    Top = 128
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource4
    UserName = 'DBPipeline1'
    Left = 280
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 168
    object Removeall1: TMenuItem
      Caption = 'Remove all'
      ShortCut = 49220
      Visible = False
      OnClick = Removeall1Click
    end
    object CancelConfirm1: TMenuItem
      Caption = 'Cancel Confirm'
      OnClick = CancelConfirm1Click
    end
    object SampleQty1: TMenuItem
      Caption = 'Deduction Qty'
      OnClick = SampleQty1Click
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 312
    Top = 88
    Version = '11.08'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39158
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty Note Transit Summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5969
        mmLeft = 95779
        mmTop = 3704
        mmWidth = 83873
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 15875
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 77258
        mmTop = 15875
        mmWidth = 14552
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 16140
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 39688
        mmTop = 15875
        mmWidth = 7144
        BandType = 0
      end
      object line001: TppLabel
        UserName = 'line001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 48683
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object jno001: TppLabel
        UserName = 'jno001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 93663
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 20638
        mmWidth = 12700
        BandType = 0
      end
      object job001: TppLabel
        UserName = 'job001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 16140
        mmTop = 20638
        mmWidth = 11938
        BandType = 0
      end
      object rwo001: TppLabel
        UserName = 'rwo001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43656
        mmTop = 20638
        mmWidth = 635
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 29633
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 129117
        mmTop = 15875
        mmWidth = 14552
        BandType = 0
      end
      object cstyle001: TppLabel
        UserName = 'cstyle001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 145786
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 77258
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object acol001: TppLabel
        UserName = 'acol001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 93663
        mmTop = 20638
        mmWidth = 635
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 129117
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object scqty001: TppLabel
        UserName = 'scqty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 145786
        mmTop = 20638
        mmWidth = 635
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 219340
        mmTop = 15875
        mmWidth = 13208
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 235480
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 219340
        mmTop = 20638
        mmWidth = 6096
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 235480
        mmTop = 20638
        mmWidth = 635
        BandType = 0
      end
      object fccs001: TppLabel
        UserName = 'fccs001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 56356
        mmTop = 20638
        mmWidth = 635
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 51858
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14023
        mmLeft = 1588
        mmTop = 25400
        mmWidth = 277548
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Size  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 2381
        mmTop = 26194
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 44186
        mmTop = 26194
        mmWidth = 8848
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 55298
        mmTop = 31221
        mmWidth = 8848
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 10583
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 21696
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 42863
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 54504
        mmTop = 25400
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 12435
        mmTop = 26194
        mmWidth = 8001
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' (+/-)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 44186
        mmTop = 34925
        mmWidth = 9059
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 65881
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 25929
        mmTop = 26194
        mmWidth = 10880
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(p) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 23283
        mmTop = 31221
        mmWidth = 4657
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 13758
        mmTop = 31221
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Represent "Complete" '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 202671
        mmTop = 26194
        mmWidth = 28321
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 202142
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 193146
        mmTop = 31221
        mmWidth = 7959
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 69850
        mmTop = 31221
        mmWidth = 9313
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 79640
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T2  Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 109538
        mmTop = 31221
        mmWidth = 10202
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 147109
        mmTop = 30692
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 202936
        mmTop = 31221
        mmWidth = 4106
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 227013
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 243946
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T2 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 228071
        mmTop = 30956
        mmWidth = 4106
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 192352
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3  Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 148167
        mmTop = 31221
        mmWidth = 10202
        BandType = 0
      end
      object ppLine116: TppLine
        UserName = 'Line116'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 54504
        mmTop = 30427
        mmWidth = 224367
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T3 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 245005
        mmTop = 31221
        mmWidth = 4106
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewn  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 98425
        mmTop = 31221
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 100013
        mmTop = 35454
        mmWidth = 6096
        BandType = 0
      end
      object ppLine117: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 108215
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLine120: TppLine
        UserName = 'Line120'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 158750
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171186
        mmTop = 31221
        mmWidth = 8128
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 173832
        mmTop = 35454
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 56356
        mmTop = 35454
        mmWidth = 5207
        BandType = 0
      end
      object ppLine123: TppLine
        UserName = 'Line123'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14023
        mmLeft = 120915
        mmTop = 25400
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  Flow 1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 62442
        mmTop = 26194
        mmWidth = 10880
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  Flow 2 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 93134
        mmTop = 26194
        mmWidth = 10880
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'cPacked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 134673
        mmTop = 31221
        mmWidth = 11007
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 138907
        mmTop = 35454
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  Flow 3 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 135996
        mmTop = 26194
        mmWidth = 10880
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  Flow 4 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 170657
        mmTop = 26194
        mmWidth = 10880
        BandType = 0
      end
      object ppLine126: TppLine
        UserName = 'Line126'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 207698
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewn '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 218546
        mmTop = 31221
        mmWidth = 7620
        BandType = 0
      end
      object ppLine128: TppLine
        UserName = 'Line128'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 238390
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'cP '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 239184
        mmTop = 31221
        mmWidth = 3768
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 258498
        mmTop = 31221
        mmWidth = 8128
        BandType = 0
      end
      object ppLine130: TppLine
        UserName = 'Line130'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 257705
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLine133: TppLine
        UserName = 'Line1301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 266965
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label902'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Invoiced '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 267494
        mmTop = 31485
        mmWidth = 11430
        BandType = 0
      end
      object ppLine135: TppLine
        UserName = 'Line135'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 180975
        mmTop = 30692
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Invoiced'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 181505
        mmTop = 31221
        mmWidth = 10541
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 184150
        mmTop = 35454
        mmWidth = 5207
        BandType = 0
      end
      object myCheckBox1: TmyCheckBox
        UserName = 'CheckBox1'
        CheckBoxColor = clBlack
        Transparent = True
        mmHeight = 3440
        mmLeft = 199496
        mmTop = 26194
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Represent "Incomplete" '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 246592
        mmTop = 26194
        mmWidth = 30565
        BandType = 0
      end
      object myCheckBox2: TmyCheckBox
        UserName = 'CheckBox2'
        Checked = False
        CheckBoxColor = clBlack
        Transparent = True
        mmHeight = 3440
        mmLeft = 243153
        mmTop = 26194
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(C) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 36777
        mmTop = 31221
        mmWidth = 4784
        BandType = 0
      end
      object ppLine165: TppLine
        UserName = 'Line165'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 233098
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'iP '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 233892
        mmTop = 31221
        mmWidth = 3090
        BandType = 0
      end
      object ppLine167: TppLine
        UserName = 'Line167'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 250032
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AQL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 250825
        mmTop = 31221
        mmWidth = 5969
        BandType = 0
      end
      object ppLine169: TppLine
        UserName = 'Line169'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 169863
        mmTop = 30692
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AQL '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 161661
        mmTop = 31221
        mmWidth = 5969
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 161661
        mmTop = 35454
        mmWidth = 5207
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label142'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 45508
        mmTop = 30692
        mmWidth = 5207
        BandType = 0
      end
      object ppLine172: TppLine
        UserName = 'Line172'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 134144
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' iPacked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 121709
        mmTop = 31221
        mmWidth = 11218
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 124619
        mmTop = 35454
        mmWidth = 5207
        BandType = 0
      end
      object ppLine175: TppLine
        UserName = 'Line175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 93927
        mmTop = 30427
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label604'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Served '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 82021
        mmTop = 31221
        mmWidth = 9398
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 83608
        mmTop = 35454
        mmWidth = 6096
        BandType = 0
      end
      object ppLine180: TppLine
        UserName = 'Line180'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 218017
        mmTop = 30163
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Served '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 208227
        mmTop = 31221
        mmWidth = 9398
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tick '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 193146
        mmTop = 26194
        mmWidth = 5884
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/ Blank '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 233363
        mmTop = 26194
        mmWidth = 9610
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'As at date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 182034
        mmTop = 15875
        mmWidth = 14393
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 198173
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object cwo001: TppLabel
        UserName = 'cwo001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33867
        mmTop = 20638
        mmWidth = 635
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 39688
        mmTop = 20638
        mmWidth = 3704
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 0
        mmWidth = 277548
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSIZ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 2381
        mmTop = 794
        mmWidth = 4995
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 16330
        mmTop = 794
        mmWidth = 4572
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 47953
        mmTop = 794
        mmWidth = 6054
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 10583
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 21696
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 42863
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 59341
        mmTop = 794
        mmWidth = 6011
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 54504
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 26088
        mmTop = 794
        mmWidth = 5927
        BandType = 4
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 195527
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 202142
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox2: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP1'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 203200
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 79640
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 71395
        mmTop = 794
        mmWidth = 7451
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 112491
        mmTop = 794
        mmWidth = 7366
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 147109
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 227013
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 243946
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox3: TmyDBCheckBox
        UserName = 'DBCheckBox3'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP2'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 228600
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object myDBCheckBox4: TmyDBCheckBox
        UserName = 'DBCheckBox4'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP3'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 245269
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TFQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 150940
        mmTop = 794
        mmWidth = 7281
        BandType = 4
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 192352
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine118: TppLine
        UserName = 'Line118'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 108215
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine121: TppLine
        UserName = 'Line121'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 158750
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 99261
        mmTop = 794
        mmWidth = 7366
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TEQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 173070
        mmTop = 794
        mmWidth = 7408
        BandType = 4
      end
      object ppLine124: TppLine
        UserName = 'Line124'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 120915
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TFQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 139299
        mmTop = 794
        mmWidth = 7281
        BandType = 4
      end
      object ppLine127: TppLine
        UserName = 'Line127'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 207698
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine129: TppLine
        UserName = 'Line129'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 238390
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine131: TppLine
        UserName = 'Line131'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 257705
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox7: TmyDBCheckBox
        UserName = 'DBCheckBox7'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMPS'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 220928
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object myDBCheckBox8: TmyDBCheckBox
        UserName = 'DBCheckBox8'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP3'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 239448
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object myDBCheckBox9: TmyDBCheckBox
        UserName = 'DBCheckBox9'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP4'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 261673
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine134: TppLine
        UserName = 'Line134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 266965
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine136: TppLine
        UserName = 'Line136'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 180975
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox10: TmyDBCheckBox
        UserName = 'DBCheckBox10'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMPI'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 270934
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine163: TppLine
        UserName = 'Line163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 32544
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TQN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 37508
        mmTop = 529
        mmWidth = 4826
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TIQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 185145
        mmTop = 1058
        mmWidth = 6943
        BandType = 4
      end
      object ppLine166: TppLine
        UserName = 'Line166'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 233098
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox11: TmyDBCheckBox
        UserName = 'DBCheckBox11'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMP2'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 233892
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine168: TppLine
        UserName = 'Line168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 250032
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox12: TmyDBCheckBox
        UserName = 'DBCheckBox12'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMPAQL'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 252148
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine170: TppLine
        UserName = 'Line170'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 169863
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TAQL'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 163217
        mmTop = 794
        mmWidth = 5884
        BandType = 4
      end
      object ppLine173: TppLine
        UserName = 'Line173'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 134144
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TPQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 125984
        mmTop = 794
        mmWidth = 7366
        BandType = 4
      end
      object ppLine176: TppLine
        UserName = 'Line176'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 93927
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T1B'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 89165
        mmTop = 794
        mmWidth = 4233
        BandType = 4
      end
      object ppLine181: TppLine
        UserName = 'Line181'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 218017
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox13: TmyDBCheckBox
        UserName = 'DBCheckBox13'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline1
        DataField = 'CMPT1B'
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 211932
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 60854
      mmPrintPosition = 0
      object ppShape28: TppShape
        UserName = 'Shape9'
        mmHeight = 9790
        mmLeft = 1588
        mmTop = 33867
        mmWidth = 277548
        BandType = 7
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 164042
        mmTop = 1852
        mmWidth = 24342
        BandType = 7
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 5292
        mmLeft = 93927
        mmTop = 1852
        mmWidth = 24342
        BandType = 7
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 5292
        mmLeft = 32279
        mmTop = 7673
        mmWidth = 24342
        BandType = 7
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5292
        mmLeft = 93927
        mmTop = 7673
        mmWidth = 24342
        BandType = 7
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5292
        mmLeft = 32279
        mmTop = 1852
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO Fty Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 2910
        mmWidth = 28046
        BandType = 7
      end
      object fdt001: TppLabel
        UserName = 'fdt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33602
        mmTop = 2910
        mmWidth = 635
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 8731
        mmWidth = 23813
        BandType = 7
      end
      object cfksrq001: TppLabel
        UserName = 'cfksrq001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33602
        mmTop = 8731
        mmWidth = 635
        BandType = 7
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Org. Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 63236
        mmTop = 8731
        mmWidth = 28575
        BandType = 7
      end
      object tzlcrq001: TppLabel
        UserName = 'tzlcrq001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 95250
        mmTop = 8731
        mmWidth = 635
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 63236
        mmTop = 2910
        mmWidth = 24606
        BandType = 7
      end
      object yqlcrq001: TppLabel
        UserName = 'yqlcrq001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 95250
        mmTop = 2910
        mmWidth = 635
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 127265
        mmTop = 2910
        mmWidth = 25135
        BandType = 7
      end
      object xc3001: TppLabel
        UserName = 'xc3001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 165365
        mmTop = 2910
        mmWidth = 635
        BandType = 7
      end
      object pick01: TppLabel
        UserName = 'pick01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 30956
        mmTop = 19315
        mmWidth = 11599
        BandType = 7
      end
      object transit101: TppLabel
        UserName = 'transit101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 101865
        mmTop = 19315
        mmWidth = 11599
        BandType = 7
      end
      object transit201: TppLabel
        UserName = 'transit201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 30956
        mmTop = 23813
        mmWidth = 11599
        BandType = 7
      end
      object transit301: TppLabel
        UserName = 'transit301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 241830
        mmTop = 23813
        mmWidth = 11599
        BandType = 7
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 5292
        mmLeft = 164042
        mmTop = 7673
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default 1st CWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 127265
        mmTop = 8731
        mmWidth = 34396
        BandType = 7
      end
      object yszq1: TppLabel
        UserName = 'yszq1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 165365
        mmTop = 8731
        mmWidth = 635
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 19315
        mmWidth = 19346
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transit 1 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 71702
        mmTop = 19315
        mmWidth = 22394
        BandType = 7
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transit 2 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 23813
        mmWidth = 22394
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transit 3 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 211667
        mmTop = 23813
        mmWidth = 22394
        BandType = 7
      end
      object transit401: TppLabel
        UserName = 'transit401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 101865
        mmTop = 28575
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ex-fty Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 71702
        mmTop = 28575
        mmWidth = 18627
        BandType = 7
      end
      object sewn01: TppLabel
        UserName = 'sewn01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 241830
        mmTop = 19315
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sewn Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 211667
        mmTop = 19315
        mmWidth = 18119
        BandType = 7
      end
      object packed01: TppLabel
        UserName = 'packed01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171715
        mmTop = 23813
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'cPacked Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 142346
        mmTop = 23813
        mmWidth = 21505
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Invoiced Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 142346
        mmTop = 28575
        mmWidth = 21929
        BandType = 7
      end
      object ppLabel93: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 23813
        mmTop = 19315
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43921
        mmTop = 19315
        mmWidth = 7154
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 164571
        mmTop = 23813
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 184680
        mmTop = 23813
        mmWidth = 7154
        BandType = 7
      end
      object pick02: TppLabel
        UserName = 'pick02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52917
        mmTop = 19315
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 94721
        mmTop = 19315
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 234686
        mmTop = 23813
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 254794
        mmTop = 23813
        mmWidth = 7154
        BandType = 7
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 114829
        mmTop = 19315
        mmWidth = 7154
        BandType = 7
      end
      object packed02: TppLabel
        UserName = 'packed02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 193675
        mmTop = 23813
        mmWidth = 11599
        BandType = 7
      end
      object transit102: TppLabel
        UserName = 'transit102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 123561
        mmTop = 19315
        mmWidth = 11599
        BandType = 7
      end
      object transit302: TppLabel
        UserName = 'transit302'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 263526
        mmTop = 23813
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 234686
        mmTop = 19315
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 94721
        mmTop = 28575
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel103: TppLabel
        UserName = 'Label103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 114829
        mmTop = 28575
        mmWidth = 7154
        BandType = 7
      end
      object ppLabel104: TppLabel
        UserName = 'Label1001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 254794
        mmTop = 19315
        mmWidth = 7154
        BandType = 7
      end
      object sewn02: TppLabel
        UserName = 'sewn02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 263790
        mmTop = 19315
        mmWidth = 11599
        BandType = 7
      end
      object transit402: TppLabel
        UserName = 'transit402'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 123825
        mmTop = 28575
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel105: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 23813
        mmTop = 23813
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 164571
        mmTop = 28575
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 184680
        mmTop = 28575
        mmWidth = 7154
        BandType = 7
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43921
        mmTop = 23813
        mmWidth = 7154
        BandType = 7
      end
      object transit202: TppLabel
        UserName = 'transit202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52917
        mmTop = 23813
        mmWidth = 11599
        BandType = 7
      end
      object ppLine138: TppLine
        UserName = 'Line138'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 30956
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine139: TppLine
        UserName = 'Line139'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 52652
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine140: TppLine
        UserName = 'Line140'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 101865
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine141: TppLine
        UserName = 'Line141'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 123561
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine142: TppLine
        UserName = 'Line142'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 101865
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine143: TppLine
        UserName = 'Line143'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 123561
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine144: TppLine
        UserName = 'Line1401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 241830
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine145: TppLine
        UserName = 'Line145'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 193411
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine146: TppLine
        UserName = 'Line146'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 241830
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine147: TppLine
        UserName = 'Line147'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 263526
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine148: TppLine
        UserName = 'Line148'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 101865
        mmTop = 32015
        mmWidth = 11906
        BandType = 7
      end
      object ppLine149: TppLine
        UserName = 'Line149'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 123561
        mmTop = 32015
        mmWidth = 11906
        BandType = 7
      end
      object ppLine150: TppLine
        UserName = 'Line150'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 30956
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine151: TppLine
        UserName = 'Line151'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 52652
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine152: TppLine
        UserName = 'Line152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 171715
        mmTop = 32015
        mmWidth = 11906
        BandType = 7
      end
      object ppLine153: TppLine
        UserName = 'Line153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 193411
        mmTop = 32015
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel109: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Flow Period : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 14817
        mmWidth = 17230
        BandType = 7
      end
      object ppMemo2: TppMemo
        UserName = 'Memo2'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo2'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'TIP'
          #934'      (p) = Planning    (C) = Picked & Confirmed')
        Transparent = True
        mmHeight = 8202
        mmLeft = 2117
        mmTop = 34660
        mmWidth = 275696
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object idt01: TppLabel
        UserName = 'idt01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171715
        mmTop = 28575
        mmWidth = 635
        BandType = 7
      end
      object idt02: TppLabel
        UserName = 'idt02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 193675
        mmTop = 28575
        mmWidth = 635
        BandType = 7
      end
      object sv001: TppLabel
        UserName = 'sv001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171715
        mmTop = 19315
        mmWidth = 635
        BandType = 7
      end
      object ppLabel152: TppLabel
        UserName = 'Label402'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Served Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 142346
        mmTop = 19315
        mmWidth = 19897
        BandType = 7
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 164571
        mmTop = 19315
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 184680
        mmTop = 19315
        mmWidth = 7154
        BandType = 7
      end
      object sv002: TppLabel
        UserName = 'sv002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 193675
        mmTop = 19315
        mmWidth = 635
        BandType = 7
      end
      object ppLine182: TppLine
        UserName = 'Line1402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 171715
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ppLine183: TppLine
        UserName = 'Line183'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 193411
        mmTop = 22754
        mmWidth = 11906
        BandType = 7
      end
      object ip001: TppLabel
        UserName = 'ip001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 101865
        mmTop = 23813
        mmWidth = 635
        BandType = 7
      end
      object ppLabel157: TppLabel
        UserName = 'Label403'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'iPacked Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 71702
        mmTop = 23813
        mmWidth = 20828
        BandType = 7
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 94721
        mmTop = 23813
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 114829
        mmTop = 23813
        mmWidth = 7154
        BandType = 7
      end
      object ip002: TppLabel
        UserName = 'ip002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 123825
        mmTop = 23813
        mmWidth = 635
        BandType = 7
      end
      object ppLine184: TppLine
        UserName = 'Line1403'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 171715
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object ppLine185: TppLine
        UserName = 'Line185'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 263526
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
      object aql001: TppLabel
        UserName = 'aql001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 30956
        mmTop = 28575
        mmWidth = 635
        BandType = 7
      end
      object ppLabel162: TppLabel
        UserName = 'Label162'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AQL Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 28575
        mmWidth = 16468
        BandType = 7
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 23813
        mmTop = 28575
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel164: TppLabel
        UserName = 'Label164'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43921
        mmTop = 28575
        mmWidth = 7154
        BandType = 7
      end
      object aql002: TppLabel
        UserName = 'aql002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52917
        mmTop = 28575
        mmWidth = 635
        BandType = 7
      end
      object ppLine186: TppLine
        UserName = 'Line1501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 30956
        mmTop = 32015
        mmWidth = 11906
        BandType = 7
      end
      object ppLine187: TppLine
        UserName = 'Line187'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 52652
        mmTop = 32015
        mmWidth = 11906
        BandType = 7
      end
      object ppMemo4: TppMemo
        UserName = 'Memo4'
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo4'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'TIP'
          #934'      (p) = Planning    (C) = Picked & Confirmed')
        Stretch = True
        Transparent = True
        mmHeight = 11906
        mmLeft = 1588
        mmTop = 44979
        mmWidth = 275696
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand3BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 9525
          mmLeft = 1588
          mmTop = 0
          mmWidth = 277548
          BandType = 5
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 10583
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 21696
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 42863
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 54504
          mmTop = 0
          mmWidth = 2117
          BandType = 5
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line101'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 65881
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2963
          mmLeft = 2381
          mmTop = 794
          mmWidth = 5419
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 9684
          mmTop = 794
          mmWidth = 11218
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 19441
          mmTop = 794
          mmWidth = 12573
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'AQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 41275
          mmTop = 794
          mmWidth = 12700
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 52694
          mmTop = 794
          mmWidth = 12658
          BandType = 5
          GroupNo = 0
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 79640
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 64749
          mmTop = 794
          mmWidth = 14097
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TPQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 105844
          mmTop = 794
          mmWidth = 14012
          BandType = 5
          GroupNo = 0
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 147109
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TFQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 144293
          mmTop = 794
          mmWidth = 13928
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 192352
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object b01: TppLabel
          UserName = 'b01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 195527
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object e01: TppLabel
          UserName = 'e01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 203200
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object f01: TppLabel
          UserName = 'f01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 220928
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object l01: TppLabel
          UserName = 'l01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 245269
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object ppLine119: TppLine
          UserName = 'Line119'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 108215
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine122: TppLine
          UserName = 'Line122'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 158750
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TSQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 92615
          mmTop = 794
          mmWidth = 14012
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TEQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 166391
          mmTop = 794
          mmWidth = 14055
          BandType = 5
          GroupNo = 0
        end
        object ppLine125: TppLine
          UserName = 'Line125'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 120915
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TFQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 132651
          mmTop = 794
          mmWidth = 13928
          BandType = 5
          GroupNo = 0
        end
        object j01: TppLabel
          UserName = 'j01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 238655
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object ppLine137: TppLine
          UserName = 'Line137'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 180975
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object h01: TppLabel
          UserName = 'h01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 228336
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object m01: TppLabel
          UserName = 'm01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 261673
          mmTop = 794
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TQN'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 30861
          mmTop = 794
          mmWidth = 11472
          BandType = 5
          GroupNo = 0
        end
        object ppLine164: TppLine
          UserName = 'Line164'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 32544
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TIQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 178499
          mmTop = 794
          mmWidth = 13589
          BandType = 5
          GroupNo = 0
        end
        object ppLine171: TppLine
          UserName = 'Line171'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 169863
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TAQL'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 156538
          mmTop = 794
          mmWidth = 12531
          BandType = 5
          GroupNo = 0
        end
        object ppLine174: TppLine
          UserName = 'Line174'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 134144
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TPQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 119338
          mmTop = 794
          mmWidth = 14012
          BandType = 5
          GroupNo = 0
        end
        object ppLine179: TppLine
          UserName = 'Line179'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 93927
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'T1B'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2963
          mmLeft = 82518
          mmTop = 794
          mmWidth = 10880
          BandType = 5
          GroupNo = 0
        end
        object ppLabel148: TppLabel
          UserName = 'Label148'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'n.a. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 211138
          mmTop = 794
          mmWidth = 5630
          BandType = 5
          GroupNo = 0
        end
        object ppLabel151: TppLabel
          UserName = 'Label151'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'n.a. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3429
          mmLeft = 251619
          mmTop = 794
          mmWidth = 5630
          BandType = 5
          GroupNo = 0
        end
        object ppLine188: TppLine
          UserName = 'Line188'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 1588
          mmTop = 4498
          mmWidth = 277284
          BandType = 5
          GroupNo = 0
        end
        object ppLabel149: TppLabel
          UserName = 'Label149'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2963
          mmLeft = 58473
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff002: TppLabel
          UserName = 'diff002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 75121
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff003: TppLabel
          UserName = 'diff003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 89673
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff004: TppLabel
          UserName = 'diff004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 102902
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff005: TppLabel
          UserName = 'diff005'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 116131
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff006: TppLabel
          UserName = 'diff006'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 129625
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff007: TppLabel
          UserName = 'diff007'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 142854
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff008: TppLabel
          UserName = 'diff008'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 154496
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff009: TppLabel
          UserName = 'diff009'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 165344
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff010: TppLabel
          UserName = 'diff010'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 176721
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
        object diff011: TppLabel
          UserName = 'diff011'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Diff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 188363
          mmTop = 5292
          mmWidth = 3725
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 280
    Top = 128
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo_dt'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query6AfterPost
    Left = 56
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = Query6
    Left = 88
    Top = 168
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport2PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 248
    Top = 168
    Version = '11.08'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Flow 1/ (Picked - > Transit 1 ) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5969
        mmLeft = 59267
        mmTop = 3704
        mmWidth = 100013
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 13758
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 89959
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 16140
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 39688
        mmTop = 13758
        mmWidth = 7144
        BandType = 0
      end
      object line002: TppLabel
        UserName = 'line001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 48683
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object jno002: TppLabel
        UserName = 'jno001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 106363
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
      end
      object job002: TppLabel
        UserName = 'job001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 16140
        mmTop = 18521
        mmWidth = 11938
        BandType = 0
      end
      object rwo002: TppLabel
        UserName = 'rwo001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 34131
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 29633
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 154782
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object cstyle002: TppLabel
        UserName = 'cstyle001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171450
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ERP Clr cde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 89959
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object acol002: TppLabel
        UserName = 'acol001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 106363
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 154782
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object scqty002: TppLabel
        UserName = 'scqty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 171450
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 217753
        mmTop = 13758
        mmWidth = 13208
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 233892
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 217753
        mmTop = 18521
        mmWidth = 6096
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 233892
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object fccs002: TppLabel
        UserName = 'fccs001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 48683
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 44186
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape1'
        mmHeight = 14288
        mmLeft = 1588
        mmTop = 23548
        mmWidth = 279136
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Size  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 2381
        mmTop = 29633
        mmWidth = 5038
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 10583
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 26988
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 42069
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 57150
        mmTop = 23548
        mmWidth = 2117
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 72231
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 15346
        mmTop = 29633
        mmWidth = 6816
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 248709
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 87577
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 102659
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 265907
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 231246
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 234421
        mmTop = 24342
        mmWidth = 4657
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Flow Diff'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 249767
        mmTop = 24342
        mmWidth = 8213
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 249503
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 259821
        mmTop = 33867
        mmWidth = 2371
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 232834
        mmTop = 29633
        mmWidth = 5969
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 242623
        mmTop = 29633
        mmWidth = 2371
        BandType = 0
      end
      object ppLine63: TppLine
        UserName = 'Line63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 117740
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 132821
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line65'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 147902
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine66: TppLine
        UserName = 'Line66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 162984
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object dt01: TppLabel
        UserName = 'dt01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 29104
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt02: TppLabel
        UserName = 'dt02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 44186
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt03: TppLabel
        UserName = 'dt03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 59267
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt04: TppLabel
        UserName = 'dt04'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 74348
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt05: TppLabel
        UserName = 'dt05'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 89694
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt06: TppLabel
        UserName = 'dt06'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 104775
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt07: TppLabel
        UserName = 'dt07'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 120121
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt08: TppLabel
        UserName = 'dt08'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 135202
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt09: TppLabel
        UserName = 'dt09'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 149754
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object dt10: TppLabel
        UserName = 'dt10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 164836
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object seq01: TppLabel
        UserName = 'seq01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 29369
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq02: TppLabel
        UserName = 'seq02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 44450
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq03: TppLabel
        UserName = 'seq03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 59267
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq04: TppLabel
        UserName = 'seq04'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 74613
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq05: TppLabel
        UserName = 'seq05'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 89959
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq06: TppLabel
        UserName = 'seq06'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 105040
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq07: TppLabel
        UserName = 'seq07'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 119856
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq08: TppLabel
        UserName = 'seq08'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 134938
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq09: TppLabel
        UserName = 'seq09'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 150019
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq10: TppLabel
        UserName = 'seq10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 165100
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object ppLine100: TppLine
        UserName = 'Line100'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 178859
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine103: TppLine
        UserName = 'Line1001'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 195527
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object ppLine104: TppLine
        UserName = 'Line1002'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 213519
        mmTop = 23548
        mmWidth = 2646
        BandType = 0
      end
      object seq11: TppLabel
        UserName = 'seq11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 181240
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object dt11: TppLabel
        UserName = 'dt11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 180975
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object seq12: TppLabel
        UserName = 'seq12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 197909
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object dt12: TppLabel
        UserName = 'dt12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 197644
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object seq13: TppLabel
        UserName = 'seq13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 216165
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object dt13: TppLabel
        UserName = 'dt13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 215900
        mmTop = 29633
        mmWidth = 466
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LWO Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 249503
        mmTop = 29369
        mmWidth = 8382
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 258498
        mmTop = 29633
        mmWidth = 6646
        BandType = 0
      end
      object x001: TppLabel
        UserName = 'x001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 27781
        mmTop = 33867
        mmWidth = 6646
        BandType = 0
      end
      object y001: TppLabel
        UserName = 'y001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 37571
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x002: TppLabel
        UserName = 'x002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 43392
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y002: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 52388
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x003: TppLabel
        UserName = 'x003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 58473
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y003: TppLabel
        UserName = 'Label602'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 67469
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x004: TppLabel
        UserName = 'x004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 73290
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y004: TppLabel
        UserName = 'y004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 82286
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x005: TppLabel
        UserName = 'x005'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 88636
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y005: TppLabel
        UserName = 'Label603'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 97367
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x006: TppLabel
        UserName = 'x006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 103452
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y006: TppLabel
        UserName = 'y006'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 112184
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x007: TppLabel
        UserName = 'x007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 118798
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y007: TppLabel
        UserName = 'y007'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 127529
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x008: TppLabel
        UserName = 'x008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 133615
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y008: TppLabel
        UserName = 'y008'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 142346
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x009: TppLabel
        UserName = 'x009'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 149225
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y009: TppLabel
        UserName = 'y009'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 157957
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x010: TppLabel
        UserName = 'x010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 164042
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y010: TppLabel
        UserName = 'y010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 173302
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x011: TppLabel
        UserName = 'x011'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 180182
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y011: TppLabel
        UserName = 'y011'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 189442
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x012: TppLabel
        UserName = 'x012'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 197380
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y012: TppLabel
        UserName = 'Label901'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 206905
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object x013: TppLabel
        UserName = 'x013'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 215636
        mmTop = 33867
        mmWidth = 5969
        BandType = 0
      end
      object y013: TppLabel
        UserName = 'y013'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'T1 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 224896
        mmTop = 33867
        mmWidth = 3048
        BandType = 0
      end
      object ppLine132: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1588
        mmTop = 28575
        mmWidth = 264584
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(p) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 12435
        mmTop = 33867
        mmWidth = 3471
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(C) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 22225
        mmTop = 33867
        mmWidth = 3556
        BandType = 0
      end
      object title001: TppLabel
        UserName = 'title001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5969
        mmLeft = 159809
        mmTop = 3704
        mmWidth = 47096
        BandType = 0
      end
      object seq0101: TppLabel
        UserName = 'seq0101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 37306
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0201: TppLabel
        UserName = 'seq0201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 52388
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0301: TppLabel
        UserName = 'seq0301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 67204
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0401: TppLabel
        UserName = 'seq0401'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 82550
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0501: TppLabel
        UserName = 'seq0501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 97896
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0601: TppLabel
        UserName = 'seq0601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 112977
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0701: TppLabel
        UserName = 'seq0701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 127794
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0801: TppLabel
        UserName = 'seq0801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 142875
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq0901: TppLabel
        UserName = 'seq0901'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 157957
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq1001: TppLabel
        UserName = 'seq101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 173038
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq1101: TppLabel
        UserName = 'seq1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 189177
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq1201: TppLabel
        UserName = 'seq1201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 205846
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object seq1301: TppLabel
        UserName = 'seq1301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 224103
        mmTop = 24342
        mmWidth = 4572
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label161'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SEQ  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 15346
        mmTop = 24342
        mmWidth = 5207
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 0
        mmWidth = 279136
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSIZ'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 2381
        mmTop = 794
        mmWidth = 4360
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 10583
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 26988
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 42069
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 117740
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 132821
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 13134
        mmTop = 794
        mmWidth = 5122
        BandType = 4
      end
      object myDBCheckBox5: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'CMP'
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 267230
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 248709
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object myDBCheckBox6: TmyDBCheckBox
        UserName = 'DBCheckBox2'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = ppDBPipeline2
        DataField = 'CMP1'
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3704
        mmLeft = 273844
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 147902
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 162984
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 265907
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 272786
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 231246
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 257176
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 239978
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 234283
        mmTop = 794
        mmWidth = 5165
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTQTY'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 241787
        mmTop = 794
        mmWidth = 6392
        BandType = 4
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 72231
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 87577
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 57150
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 102659
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line80'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 34131
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine81: TppLine
        UserName = 'Line801'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 49477
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine82: TppLine
        UserName = 'Line802'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 64294
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine83: TppLine
        UserName = 'Line83'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 79904
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 94721
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine85: TppLine
        UserName = 'Line85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 110067
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line86'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 124884
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppLine87: TppLine
        UserName = 'Line87'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 140229
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line88'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 155311
        mmTop = 265
        mmWidth = 2646
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 170657
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object p01: TppLabel
        UserName = 'p01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 33137
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t01: TppLabel
        UserName = 't01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 41074
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p02: TppLabel
        UserName = 'p02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 48483
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t02: TppLabel
        UserName = 't02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 56420
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p03: TppLabel
        UserName = 'p03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 63299
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t03: TppLabel
        UserName = 't03'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 71236
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p04: TppLabel
        UserName = 'p04'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 78910
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t04: TppLabel
        UserName = 't04'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 86847
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p05: TppLabel
        UserName = 'p05'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 93726
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t05: TppLabel
        UserName = 't05'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 101664
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p06: TppLabel
        UserName = 'p06'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 109072
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t06: TppLabel
        UserName = 't06'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 117009
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p07: TppLabel
        UserName = 'p07'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 123889
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t07: TppLabel
        UserName = 't07'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 131826
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p08: TppLabel
        UserName = 'p08'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 139235
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t08: TppLabel
        UserName = 't08'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 147172
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p09: TppLabel
        UserName = 'p09'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 154316
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t09: TppLabel
        UserName = 't09'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 162253
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p10: TppLabel
        UserName = 'p10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 169662
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t10: TppLabel
        UserName = 't10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 177864
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object ppLine101: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 178859
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine105: TppLine
        UserName = 'Line105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 195527
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine106: TppLine
        UserName = 'Line106'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 213519
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine107: TppLine
        UserName = 'Line107'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 187061
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine108: TppLine
        UserName = 'Line108'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 204523
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine109: TppLine
        UserName = 'Line109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 222250
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object p11: TppLabel
        UserName = 'p11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 186066
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t11: TppLabel
        UserName = 't11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 194533
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p12: TppLabel
        UserName = 'p12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 203529
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t12: TppLabel
        UserName = 't12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 212260
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object p13: TppLabel
        UserName = 'p13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 221256
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object t13: TppLabel
        UserName = 't13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 230251
        mmTop = 794
        mmWidth = 466
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIFF'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 252202
        mmTop = 794
        mmWidth = 4445
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIFF1'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 259790
        mmTop = 794
        mmWidth = 5588
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TQN'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 2540
        mmLeft = 22352
        mmTop = 794
        mmWidth = 4106
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 18785
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 59531
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape8'
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppShape12: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppShape13: TppShape
        UserName = 'Shape6'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape14: TppShape
        UserName = 'Shape5'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape15: TppShape
        UserName = 'Shape4'
        mmHeight = 4498
        mmLeft = 32808
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel76: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO Fty Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 28046
        BandType = 7
      end
      object fdt002: TppLabel
        UserName = 'fdt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 34131
        mmTop = 1588
        mmWidth = 635
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 6615
        mmWidth = 23813
        BandType = 7
      end
      object cfksrq002: TppLabel
        UserName = 'cfksrq001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 34131
        mmTop = 6615
        mmWidth = 635
        BandType = 7
      end
      object ppLabel80: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Org. Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73554
        mmTop = 6615
        mmWidth = 33073
        BandType = 7
      end
      object tzlcrq002: TppLabel
        UserName = 'tzlcrq001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 108215
        mmTop = 6615
        mmWidth = 635
        BandType = 7
      end
      object ppLabel82: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73554
        mmTop = 1588
        mmWidth = 24606
        BandType = 7
      end
      object yqlcrq002: TppLabel
        UserName = 'yqlcrq001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 108215
        mmTop = 1588
        mmWidth = 635
        BandType = 7
      end
      object ppLabel84: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 149754
        mmTop = 1588
        mmWidth = 23283
        BandType = 7
      end
      object xc3002: TppLabel
        UserName = 'xc3001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 196850
        mmTop = 1588
        mmWidth = 635
        BandType = 7
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 4498
        mmLeft = 195527
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default 1st CWO Fty Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 149754
        mmTop = 6615
        mmWidth = 39423
        BandType = 7
      end
      object yszq2: TppLabel
        UserName = 'yszq2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 196850
        mmTop = 6615
        mmWidth = 635
        BandType = 7
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad for flow diff : -  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 23813
        mmWidth = 31284
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 14817
        mmLeft = 1588
        mmTop = 28310
        mmWidth = 279136
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object pic01: TppLabel
        UserName = 'pic01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 30692
        mmTop = 18521
        mmWidth = 11599
        BandType = 7
      end
      object trs01: TppLabel
        UserName = 'trs01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 103717
        mmTop = 18521
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Picked Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 18521
        mmWidth = 19346
        BandType = 7
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transit 1 Date : - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73554
        mmTop = 18521
        mmWidth = 22394
        BandType = 7
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 23283
        mmTop = 18521
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43656
        mmTop = 18521
        mmWidth = 7154
        BandType = 7
      end
      object pic02: TppLabel
        UserName = 'pic02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52652
        mmTop = 18521
        mmWidth = 11599
        BandType = 7
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Start'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 96573
        mmTop = 18521
        mmWidth = 5927
        BandType = 7
      end
      object ppLabel117: TppLabel
        UserName = 'Label1002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Finish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 116681
        mmTop = 18521
        mmWidth = 7154
        BandType = 7
      end
      object trs02: TppLabel
        UserName = 'trs02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '07/01/01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 125413
        mmTop = 18521
        mmWidth = 11599
        BandType = 7
      end
      object ppLine154: TppLine
        UserName = 'Line154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 30692
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLine155: TppLine
        UserName = 'Line155'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 52388
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLine156: TppLine
        UserName = 'Line156'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 103717
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLine157: TppLine
        UserName = 'Line157'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 125413
        mmTop = 21960
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Flow Period : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 13229
        mmWidth = 17230
        BandType = 7
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 13758
        mmLeft = 1588
        mmTop = 44979
        mmWidth = 279136
        BandType = 7
      end
      object ppMemo3: TppMemo
        UserName = 'Memo3'
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Memo3'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'TIP'
          #934'      (p) = Planning    (C) = Picked & Confirmed')
        Transparent = True
        mmHeight = 8202
        mmLeft = 2117
        mmTop = 45773
        mmWidth = 275696
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tick '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 8996
        mmTop = 54504
        mmWidth = 5884
        BandType = 7
      end
      object myCheckBox5: TmyCheckBox
        UserName = 'CheckBox5'
        CheckBoxColor = clBlack
        Transparent = True
        mmHeight = 3440
        mmLeft = 15346
        mmTop = 54504
        mmWidth = 3440
        BandType = 7
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Represent "Complete" '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 18521
        mmTop = 54504
        mmWidth = 28321
        BandType = 7
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/ Blank '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 49213
        mmTop = 54504
        mmWidth = 9610
        BandType = 7
      end
      object myCheckBox6: TmyCheckBox
        UserName = 'CheckBox6'
        Checked = False
        CheckBoxColor = clBlack
        Transparent = True
        mmHeight = 3440
        mmLeft = 59002
        mmTop = 54504
        mmWidth = 3440
        BandType = 7
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Represent "Incomplete" '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 62442
        mmTop = 54504
        mmWidth = 30565
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline2
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppShape16: TppShape
          UserName = 'Shape3'
          mmHeight = 5027
          mmLeft = 1588
          mmTop = 0
          mmWidth = 279136
          BandType = 5
          GroupNo = 0
        end
        object ppLine53: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 10583
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine54: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 26988
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine55: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 42069
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine56: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 231246
          mmTop = 0
          mmWidth = 2117
          BandType = 5
          GroupNo = 0
        end
        object ppLine57: TppLine
          UserName = 'Line101'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 239978
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 2381
          mmTop = 794
          mmWidth = 4657
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2540
          mmLeft = 7377
          mmTop = 794
          mmWidth = 10880
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2540
          mmLeft = 228526
          mmTop = 794
          mmWidth = 10922
          BandType = 5
          GroupNo = 0
        end
        object ppLine58: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 248709
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc15'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTQTY'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2540
          mmLeft = 236029
          mmTop = 794
          mmWidth = 12150
          BandType = 5
          GroupNo = 0
        end
        object ppLine59: TppLine
          UserName = 'Line25'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 257176
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine60: TppLine
          UserName = 'Line32'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 265907
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine71: TppLine
          UserName = 'Line71'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 132821
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine72: TppLine
          UserName = 'Line72'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 147902
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine73: TppLine
          UserName = 'Line73'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 162984
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine74: TppLine
          UserName = 'Line74'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 87577
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine75: TppLine
          UserName = 'Line75'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 102659
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine76: TppLine
          UserName = 'Line76'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 117740
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine77: TppLine
          UserName = 'Line77'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 57150
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine78: TppLine
          UserName = 'Line78'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 72231
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine79: TppLine
          UserName = 'Line79'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 272786
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine90: TppLine
          UserName = 'Line90'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 34131
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine91: TppLine
          UserName = 'Line91'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 49477
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine92: TppLine
          UserName = 'Line92'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 64294
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine93: TppLine
          UserName = 'Line93'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 79904
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine94: TppLine
          UserName = 'Line94'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 94721
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine95: TppLine
          UserName = 'Line95'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 110067
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine96: TppLine
          UserName = 'Line96'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 124884
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine97: TppLine
          UserName = 'Line97'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 140229
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine98: TppLine
          UserName = 'Line98'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 155311
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine99: TppLine
          UserName = 'Line99'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 170657
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object sp01: TppLabel
          UserName = 'sp01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 33136
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st01: TppLabel
          UserName = 'st01'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 41073
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp02: TppLabel
          UserName = 'sp02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 48482
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st02: TppLabel
          UserName = 'st02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 56419
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp03: TppLabel
          UserName = 'sp03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 63299
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st03: TppLabel
          UserName = 'st03'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 71236
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp04: TppLabel
          UserName = 'sp04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 78909
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st04: TppLabel
          UserName = 'st04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 86846
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp05: TppLabel
          UserName = 'sp05'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 93726
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st05: TppLabel
          UserName = 'st05'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 101663
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp06: TppLabel
          UserName = 'sp06'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 109072
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st06: TppLabel
          UserName = 'st06'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 117009
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp07: TppLabel
          UserName = 'sp07'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 123888
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st07: TppLabel
          UserName = 'st07'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 131826
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp08: TppLabel
          UserName = 'sp08'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 139234
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st08: TppLabel
          UserName = 'st08'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 147172
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp09: TppLabel
          UserName = 'sp09'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 154316
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st09: TppLabel
          UserName = 'st09'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 162253
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp10: TppLabel
          UserName = 'sp10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 169661
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st10: TppLabel
          UserName = 'st10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 177863
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object b02: TppLabel
          UserName = 'b02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 267494
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object e02: TppLabel
          UserName = 'e02'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 274109
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppLine102: TppLine
          UserName = 'Line102'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 178859
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine110: TppLine
          UserName = 'Line110'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 187061
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine111: TppLine
          UserName = 'Line1101'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 187061
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine112: TppLine
          UserName = 'Line112'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 195527
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine113: TppLine
          UserName = 'Line113'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 204523
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine114: TppLine
          UserName = 'Line114'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 213519
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine115: TppLine
          UserName = 'Line115'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 222250
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object sp11: TppLabel
          UserName = 'sp11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 186066
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st11: TppLabel
          UserName = 'st11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 194532
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp12: TppLabel
          UserName = 'sp12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 203528
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st12: TppLabel
          UserName = 'st12'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 212259
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sp13: TppLabel
          UserName = 'sp13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 221255
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object st13: TppLabel
          UserName = 'st13'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 230251
          mmTop = 794
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'DIFF'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2540
          mmLeft = 246444
          mmTop = 794
          mmWidth = 10202
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'DIFF1'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2540
          mmLeft = 254033
          mmTop = 794
          mmWidth = 11345
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          HyperlinkColor = clBlue
          AutoSize = True
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TQN'
          DataPipeline = ppDBPipeline2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 2540
          mmLeft = 16594
          mmTop = 794
          mmWidth = 9864
          BandType = 5
          GroupNo = 0
        end
        object ppLine162: TppLine
          UserName = 'Line162'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 4763
          mmLeft = 18785
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object Query7: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_trans_qty'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 152
    Top = 168
  end
  object DataSource3: TDataSource
    DataSet = Query7
    Left = 184
    Top = 168
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DataSource3
    UserName = 'DBPipeline2'
    Left = 216
    Top = 168
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport3PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 280
    Top = 168
    Version = '11.08'
    mmColumnWidth = 197379
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 6350
        mmLeft = 5027
        mmTop = 25929
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN  ----   Qty Note '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 41804
        mmTop = 3704
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 13758
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 80698
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object fty003: TppLabel
        UserName = 'fty003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43127
        mmTop = 13758
        mmWidth = 7144
        BandType = 0
      end
      object line003: TppLabel
        UserName = 'line003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 52123
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object jno003: TppLabel
        UserName = 'jno003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 97102
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN#  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 18521
        mmWidth = 12700
        BandType = 0
      end
      object job003: TppLabel
        UserName = 'job003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 19579
        mmTop = 18521
        mmWidth = 11938
        BandType = 0
      end
      object rwo003: TppLabel
        UserName = 'rwo003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 50006
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33073
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 120915
        mmTop = 13758
        mmWidth = 14552
        BandType = 0
      end
      object cstyle003: TppLabel
        UserName = 'cstyle003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 137584
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Color Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 80698
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object acol003: TppLabel
        UserName = 'acol003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 97102
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 120915
        mmTop = 18521
        mmWidth = 14552
        BandType = 0
      end
      object scqty003: TppLabel
        UserName = 'scqty003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 137584
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 161661
        mmTop = 13758
        mmWidth = 13208
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 177800
        mmTop = 13758
        mmWidth = 635
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 161661
        mmTop = 18521
        mmWidth = 6096
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 177800
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object fccs003: TppLabel
        UserName = 'fccs003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 61383
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 56886
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Size  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5821
        mmTop = 27252
        mmWidth = 6731
        BandType = 0
      end
      object ppLine158: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 16140
        mmTop = 26194
        mmWidth = 2646
        BandType = 0
      end
      object ppLine159: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 35719
        mmTop = 26194
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 20638
        mmTop = 27252
        mmWidth = 11515
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 45508
        mmTop = 27252
        mmWidth = 9102
        BandType = 0
      end
      object cwo01: TppLabel
        UserName = 'cwo01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 37306
        mmTop = 18521
        mmWidth = 635
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 45773
        mmTop = 18521
        mmWidth = 3704
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape20: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 5027
        mmTop = 0
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSIZ'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 5821
        mmTop = 794
        mmWidth = 5757
        BandType = 4
      end
      object ppLine177: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 16140
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine178: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 35719
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 29104
        mmTop = 794
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PQTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 47911
        mmTop = 794
        mmWidth = 6858
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel120: TppLabel
        UserName = 'Label120'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Signature : -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 3969
        mmWidth = 23283
        BandType = 8
      end
      object ppLine160: TppLine
        UserName = 'Line160'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 29369
        mmTop = 7938
        mmWidth = 37571
        BandType = 8
      end
      object ppLabel122: TppLabel
        UserName = 'Label1201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date : -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 85461
        mmTop = 3969
        mmWidth = 15610
        BandType = 8
      end
      object ppLine161: TppLine
        UserName = 'Line1601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 102129
        mmTop = 7938
        mmWidth = 37571
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape8'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 11113
        mmWidth = 24342
        BandType = 7
      end
      object ppShape22: TppShape
        UserName = 'Shape7'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape23: TppShape
        UserName = 'Shape6'
        mmHeight = 4498
        mmLeft = 114036
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppShape24: TppShape
        UserName = 'Shape5'
        mmHeight = 4498
        mmLeft = 114036
        mmTop = 6085
        mmWidth = 24342
        BandType = 7
      end
      object ppShape25: TppShape
        UserName = 'Shape4'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 1058
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel228: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Fty Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 1588
        mmWidth = 28046
        BandType = 7
      end
      object fdt003: TppLabel
        UserName = 'fdt003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 37571
        mmTop = 1588
        mmWidth = 635
        BandType = 7
      end
      object ppLabel230: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Start Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73290
        mmTop = 1588
        mmWidth = 23813
        BandType = 7
      end
      object cfksrq003: TppLabel
        UserName = 'cfksrq003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 115359
        mmTop = 1588
        mmWidth = 635
        BandType = 7
      end
      object ppLabel232: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN Org. Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73290
        mmTop = 6615
        mmWidth = 33073
        BandType = 7
      end
      object tzlcrq003: TppLabel
        UserName = 'tzlcrq003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 115359
        mmTop = 6615
        mmWidth = 635
        BandType = 7
      end
      object ppLabel234: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Ex-fty Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 6615
        mmWidth = 24606
        BandType = 7
      end
      object yqlcrq003: TppLabel
        UserName = 'yqlcrq003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 37571
        mmTop = 6615
        mmWidth = 635
        BandType = 7
      end
      object ppLabel236: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RWO Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 5027
        mmTop = 11642
        mmWidth = 23283
        BandType = 7
      end
      object xc3003: TppLabel
        UserName = 'xc3003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 37571
        mmTop = 11642
        mmWidth = 635
        BandType = 7
      end
      object ppShape26: TppShape
        UserName = 'Shape18'
        mmHeight = 4498
        mmLeft = 114036
        mmTop = 11113
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel238: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default 1st RWO Fty Work CT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73290
        mmTop = 11642
        mmWidth = 39423
        BandType = 7
      end
      object yszq3: TppLabel
        UserName = 'yszq3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 115359
        mmTop = 11642
        mmWidth = 635
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'SEQ'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppShape27: TppShape
          UserName = 'Shape27'
          mmHeight = 5821
          mmLeft = 5027
          mmTop = 0
          mmWidth = 52388
          BandType = 5
          GroupNo = 0
        end
        object ppLine214: TppLine
          UserName = 'Line11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5556
          mmLeft = 16140
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLine215: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 5556
          mmLeft = 35719
          mmTop = 0
          mmWidth = 2646
          BandType = 5
          GroupNo = 0
        end
        object ppLabel252: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3429
          mmLeft = 5821
          mmTop = 794
          mmWidth = 6223
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3429
          mmLeft = 29104
          mmTop = 794
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PQTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3429
          mmLeft = 47911
          mmTop = 794
          mmWidth = 6858
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object Query8: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_lwo where pline='#39'T002U'#39' and seq=988'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 312
    Top = 128
  end
  object DataSource4: TDataSource
    DataSet = Query8
    Left = 344
    Top = 128
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 312
    Top = 168
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 72
    Top = 24
  end
end
