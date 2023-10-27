object frmvoyage: Tfrmvoyage
  Left = 146
  Top = 110
  Caption = 'Manifest Instruction'
  ClientHeight = 331
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1001
    Height = 129
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 26
      Height = 13
      Caption = 'PDN '
    end
    object DBText1: TDBText
      Left = 48
      Top = 16
      Width = 89
      Height = 17
      DataField = 'PDN'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Ex-fty Date'
    end
    object DBText2: TDBText
      Left = 216
      Top = 16
      Width = 89
      Height = 17
      DataField = 'EXFTY'
      DataSource = frmpdn.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 312
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Manifest '
    end
    object Label4: TLabel
      Left = 504
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Ship Mode'
    end
    object Label5: TLabel
      Left = 712
      Top = 16
      Width = 55
      Height = 13
      Caption = 'Ex-fty Date '
    end
    object Label6: TLabel
      Left = 600
      Top = 40
      Width = 88
      Height = 13
      Caption = 'Actual Ex-fty Date '
    end
    object Label7: TLabel
      Left = 808
      Top = 40
      Width = 91
      Height = 13
      Caption = 'Actual Ex-fty Time  '
    end
    object Label8: TLabel
      Left = 872
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Time  '
    end
    object Label11: TLabel
      Left = 152
      Top = 40
      Width = 47
      Height = 13
      Caption = 'Customer '
    end
    object Label12: TLabel
      Left = 16
      Top = 64
      Width = 152
      Height = 13
      Caption = 'Packing Instruction/Ship mode: '
    end
    object Label13: TLabel
      Left = 720
      Top = 64
      Width = 118
      Height = 13
      Caption = 'Ex-fty Date (GG Factory) '
    end
    object Label14: TLabel
      Left = 719
      Top = 91
      Width = 180
      Height = 13
      Caption = 'Not shipped Qty caused by customer  '
    end
    object Label15: TLabel
      Left = 401
      Top = 40
      Width = 63
      Height = 13
      Caption = 'Closing Date '
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 360
      Top = 16
      Width = 113
      Height = 21
      DataField = 'VOYN'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBDTEdit1: TDBDateTimeEditEh
      Left = 768
      Top = 16
      Width = 97
      Height = 21
      DataField = 'EXFTY'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 2
      Visible = True
    end
    object DBDTEdit2: TDBDateTimeEditEh
      Left = 688
      Top = 40
      Width = 105
      Height = 21
      DataField = 'ACTDT'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 3
      Visible = True
    end
    object DBTimeEdit2: TcxDBTimeEdit
      Left = 896
      Top = 40
      DataBinding.DataField = 'ACTTM'
      DataBinding.DataSource = DataSource1
      TabOrder = 4
      Width = 97
    end
    object DBTimeEdit1: TcxDBTimeEdit
      Left = 896
      Top = 16
      DataBinding.DataField = 'EXTM'
      DataBinding.DataSource = DataSource1
      TabOrder = 5
      Width = 97
    end
    object DBEdit3: TDBEdit
      Left = 208
      Top = 40
      Width = 153
      Height = 21
      DataField = 'MEMO1'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBMemo1: TDBMemo
      Left = 168
      Top = 64
      Width = 545
      Height = 59
      DataField = 'PS_CHANGE'
      DataSource = DataSource1
      TabOrder = 7
    end
    object DBComboBox1: TDBComboBox
      Left = 560
      Top = 16
      Width = 105
      Height = 21
      DataField = 'SHPM'
      DataSource = DataSource1
      Items.Strings = (
        'BOAT'
        'AIR CC'
        'AIR PP'
        'S/A CC'
        'S/A PP'
        'TRUCK'
        'COURIER'
        'LAND T'
        'LAND C'
        'LAND F')
      TabOrder = 1
    end
    object DBDTEdit3: TDBDateTimeEditEh
      Left = 840
      Top = 64
      Width = 105
      Height = 21
      DataField = 'GG_EXFTY'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 8
      Visible = True
    end
    object DBEditEh1: TDBNumberEditEh
      Left = 896
      Top = 91
      Width = 74
      Height = 21
      DataField = 'CUST_QTY'
      DataSource = DataSource1
      DecimalPlaces = 0
      DisplayFormat = '#0'
      EditButtons = <>
      TabOrder = 9
      Visible = True
    end
    object DBDTEdit5: TDBDateTimeEditEh
      Left = 467
      Top = 40
      Width = 105
      Height = 21
      DataField = 'CLS_DT'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 10
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 129
    Width = 1001
    Height = 161
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'CWOs'
      object Splitter1: TSplitter
        Left = 393
        Top = 0
        Width = 1
        Height = 130
        ExplicitHeight = 405
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 393
        Height = 130
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 393
          Height = 130
          Align = alClient
          DataSource = DataSource4
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
              FieldName = 'J_NO'
              Footers = <>
              Title.Caption = 'Project No'
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'J2_JOB'
              Footers = <>
              Title.Caption = 'Work Order'
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'RWO'
              Footers = <>
              Title.Caption = 'CWO'
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'CSTYLE'
              Footers = <>
              Title.Caption = 'Cust Style'
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'ACOL'
              Footers = <>
              Title.Caption = 'Clr Code'
              Width = 32
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel4: TPanel
        Left = 394
        Top = 0
        Width = 39
        Height = 130
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 144
          Width = 23
          Height = 22
          Hint = 'Select One'
          Caption = '>'
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 8
          Top = 224
          Width = 23
          Height = 22
          Hint = 'Remove One'
          Caption = '<'
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
      end
      object Panel5: TPanel
        Left = 433
        Top = 0
        Width = 560
        Height = 130
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 560
          Height = 130
          Align = alClient
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnDblClick = DBGridEh2DblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'J_NO'
              Footers = <>
              Title.Caption = 'Project No'
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'J2_JOB'
              Footers = <>
              Title.Caption = 'Work Order'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'RWO'
              Footers = <>
              Title.Caption = 'CWO'
              Width = 29
            end
            item
              EditButtons = <>
              FieldName = 'CSTYLE'
              Footers = <>
              Title.Caption = 'Cust Style'
              Width = 106
            end
            item
              EditButtons = <>
              FieldName = 'ACOL'
              Footers = <>
              Title.Caption = 'Clr Code'
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'QTY'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PO Qty'
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'SQTY'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PDN Ttl Qty'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 993
        Height = 130
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        RowDetailPanel.Color = clBtnFace
        SumList.Active = True
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
            FieldName = 'PSIZ'
            Footer.Value = 'Total : '
            Footer.ValueType = fvtStaticText
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Size'
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PO Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SQTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'PDN Ttl Qty'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q1T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q2T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q3T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q4T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q5T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q6T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q7T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q8T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q9T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q10T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q11T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q12T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q13T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q14T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q15T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q16T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q17T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q18T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q19T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q20T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q21T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q22T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q23T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q24T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25QTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25PQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25T1QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25T2QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25T3QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25AQQTY'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Q25T4QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CFM'
            Footers = <>
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'SHPD'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Actual Shipped'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'DIFF'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Diff (PDN vs Ex-fty)'
            Width = 55
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 290
    Width = 1001
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label9: TLabel
      Left = 560
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object Label10: TLabel
      Left = 720
      Top = 8
      Width = 3
      Height = 13
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Prior Manifest'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn6: TBitBtn
      Left = 209
      Top = 8
      Width = 64
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
      OnClick = BitBtn6Click
    end
    object BitBtn2: TBitBtn
      Left = 385
      Top = 8
      Width = 65
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
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 113
      Top = 8
      Width = 96
      Height = 25
      Caption = 'Next Manifest'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 273
      Top = 8
      Width = 112
      Height = 25
      Caption = 'Vendor Booking'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 450
      Top = 8
      Width = 79
      Height = 25
      Caption = 'Notepad'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn7: TBitBtn
      Left = 529
      Top = 8
      Width = 120
      Height = 25
      Caption = 'Inspection Booking'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 649
      Top = 8
      Width = 112
      Height = 25
      Caption = 'Air Request Form'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
        3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
        B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
        33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
        000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
        033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
        BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
        33B33733333773333373B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 761
      Top = 8
      Width = 152
      Height = 25
      Caption = 'Complete (last shipment)'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333300333
        33333333333773FF333333333330F0033333333333373773FF333333330FFFF0
        03333333337F333773FF3333330FFFFFF003333333733FF33773333330FF00FF
        FF80333337F3773F3337333330FFFF0FFFF03FFFF7FFF3733F3700000000FFFF
        0FF0777777773FF373370000000000FFFFF07FFFFFF377FFF3370CCCCC000000
        FF037777773337773F7300CCC000003300307F77733337F37737000C00000033
        33307F373333F7F333370000007B703333307FFFF337F7F33337099900BBB033
        33307777F37777FF33370999007B700333037777F3373773FF73099900000030
        00337777FFFFF7F7773300000000003333337777777777333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 913
      Top = 8
      Width = 57
      Height = 25
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 9
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_voyage_m where seq=80302'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PDN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'CUST'
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'MARKS'
        DataType = ftWideString
        Size = 2000
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'WK'
        DataType = ftInteger
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'MARKS1'
        DataType = ftWideString
        Size = 1500
      end
      item
        Name = 'STATUS'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'ACTDT'
        DataType = ftDate
      end
      item
        Name = 'ACTTM'
        DataType = ftTime
      end
      item
        Name = 'STT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CUSTOMER'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DS_MARKS'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'SEQ1'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VOYN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SHPM'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EXTM'
        DataType = ftTime
      end
      item
        Name = 'VER'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'TRUCK'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'INDT'
        DataType = ftDate
      end
      item
        Name = 'INTM'
        DataType = ftTime
      end
      item
        Name = 'ONDT'
        DataType = ftDate
      end
      item
        Name = 'VESS'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'LPORT'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEST'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'BOX'
        DataType = ftInteger
      end
      item
        Name = 'WGHT'
        DataType = ftFloat
      end
      item
        Name = 'CBM'
        DataType = ftFloat
      end
      item
        Name = 'MEMO1'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'RAIR'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'PS_CHANGE'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'ONDTCAT'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'GG_EXFTY'
        DataType = ftDate
      end
      item
        Name = 'CUST_QTY'
        DataType = ftInteger
      end
      item
        Name = 'CLS_DT'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterPost = Query1AfterPost
    Left = 8
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_rwo'
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
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = Query2AfterOpen
    Left = 40
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    FieldDefs = <>
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
    AfterEdit = Query3AfterEdit
    AfterPost = Query3AfterPost
    Left = 72
    Top = 65528
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select j_no,j2_job,rwo,acol from tbl_erprwo  where exfty>'#39'2007-0' +
      '6-01'#39
    FieldDefs = <
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
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;rwo;acol'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
    Top = 65528
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 296
    Top = 65528
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 328
    Top = 65528
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 360
    Top = 65528
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 65528
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 65528
  end
  object Query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 65528
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 64
    object FirstPage1: TMenuItem
      Caption = 'First Page'
      ShortCut = 123
      Visible = False
      OnClick = FirstPage1Click
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 119
      Visible = False
      OnClick = Refresh1Click
    end
    object RemoveRWO1: TMenuItem
      Caption = 'Remove RWO'
      ShortCut = 49234
      Visible = False
      OnClick = SpeedButton2Click
    end
    object SaveVersionHistory1: TMenuItem
      Caption = 'Save Version History'
      ShortCut = 49224
      Visible = False
      OnClick = SaveVersionHistory1Click
    end
    object ExportRWO1: TMenuItem
      Caption = 'Export RWO'
      ShortCut = 49232
      Visible = False
      OnClick = ExportRWO1Click
    end
    object RemoveBlankManifest1: TMenuItem
      Caption = 'Remove Blank Manifest'
      ShortCut = 49220
      Visible = False
      OnClick = RemoveBlankManifest1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel file(*.xls)|*.xls|Any file(*.*)|*.*'
    Left = 472
    Top = 72
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 264
    Top = 65528
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 392
    Top = 65528
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 160
    Top = 56
  end
  object exls1: TQExport4XLS
    DataSet = Query7
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.6'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.HyperlinkFormat.Font.Color = clrBlue
    Options.HyperlinkFormat.Font.Underline = fulSingle
    Options.NoteFormat.Alignment.Horizontal = halLeft
    Options.NoteFormat.Alignment.Vertical = valTop
    Options.NoteFormat.Font.Size = 8
    Options.NoteFormat.Font.Style = [xfsBold]
    Options.NoteFormat.Font.Name = 'Tahoma'
    FieldFormats = <>
    StripStyles = <>
    Hyperlinks = <>
    Notes = <>
    Charts = <>
    Sheets = <>
    Pictures = <>
    Images = <>
    Cells = <>
    MergedCells = <>
    Left = 520
    Top = 72
  end
  object sqlquery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 344
    Top = 80
  end
  object sqlquery2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspphg'
    RemoteServer = frmmain.SocketConnection1
    Left = 400
    Top = 80
  end
end
