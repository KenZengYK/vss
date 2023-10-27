object frmpdn: Tfrmpdn
  Left = 191
  Top = 111
  Caption = 'SWPM - PDN'
  ClientHeight = 436
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
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
    Width = 1003
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 305
      Top = 24
      Width = 46
      Height = 13
      Caption = 'PDN No. '
    end
    object Label2: TLabel
      Left = 523
      Top = 24
      Width = 55
      Height = 13
      Caption = 'Ex-fty Date '
    end
    object SpeedButton5: TSpeedButton
      Left = 481
      Top = 24
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton5Click
    end
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 85
      Height = 13
      Caption = 'Exporting Factory '
    end
    object Label8: TLabel
      Left = 704
      Top = 24
      Width = 481
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 193
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Week'
    end
    object Edit1: TEdit
      Left = 353
      Top = 24
      Width = 129
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object DBDateTimeEditEh1: TDBDateTimeEditEh
      Left = 577
      Top = 24
      Width = 105
      Height = 21
      DataField = 'EXFTY'
      DataSource = DataSource1
      EditButtons = <>
      Kind = dtkDateEh
      TabOrder = 1
      Visible = True
    end
    object ComboBox1: TComboBox
      Left = 96
      Top = 24
      Width = 72
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
    object wEdit1: TSpinEdit
      Left = 225
      Top = 24
      Width = 57
      Height = 22
      MaxValue = 53
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 1003
    Height = 326
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'RWOs'
      object Splitter1: TSplitter
        Left = 457
        Top = 0
        Width = 1
        Height = 295
        ExplicitLeft = 393
        ExplicitHeight = 405
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 457
        Height = 295
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 41
          Width = 457
          Height = 254
          Align = alClient
          AllowedOperations = []
          DataSource = DataSource4
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu2
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
          Columns = <
            item
              EditButtons = <>
              FieldName = 'J_NO'
              Footers = <>
              Title.Caption = 'Project No'
              Width = 59
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
              FieldName = 'CUSTPO'
              Footers = <>
              Title.Caption = 'Cust PO#'
              Width = 97
            end
            item
              EditButtons = <>
              FieldName = 'RWO'
              Footers = <>
              Title.Caption = 'CWO'
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'CSTYLE'
              Footers = <>
              Title.Caption = 'Cust Style'
              Width = 107
            end
            item
              EditButtons = <>
              FieldName = 'ACOL'
              Footers = <>
              Title.Caption = 'Clr Code'
              Width = 31
            end
            item
              DisplayFormat = 'mm/dd'
              EditButtons = <>
              FieldName = 'FWDT'
              Footers = <>
              Title.Caption = 'FW Start Date'
              Width = 40
            end
            item
              DisplayFormat = 'mm/dd'
              EditButtons = <>
              FieldName = 'EXDT'
              Footers = <>
              Title.Caption = 'Ex-fty Date'
              Width = 40
            end
            item
              DisplayFormat = 'mm/dd'
              EditButtons = <>
              FieldName = 'DDT'
              Footers = <>
              Title.Caption = 'Del. Date'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'QTY'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'RWO QTY'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'OQTY'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'O/S QTY'
              Width = 40
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 457
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 72
            Height = 13
            Caption = 'Available CWO'
          end
          object Label5: TLabel
            Left = 112
            Top = 16
            Width = 53
            Height = 13
            Caption = 'Project No '
          end
          object Edit2: TEdit
            Left = 168
            Top = 16
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = Edit2Change
          end
        end
      end
      object Panel4: TPanel
        Left = 458
        Top = 0
        Width = 39
        Height = 295
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
          Top = 200
          Width = 23
          Height = 22
          Hint = 'Remove One'
          Caption = '<'
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 8
          Top = 256
          Width = 23
          Height = 22
          Hint = 'Remove All'
          Caption = '<<'
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
      end
      object Panel5: TPanel
        Left = 497
        Top = 0
        Width = 498
        Height = 295
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 498
          Height = 41
          Align = alTop
          AutoSize = False
          Caption = #13#10#13#10' Selected CWO'
          ExplicitWidth = 341
        end
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 41
          Width = 498
          Height = 254
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
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'J2_JOB'
              Footers = <>
              Title.Caption = 'Work Order'
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'CUSTPO'
              Footers = <>
              Title.Caption = 'Cust PO #'
              Width = 97
            end
            item
              ButtonStyle = cbsEllipsis
              EditButtons = <>
              FieldName = 'RWO'
              Footers = <>
              Title.Caption = 'CWO'
              Width = 35
              OnEditButtonClick = DBGridEh2Columns2EditButtonClick
            end
            item
              EditButtons = <>
              FieldName = 'CSTYLE'
              Footers = <>
              Title.Caption = 'Cust Style'
              Width = 90
            end
            item
              ButtonStyle = cbsEllipsis
              EditButtons = <>
              FieldName = 'ACOL'
              Footers = <>
              Title.Caption = 'Clr Code'
              Width = 32
              OnEditButtonClick = DBGridEh2Columns4EditButtonClick
            end
            item
              DisplayFormat = 'mm/dd'
              EditButtons = <>
              FieldName = 'FWDT'
              Footers = <>
              Title.Caption = 'FW Start Date'
              Width = 40
            end
            item
              DisplayFormat = 'mm/dd'
              EditButtons = <>
              FieldName = 'EXDT'
              Footers = <>
              Title.Caption = 'Ex-fty Date'
              Width = 40
            end
            item
              DisplayFormat = 'mm/dd'
              EditButtons = <>
              FieldName = 'DDT'
              Footers = <>
              Title.Caption = 'Del. Date'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'QTY'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PO Qty'
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'SQTY'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PDN Ttl Qty'
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'BCN'
              Footers = <>
              Title.Caption = 'BDC # (apply to ETAM only)'
              Width = 95
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet22: TTabSheet
      Caption = 'Summary by WO'
      ImageIndex = 21
      TabVisible = False
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 995
        Height = 295
        ActivePage = TabSheet23
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PageControl2Change
        object TabSheet23: TTabSheet
          Caption = 'TabSheet23'
          object DBGridEh23: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet24: TTabSheet
          Caption = 'TabSheet24'
          ImageIndex = 1
          object DBGridEh24: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet25: TTabSheet
          Caption = 'TabSheet25'
          ImageIndex = 2
          object DBGridEh25: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet26: TTabSheet
          Caption = 'TabSheet26'
          ImageIndex = 3
          object DBGridEh26: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet27: TTabSheet
          Caption = 'TabSheet27'
          ImageIndex = 4
          object DBGridEh27: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet28: TTabSheet
          Caption = 'TabSheet28'
          ImageIndex = 5
          object DBGridEh28: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet29: TTabSheet
          Caption = 'TabSheet29'
          ImageIndex = 6
          object DBGridEh29: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet30: TTabSheet
          Caption = 'TabSheet30'
          ImageIndex = 7
          object DBGridEh30: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet31: TTabSheet
          Caption = 'TabSheet31'
          ImageIndex = 8
          object DBGridEh31: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet32: TTabSheet
          Caption = 'TabSheet32'
          ImageIndex = 9
          object DBGridEh32: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet33: TTabSheet
          Caption = 'TabSheet33'
          ImageIndex = 10
          object DBGridEh33: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet34: TTabSheet
          Caption = 'TabSheet34'
          ImageIndex = 11
          object DBGridEh34: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet35: TTabSheet
          Caption = 'TabSheet35'
          ImageIndex = 12
          object DBGridEh35: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet36: TTabSheet
          Caption = 'TabSheet36'
          ImageIndex = 13
          object DBGridEh36: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet37: TTabSheet
          Caption = 'TabSheet37'
          ImageIndex = 14
          object DBGridEh37: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet48: TTabSheet
          Caption = 'TabSheet48'
          ImageIndex = 15
          object DBGridEh48: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet49: TTabSheet
          Caption = 'TabSheet49'
          ImageIndex = 16
          object DBGridEh49: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet50: TTabSheet
          Caption = 'TabSheet50'
          ImageIndex = 17
          object DBGridEh50: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet51: TTabSheet
          Caption = 'TabSheet51'
          ImageIndex = 18
          object DBGridEh51: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet52: TTabSheet
          Caption = 'TabSheet52'
          ImageIndex = 19
          object DBGridEh52: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet53: TTabSheet
          Caption = 'TabSheet53'
          ImageIndex = 20
          object DBGridEh53: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet54: TTabSheet
          Caption = 'TabSheet54'
          ImageIndex = 21
          object DBGridEh54: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet55: TTabSheet
          Caption = 'TabSheet55'
          ImageIndex = 22
          object DBGridEh55: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet56: TTabSheet
          Caption = 'TabSheet56'
          ImageIndex = 23
          object DBGridEh56: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet57: TTabSheet
          Caption = 'TabSheet57'
          ImageIndex = 24
          object DBGridEh57: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet58: TTabSheet
          Caption = 'TabSheet58'
          ImageIndex = 25
          object DBGridEh58: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet59: TTabSheet
          Caption = 'TabSheet59'
          ImageIndex = 26
          object DBGridEh59: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet60: TTabSheet
          Caption = 'TabSheet60'
          ImageIndex = 27
          object DBGridEh60: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet61: TTabSheet
          Caption = 'TabSheet61'
          ImageIndex = 28
          object DBGridEh61: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet62: TTabSheet
          Caption = 'TabSheet62'
          ImageIndex = 29
          object DBGridEh62: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet93: TTabSheet
          Caption = 'TabSheet93'
          ImageIndex = 30
          object DBGridEh93: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet94: TTabSheet
          Caption = 'TabSheet94'
          ImageIndex = 31
          object DBGridEh94: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet95: TTabSheet
          Caption = 'TabSheet95'
          ImageIndex = 32
          object DBGridEh95: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet96: TTabSheet
          Caption = 'TabSheet96'
          ImageIndex = 33
          object DBGridEh96: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet97: TTabSheet
          Caption = 'TabSheet97'
          ImageIndex = 34
          object DBGridEh97: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet98: TTabSheet
          Caption = 'TabSheet98'
          ImageIndex = 35
          object DBGridEh98: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet99: TTabSheet
          Caption = 'TabSheet99'
          ImageIndex = 36
          object DBGridEh99: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet100: TTabSheet
          Caption = 'TabSheet100'
          ImageIndex = 37
          object DBGridEh100: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet101: TTabSheet
          Caption = 'TabSheet101'
          ImageIndex = 38
          object DBGridEh101: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet102: TTabSheet
          Caption = 'TabSheet102'
          ImageIndex = 39
          object DBGridEh102: TDBGridEh
            Left = 0
            Top = 0
            Width = 987
            Height = 264
            Align = alClient
            DataSource = DataSource5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
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
            Columns = <
              item
                EditButtons = <>
                FieldName = 'J_NO'
                Footer.Value = 'Total : '
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'Project No'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'J2_JOB'
                Footers = <>
                Title.Caption = 'WO #'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ACOL'
                Footers = <>
                Title.Caption = 'Clr Code'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'PSIZ'
                Footers = <>
                Title.Caption = 'Size'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'WO Qty'
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
                FieldName = 'R1QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R1AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R1T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R2AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R2T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R3AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R3T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R4AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R4T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R5AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R5T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R6AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R6T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R7AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R7T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R8AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R8T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R9AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R9T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10QTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10PQTY'
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T1QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T2QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10T3QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'R10AQQTY'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'R10T4QTY'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 55
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '    '
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 995
        Height = 295
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
        FrozenCols = 3
        RowDetailPanel.Color = clBtnFace
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnKeyPress = DBGridEh3KeyPress
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
    Top = 383
    Width = 1003
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 8
      Top = 0
      Width = 33
      Height = 52
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
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 41
      Top = 0
      Width = 37
      Height = 52
      Caption = 'Delete'
      DoubleBuffered = True
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        330033333333333333003300000000003300330FFFFFFFF03300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 168
      Top = 0
      Width = 32
      Height = 52
      Caption = 'Apply'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 240
      Top = 0
      Width = 97
      Height = 52
      Caption = 'Manifest Instruction'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
        00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
        0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
        00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
        03FF3777773337777333333333333333333F3333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 78
      Top = 0
      Width = 30
      Height = 52
      Caption = 'Copy'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 682
      Top = 0
      Width = 48
      Height = 52
      Caption = 'Preview'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 10
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 634
      Top = 0
      Width = 48
      Height = 52
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 547
      Top = 0
      Width = 48
      Height = 52
      Caption = 'Write-off'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn8Click
    end
    object BitBtn9: TBitBtn
      Left = 730
      Top = 0
      Width = 95
      Height = 52
      Caption = 'Past Performance'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 11
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      Left = 200
      Top = 0
      Width = 40
      Height = 52
      Caption = 'Active'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 506
      Top = 0
      Width = 41
      Height = 52
      Caption = 'Delay Shpt'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 7
      WordWrap = True
      OnClick = BitBtn11Click
    end
    object BitBtn12: TBitBtn
      Left = 595
      Top = 0
      Width = 39
      Height = 52
      Caption = 'Acted'
      DoubleBuffered = True
      Glyph.Data = {
        7E010000424D7E01000000000000760000002800000018000000160000000100
        0400000000000801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00800000000000
        0000000000080777777777777777777777700F77777777777777777777700F88
        888888888888888887700F88888888888888888887700F888888800000000888
        87700F88888880FFFFFF088887700F8888880FFFFFFFF08887700F888880FFFF
        FFFFF08887700F888880FFFFFFFFF08887700F88880FF0FFFFFFF08887700F88
        80FF00F0F0F0F08887700F88800080F0F0F0F08887700F88888880F0F0F0F088
        87700F88888880F0F0F0F08887700F88888880F0F0F0088887700F88888880F0
        F0F0888887700F8888888800F008888887700F88888888800888888887700F88
        888888888888888887700FFFFFFFFFFFFFFFFFFFFF7080000000000000000000
        0008}
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtn12Click
    end
    object BitBtn13: TBitBtn
      Left = 337
      Top = 0
      Width = 105
      Height = 52
      Caption = 'Manifest Confirmation'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
        0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
        000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
        00FF33337FFF7FF77733333300000000033F3333777777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 12
      OnClick = BitBtn13Click
    end
    object BitBtn14: TBitBtn
      Left = 442
      Top = 0
      Width = 64
      Height = 52
      Caption = 'Sample Qty'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 13
      OnClick = BitBtn14Click
    end
    object BitBtn15: TBitBtn
      Left = 825
      Top = 0
      Width = 39
      Height = 52
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      Layout = blGlyphTop
      ParentDoubleBuffered = False
      TabOrder = 14
    end
    object BitBtn16: TBitBtn
      Left = 108
      Top = 0
      Width = 60
      Height = 52
      Caption = 'Preparation'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 15
      OnClick = BitBtn16Click
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_m'
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
        Size = 1500
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterClose = Query1AfterClose
    AfterPost = Query1AfterPost
    Left = 8
    Top = 65520
  end
  object Query2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_rwo'
    FieldDefs = <
      item
        Name = 'SEQ'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DSEQ'
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
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'SQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'BCN'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CASTL'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CUSTPO'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'CNAME'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'ORDLINE'
        DataType = ftInteger
      end
      item
        Name = 'CASTL1'
        DataType = ftBoolean
      end
      item
        Name = 'ADDDT'
        DataType = ftDate
      end
      item
        Name = 'ADDUSR'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'ADDWK'
        DataType = ftInteger
      end
      item
        Name = 'FWDT'
        DataType = ftDate
      end
      item
        Name = 'EXDT'
        DataType = ftDate
      end
      item
        Name = 'DDT'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'seq;j_no;j2_job;rwo;dseq'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    BeforeOpen = Query2BeforeOpen
    AfterOpen = Query2AfterOpen
    AfterPost = Query2AfterPost
    Left = 40
    Top = 65520
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
    AfterOpen = Query3AfterOpen
    AfterPost = Query3AfterPost
    Left = 72
    Top = 65520
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnDataChange = DataSource1DataChange
    Left = 104
    Top = 65520
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select j_no,j2_job,rwo,acol from tbl_erprwo  where exfty>'#39'2007-0' +
      '6-01'#39
    FieldDefs = <
      item
        Name = 'J_NO'
        DataType = ftWideString
        Size = 20
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
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'j_no;j2_job;acol;rwo'
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 136
    Top = 65520
  end
  object Query5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 168
    Top = 65520
  end
  object Query6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 200
    Top = 65520
  end
  object Query7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
    Top = 65520
  end
  object Query8: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_r_tmp'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 264
    Top = 65520
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 296
    Top = 65520
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 328
    Top = 65520
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 360
    Top = 65520
  end
  object DataSource5: TDataSource
    DataSet = Query8
    Left = 392
    Top = 65520
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 152
    object UpdOSQTY1: TMenuItem
      Caption = 'Upd OSQTY'
      ShortCut = 32851
      Visible = False
      OnClick = UpdOSQTY1Click
    end
    object ChangePDN1: TMenuItem
      Caption = 'Change PDN#'
      ShortCut = 32853
      Visible = False
      OnClick = ChangePDN1Click
    end
    object RecalculateVoyage1: TMenuItem
      Caption = 'Re-calculate Voyage'
      ShortCut = 32845
      Visible = False
      OnClick = RecalculateVoyage1Click
    end
    object FirstPage1: TMenuItem
      Caption = 'First Page'
      ShortCut = 123
      Visible = False
      OnClick = FirstPage1Click
    end
    object PDNEnquiry1: TMenuItem
      Caption = 'PDN Enquiry'
      ShortCut = 122
      Visible = False
      OnClick = PDNEnquiry1Click
    end
    object RemoveRWO1: TMenuItem
      Caption = 'Remove RWO'
      ShortCut = 49234
      Visible = False
      OnClick = RemoveRWO1Click
    end
    object Releaseto01: TMenuItem
      Caption = 'Release to 0'
      ShortCut = 49217
      Visible = False
      OnClick = Releaseto01Click
    end
    object Releaseto21: TMenuItem
      Caption = 'Release to 2'
      ShortCut = 49225
      Visible = False
      OnClick = Releaseto21Click
    end
    object CheckRWO1: TMenuItem
      Caption = 'Check RWO'
      ShortCut = 117
      Visible = False
      OnClick = CheckRWO1Click
    end
    object RemoveVoyage1: TMenuItem
      Caption = 'Remove Voyage'
      ShortCut = 49238
      Visible = False
      OnClick = RemoveVoyage1Click
    end
    object RefreshPDN1: TMenuItem
      Caption = 'Refresh PDN'
      ShortCut = 32887
      Visible = False
      OnClick = RefreshPDN1Click
    end
    object PrintRWO1: TMenuItem
      Caption = 'Print RWO'
      ShortCut = 49232
      Visible = False
      OnClick = PrintRWO1Click
    end
    object ransferDatatoWeb1: TMenuItem
      Caption = 'Transfer Data to Web'
      ShortCut = 49236
      Visible = False
      OnClick = ransferDatatoWeb1Click
    end
    object ComparePDNMNF1: TMenuItem
      Caption = 'Compare PDN_MNF'
      ShortCut = 32885
      Visible = False
      OnClick = ComparePDNMNF1Click
    end
    object PrintInspectionBooking1: TMenuItem
      Caption = 'Print Inspection Booking'
      ShortCut = 49218
      Visible = False
      OnClick = PrintInspectionBooking1Click
    end
    object PDNpastbymonth1: TMenuItem
      Caption = 'PDN past by month'
      ShortCut = 49224
      Visible = False
      OnClick = PDNpastbymonth1Click
    end
    object RefreshActualDate1: TMenuItem
      Caption = 'Refresh Actual Date'
      ShortCut = 32888
      Visible = False
      OnClick = RefreshActualDate1Click
    end
    object CheckSampleQty1: TMenuItem
      Caption = 'Check Sample Qty'
      ShortCut = 49235
      Visible = False
      OnClick = CheckSampleQty1Click
    end
    object OutstandingRWOs1: TMenuItem
      Caption = 'Outstanding RWOs'
      ShortCut = 49231
      Visible = False
      OnClick = OutstandingRWOs1Click
    end
    object UpdateWeight1: TMenuItem
      Caption = 'Update Weight'
      ShortCut = 49239
      Visible = False
      OnClick = UpdateWeight1Click
    end
    object ACCESSCUSTPOQTY1: TMenuItem
      Caption = 'ACCESS_CUSTPOQTY'
      ShortCut = 24643
      Visible = False
      OnClick = ACCESSCUSTPOQTY1Click
    end
    object DepartmentalTransitT3AQLpassExfty1: TMenuItem
      Caption = 'Departmental Transit (T3/AQL pass/Ex-fty)'
      OnClick = DepartmentalTransitT3AQLpassExfty1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel file(*.xls)|*.xls|Any file(*.*)|*.*'
    Left = 224
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Connection = frmmain.ADOConn1
    Parameters = <>
    Left = 368
    Top = 64
  end
  object Database1: TDatabase
    AliasName = 'SQL2005_PDN'
    DatabaseName = 'sql2005'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=ituser'
      'ODBC DSN=SQL2005_PDN'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'SQLQRYMODE='
      'LANGDRIVER='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'PASSWORD=itsystem@2009')
    SessionName = 'Default'
    Left = 400
    Top = 64
  end
  object ADOQuery1: TQuery
    DatabaseName = 'sql2005'
    Left = 432
    Top = 64
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_r_tmp'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 248
    Top = 56
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 424
    Top = 65520
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 160
    Top = 56
  end
  object eXLS1: TQExport4XLS
    DataSet = Query7
    About = '(About EMS AdvancedExport)'
    _Version = '4.1.0.6'
    ShowFile = True
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
    Left = 280
    Top = 152
  end
  object PopupMenu2: TPopupMenu
    Left = 152
    Top = 208
    object ExporttoExcel1: TMenuItem
      Caption = 'Export to Excel'
      OnClick = ExporttoExcel1Click
    end
  end
  object ADOQuery3: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 300
    Parameters = <>
    Left = 504
    Top = 64
  end
end
