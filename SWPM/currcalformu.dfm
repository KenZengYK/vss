object frmcurrcal: Tfrmcurrcal
  Left = 164
  Top = 156
  Caption = 'Current Line Calendar'
  ClientHeight = 475
  ClientWidth = 1164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1164
    Height = 327
    Align = alClient
    AllowedOperations = [alopInsertEh, alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    FooterRowCount = 2
    RowDetailPanel.Color = clBtnFace
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'DATE1'
        Footers = <
          item
            Value = 'Ttl:'
            ValueType = fvtStaticText
          end
          item
            Value = 'W/Ave:'
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Calendar|Date'
        Width = 49
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'WKNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Calendar|Wk'
        Width = 19
      end
      item
        EditButtons = <>
        FieldName = 'WDAY'
        Footers = <>
        Title.Caption = 'Calendar|Holi'#13#10'-day'#13#10'(ref)'
        Width = 35
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'CTRY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production Site|Coun'#13#10'-try'
        Width = 30
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'TPLANT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production Site|Fty'
        Width = 25
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'TSHOP'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production Site|Ws'
        Width = 28
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'LINE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production Site|Line'
        Width = 33
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'SFTC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Working Section Hrs|Shift'#13#10'Code'
        Width = 35
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_TG'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 'Working Section Hrs|Ttl'
        Width = 30
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTT'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Working Section Hrs|By Portion|N1'
        Width = 35
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTT1'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Working Section Hrs|By Portion|N2'
        Width = 35
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTC'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Working Section Hrs|By Portion|OT1+2'
        Width = 36
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'SECTT'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 'Working Section Hrs|Portion - Standard (ref)|Shift (2nd)|N1'
        Visible = False
        Width = 35
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_KY'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 
          'Productive Section Hrs - In-line|In-line'#13#10'- Eff calculation elem' +
          'ents|Normal + OT|Def.'#13#10'(a)'
        Width = 35
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'ARR_KY'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 
          'Productive Section Hrs - In-line|In-line'#13#10'- Eff calculation elem' +
          'ents|Normal + OT|Plan'
        Width = 35
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'TTL'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 
          'Productive Section Hrs - In-line|In-line'#13#10'- Eff calculation elem' +
          'ents|Normal + OT|Actual'#13#10'd=a-b-c'
        Width = 47
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'ARR_CST'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 
          'Productive Section Hrs - In-line|In-line'#13#10'- Eff calculation elem' +
          'ents|CsT|Plan'
        Width = 35
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'OSECT'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 
          'Productive Section Hrs - In-line|In-line'#13#10'- Eff calculation elem' +
          'ents|CsT|Actual'
        Width = 35
      end
      item
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'ARR_2H'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Planned Off-line'#13#10'- is reg' +
          'ular time consume|Plan|Ttl'
        Width = 37
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ARR_2HE'
        Footers = <>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Planned Off-line'#13#10'- is reg' +
          'ular time consume|Plan|Reason Code/Sect.'
        Width = 88
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'LSECT'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Planned Off-line'#13#10'- is reg' +
          'ular time consume|Act.'#13#10'(b)|Ttl'
        Width = 37
        OnEditButtonClick = DBGridEh1Columns16EditButtonClick
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'FLAG'
        Footers = <>
        PickList.Strings = (
          'L'
          'A'
          'R')
        ReadOnly = True
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Planned Off-line'#13#10'- is reg' +
          'ular time consume|Act.'#13#10'(b)|Reason Code/Sect.'
        Width = 88
      end
      item
        Color = 11795962
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'ARR_CU'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Planned Off-line'#13#10'- is reg' +
          'ular time consume|CU'#13#10'Loss%'
        Width = 40
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'DEF_TD'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Def|Ttl'
        Width = 37
        OnEditButtonClick = DBGridEh1Columns24EditButtonClick
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'DEF_KHE'
        Footers = <>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Def|Reason Code/Sect.'
        Width = 88
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'ARR_Td'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Plan|Ttl'
        Width = 37
        OnEditButtonClick = DBGridEh1Columns26EditButtonClick
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'ARR_KHE'
        Footers = <>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Plan|Reason Code/Sect.'
        Width = 88
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 11795962
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'Cur_td'
        Footers = <
          item
            DisplayFormat = '0.0'
            ValueType = fvtSum
          end
          item
          end>
        ReadOnly = True
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Act.'#13#10'(c)|Ttl'
        Width = 37
        OnEditButtonClick = DBGridEh1Columns28EditButtonClick
      end
      item
        Color = 11795962
        EditButtons = <>
        FieldName = 'cur_khe'
        Footers = <>
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Act.'#13#10'(c)|Reason Code/Sect.'
        Width = 88
      end
      item
        Color = 11795962
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'DCU'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 
          'Non Productive Section Hrs - Off-line|Non plan Off-line'#13#10'- is un' +
          'foresee time consume|Added'#13#10'CU'#13#10'Loss%'
        Width = 40
      end
      item
        Color = 11795962
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'OCU'
        Footers = <
          item
          end
          item
            ValueType = fvtStaticText
          end>
        ReadOnly = True
        Title.Caption = 'Final'#13#10'CU'#13#10'Loss%'#13#10'(excl.'#13#10'CsT)'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1164
    Height = 97
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 24
      Top = 24
      Width = 16
      Height = 13
      Caption = 'Fty'
    end
    object SpeedButton1: TSpeedButton
      Left = 440
      Top = 56
      Width = 65
      Height = 22
      Caption = 'OK'
      Glyph.Data = {
        52050000424D5205000000000000420000002800000024000000120000000100
        1000030000001005000000000000000000000000000000000000007C0000E003
        00001F000000E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DFF7F
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        0F000F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DEF3DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03D0F00E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03D0F00E001E001E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001E001E001E001
        0F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001
        E003E001E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7F
        E03DE03DEF3DFF7FE03DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03D
        E001E001E001E003E03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DEF3DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03D
        E03DE03DE03DE03DE003E001E003E03DE03DE03DE003E001E001E0010F00E03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DE03DE03DE03DEF3DFF7FE03DE03D
        EF3DFF7FE03DE03DE03DE03DE03DE03DE03DE003E03DE03DE03DE03DE03DE003
        E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001E0010F00E03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3D
        FF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001
        E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        EF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE003E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3D
        FF7FEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE003E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 168
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Workshop'
    end
    object Label5: TLabel
      Left = 360
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Line'
    end
    object SpeedButton2: TSpeedButton
      Left = 520
      Top = 56
      Width = 65
      Height = 22
      Caption = 'OK'
      Glyph.Data = {
        52050000424D5205000000000000420000002800000024000000120000000100
        1000030000001005000000000000000000000000000000000000007C0000E003
        00001F000000E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DFF7F
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        0F000F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DEF3DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03D0F00E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03D0F00E001E001E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001E001E001E001
        0F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03D0F00E001E001E001
        E003E001E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7F
        E03DE03DEF3DFF7FE03DE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03D
        E001E001E001E003E03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03D
        E03DE03DEF3DFF7FE03DEF3DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03D
        E03DE03DE03DE03DE003E001E003E03DE03DE03DE003E001E001E0010F00E03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FEF3DE03DE03DE03DEF3DFF7FE03DE03D
        EF3DFF7FE03DE03DE03DE03DE03DE03DE03DE003E03DE03DE03DE03DE03DE003
        E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DEF3DE03DE03DE03DE03D
        E03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001E0010F00E03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3D
        FF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001
        E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        EF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE003E001E001E0010F00E03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DEF3DFF7FE03DE03DEF3DFF7FE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE003E001E0010F00E03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3DFF7FE03DEF3DFF7FE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE003E001E001
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DEF3D
        FF7FEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE003E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DEF3DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D
        E03DE03DE03DE03DE03DE03DE03DE03DE03DE03DE03D}
      NumGlyphs = 2
      Visible = False
      OnClick = SpeedButton2Click
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 48
      Width = 337
      Height = 41
      Caption = 'Period'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 17
        Width = 24
        Height = 13
        Caption = 'From'
      end
      object Label2: TLabel
        Left = 184
        Top = 17
        Width = 12
        Height = 13
        Caption = 'To'
      end
      object DateEdit1: TDateEdit
        Left = 40
        Top = 13
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
      object DateEdit2: TDateEdit
        Left = 200
        Top = 13
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 24
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'SL'
        'RX'
        'CL')
    end
    object ComboBox2: TComboBox
      Left = 224
      Top = 24
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = ComboBox2Enter
      OnKeyPress = ComboBox1KeyPress
    end
    object ComboBox3: TComboBox
      Left = 392
      Top = 24
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnEnter = ComboBox3Enter
      OnKeyPress = ComboBox1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 424
    Width = 1164
    Height = 51
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 16
      Top = 9
      Width = 73
      Height = 33
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
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 906
      Top = 9
      Width = 207
      Height = 33
      Caption = 'Current Line Work Calendar by QN'
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
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 88
      Top = 9
      Width = 81
      Height = 33
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
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 168
      Top = 9
      Width = 81
      Height = 33
      Caption = 'Summary Report'
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
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 248
      Top = 9
      Width = 113
      Height = 33
      Caption = 'CU Analysis'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300030003
        0003333377737773777333333333333333333FFFFFFFFFFFFFFF770000000000
        0000777777777777777733039993BBB3CCC3337F737F737F737F37039993BBB3
        CCC3377F737F737F737F33039993BBB3CCC33F7F737F737F737F77079997BBB7
        CCC77777737773777377330399930003CCC3337F737F7773737F370399933333
        CCC3377F737F3333737F330399933333CCC33F7F737FFFFF737F770700077777
        CCC77777777777777377330333333333CCC3337F33333333737F370333333333
        0003377F33333333777333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 430
      Top = 6
      Width = 408
      Height = 33
      Caption = 
        'Notepad of default ttl sect hr is lower than bottom line or high' +
        'er than optimum'
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
      Visible = False
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 360
      Top = 9
      Width = 64
      Height = 33
      Caption = 'Exit'
      DoubleBuffered = True
      Kind = bkClose
      ParentDoubleBuffered = False
      TabOrder = 6
    end
  end
  object week52: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from week52 where line='#39'T200'#39
    FieldDefs = <
      item
        Name = 'DATE1'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'WKNO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LINE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SECTO'
        DataType = ftFloat
      end
      item
        Name = 'SECTT'
        DataType = ftFloat
      end
      item
        Name = 'SECTC'
        DataType = ftFloat
      end
      item
        Name = 'WORKERT'
        DataType = ftFloat
      end
      item
        Name = 'WORKERC'
        DataType = ftFloat
      end
      item
        Name = 'WORKERO'
        DataType = ftFloat
      end
      item
        Name = 'WDAY'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'SECTT1'
        DataType = ftFloat
      end
      item
        Name = 'SHFT'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'TPLANT'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TSHOP'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CSECT'
        DataType = ftFloat
      end
      item
        Name = 'ESECT'
        DataType = ftFloat
      end
      item
        Name = 'FLAG'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'LSECT'
        DataType = ftFloat
      end
      item
        Name = 'ASECT'
        DataType = ftFloat
      end
      item
        Name = 'RSECT'
        DataType = ftFloat
      end
      item
        Name = 'TSECT'
        DataType = ftFloat
      end
      item
        Name = 'OSECT'
        DataType = ftFloat
      end
      item
        Name = 'TTL'
        DataType = ftFloat
      end
      item
        Name = 'A2'
        DataType = ftFloat
      end
      item
        Name = 'B2'
        DataType = ftFloat
      end
      item
        Name = 'C2'
        DataType = ftFloat
      end
      item
        Name = 'D2'
        DataType = ftFloat
      end
      item
        Name = 'E2'
        DataType = ftFloat
      end
      item
        Name = 'F2'
        DataType = ftFloat
      end
      item
        Name = 'EMARKS'
        DataType = ftWideString
        Size = 200
      end
      item
        Name = 'ZSECT'
        DataType = ftFloat
      end
      item
        Name = 'G2'
        DataType = ftFloat
      end
      item
        Name = 'H2'
        DataType = ftFloat
      end
      item
        Name = 'LMEMO'
        DataType = ftWideString
        Size = 500
      end
      item
        Name = 'OTTL'
        DataType = ftFloat
      end
      item
        Name = 'OCU'
        DataType = ftFloat
      end
      item
        Name = 'DCU'
        DataType = ftFloat
      end
      item
        Name = 'CWK'
        DataType = ftFloat
      end
      item
        Name = 'SWK'
        DataType = ftFloat
      end
      item
        Name = 'DIFF1'
        DataType = ftFloat
      end
      item
        Name = 'DIFF2'
        DataType = ftFloat
      end
      item
        Name = 'LACTIVE'
        DataType = ftBoolean
      end
      item
        Name = 'PN1'
        DataType = ftFloat
      end
      item
        Name = 'PN2'
        DataType = ftFloat
      end
      item
        Name = 'PO1'
        DataType = ftFloat
      end
      item
        Name = 'PO2'
        DataType = ftFloat
      end
      item
        Name = 'PTTL'
        DataType = ftFloat
      end
      item
        Name = 'PCU'
        DataType = ftFloat
      end
      item
        Name = 'DTD'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'DEF_SB'
        DataType = ftFloat
      end
      item
        Name = 'DEF_TG'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KH'
        DataType = ftFloat
      end
      item
        Name = 'DEF_LK'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KY'
        DataType = ftFloat
      end
      item
        Name = 'ARR_TG'
        DataType = ftFloat
      end
      item
        Name = 'ARR_KH'
        DataType = ftFloat
      end
      item
        Name = 'ARR_LK'
        DataType = ftFloat
      end
      item
        Name = 'ARR_KY'
        DataType = ftFloat
      end
      item
        Name = 'ARR_CST'
        DataType = ftFloat
      end
      item
        Name = 'ARR_CU'
        DataType = ftFloat
      end
      item
        Name = 'CUR_KH'
        DataType = ftFloat
      end
      item
        Name = 'CUR_KHE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ARR_TD'
        DataType = ftFloat
      end
      item
        Name = 'CUR_TD'
        DataType = ftFloat
      end
      item
        Name = 'ARR_CL'
        DataType = ftFloat
      end
      item
        Name = 'CUR_CL'
        DataType = ftFloat
      end
      item
        Name = 'ARR_2H'
        DataType = ftFloat
      end
      item
        Name = 'ARR_2HE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEF_TD'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KHE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ARR_KHE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEF_KH1'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KH2'
        DataType = ftFloat
      end
      item
        Name = 'DEF_KH3'
        DataType = ftFloat
      end
      item
        Name = 'DEF_CL'
        DataType = ftFloat
      end
      item
        Name = 'ARR_KH1'
        DataType = ftFloat
      end
      item
        Name = 'ARR_KH2'
        DataType = ftFloat
      end
      item
        Name = 'ARR_KH3'
        DataType = ftFloat
      end
      item
        Name = 'CUR_KH3'
        DataType = ftFloat
      end
      item
        Name = 'FSX'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'ARR_M2'
        DataType = ftFloat
      end
      item
        Name = 'CUR_M2'
        DataType = ftFloat
      end
      item
        Name = 'CTRY'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SFTC'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'date1;line'
        Options = [ixUnique]
      end>
    IndexName = 'idx1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    AfterOpen = week52AfterOpen
    AfterPost = week52AfterPost
    Left = 608
    Top = 1
  end
  object DataSource1: TDataSource
    DataSet = week52
    Left = 640
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 480
    Top = 33
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 1
    object SetStandardCalendar1: TMenuItem
      Caption = 'Set Standard Calendar'
      ShortCut = 121
      Visible = False
      OnClick = SetStandardCalendar1Click
    end
    object SetStandarCalendar1: TMenuItem
      Caption = 'Set Standard Calendar'
      Visible = False
      OnClick = SetStandarCalendar1Click
    end
    object ModifyCalendar1: TMenuItem
      Caption = 'Modify Calendar'
      ShortCut = 123
      Visible = False
      OnClick = ModifyCalendar1Click
    end
    object Export1: TMenuItem
      Caption = 'Export'
      ShortCut = 49273
      Visible = False
      OnClick = Export1Click
    end
    object Copyfromotherline1: TMenuItem
      Caption = 'Copy from other line'
      ShortCut = 122
      Visible = False
      OnClick = Copyfromotherline1Click
    end
    object Set1: TMenuItem
      Caption = 'Non Production Planning'
      ShortCut = 49217
      Visible = False
      OnClick = Set1Click
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 512
    Top = 33
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from week52 where line='#39'T001'#39' and date1='#39'2006-12-29'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 544
    Top = 33
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DataSource2
    UserName = 'BDEPipeline1'
    Left = 512
    Top = 1
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet3
    Left = 480
    Top = 1
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 576
    Top = 33
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6250
    PrinterSetup.mmMarginRight = 6250
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    BeforePrint = ppReport2BeforePrint
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
    Left = 608
    Top = 32
    Version = '11.07'
    mmColumnWidth = 197379
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Current Workshop'#39's Line work Calendar & CU % by line (QN depende' +
          'nt)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 2646
        mmTop = 5292
        mmWidth = 179123
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
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
        mmLeft = 60325
        mmTop = 14552
        mmWidth = 5080
        BandType = 0
      end
      object line01: TppLabel
        UserName = 'line01'
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
        mmLeft = 67733
        mmTop = 14552
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
        Caption = 'Date       From '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 97367
        mmTop = 14552
        mmWidth = 19304
        BandType = 0
      end
      object date01: TppLabel
        UserName = 'date01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 116417
        mmTop = 14552
        mmWidth = 9313
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 135467
        mmTop = 14552
        mmWidth = 3175
        BandType = 0
      end
      object date02: TppLabel
        UserName = 'date02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 140229
        mmTop = 14552
        mmWidth = 9313
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 165629
        mmTop = 12171
        mmWidth = 12742
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
        mmLeft = 180182
        mmTop = 12171
        mmWidth = 635
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
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
        mmLeft = 165629
        mmTop = 16140
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
        mmLeft = 180182
        mmTop = 16140
        mmWidth = 635
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 165629
        mmTop = 20108
        mmWidth = 17484
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 28310
        mmTop = 14552
        mmWidth = 12404
        BandType = 0
      end
      object tshop01: TppLabel
        UserName = 'tshop01'
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
        mmLeft = 42598
        mmTop = 14552
        mmWidth = 635
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 15610
        mmLeft = 529
        mmTop = 27252
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 1852
        mmTop = 32015
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 14552
        mmTop = 32015
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Wk'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 36248
        mmTop = 32015
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Work Section Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 83079
        mmTop = 28046
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 57415
        mmTop = 32015
        mmWidth = 6689
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 76729
        mmTop = 32015
        mmWidth = 7789
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 96838
        mmTop = 32015
        mmWidth = 3852
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
        mmHeight = 15610
        mmLeft = 8467
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 35454
        mmTop = 27252
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 40217
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 27252
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Status '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 28310
        mmTop = 32015
        mmWidth = 6519
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 85725
        mmTop = 32015
        mmWidth = 7789
        BandType = 0
      end
      object x001: TppLabel
        UserName = 'x001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 103981
        mmTop = 32015
        mmWidth = 3852
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 108744
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 110861
        mmTop = 35983
        mmWidth = 3514
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 40481
        mmTop = 31221
        mmWidth = 81492
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Net'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 110861
        mmTop = 32015
        mmWidth = 3217
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 115359
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gross'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 115888
        mmTop = 32015
        mmWidth = 5165
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 116152
        mmTop = 35983
        mmWidth = 3514
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 128588
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 152929
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 181240
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 169334
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 161132
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 153723
        mmTop = 32015
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'on-hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 153459
        mmTop = 35190
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 153459
        mmTop = 38629
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Consolidated 5 lost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2540
        mmLeft = 129911
        mmTop = 32015
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 176213
        mmTop = 35190
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 176213
        mmTop = 38629
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 170127
        mmTop = 32015
        mmWidth = 2879
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 170127
        mmTop = 35190
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Special'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 181769
        mmTop = 32015
        mmWidth = 6477
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 181769
        mmTop = 35190
        mmWidth = 3937
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 175419
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Loss (Sect Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 160602
        mmTop = 28046
        mmWidth = 21759
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 161661
        mmTop = 35190
        mmWidth = 5249
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Linkage '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 161661
        mmTop = 32015
        mmWidth = 7832
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 152929
        mmTop = 31221
        mmWidth = 36248
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 76200
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object tst01: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 182827
        mmTop = 5556
        mmWidth = 12171
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
        mmHeight = 15610
        mmLeft = 188913
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 64558
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 189707
        mmTop = 32015
        mmWidth = 4741
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 48948
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Optimum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 40746
        mmTop = 32015
        mmWidth = 8594
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Sect Hr   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 51858
        mmTop = 28046
        mmWidth = 14224
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'elements of Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2540
        mmLeft = 129911
        mmTop = 35190
        mmWidth = 21696
        BandType = 0
      end
      object ppLine72: TppLine
        UserName = 'Line72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 121973
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 122502
        mmTop = 28046
        mmWidth = 5588
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 122502
        mmTop = 30956
        mmWidth = 4572
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 122502
        mmTop = 33867
        mmWidth = 4657
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line73'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 56886
        mmTop = 31221
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bottom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 49742
        mmTop = 32015
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 50800
        mmTop = 35454
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Used'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 122502
        mmTop = 39688
        mmWidth = 4614
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 122502
        mmTop = 36777
        mmWidth = 2201
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 170127
        mmTop = 38629
        mmWidth = 3852
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 181769
        mmTop = 38629
        mmWidth = 4741
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2540
        mmLeft = 129911
        mmTop = 38365
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 2381
        mmTop = 14552
        mmWidth = 10033
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
        mmLeft = 14288
        mmTop = 14552
        mmWidth = 635
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label703'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 68527
        mmTop = 32015
        mmWidth = 3937
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 189707
        mmTop = 35190
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 189707
        mmTop = 38629
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label304'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Day Shift   1  From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 2381
        mmTop = 19050
        mmWidth = 25400
        BandType = 0
      end
      object sj01: TppLabel
        UserName = 'sj01'
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
        mmLeft = 29898
        mmTop = 19050
        mmWidth = 635
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 62706
        mmTop = 19050
        mmWidth = 11906
        BandType = 0
      end
      object sj03: TppLabel
        UserName = 'sj03'
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
        mmLeft = 75406
        mmTop = 19050
        mmWidth = 635
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lunch Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 110331
        mmTop = 19050
        mmWidth = 16404
        BandType = 0
      end
      object sj05: TppLabel
        UserName = 'sj05'
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
        mmLeft = 127794
        mmTop = 19050
        mmWidth = 635
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '  2  From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 14817
        mmTop = 23019
        mmWidth = 12965
        BandType = 0
      end
      object sj001: TppLabel
        UserName = 'sj001'
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
        mmLeft = 29898
        mmTop = 23019
        mmWidth = 635
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 62706
        mmTop = 23019
        mmWidth = 11906
        BandType = 0
      end
      object sj003: TppLabel
        UserName = 'sj003'
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
        mmLeft = 75406
        mmTop = 23019
        mmWidth = 635
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lunch Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 110331
        mmTop = 23019
        mmWidth = 16404
        BandType = 0
      end
      object sj005: TppLabel
        UserName = 'sj005'
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
        mmLeft = 127794
        mmTop = 23019
        mmWidth = 635
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
        mmHeight = 15610
        mmLeft = 13494
        mmTop = 27252
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shift'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 8996
        mmTop = 32015
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 176213
        mmTop = 32015
        mmWidth = 3344
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LINE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 1852
        mmTop = 1588
        mmWidth = 5207
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
        DataField = 'DATE1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 14552
        mmTop = 1588
        mmWidth = 7027
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
        DataField = 'WKNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 32745
        mmTop = 1588
        mmWidth = 6943
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
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 56727
        mmTop = 1588
        mmWidth = 6773
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
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 77978
        mmTop = 1588
        mmWidth = 6689
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
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 94034
        mmTop = 1588
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 85620
        mmTop = 1588
        mmWidth = 8043
        BandType = 4
      end
      object x002: TppDBText
        UserName = 'x002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 100923
        mmTop = 1588
        mmWidth = 7027
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
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 111242
        mmTop = 1588
        mmWidth = 3852
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
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 115200
        mmTop = 1588
        mmWidth = 6773
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 154528
        mmTop = 1588
        mmWidth = 6604
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
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 174076
        mmTop = 1588
        mmWidth = 6900
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 168603
        mmTop = 1588
        mmWidth = 6816
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 182224
        mmTop = 1588
        mmWidth = 6689
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
        DataField = 'FLAG'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 129117
        mmTop = 1588
        mmWidth = 5461
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
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 162116
        mmTop = 1588
        mmWidth = 6689
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
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 42916
        mmTop = 1588
        mmWidth = 5503
        BandType = 4
      end
      object ddcu001: TppLabel
        UserName = 'ddcu001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '      '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 192511
        mmTop = 1588
        mmWidth = 3810
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 117274
        mmTop = 1588
        mmWidth = 11049
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 44789
        mmTop = 1588
        mmWidth = 11303
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
        DataField = 'WDAY'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 29104
        mmTop = 1588
        mmWidth = 6646
        BandType = 4
      end
      object ddf01: TppLabel
        UserName = 'ddf01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 69480
        mmTop = 1588
        mmWidth = 635
        BandType = 4
      end
      object ddf02: TppLabel
        UserName = 'ddf02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 75830
        mmTop = 1588
        mmWidth = 635
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHFT'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 10319
        mmTop = 1588
        mmWidth = 5503
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      BeforePrint = ppSummaryBand2BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 73290
      mmPrintPosition = 0
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 794
        mmWidth = 196850
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 6350
        mmWidth = 196850
        BandType = 7
      end
      object ottl002: TppDBCalc
        UserName = 'ottl002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 45498
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object gross002: TppDBCalc
        UserName = 'gross002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 60579
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 81745
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 90742
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 97885
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object x004: TppDBCalc
        UserName = 'x004'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 105029
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ttl002: TppDBCalc
        UserName = 'ttl002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 112173
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 119052
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc104'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 158211
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 165883
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 172498
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 178054
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 185991
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object DCU002: TppLabel
        UserName = 'DCU002'
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
        mmLeft = 195856
        mmTop = 7673
        mmWidth = 466
        BandType = 7
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 8467
        mmTop = 2381
        mmWidth = 6096
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 11377
        mmWidth = 196850
        BandType = 7
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 8467
        mmTop = 7673
        mmWidth = 7578
        BandType = 7
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 24342
        mmLeft = 529
        mmTop = 16140
        mmWidth = 196586
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Notepad of special lost time:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 529
        mmTop = 13229
        mmWidth = 26670
        BandType = 7
      end
      object ppDBCalc62: TppDBCalc
        UserName = 'DBCalc62'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 53171
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 125402
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object fdf01: TppLabel
        UserName = 'fdf01'
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
        mmLeft = 69648
        mmTop = 2381
        mmWidth = 466
        BandType = 7
      end
      object fdf02: TppLabel
        UserName = 'fdf02'
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
        mmLeft = 75998
        mmTop = 2381
        mmWidth = 466
        BandType = 7
      end
      object tmarks01: TppLabel
        UserName = 'tmarks01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2540
        mmLeft = 129117
        mmTop = 2381
        mmWidth = 635
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Notepad of default ttl sect hr is lower than bottom line or high' +
          'er than optimum:  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 529
        mmTop = 41275
        mmWidth = 76031
        BandType = 7
      end
      object ppMemo2: TppMemo
        UserName = 'Memo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 28046
        mmLeft = 529
        mmTop = 44450
        mmWidth = 196586
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'LINE'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 15875
          mmLeft = 8467
          mmTop = 0
          mmWidth = 188913
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
          DataField = 'SECTT1'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 90276
          mmTop = 11642
          mmWidth = 3387
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
          DataField = 'SECTC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 97419
          mmTop = 11642
          mmWidth = 3387
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
          DataField = 'SECTT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 81280
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object gross001: TppDBCalc
          UserName = 'gross001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 60113
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Working Day(W) : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 11113
          mmTop = 1323
          mmWidth = 17611
          BandType = 5
          GroupNo = 0
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sunday(S): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 11113
          mmTop = 4763
          mmWidth = 11134
          BandType = 5
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Public Holiday(H):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 11113
          mmTop = 8202
          mmWidth = 16806
          BandType = 5
          GroupNo = 0
        end
        object S01: TppLabel
          UserName = 'S01'
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
          mmLeft = 36576
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object S02: TppLabel
          UserName = 'S02'
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
          mmLeft = 36576
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object s03: TppLabel
          UserName = 's03'
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
          mmLeft = 36576
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object x003: TppDBCalc
          UserName = 'x003'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 104563
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ttl001: TppDBCalc
          UserName = 'ttl001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 111707
          mmTop = 11642
          mmWidth = 3387
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
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 118586
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 157745
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc101'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ZSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 165417
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc102'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'RSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 177588
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc103'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ASECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 172032
          mmTop = 11642
          mmWidth = 3387
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
          DataField = 'ESECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 185525
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15610
          mmLeft = 128588
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 15610
          mmLeft = 152929
          mmTop = 265
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ottl001: TppDBCalc
          UserName = 'ottl001'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OTTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 45032
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object dcu001: TppLabel
          UserName = 'dcu001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 195686
          mmTop = 11642
          mmWidth = 635
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
          DataField = 'WORKERC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 124936
          mmTop = 11642
          mmWidth = 3387
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
          DataField = 'WORKERO'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 52705
          mmTop = 11642
          mmWidth = 3387
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Operating (day): '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2540
          mmLeft = 11113
          mmTop = 11642
          mmWidth = 18415
          BandType = 5
          GroupNo = 0
        end
        object s04: TppLabel
          UserName = 's04'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 36407
          mmTop = 11642
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object o001: TppLabel
          UserName = 'o001'
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
          mmLeft = 47953
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object b001: TppLabel
          UserName = 'b001'
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
          mmLeft = 55625
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object d001: TppLabel
          UserName = 'd001'
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
          mmLeft = 63034
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n1001: TppLabel
          UserName = 'n1001'
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
          mmLeft = 84200
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n2001: TppLabel
          UserName = 'n2001'
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
          mmLeft = 93196
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o1001: TppLabel
          UserName = 'o1001'
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
          mmLeft = 100340
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o2001: TppLabel
          UserName = 'o2001'
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
          mmLeft = 107484
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n001: TppLabel
          UserName = 'n001'
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
          mmLeft = 114628
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object d00101: TppLabel
          UserName = 'd00101'
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
          mmLeft = 121507
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object wc001: TppLabel
          UserName = 'wc001'
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
          mmLeft = 127857
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object a001: TppLabel
          UserName = 'a001'
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
          mmLeft = 174953
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object r001: TppLabel
          UserName = 'r001'
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
          mmLeft = 180509
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object e001: TppLabel
          UserName = 'e001'
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
          mmLeft = 188447
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object dc001: TppLabel
          UserName = 'dc001'
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
          mmLeft = 195855
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object l001: TppLabel
          UserName = 'l001'
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
          mmLeft = 160665
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object z001: TppLabel
          UserName = 'z001'
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
          mmLeft = 168338
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o002: TppLabel
          UserName = 'o002'
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
          mmLeft = 47953
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object b002: TppLabel
          UserName = 'b002'
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
          mmLeft = 55625
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object d002: TppLabel
          UserName = 'd002'
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
          mmLeft = 63034
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n1002: TppLabel
          UserName = 'n1002'
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
          mmLeft = 84201
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n2002: TppLabel
          UserName = 'n2002'
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
          mmLeft = 93197
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o1002: TppLabel
          UserName = 'o1002'
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
          mmLeft = 100341
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o2002: TppLabel
          UserName = 'o2002'
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
          mmLeft = 107485
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n002: TppLabel
          UserName = 'n002'
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
          mmLeft = 114628
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object d00102: TppLabel
          UserName = 'd00102'
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
          mmLeft = 121507
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object wc002: TppLabel
          UserName = 'wc002'
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
          mmLeft = 127857
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object l002: TppLabel
          UserName = 'l002'
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
          mmLeft = 160665
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object z002: TppLabel
          UserName = 'z002'
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
          mmLeft = 168338
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object a002: TppLabel
          UserName = 'a002'
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
          mmLeft = 174953
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object r002: TppLabel
          UserName = 'r002'
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
          mmLeft = 180510
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object e002: TppLabel
          UserName = 'e002'
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
          mmLeft = 188447
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object dc002: TppLabel
          UserName = 'dc002'
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
          mmLeft = 195855
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o003: TppLabel
          UserName = 'o003'
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
          mmLeft = 47953
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object b003: TppLabel
          UserName = 'b003'
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
          mmLeft = 55625
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object d003: TppLabel
          UserName = 'd003'
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
          mmLeft = 63034
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n1003: TppLabel
          UserName = 'n1003'
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
          mmLeft = 84201
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n2003: TppLabel
          UserName = 'n2003'
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
          mmLeft = 93197
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o1003: TppLabel
          UserName = 'o1003'
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
          mmLeft = 100341
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object o2003: TppLabel
          UserName = 'o2003'
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
          mmLeft = 107485
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object n003: TppLabel
          UserName = 'n003'
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
          mmLeft = 114628
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object d00103: TppLabel
          UserName = 'd00103'
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
          mmLeft = 121507
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object wc003: TppLabel
          UserName = 'wc003'
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
          mmLeft = 127857
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object l003: TppLabel
          UserName = 'l003'
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
          mmLeft = 160665
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object z003: TppLabel
          UserName = 'z003'
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
          mmLeft = 168338
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object a003: TppLabel
          UserName = 'a003'
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
          mmLeft = 174953
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object r003: TppLabel
          UserName = 'r003'
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
          mmLeft = 180510
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object e003: TppLabel
          UserName = 'e003'
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
          mmLeft = 188447
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object dc003: TppLabel
          UserName = 'dc003'
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
          mmLeft = 195856
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sdf01: TppLabel
          UserName = 'sdf01'
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
          mmLeft = 69649
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sdf02: TppLabel
          UserName = 'sdf02'
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
          mmLeft = 75999
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sdf11: TppLabel
          UserName = 'sdf11'
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
          mmLeft = 69649
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sdf12: TppLabel
          UserName = 'sdf12'
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
          mmLeft = 75999
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sdf21: TppLabel
          UserName = 'sdf21'
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
          mmLeft = 69649
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object sdf31: TppLabel
          UserName = 'sdf31'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 69480
          mmTop = 11642
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object sdf32: TppLabel
          UserName = 'sdf32'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2540
          mmLeft = 75830
          mmTop = 11642
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
        object sdf22: TppLabel
          UserName = 'sdf22'
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
          mmLeft = 75999
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object marsk001: TppLabel
          UserName = 'marsk001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2540
          mmLeft = 129117
          mmTop = 11642
          mmWidth = 635
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'DATE1'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand3BeforePrint
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppSubReport1: TppSubReport
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentPrinterSetup = False
          TraverseAllData = False
          DataPipelineName = 'ppBDEPipeline2'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 265
          mmWidth = 197579
          BandType = 5
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppBDEPipeline2
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 6350
            PrinterSetup.mmMarginLeft = 6250
            PrinterSetup.mmMarginRight = 6250
            PrinterSetup.mmMarginTop = 6350
            PrinterSetup.mmPaperHeight = 297127
            PrinterSetup.mmPaperWidth = 210079
            PrinterSetup.PaperSize = 9
            Units = utMillimeters
            Version = '11.07'
            mmColumnWidth = 0
            DataPipelineName = 'ppBDEPipeline2'
            object ppTitleBand1: TppTitleBand
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
            object ppDetailBand4: TppDetailBand
              BeforePrint = ppDetailBand4BeforePrint
              mmBottomOffset = 0
              mmHeight = 3969
              mmPrintPosition = 0
              object ppDBText64: TppDBText
                UserName = 'DBText29'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'DCU'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 192215
                mmTop = 529
                mmWidth = 4106
                BandType = 4
              end
              object ppDBText17: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 57362
                mmTop = 529
                mmWidth = 6138
                BandType = 4
              end
              object ppDBText29: TppDBText
                UserName = 'DBText2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SECTT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 78571
                mmTop = 529
                mmWidth = 6096
                BandType = 4
              end
              object ppDBText31: TppDBText
                UserName = 'DBText31'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SECTC'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 94669
                mmTop = 529
                mmWidth = 6138
                BandType = 4
              end
              object ppDBText32: TppDBText
                UserName = 'DBText32'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SECTT1'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 86424
                mmTop = 529
                mmWidth = 7239
                BandType = 4
              end
              object x005: TppDBText
                UserName = 'x005'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'OSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 101600
                mmTop = 529
                mmWidth = 6350
                BandType = 4
              end
              object ppDBText38: TppDBText
                UserName = 'DBText38'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'TTL'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 111580
                mmTop = 529
                mmWidth = 3514
                BandType = 4
              end
              object ppDBText46: TppDBText
                UserName = 'DBText204'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'CSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 115835
                mmTop = 529
                mmWidth = 6138
                BandType = 4
              end
              object ppDBText49: TppDBText
                UserName = 'DBText49'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'LSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 155205
                mmTop = 529
                mmWidth = 5927
                BandType = 4
              end
              object ppDBText51: TppDBText
                UserName = 'DBText51'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'RSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 174795
                mmTop = 529
                mmWidth = 6181
                BandType = 4
              end
              object ppDBText52: TppDBText
                UserName = 'DBText52'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ASECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 169281
                mmTop = 529
                mmWidth = 6138
                BandType = 4
              end
              object ppDBText53: TppDBText
                UserName = 'DBText53'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ESECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 182859
                mmTop = 529
                mmWidth = 6054
                BandType = 4
              end
              object ppDBText56: TppDBText
                UserName = 'DBText56'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ZSECT'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 162751
                mmTop = 529
                mmWidth = 6054
                BandType = 4
              end
              object ppDBText57: TppDBText
                UserName = 'DBText57'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'OTTL'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 43424
                mmTop = 529
                mmWidth = 4995
                BandType = 4
              end
              object ppDBText58: TppDBText
                UserName = 'DBText58'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'WORKERC'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 118629
                mmTop = 529
                mmWidth = 9694
                BandType = 4
              end
              object ppDBText59: TppDBText
                UserName = 'DBText59'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'WORKERO'
                DataPipeline = ppBDEPipeline2
                DisplayFormat = '0.0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 46186
                mmTop = 529
                mmWidth = 9906
                BandType = 4
              end
              object ppDBText60: TppDBText
                UserName = 'DBText60'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'SECTO'
                DataPipeline = ppBDEPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 14817
                mmTop = 529
                mmWidth = 6350
                BandType = 4
              end
              object ppLabel36: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'QN '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                mmHeight = 2540
                mmLeft = 10319
                mmTop = 529
                mmWidth = 3556
                BandType = 4
              end
              object srdif01: TppLabel
                UserName = 'srdif01'
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
                mmLeft = 69649
                mmTop = 529
                mmWidth = 466
                BandType = 4
              end
              object srdif02: TppLabel
                UserName = 'srdif02'
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
                mmLeft = 75999
                mmTop = 529
                mmWidth = 466
                BandType = 4
              end
              object ppDBText55: TppDBText
                UserName = 'DBText55'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'FLAG'
                DataPipeline = ppBDEPipeline2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppBDEPipeline2'
                mmHeight = 2540
                mmLeft = 129117
                mmTop = 529
                mmWidth = 4826
                BandType = 4
              end
            end
            object ppSummaryBand4: TppSummaryBand
              AlignToBottom = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6250
    PrinterSetup.mmMarginRight = 6250
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToFile = True
    BeforePrint = ppReport3BeforePrint
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
    Left = 640
    Top = 32
    Version = '11.07'
    mmColumnWidth = 197379
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel72: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Workshop'#39's Line work Calendar & CU % by line - summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6773
        mmLeft = 2117
        mmTop = 5292
        mmWidth = 184150
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 162454
        mmTop = 12435
        mmWidth = 12742
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
        mmLeft = 177007
        mmTop = 12435
        mmWidth = 635
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label19'
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
        mmLeft = 162454
        mmTop = 16404
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
        mmLeft = 177007
        mmTop = 16404
        mmWidth = 635
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 162454
        mmTop = 20373
        mmWidth = 17484
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape2'
        mmHeight = 15610
        mmLeft = 4233
        mmTop = 25135
        mmWidth = 186796
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 12435
        mmTop = 29898
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Work Section Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 93927
        mmTop = 25929
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 51594
        mmTop = 29898
        mmWidth = 6689
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 76200
        mmTop = 29898
        mmWidth = 7789
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 99484
        mmTop = 29898
        mmWidth = 3852
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 31485
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Normal2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 87048
        mmTop = 29898
        mmWidth = 7789
        BandType = 0
      end
      object y001: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OT2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 107950
        mmTop = 29898
        mmWidth = 3852
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 113506
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 115888
        mmTop = 33867
        mmWidth = 3514
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 31750
        mmTop = 29104
        mmWidth = 99219
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Net'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 115888
        mmTop = 29898
        mmWidth = 3217
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 122502
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Gross'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 124354
        mmTop = 29898
        mmWidth = 5165
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TTL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 124354
        mmTop = 33867
        mmWidth = 3514
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 139171
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 174096
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 157427
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 148432
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 140759
        mmTop = 29898
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'on-hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 140494
        mmTop = 33073
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 140494
        mmTop = 36248
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 168275
        mmTop = 33073
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 168275
        mmTop = 36248
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 160073
        mmTop = 29898
        mmWidth = 2879
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 160073
        mmTop = 33073
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Special'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 174890
        mmTop = 29898
        mmWidth = 6477
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'lost time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 174890
        mmTop = 33073
        mmWidth = 8001
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 165894
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label64'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Loss (Sect Hr)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 146050
        mmTop = 25929
        mmWidth = 21759
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 149490
        mmTop = 33073
        mmWidth = 5249
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Linkage '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 149490
        mmTop = 29898
        mmWidth = 7832
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 75406
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 185473
        mmTop = 6350
        mmWidth = 9260
        BandType = 0
      end
      object ppLine44: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 182827
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 183621
        mmTop = 29898
        mmWidth = 4741
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 41010
        mmTop = 29104
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Optimum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 32279
        mmTop = 29898
        mmWidth = 8594
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Sect Hr  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 47361
        mmTop = 25929
        mmWidth = 13547
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date       From  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 73025
        mmTop = 19579
        mmWidth = 20193
        BandType = 0
      end
      object dt001: TppLabel
        UserName = 'dt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2006/12/29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 93134
        mmTop = 19579
        mmWidth = 14732
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 113506
        mmTop = 19579
        mmWidth = 4953
        BandType = 0
      end
      object dt002: TppLabel
        UserName = 'dt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2006/12/29'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 119856
        mmTop = 19579
        mmWidth = 14732
        BandType = 0
      end
      object ppLine74: TppLine
        UserName = 'Line74'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 139436
        mmTop = 29104
        mmWidth = 43656
        BandType = 0
      end
      object ppLine75: TppLine
        UserName = 'Line75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 130969
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Chase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 132292
        mmTop = 25929
        mmWidth = 5588
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 132292
        mmTop = 29898
        mmWidth = 4572
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Used'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 132292
        mmTop = 36248
        mmWidth = 4614
        BandType = 0
      end
      object ppLine76: TppLine
        UserName = 'Line76'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 50536
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bottom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 42863
        mmTop = 29898
        mmWidth = 6731
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label602'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 43656
        mmTop = 33338
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 131498
        mmTop = 33073
        mmWidth = 6858
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 160073
        mmTop = 36248
        mmWidth = 3852
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 4763
        mmTop = 19579
        mmWidth = 11377
        BandType = 0
      end
      object fty002: TppLabel
        UserName = 'fty002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SL  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 16933
        mmTop = 19579
        mmWidth = 11642
        BandType = 0
      end
      object Workshop: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 34396
        mmTop = 19579
        mmWidth = 15081
        BandType = 0
      end
      object wks001: TppLabel
        UserName = 'wks001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KB1A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 50800
        mmTop = 19579
        mmWidth = 11642
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 20638
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operating '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 21431
        mmTop = 29898
        mmWidth = 9864
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label603'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(day) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 24077
        mmTop = 33338
        mmWidth = 5630
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 59531
        mmTop = 29104
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diff  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 64823
        mmTop = 29898
        mmWidth = 4614
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'as '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 183621
        mmTop = 33073
        mmWidth = 2709
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'default '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 183621
        mmTop = 36248
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'GA '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 168275
        mmTop = 29898
        mmWidth = 3344
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText30: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LINE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 12435
        mmTop = 529
        mmWidth = 4445
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 52335
        mmTop = 529
        mmWidth = 6138
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 78571
        mmTop = 529
        mmWidth = 6096
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 97844
        mmTop = 529
        mmWidth = 6138
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 88276
        mmTop = 529
        mmWidth = 7239
        BandType = 4
      end
      object y002: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 106098
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 118459
        mmTop = 529
        mmWidth = 3514
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 124566
        mmTop = 529
        mmWidth = 6138
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 142240
        mmTop = 529
        mmWidth = 5927
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 167915
        mmTop = 529
        mmWidth = 6181
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 159227
        mmTop = 529
        mmWidth = 6138
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 176244
        mmTop = 529
        mmWidth = 6054
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 151109
        mmTop = 529
        mmWidth = 6054
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 35486
        mmTop = 529
        mmWidth = 4995
        BandType = 4
      end
      object ddcu01: TppLabel
        UserName = 'ddcu01'
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
        mmLeft = 190299
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText203'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 128419
        mmTop = 529
        mmWidth = 9694
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
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 39306
        mmTop = 529
        mmWidth = 9906
        BandType = 4
      end
      object pday01: TppLabel
        UserName = 'pday01'
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
        mmLeft = 28903
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object diff01: TppLabel
        UserName = 'diff01'
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
        mmLeft = 66210
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object diff02: TppLabel
        UserName = 'diff02'
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
        mmLeft = 74412
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      BeforePrint = ppSummaryBand3BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel76: TppLabel
        UserName = 'Label76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Average by line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 4763
        mmTop = 1588
        mmWidth = 14393
        BandType = 7
      end
      object ppDBCalc49: TppDBCalc
        UserName = 'DBCalc49'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OTTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 37561
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc50: TppDBCalc
        UserName = 'DBCalc50'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 55552
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc51: TppDBCalc
        UserName = 'DBCalc51'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 81745
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc52: TppDBCalc
        UserName = 'DBCalc52'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTT1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 92593
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc53: TppDBCalc
        UserName = 'DBCalc202'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECTC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 101061
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object y004: TppDBCalc
        UserName = 'y004'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 109528
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc55: TppDBCalc
        UserName = 'DBCalc55'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 119052
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc56: TppDBCalc
        UserName = 'DBCalc56'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 127784
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc57: TppDBCalc
        UserName = 'DBCalc57'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 145246
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc58: TppDBCalc
        UserName = 'DBCalc58'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ZSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 154242
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc59: TppDBCalc
        UserName = 'DBCalc59'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ASECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 162444
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc60: TppDBCalc
        UserName = 'DBCalc60'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 171176
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc61: TppDBCalc
        UserName = 'DBCalc61'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ESECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 179377
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ADCU01: TppLabel
        UserName = 'ADCU01'
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
        mmLeft = 190299
        mmTop = 1588
        mmWidth = 466
        BandType = 7
      end
      object ppDBCalc65: TppDBCalc
        UserName = 'DBCalc65'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 135192
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object ppDBCalc69: TppDBCalc
        UserName = 'DBCalc69'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WORKERO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcAverage
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 46292
        mmTop = 1588
        mmWidth = 2921
        BandType = 7
      end
      object diff21: TppLabel
        UserName = 'diff21'
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
        mmLeft = 66210
        mmTop = 1588
        mmWidth = 466
        BandType = 7
      end
      object diff22: TppLabel
        UserName = 'diff22'
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
        mmLeft = 74412
        mmTop = 1588
        mmWidth = 466
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'TSHOP'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand2BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLine27: TppLine
          UserName = 'Line27'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4233
          mmTop = 1058
          mmWidth = 186796
          BandType = 5
          GroupNo = 0
        end
        object ppLine29: TppLine
          UserName = 'Line29'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4233
          mmTop = 6615
          mmWidth = 186796
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc36: TppDBCalc
          UserName = 'DBCalc36'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OTTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 37825
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc37'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 55552
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 81745
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTT1'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 92594
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc201'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SECTC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 101060
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object y003: TppDBCalc
          UserName = 'y003'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'OSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 109527
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TTL'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 119052
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 127783
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc44'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 145246
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc45'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ZSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 154241
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc46'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ASECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 162443
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc47'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'RSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 171175
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc48: TppDBCalc
          UserName = 'DBCalc48'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'ESECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 179377
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object sdcu01: TppLabel
          UserName = 'sdcu01'
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
          mmLeft = 190299
          mmTop = 2646
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TTL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 4763
          mmTop = 2646
          mmWidth = 3514
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc63: TppDBCalc
          UserName = 'DBCalc63'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WORKERC'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 135192
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc66: TppDBCalc
          UserName = 'DBCalc66'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'WORKERO'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 46292
          mmTop = 2646
          mmWidth = 2921
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LINE'
          DataPipeline = ppBDEPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 12488
          mmTop = 2646
          mmWidth = 4445
          BandType = 5
          GroupNo = 0
        end
        object diff11: TppLabel
          UserName = 'diff11'
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
          mmLeft = 66210
          mmTop = 2646
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object diff12: TppLabel
          UserName = 'diff12'
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
          mmLeft = 74412
          mmTop = 2646
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6250
    PrinterSetup.mmMarginRight = 6250
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
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
    Left = 544
    Version = '11.07'
    mmColumnWidth = 197379
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Current Line Work Calendar by Line/Day  -  Line on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5122
        mmLeft = 14552
        mmTop = 5292
        mmWidth = 124090
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
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
        mmLeft = 2381
        mmTop = 15081
        mmWidth = 5080
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'line01'
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
        mmLeft = 9790
        mmTop = 15081
        mmWidth = 635
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 76200
        mmTop = 15081
        mmWidth = 13081
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'date01'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 91546
        mmTop = 15081
        mmWidth = 9313
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 115623
        mmTop = 15081
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'date02'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '    /  /  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 120386
        mmTop = 15081
        mmWidth = 9313
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed on'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 165629
        mmTop = 11906
        mmWidth = 12742
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
        mmLeft = 180182
        mmTop = 11906
        mmWidth = 635
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label19'
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
        mmLeft = 165629
        mmTop = 15875
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
        mmLeft = 180182
        mmTop = 15875
        mmWidth = 635
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version: 2.6.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 165629
        mmTop = 19844
        mmWidth = 17484
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Workshop'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 33602
        mmTop = 15081
        mmWidth = 12404
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'tshop01'
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
        mmLeft = 47890
        mmTop = 15081
        mmWidth = 635
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape2'
        mmHeight = 15610
        mmLeft = 529
        mmTop = 25135
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 1852
        mmTop = 29898
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 20373
        mmTop = 29898
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Week'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 36513
        mmTop = 29898
        mmWidth = 5165
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 8467
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 35983
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 29633
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Non'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 30956
        mmTop = 25929
        mmWidth = 3725
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 30956
        mmTop = 29898
        mmWidth = 3133
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 30427
        mmTop = 33867
        mmWidth = 4360
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 19050
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 15346
        mmTop = 29898
        mmWidth = 2879
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 14552
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shift'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 9525
        mmTop = 29898
        mmWidth = 4233
        BandType = 0
      end
      object ppLine56: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 42598
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine57: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 99748
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 100542
        mmTop = 25929
        mmWidth = 3810
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'on-hold'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 100277
        mmTop = 29633
        mmWidth = 7070
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 100277
        mmTop = 33867
        mmWidth = 4064
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Consolidated 5 lost elements '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2540
        mmLeft = 61119
        mmTop = 29898
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'tst01'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 140494
        mmTop = 5292
        mmWidth = 22225
        BandType = 0
      end
      object ppLine64: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 182298
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 189707
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OCU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 182827
        mmTop = 30692
        mmWidth = 6223
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DCU%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 190236
        mmTop = 30692
        mmWidth = 6181
        BandType = 0
      end
      object ppLabel173: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'of Line on-hold time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2540
        mmLeft = 61119
        mmTop = 33867
        mmWidth = 38100
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line49'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 108215
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2A '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 110331
        mmTop = 33867
        mmWidth = 3090
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line54'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 126736
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine55: TppLine
        UserName = 'Line55'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 135996
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 145257
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 154517
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 163777
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 173038
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
      object ppLine62: TppLine
        UserName = 'Line62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15610
        mmLeft = 117475
        mmTop = 25135
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 51594
        mmTop = 25135
        mmWidth = 1852
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
        mmHeight = 15610
        mmLeft = 60325
        mmTop = 25135
        mmWidth = 1852
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LINE'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 1852
        mmTop = 529
        mmWidth = 4445
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DATE1'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'yy/MM/dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 20638
        mmTop = 529
        mmWidth = 6265
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WKNO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 36322
        mmTop = 529
        mmWidth = 6011
        BandType = 4
      end
      object ppLabel174: TppLabel
        UserName = 'wday1'
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
        mmLeft = 30692
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tplant'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 15346
        mmTop = 529
        mmWidth = 5376
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHFT'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 9525
        mmTop = 529
        mmWidth = 4953
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 101494
        mmTop = 529
        mmWidth = 5927
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLAG'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 61119
        mmTop = 529
        mmWidth = 4826
        BandType = 4
      end
      object ppLabel175: TppLabel
        UserName = 'docu001'
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
        mmLeft = 188447
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
      object ppLabel176: TppLabel
        UserName = 'ddcu001'
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
        mmLeft = 195855
        mmTop = 529
        mmWidth = 466
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLine67: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 794
        mmWidth = 196850
        BandType = 7
      end
      object ppLine68: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 6350
        mmWidth = 196850
        BandType = 7
      end
      object ppDBCalc68: TppDBCalc
        UserName = 'DBCalc104'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LSECT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2540
        mmLeft = 104500
        mmTop = 2381
        mmWidth = 2921
        BandType = 7
      end
      object ppLabel177: TppLabel
        UserName = 'OCU002'
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
        mmLeft = 188447
        mmTop = 7673
        mmWidth = 466
        BandType = 7
      end
      object ppLabel178: TppLabel
        UserName = 'DCU002'
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
        mmLeft = 195856
        mmTop = 7673
        mmWidth = 466
        BandType = 7
      end
      object ppLabel179: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 8467
        mmTop = 2381
        mmWidth = 6096
        BandType = 7
      end
      object ppLine69: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 529
        mmTop = 11642
        mmWidth = 196850
        BandType = 7
      end
      object ppLabel180: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'W/Ave: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2540
        mmLeft = 8467
        mmTop = 7673
        mmWidth = 7578
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'LINE'
      DataPipeline = ppBDEPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentColumn = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 13758
        mmPrintPosition = 0
        object ppShape5: TppShape
          UserName = 'Shape3'
          mmHeight = 13758
          mmLeft = 8467
          mmTop = 0
          mmWidth = 188913
          BandType = 5
          GroupNo = 0
        end
        object ppLabel182: TppLabel
          UserName = 'Label40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Working Day:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 9525
          mmTop = 1323
          mmWidth = 12742
          BandType = 5
          GroupNo = 0
        end
        object ppLabel183: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sunday:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 9525
          mmTop = 4763
          mmWidth = 7662
          BandType = 5
          GroupNo = 0
        end
        object ppLabel184: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Public Holiday:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          Transparent = True
          mmHeight = 2540
          mmLeft = 9525
          mmTop = 8202
          mmWidth = 13758
          BandType = 5
          GroupNo = 0
        end
        object ppLabel185: TppLabel
          UserName = 'S01'
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
          mmLeft = 34989
          mmTop = 4763
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppLabel186: TppLabel
          UserName = 'S02'
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
          mmLeft = 34988
          mmTop = 8202
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppLabel187: TppLabel
          UserName = 's03'
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
          mmLeft = 34988
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc80: TppDBCalc
          UserName = 'DBCalc10'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'LSECT'
          DataPipeline = ppBDEPipeline1
          DisplayFormat = '0.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline1'
          mmHeight = 2540
          mmLeft = 104500
          mmTop = 1323
          mmWidth = 2921
          BandType = 5
          GroupNo = 0
        end
        object ppLine70: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 42598
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLine71: TppLine
          UserName = 'Line18'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 99748
          mmTop = 265
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
        object ppLabel188: TppLabel
          UserName = 'ocu001'
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
          mmLeft = 188447
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppLabel189: TppLabel
          UserName = 'dcu001'
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
          mmLeft = 195855
          mmTop = 1323
          mmWidth = 466
          BandType = 5
          GroupNo = 0
        end
        object ppLine53: TppLine
          UserName = 'Line53'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 13494
          mmLeft = 108215
          mmTop = 265
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet4
    Left = 672
    Top = 1
  end
  object ppBDEPipeline2: TppBDEPipeline
    DataSource = DataSource3
    UserName = 'BDEPipeline2'
    Left = 704
    Top = 1
  end
  object ClientDataSet4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from week52_tmp_1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 672
    Top = 33
  end
  object DataSet2: TADOQuery
    Connection = frmmain.ADOConnection1
    Parameters = <>
    Left = 96
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = '*.xls|*.xls'
    Left = 376
    Top = 248
  end
  object siLang1: TsiLang
    Version = '6.5'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    NumOfLanguages = 2
    LangDelim = 1
    LangNames.Strings = (
      'English'
      'Traditional Chinese')
    Language = 'English'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields')
    Left = 464
    Top = 272
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D006300750072007200630061006C000100
      430075007200720065006E00740020004C0069006E0065002000430061006C00
      65006E00640061007200010001000D000A004C006100620065006C0033000100
      460074007900010001000D000A00530070006500650064004200750074007400
      6F006E00310001004F004B00010001000D000A004C006100620065006C003400
      010057006F0072006B00730068006F007000010001000D000A004C0061006200
      65006C00350001004C0069006E006500010001000D000A005300700065006500
      640042007500740074006F006E00320001004F004B00010001000D000A004700
      72006F007500700042006F0078003100010050006500720069006F0064000100
      01000D000A004C006100620065006C0031000100460072006F006D0001000100
      0D000A004C006100620065006C003200010054006F00010001000D000A004200
      69007400420074006E00320001005300610076006500010001000D000A004200
      69007400420074006E0033000100430075007200720065006E00740020004C00
      69006E006500200057006F0072006B002000430061006C0065006E0064006100
      7200200062007900200051004E00010001000D000A0042006900740042007400
      6E00340001005000720065007600690065007700010001000D000A0042006900
      7400420074006E0031000100530075006D006D00610072007900200052006500
      70006F0072007400010001000D000A00420069007400420074006E0035000100
      43005500200041006E0061006C007900730069007300010001000D000A004200
      69007400420074006E00360001004E006F007400650070006100640020006F00
      66002000640065006600610075006C0074002000740074006C00200073006500
      6300740020006800720020006900730020006C006F0077006500720020007400
      680061006E00200062006F00740074006F006D0020006C0069006E0065002000
      6F007200200068006900670068006500720020007400680061006E0020006F00
      7000740069006D0075006D00010001000D000A00420069007400420074006E00
      370001004500780069007400010001000D000A00530065007400530074006100
      6E006400610072006400430061006C0065006E00640061007200310001005300
      6500740020005300740061006E0064006100720064002000430061006C006500
      6E00640061007200010001000D000A005300650074005300740061006E006400
      61007200430061006C0065006E00640061007200310001005300650074002000
      5300740061006E0064006100720064002000430061006C0065006E0064006100
      7200010001000D000A004D006F006400690066007900430061006C0065006E00
      640061007200310001004D006F0064006900660079002000430061006C006500
      6E00640061007200010001000D000A004500780070006F007200740031000100
      4500780070006F0072007400010001000D000A0043006F007000790066007200
      6F006D006F0074006800650072006C0069006E0065003100010043006F007000
      79002000660072006F006D0020006F00740068006500720020006C0069006E00
      6500010001000D000A00530065007400310001004E006F006E00200050007200
      6F00640075006300740069006F006E00200050006C0061006E006E0069006E00
      6700010001000D000A00700070004C006100620065006C003100310001004300
      75007200720065006E007400200057006F0072006B00730068006F0070002700
      730020004C0069006E006500200077006F0072006B002000430061006C006500
      6E00640061007200200026002000430055002000250020006200790020006C00
      69006E0065002000280051004E00200064006500700065006E00640065006E00
      74002900010001000D000A00700070004C006100620065006C00310032000100
      4C0069006E006500010001000D000A00700070004C006100620065006C003100
      3400010044006100740065002000200020002000200020002000460072006F00
      6D002000010001000D000A006400610074006500300031000100200020002000
      20002F00200020002F0020002000010001000D000A00700070004C0061006200
      65006C0031003600010054006F00010001000D000A0064006100740065003000
      3200010020002000200020002F00200020002F0020002000010001000D000A00
      700070004C006100620065006C003100380001005000720069006E0074006500
      640020006F006E00010001000D000A00700070004C006100620065006C003100
      390001005000610067006500010001000D000A00700070004C00610062006500
      6C00320030000100560065007200730069006F006E003A00200032002E003600
      2E003000010001000D000A00700070004C006100620065006C00330038000100
      57006F0072006B00730068006F007000010001000D000A00700070004C006100
      620065006C003100330001004C0069006E006500010001000D000A0070007000
      4C006100620065006C003100350001004400610074006500010001000D000A00
      700070004C006100620065006C0031003700010057006B00010001000D000A00
      700070004C006100620065006C00320031000100430075007200720065006E00
      7400200057006F0072006B002000530065006300740069006F006E0020004800
      7200010001000D000A00700070004C006100620065006C003200330001004400
      65006600610075006C007400010001000D000A00700070004C00610062006500
      6C003200370001004E006F0072006D0061006C003100010001000D000A007000
      70004C006100620065006C003200380001004F0054003100010001000D000A00
      700070004C006100620065006C00320035000100530074006100740075007300
      2000010001000D000A00700070004C006100620065006C003300330001004E00
      6F0072006D0061006C003200010001000D000A00780030003000310001004F00
      54003200010001000D000A00700070004C006100620065006C00340037000100
      540054004C00010001000D000A00700070004C006100620065006C0034003800
      01004E0065007400010001000D000A00700070004C006100620065006C003400
      39000100470072006F0073007300010001000D000A00700070004C0061006200
      65006C00350030000100540054004C00010001000D000A00700070004C006100
      620065006C003500310001004C0069006E006500010001000D000A0070007000
      4C006100620065006C003500320001006F006E002D0068006F006C0064000100
      01000D000A00700070004C006100620065006C00350033000100740069006D00
      6500010001000D000A00700070004C006100620065006C003500340001004300
      6F006E0073006F006C006900640061007400650064002000350020006C006F00
      730074002000010001000D000A00700070004C006100620065006C0035003500
      01005200650073007400010001000D000A00700070004C006100620065006C00
      350036000100740069006D006500010001000D000A00700070004C0061006200
      65006C0035003800010051004E00010001000D000A00700070004C0061006200
      65006C00350039000100740069006D006500010001000D000A00700070004C00
      6100620065006C003600310001005300700065006300690061006C0001000100
      0D000A00700070004C006100620065006C003600320001006C006F0073007400
      2000010001000D000A00700070004C006100620065006C003600340001004300
      610070006100630069007400790020004C006F00730073002000280053006500
      630074002000480072002900010001000D000A00700070004C00610062006500
      6C00360036000100540069006D0065002000010001000D000A00700070004C00
      6100620065006C003600370001004C0069006E006B0061006700650020000100
      01000D000A00700070004C006100620065006C00370031000100430055002500
      010001000D000A00700070004C006100620065006C003500370001004F007000
      740069006D0075006D00010001000D000A00700070004C006100620065006C00
      36003000010054006F00740061006C0020005300650063007400200048007200
      200020002000010001000D000A00700070004C006100620065006C0036003900
      010065006C0065006D0065006E007400730020006F00660020004C0069006E00
      65002000010001000D000A00700070004C006100620065006C00380033000100
      43006800610073006500010001000D000A00700070004C006100620065006C00
      380034000100540069006D006500010001000D000A00700070004C0061006200
      65006C0038003500010053006500630074002000010001000D000A0070007000
      4C006100620065006C0038003600010042006F00740074006F006D0001000100
      0D000A00700070004C006100620065006C003800370001004C0069006E006500
      010001000D000A00700070004C006100620065006C0039003300010055007300
      65006400010001000D000A00700070004C006100620065006C00390034000100
      48007200010001000D000A00700070004C006100620065006C00390036000100
      470041005000010001000D000A00700070004C006100620065006C0039003700
      0100740069006D0065002000010001000D000A00700070004C00610062006500
      6C0039003800010020006F006E002D0068006F006C0064002000740069006D00
      6500010001000D000A00700070004C006100620065006C003100310032000100
      46006100630074006F00720079002000010001000D000A00700070004C006100
      620065006C0037003000010044006900660066002000010001000D000A007000
      70004C006100620065006C00320034000100610073002000010001000D000A00
      700070004C006100620065006C00390039000100640065006600610075006C00
      74002000010001000D000A00700070004C006100620065006C00310031003600
      0100440061007900200053006800690066007400200020002000310020002000
      460072006F006D00010001000D000A00700070004C006100620065006C003100
      3300350001004F0054002000460072006F006D00010001000D000A0070007000
      4C006100620065006C0031003400350001004C0075006E006300680020005400
      69006D006500010001000D000A00700070004C006100620065006C0031003400
      3700010020002000320020002000460072006F006D00010001000D000A007000
      70004C006100620065006C0031003400390001004F0054002000460072006F00
      6D00010001000D000A00700070004C006100620065006C003100350030000100
      4C0075006E00630068002000540069006D006500010001000D000A0070007000
      4C006100620065006C0033003000010053006800690066007400010001000D00
      0A00700070004C006100620065006C0033003100010047004100200001000100
      0D000A0064006400630075003000300031000100200020002000200020002000
      010001000D000A00700070004C006100620065006C0036003300010054006F00
      740061006C003A002000010001000D000A00700070004C006100620065006C00
      36003500010057002F004100760065003A002000010001000D000A0070007000
      4C006100620065006C003600380001004E006F00740065007000610064002000
      6F00660020007300700065006300690061006C0020006C006F00730074002000
      740069006D0065003A00010001000D000A00700070004C006100620065006C00
      31003100340001004E006F007400650070006100640020006F00660020006400
      65006600610075006C0074002000740074006C00200073006500630074002000
      6800720020006900730020006C006F0077006500720020007400680061006E00
      200062006F00740074006F006D0020006C0069006E00650020006F0072002000
      68006900670068006500720020007400680061006E0020006F00700074006900
      6D0075006D003A0020002000010001000D000A00700070004C00610062006500
      6C0034003000010057006F0072006B0069006E00670020004400610079002800
      5700290020003A002000010001000D000A00700070004C006100620065006C00
      340032000100530075006E006400610079002800530029003A00200001000100
      0D000A00700070004C006100620065006C003400340001005000750062006C00
      69006300200048006F006C0069006400610079002800480029003A0001000100
      0D000A00700070004C006100620065006C003200320001004F00700065007200
      6100740069006E0067002000280064006100790029003A002000010001000D00
      0A00700070004C006100620065006C0033003600010051004E00200001000100
      0D000A00700070004C006100620065006C003700320001004300750072007200
      65006E007400200057006F0072006B00730068006F0070002700730020004C00
      69006E006500200077006F0072006B002000430061006C0065006E0064006100
      7200200026002000430055002000250020006200790020006C0069006E006500
      20002D002000730075006D006D00610072007900010001000D000A0070007000
      4C006100620065006C003700390001005000720069006E007400650064002000
      6F006E00010001000D000A00700070004C006100620065006C00380030000100
      5000610067006500010001000D000A00700070004C006100620065006C003800
      31000100560065007200730069006F006E003A00200032002E0036002E003000
      010001000D000A00700070004C006100620065006C0031003000340001004C00
      69006E006500010001000D000A00700070004C006100620065006C0031003000
      37000100430075007200720065006E007400200057006F0072006B0020005300
      65006300740069006F006E00200048007200010001000D000A00700070004C00
      6100620065006C003100300038000100440065006600610075006C0074000100
      01000D000A00700070004C006100620065006C0031003000390001004E006F00
      72006D0061006C003100010001000D000A00700070004C006100620065006C00
      31003100300001004F0054003100010001000D000A00700070004C0061006200
      65006C0031003100350001004E006F0072006D0061006C003200010001000D00
      0A00790030003000310001004F0054003200010001000D000A00700070004C00
      6100620065006C003100310038000100540054004C00010001000D000A007000
      70004C006100620065006C0031003100390001004E0065007400010001000D00
      0A00700070004C006100620065006C003100320030000100470072006F007300
      7300010001000D000A00700070004C006100620065006C003100320031000100
      540054004C00010001000D000A00700070004C006100620065006C0031003200
      320001004C0069006E006500010001000D000A00700070004C00610062006500
      6C0031003200330001006F006E002D0068006F006C006400010001000D000A00
      700070004C006100620065006C003100320034000100740069006D0065000100
      01000D000A00700070004C006100620065006C00310032003600010052006500
      73007400010001000D000A00700070004C006100620065006C00310032003700
      0100740069006D006500010001000D000A00700070004C006100620065006C00
      310032003800010051004E00010001000D000A00700070004C00610062006500
      6C003100320039000100740069006D006500010001000D000A00700070004C00
      6100620065006C0031003300300001005300700065006300690061006C000100
      01000D000A00700070004C006100620065006C0031003300310001006C006F00
      730074002000740069006D006500010001000D000A00700070004C0061006200
      65006C0031003300320001004300610070006100630069007400790020004C00
      6F00730073002000280053006500630074002000480072002900010001000D00
      0A00700070004C006100620065006C003100330033000100540069006D006500
      2000010001000D000A00700070004C006100620065006C003100330034000100
      4C0069006E006B006100670065002000010001000D000A00700070004C006100
      620065006C003100330038000100430055002500010001000D000A0070007000
      4C006100620065006C0031003300390001004F007000740069006D0075006D00
      010001000D000A00700070004C006100620065006C0031003400300001005400
      6F00740061006C00200053006500630074002000480072002000200001000100
      0D000A00700070004C006100620065006C003700330001004400610074006500
      2000200020002000200020002000460072006F006D0020002000010001000D00
      0A0064007400300030003100010032003000300036002F00310032002F003200
      3900010001000D000A00700070004C006100620065006C003700350001005400
      6F0020002000010001000D000A00640074003000300032000100320030003000
      36002F00310032002F0032003900010001000D000A00700070004C0061006200
      65006C0038003800010043006800610073006500010001000D000A0070007000
      4C006100620065006C00380039000100540069006D006500010001000D000A00
      700070004C006100620065006C00390030000100550073006500640001000100
      0D000A00700070004C006100620065006C0039003100010042006F0074007400
      6F006D00010001000D000A00700070004C006100620065006C00390032000100
      4C0069006E006500010001000D000A00700070004C006100620065006C003900
      350001005300650063007400200048007200010001000D000A00700070004C00
      6100620065006C003100300031000100470041005000010001000D000A007000
      70004C006100620065006C0032003600010046006100630074006F0072007900
      20002000010001000D000A00660074007900300030003200010053004C002000
      2000010001000D000A0057006F0072006B00730068006F007000010057006F00
      72006B00730068006F007000010001000D000A0077006B007300300030003100
      01004B00420031004100010001000D000A00700070004C006100620065006C00
      3200390001004F007000650072006100740069006E0067002000010001000D00
      0A00700070004C006100620065006C0037003400010028006400610079002900
      2000010001000D000A00700070004C006100620065006C003800320001004400
      69006600660020002000010001000D000A00700070004C006100620065006C00
      3100300030000100610073002000010001000D000A00700070004C0061006200
      65006C003100310033000100640065006600610075006C007400200001000100
      0D000A00700070004C006100620065006C003300320001004700410020000100
      01000D000A00700070004C006100620065006C00370036000100410076006500
      720061006700650020006200790020006C0069006E006500010001000D000A00
      700070004C006100620065006C00370038000100540054004C00010001000D00
      0A00700070004C006100620065006C0031000100430075007200720065006E00
      740020004C0069006E006500200057006F0072006B002000430061006C006500
      6E0064006100720020006200790020004C0069006E0065002F00440061007900
      200020002D00200020004C0069006E00650020006F006E002D0068006F006C00
      64002000740069006D006500010001000D000A00700070004C00610062006500
      6C00320001004C0069006E006500010001000D000A00700070004C0061006200
      65006C003400010044006100740065002000460072006F006D00010001000D00
      0A00700070004C006100620065006C003500010020002000200020002F002000
      20002F0020002000010001000D000A00700070004C006100620065006C003600
      010054006F00010001000D000A00700070004C006100620065006C0037000100
      20002000200020002F00200020002F0020002000010001000D000A0070007000
      4C006100620065006C00380001005000720069006E0074006500640020006F00
      6E00010001000D000A00700070004C006100620065006C003900010050006100
      67006500010001000D000A00700070004C006100620065006C00310030000100
      560065007200730069006F006E003A00200032002E0036002E00300001000100
      0D000A00700070004C006100620065006C00310030003200010057006F007200
      6B00730068006F007000010001000D000A00700070004C006100620065006C00
      31003000350001004C0069006E006500010001000D000A00700070004C006100
      620065006C0031003000360001004400610074006500010001000D000A007000
      70004C006100620065006C0031003100310001005700650065006B0001000100
      0D000A00700070004C006100620065006C0031003400310001004E006F006E00
      010001000D000A00700070004C006100620065006C0031003400320001005000
      72006400010001000D000A00700070004C006100620065006C00310034003300
      01004400610074006500010001000D000A00700070004C006100620065006C00
      3100340034000100460074007900010001000D000A00700070004C0061006200
      65006C00310034003800010053006800690066007400010001000D000A007000
      70004C006100620065006C0031003500340001004C0069006E00650001000100
      0D000A00700070004C006100620065006C0031003500350001006F006E002D00
      68006F006C006400010001000D000A00700070004C006100620065006C003100
      350036000100740069006D006500010001000D000A00700070004C0061006200
      65006C00310035003700010043006F006E0073006F006C006900640061007400
      650064002000350020006C006F0073007400200065006C0065006D0065006E00
      740073002000010001000D000A00700070004C006100620065006C0031003600
      390001004F00430055002500010001000D000A00700070004C00610062006500
      6C0031003700300001004400430055002500010001000D000A00700070004C00
      6100620065006C0031003700330001006F00660020004C0069006E0065002000
      6F006E002D0068006F006C0064002000740069006D006500010001000D000A00
      700070004C006100620065006C00370037000100320041002000010001000D00
      0A00700070004C006100620065006C00310037003900010054006F0074006100
      6C003A002000010001000D000A00700070004C006100620065006C0031003800
      3000010057002F004100760065003A002000010001000D000A00700070004C00
      6100620065006C00310038003200010057006F0072006B0069006E0067002000
      4400610079003A00010001000D000A00700070004C006100620065006C003100
      380033000100530075006E006400610079003A00010001000D000A0070007000
      4C006100620065006C0031003800340001005000750062006C00690063002000
      48006F006C0069006400610079003A00010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A005400660072006D0063007500720072006300
      61006C0001005400610068006F006D006100010001000D000A00440061007400
      65004500640069007400310001005400610068006F006D006100010001000D00
      0A0044006100740065004500640069007400320001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100310001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3100320001005400610068006F006D006100010001000D000A006C0069006E00
      65003000310001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003100340001005400610068006F006D00610001000100
      0D000A0064006100740065003000310001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310036000100540061006800
      6F006D006100010001000D000A00640061007400650030003200010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      380001005400610068006F006D006100010001000D000A007000700053007900
      7300740065006D005600610072006900610062006C0065003100010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      390001005400610068006F006D006100010001000D000A007000700053007900
      7300740065006D005600610072006900610062006C0065003200010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003200
      300001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003300380001005400610068006F006D006100010001000D000A00
      7400730068006F0070003000310001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100330001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310035000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003100370001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003200310001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003200330001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00320037000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C003200380001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003200350001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300330001005400610068006F00
      6D006100010001000D000A00780030003000310001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003400370001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3400380001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003400390001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003500300001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003500310001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3500320001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003500330001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003500340001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003500350001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3500360001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003500380001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003500390001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003600310001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3600320001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003600340001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003600360001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003600370001005400
      610068006F006D006100010001000D000A007400730074003000310001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3700310001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003500370001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003600300001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003600390001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3800330001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003800340001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003800350001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003800360001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3800370001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003900330001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003900340001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003900360001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3900370001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003900380001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003100320001005400610068006F00
      6D006100010001000D000A006600740079003000300031000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0037003000
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003200340001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003900390001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003600010054006100
      68006F006D006100010001000D000A0073006A00300031000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003300
      350001005400610068006F006D006100010001000D000A0073006A0030003300
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003400350001005400610068006F006D006100010001000D000A00
      73006A003000350001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003400370001005400610068006F006D006100
      010001000D000A0073006A0030003000310001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003400390001005400
      610068006F006D006100010001000D000A0073006A0030003000330001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003500300001005400610068006F006D006100010001000D000A0073006A00
      30003000350001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003300300001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003300310001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740039000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003100300001005400610068006F006D006100010001000D000A007000
      70004400420054006500780074003100310001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003100320001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      74003100330001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100360001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740031003500010054006100
      68006F006D006100010001000D000A0078003000300032000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003100
      390001005400610068006F006D006100010001000D000A007000700044004200
      54006500780074003200300001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003200310001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740032003200
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003200330001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003200340001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400320035000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003200360001005400610068006F006D006100010001000D000A007000
      70004400420054006500780074003200370001005400610068006F006D006100
      010001000D000A00640064006300750030003000310001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740034000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      78007400350001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003100340001005400610068006F006D0061000100
      01000D000A006400640066003000310001005400610068006F006D0061000100
      01000D000A006400640066003000320001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740036003100010054006100
      68006F006D006100010001000D000A006F00740074006C003000300032000100
      5400610068006F006D006100010001000D000A00670072006F00730073003000
      3000320001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003100380001005400610068006F006D00610001000100
      0D000A007000700044004200430061006C006300310039000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003200
      300001005400610068006F006D006100010001000D000A007800300030003400
      01005400610068006F006D006100010001000D000A00740074006C0030003000
      320001005400610068006F006D006100010001000D000A007000700044004200
      430061006C0063003200330001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003200340001005400610068006F00
      6D006100010001000D000A007000700044004200430061006C00630032003500
      01005400610068006F006D006100010001000D000A0070007000440042004300
      61006C0063003200360001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C0063003200370001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300320038000100
      5400610068006F006D006100010001000D000A00440043005500300030003200
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003600330001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003600350001005400610068006F006D0061000100
      01000D000A00700070004D0065006D006F00310001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003600380001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      63003600320001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C006300380001005400610068006F006D00610001000100
      0D000A006600640066003000310001005400610068006F006D00610001000100
      0D000A006600640066003000320001005400610068006F006D00610001000100
      0D000A0074006D00610072006B0073003000310001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100310034000100
      5400610068006F006D006100010001000D000A00700070004D0065006D006F00
      320001005400610068006F006D006100010001000D000A007000700044004200
      430061006C006300330001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C006300340001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003500010054006100
      68006F006D006100010001000D000A00670072006F0073007300300030003100
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003400300001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003400320001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00340034000100540061006800
      6F006D006100010001000D000A0053003000310001005400610068006F006D00
      6100010001000D000A0053003000320001005400610068006F006D0061000100
      01000D000A0073003000330001005400610068006F006D006100010001000D00
      0A00780030003000330001005400610068006F006D006100010001000D000A00
      740074006C0030003000310001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C006300390001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300310030000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C0063003100310001005400610068006F006D006100010001000D000A007000
      700044004200430061006C0063003100320001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003100330001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      63003100340001005400610068006F006D006100010001000D000A006F007400
      74006C0030003000310001005400610068006F006D006100010001000D000A00
      64006300750030003000310001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C006300310001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300320001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3200320001005400610068006F006D006100010001000D000A00730030003400
      01005400610068006F006D006100010001000D000A006F003000300031000100
      5400610068006F006D006100010001000D000A00620030003000310001005400
      610068006F006D006100010001000D000A006400300030003100010054006100
      68006F006D006100010001000D000A006E003100300030003100010054006100
      68006F006D006100010001000D000A006E003200300030003100010054006100
      68006F006D006100010001000D000A006F003100300030003100010054006100
      68006F006D006100010001000D000A006F003200300030003100010054006100
      68006F006D006100010001000D000A006E003000300031000100540061006800
      6F006D006100010001000D000A00640030003000310030003100010054006100
      68006F006D006100010001000D000A0077006300300030003100010054006100
      68006F006D006100010001000D000A0061003000300031000100540061006800
      6F006D006100010001000D000A00720030003000310001005400610068006F00
      6D006100010001000D000A00650030003000310001005400610068006F006D00
      6100010001000D000A006400630030003000310001005400610068006F006D00
      6100010001000D000A006C0030003000310001005400610068006F006D006100
      010001000D000A007A0030003000310001005400610068006F006D0061000100
      01000D000A006F0030003000320001005400610068006F006D00610001000100
      0D000A00620030003000320001005400610068006F006D006100010001000D00
      0A00640030003000320001005400610068006F006D006100010001000D000A00
      6E00310030003000320001005400610068006F006D006100010001000D000A00
      6E00320030003000320001005400610068006F006D006100010001000D000A00
      6F00310030003000320001005400610068006F006D006100010001000D000A00
      6F00320030003000320001005400610068006F006D006100010001000D000A00
      6E0030003000320001005400610068006F006D006100010001000D000A006400
      3000300031003000320001005400610068006F006D006100010001000D000A00
      7700630030003000320001005400610068006F006D006100010001000D000A00
      6C0030003000320001005400610068006F006D006100010001000D000A007A00
      30003000320001005400610068006F006D006100010001000D000A0061003000
      3000320001005400610068006F006D006100010001000D000A00720030003000
      320001005400610068006F006D006100010001000D000A006500300030003200
      01005400610068006F006D006100010001000D000A0064006300300030003200
      01005400610068006F006D006100010001000D000A006F003000300033000100
      5400610068006F006D006100010001000D000A00620030003000330001005400
      610068006F006D006100010001000D000A006400300030003300010054006100
      68006F006D006100010001000D000A006E003100300030003300010054006100
      68006F006D006100010001000D000A006E003200300030003300010054006100
      68006F006D006100010001000D000A006F003100300030003300010054006100
      68006F006D006100010001000D000A006F003200300030003300010054006100
      68006F006D006100010001000D000A006E003000300033000100540061006800
      6F006D006100010001000D000A00640030003000310030003300010054006100
      68006F006D006100010001000D000A0077006300300030003300010054006100
      68006F006D006100010001000D000A006C003000300033000100540061006800
      6F006D006100010001000D000A007A0030003000330001005400610068006F00
      6D006100010001000D000A00610030003000330001005400610068006F006D00
      6100010001000D000A00720030003000330001005400610068006F006D006100
      010001000D000A00650030003000330001005400610068006F006D0061000100
      01000D000A006400630030003000330001005400610068006F006D0061000100
      01000D000A007300640066003000310001005400610068006F006D0061000100
      01000D000A007300640066003000320001005400610068006F006D0061000100
      01000D000A007300640066003100310001005400610068006F006D0061000100
      01000D000A007300640066003100320001005400610068006F006D0061000100
      01000D000A007300640066003200310001005400610068006F006D0061000100
      01000D000A007300640066003300310001005400610068006F006D0061000100
      01000D000A007300640066003300320001005400610068006F006D0061000100
      01000D000A007300640066003200320001005400610068006F006D0061000100
      01000D000A006D006100720073006B0030003000310001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740036003400
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003100370001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003200390001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400330031000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003300320001005400610068006F006D006100010001000D000A007800
      30003000350001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003300380001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740034003600010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      3400390001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003500310001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400350032000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003500
      330001005400610068006F006D006100010001000D000A007000700044004200
      54006500780074003500360001005400610068006F006D006100010001000D00
      0A00700070004400420054006500780074003500370001005400610068006F00
      6D006100010001000D000A007000700044004200540065007800740035003800
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003500390001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003600300001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003300360001005400
      610068006F006D006100010001000D000A007300720064006900660030003100
      01005400610068006F006D006100010001000D000A0073007200640069006600
      3000320001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003500350001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003700320001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00370039000100
      5400610068006F006D006100010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500330001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00380030000100
      5400610068006F006D006100010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500340001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00380031000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0031003000340001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003000370001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003000380001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003000390001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0031003100300001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310031003500010054006100
      68006F006D006100010001000D000A0079003000300031000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003100
      380001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003100390001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003200300001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310032003100
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003200320001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003200330001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100320034000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0031003200360001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003200370001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003200380001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003200390001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0031003300300001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310033003100010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      3300320001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003300330001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100330034000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003300
      360001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003300380001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003300390001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310034003000
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003700330001005400610068006F006D006100010001000D000A006400
      740030003000310001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003700350001005400610068006F006D0061000100
      01000D000A006400740030003000320001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00380038000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0038003900
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C003900300001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003900310001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00390032000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0039003500
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003000310001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C003200360001005400610068006F006D006100
      010001000D000A0066007400790030003000320001005400610068006F006D00
      6100010001000D000A0057006F0072006B00730068006F007000010054006100
      68006F006D006100010001000D000A0077006B00730030003000310001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      3200390001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C003700340001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C003800320001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100300030000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0031003100330001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003300320001005400610068006F006D0061000100
      01000D000A007000700044004200540065007800740033003000010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      3300330001005400610068006F006D006100010001000D000A00700070004400
      420054006500780074003300340001005400610068006F006D00610001000100
      0D000A0070007000440042005400650078007400330035000100540061006800
      6F006D006100010001000D000A00700070004400420054006500780074003300
      370001005400610068006F006D006100010001000D000A007900300030003200
      01005400610068006F006D006100010001000D000A0070007000440042005400
      6500780074003400300001005400610068006F006D006100010001000D000A00
      700070004400420054006500780074003400310001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400340032000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003400330001005400610068006F006D006100010001000D000A007000
      70004400420054006500780074003400340001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003400350001005400
      610068006F006D006100010001000D000A007000700044004200540065007800
      74003400370001005400610068006F006D006100010001000D000A0070007000
      4400420054006500780074003400380001005400610068006F006D0061000100
      01000D000A0064006400630075003000310001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003600010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      380001005400610068006F006D006100010001000D000A007000640061007900
      3000310001005400610068006F006D006100010001000D000A00640069006600
      66003000310001005400610068006F006D006100010001000D000A0064006900
      660066003000320001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C003700360001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630034003900010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      3500300001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003500310001005400610068006F006D00610001000100
      0D000A007000700044004200430061006C006300350032000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003500
      330001005400610068006F006D006100010001000D000A007900300030003400
      01005400610068006F006D006100010001000D000A0070007000440042004300
      61006C0063003500350001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C0063003500360001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300350037000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C0063003500380001005400610068006F006D006100010001000D000A007000
      700044004200430061006C0063003500390001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003600300001005400
      610068006F006D006100010001000D000A007000700044004200430061006C00
      63003600310001005400610068006F006D006100010001000D000A0041004400
      430055003000310001005400610068006F006D006100010001000D000A007000
      700044004200430061006C0063003600350001005400610068006F006D006100
      010001000D000A007000700044004200430061006C0063003600390001005400
      610068006F006D006100010001000D000A006400690066006600320031000100
      5400610068006F006D006100010001000D000A00640069006600660032003200
      01005400610068006F006D006100010001000D000A0070007000440042004300
      61006C0063003300360001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C0063003300370001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300330038000100
      5400610068006F006D006100010001000D000A00700070004400420043006100
      6C0063003300390001005400610068006F006D006100010001000D000A007000
      700044004200430061006C0063003400300001005400610068006F006D006100
      010001000D000A00790030003000330001005400610068006F006D0061000100
      01000D000A007000700044004200430061006C00630034003200010054006100
      68006F006D006100010001000D000A007000700044004200430061006C006300
      3400330001005400610068006F006D006100010001000D000A00700070004400
      4200430061006C0063003400340001005400610068006F006D00610001000100
      0D000A007000700044004200430061006C006300340035000100540061006800
      6F006D006100010001000D000A007000700044004200430061006C0063003400
      360001005400610068006F006D006100010001000D000A007000700044004200
      430061006C0063003400370001005400610068006F006D006100010001000D00
      0A007000700044004200430061006C0063003400380001005400610068006F00
      6D006100010001000D000A007300640063007500300031000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0037003800
      01005400610068006F006D006100010001000D000A0070007000440042004300
      61006C0063003600330001005400610068006F006D006100010001000D000A00
      7000700044004200430061006C0063003600360001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300360001005400
      610068006F006D006100010001000D000A006400690066006600310031000100
      5400610068006F006D006100010001000D000A00640069006600660031003200
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C00310001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C00320001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C00330001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0034000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0035000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C00360001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C00370001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C00380001005400610068006F006D0061000100
      01000D000A0070007000530079007300740065006D0056006100720069006100
      62006C006500350001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C00390001005400610068006F006D00610001000100
      0D000A0070007000530079007300740065006D00560061007200690061006200
      6C006500360001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C003100300001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100300032000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003000
      330001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003000350001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003000360001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310031003100
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003400310001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003400320001005400610068006F006D00
      6100010001000D000A00700070004C006100620065006C003100340033000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0031003400340001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003400380001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003500340001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003500350001005400610068006F006D006100010001000D000A0070007000
      4C006100620065006C0031003500360001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310035003700010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      3600380001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003600390001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100370030000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003700
      330001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C003700370001005400610068006F006D006100010001000D000A00
      70007000440042005400650078007400310001005400610068006F006D006100
      010001000D000A00700070004400420054006500780074003200010054006100
      68006F006D006100010001000D000A0070007000440042005400650078007400
      330001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003700340001005400610068006F006D006100010001000D00
      0A0070007000440042005400650078007400370001005400610068006F006D00
      6100010001000D000A0070007000440042005400650078007400320038000100
      5400610068006F006D006100010001000D000A00700070004400420054006500
      780074003500300001005400610068006F006D006100010001000D000A007000
      70004400420054006500780074003500340001005400610068006F006D006100
      010001000D000A00700070004C006100620065006C0031003700350001005400
      610068006F006D006100010001000D000A00700070004C006100620065006C00
      31003700360001005400610068006F006D006100010001000D000A0070007000
      44004200430061006C0063003600380001005400610068006F006D0061000100
      01000D000A00700070004C006100620065006C00310037003700010054006100
      68006F006D006100010001000D000A00700070004C006100620065006C003100
      3700380001005400610068006F006D006100010001000D000A00700070004C00
      6100620065006C0031003700390001005400610068006F006D00610001000100
      0D000A00700070004C006100620065006C003100380030000100540061006800
      6F006D006100010001000D000A00700070004C006100620065006C0031003800
      320001005400610068006F006D006100010001000D000A00700070004C006100
      620065006C0031003800330001005400610068006F006D006100010001000D00
      0A00700070004C006100620065006C0031003800340001005400610068006F00
      6D006100010001000D000A00700070004C006100620065006C00310038003500
      01005400610068006F006D006100010001000D000A00700070004C0061006200
      65006C0031003800360001005400610068006F006D006100010001000D000A00
      700070004C006100620065006C0031003800370001005400610068006F006D00
      6100010001000D000A007000700044004200430061006C006300380030000100
      5400610068006F006D006100010001000D000A00700070004C00610062006500
      6C0031003800380001005400610068006F006D006100010001000D000A007000
      70004C006100620065006C0031003800390001005400610068006F006D006100
      010001000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A0043006F006D0062006F004200
      6F00780031002E004900740065006D007300010053004C002C00470047002C00
      520058002C0043004C00010001000D000A007300740044006C00670073004300
      61007000740069006F006E0073005F0055006E00690063006F00640065000D00
      0A005700610072006E0069006E00670001005700610072006E0069006E006700
      010001000D000A004500720072006F00720001004500720072006F0072000100
      01000D000A0049006E0066006F0072006D006100740069006F006E0001004900
      6E0066006F0072006D006100740069006F006E00010001000D000A0043006F00
      6E006600690072006D00010043006F006E006600690072006D00010001000D00
      0A0059006500730001002600590065007300010001000D000A004E006F000100
      26004E006F00010001000D000A004F004B0001004F004B00010001000D000A00
      430061006E00630065006C000100430061006E00630065006C00010001000D00
      0A00410062006F007200740001002600410062006F0072007400010001000D00
      0A00520065007400720079000100260052006500740072007900010001000D00
      0A00490067006E006F007200650001002600490067006E006F00720065000100
      01000D000A0041006C006C000100260041006C006C00010001000D000A004E00
      6F00200054006F00200041006C006C0001004E0026006F00200074006F002000
      41006C006C00010001000D000A00590065007300200054006F00200041006C00
      6C000100590065007300200074006F002000260041006C006C00010001000D00
      0A00480065006C00700001002600480065006C007000010001000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00440061007400650045006400
      6900740031002E004400690061006C006F0067005400690074006C0065000100
      530065006C006500630074002000610020004400610074006500010001000D00
      0A004400610074006500450064006900740031002E0054006500780074000100
      20002000200020002F00200020002F0020002000010001000D000A0044006100
      74006500450064006900740032002E004400690061006C006F00670054006900
      74006C0065000100530065006C00650063007400200061002000440061007400
      6500010001000D000A004400610074006500450064006900740032002E005400
      650078007400010020002000200020002F00200020002F002000200001000100
      0D000A007700650065006B00350032002E0043006F006D006D0061006E006400
      54006500780074000100730065006C0065006300740020002A00200066007200
      6F006D0020007700650065006B00350032002000770068006500720065002000
      6C0069006E0065003D00270054003200300030002700010001000D000A007700
      650065006B00350032002E00500072006F00760069006400650072004E006100
      6D00650001006400730070007300630068006500640075006C00650001000100
      0D000A0043006C00690065006E00740044006100740061005300650074003100
      2E00500072006F00760069006400650072004E0061006D006500010064007300
      70007300630068006500640075006C006500010001000D000A0043006C006900
      65006E007400440061007400610053006500740032002E00500072006F007600
      69006400650072004E0061006D00650001006400730070007300630068006500
      640075006C006500010001000D000A0043006C00690065006E00740044006100
      7400610053006500740033002E0043006F006D006D0061006E00640054006500
      780074000100730065006C0065006300740020002A002000660072006F006D00
      20007700650065006B003500320020007700680065007200650020006C006900
      6E0065003D00270054003000300031002700200061006E006400200064006100
      7400650031003D00270032003000300036002D00310032002D00320039002700
      010001000D000A0043006C00690065006E007400440061007400610053006500
      740033002E00500072006F00760069006400650072004E0061006D0065000100
      6400730070007300630068006500640075006C006500010001000D000A007000
      700042004400450050006900700065006C0069006E00650031002E0055007300
      650072004E0061006D006500010042004400450050006900700065006C006900
      6E0065003100010001000D000A00700070004400420050006900700065006C00
      69006E00650031002E0055007300650072004E0061006D006500010044004200
      50006900700065006C0069006E0065003100010001000D000A00700070005200
      650070006F007200740032002E00440065007600690063006500540079007000
      65000100530063007200650065006E00010001000D000A00700070004C006100
      620065006C00310031002E0055007300650072004E0061006D00650001004C00
      6100620065006C0031003100010001000D000A00700070004C00610062006500
      6C00310032002E0055007300650072004E0061006D00650001004C0061006200
      65006C0031003200010001000D000A006C0069006E006500300031002E005500
      7300650072004E0061006D00650001006C0069006E0065003000310001000100
      0D000A00700070004C006100620065006C00310034002E005500730065007200
      4E0061006D00650001004C006100620065006C0031003400010001000D000A00
      6400610074006500300031002E0055007300650072004E0061006D0065000100
      640061007400650030003100010001000D000A00700070004C00610062006500
      6C00310036002E0055007300650072004E0061006D00650001004C0061006200
      65006C0031003600010001000D000A006400610074006500300032002E005500
      7300650072004E0061006D006500010064006100740065003000320001000100
      0D000A00700070004C006100620065006C00310038002E005500730065007200
      4E0061006D00650001004C006100620065006C0031003800010001000D000A00
      70007000530079007300740065006D005600610072006900610062006C006500
      31002E0055007300650072004E0061006D006500010053007900730074006500
      6D005600610072006900610062006C0065003100010001000D000A0070007000
      4C006100620065006C00310039002E0055007300650072004E0061006D006500
      01004C006100620065006C0031003900010001000D000A007000700053007900
      7300740065006D005600610072006900610062006C00650032002E0055007300
      650072004E0061006D0065000100530079007300740065006D00560061007200
      6900610062006C0065003200010001000D000A00700070004C00610062006500
      6C00320030002E0055007300650072004E0061006D00650001004C0061006200
      65006C0032003000010001000D000A00700070004C006100620065006C003300
      38002E0055007300650072004E0061006D00650001004C006100620065006C00
      33003800010001000D000A007400730068006F007000300031002E0055007300
      650072004E0061006D00650001007400730068006F0070003000310001000100
      0D000A00700070005300680061007000650032002E0055007300650072004E00
      61006D0065000100530068006100700065003200010001000D000A0070007000
      4C006100620065006C00310033002E0055007300650072004E0061006D006500
      01004C006100620065006C0031003300010001000D000A00700070004C006100
      620065006C00310035002E0055007300650072004E0061006D00650001004C00
      6100620065006C0031003500010001000D000A00700070004C00610062006500
      6C00310037002E0055007300650072004E0061006D00650001004C0061006200
      65006C0031003700010001000D000A00700070004C006100620065006C003200
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      32003100010001000D000A00700070004C006100620065006C00320033002E00
      55007300650072004E0061006D00650001004C006100620065006C0032003300
      010001000D000A00700070004C006100620065006C00320037002E0055007300
      650072004E0061006D00650001004C006100620065006C003200370001000100
      0D000A00700070004C006100620065006C00320038002E005500730065007200
      4E0061006D00650001004C006100620065006C0032003800010001000D000A00
      700070004C0069006E00650031002E0055007300650072004E0061006D006500
      01004C0069006E0065003100010001000D000A00700070004C0069006E006500
      32002E0055007300650072004E0061006D00650001004C0069006E0065003200
      010001000D000A00700070004C0069006E00650033002E005500730065007200
      4E0061006D00650001004C0069006E0065003300010001000D000A0070007000
      4C0069006E00650034002E0055007300650072004E0061006D00650001004C00
      69006E0065003400010001000D000A00700070004C006100620065006C003200
      35002E0055007300650072004E0061006D00650001004C006100620065006C00
      32003500010001000D000A00700070004C006100620065006C00330033002E00
      55007300650072004E0061006D00650001004C006100620065006C0033003300
      010001000D000A0078003000300031002E0055007300650072004E0061006D00
      650001007800300030003100010001000D000A00700070004C0069006E006500
      38002E0055007300650072004E0061006D00650001004C0069006E0065003800
      010001000D000A00700070004C006100620065006C00340037002E0055007300
      650072004E0061006D00650001004C006100620065006C003400370001000100
      0D000A00700070004C0069006E00650039002E0055007300650072004E006100
      6D00650001004C0069006E0065003900010001000D000A00700070004C006100
      620065006C00340038002E0055007300650072004E0061006D00650001004C00
      6100620065006C0034003800010001000D000A00700070004C0069006E006500
      310030002E0055007300650072004E0061006D00650001004C0069006E006500
      31003000010001000D000A00700070004C006100620065006C00340039002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003900
      010001000D000A00700070004C006100620065006C00350030002E0055007300
      650072004E0061006D00650001004C006100620065006C003500300001000100
      0D000A00700070004C0069006E006500310031002E0055007300650072004E00
      61006D00650001004C0069006E00650031003100010001000D000A0070007000
      4C0069006E006500310032002E0055007300650072004E0061006D0065000100
      4C0069006E00650031003200010001000D000A00700070004C0069006E006500
      310033002E0055007300650072004E0061006D00650001004C0069006E006500
      31003300010001000D000A00700070004C0069006E006500310034002E005500
      7300650072004E0061006D00650001004C0069006E0065003100340001000100
      0D000A00700070004C0069006E006500310035002E0055007300650072004E00
      61006D00650001004C0069006E00650031003500010001000D000A0070007000
      4C006100620065006C00350031002E0055007300650072004E0061006D006500
      01004C006100620065006C0035003100010001000D000A00700070004C006100
      620065006C00350032002E0055007300650072004E0061006D00650001004C00
      6100620065006C0035003200010001000D000A00700070004C00610062006500
      6C00350033002E0055007300650072004E0061006D00650001004C0061006200
      65006C0035003300010001000D000A00700070004C006100620065006C003500
      34002E0055007300650072004E0061006D00650001004C006100620065006C00
      35003400010001000D000A00700070004C006100620065006C00350035002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003500
      010001000D000A00700070004C006100620065006C00350036002E0055007300
      650072004E0061006D00650001004C006100620065006C003500360001000100
      0D000A00700070004C006100620065006C00350038002E005500730065007200
      4E0061006D00650001004C006100620065006C0035003800010001000D000A00
      700070004C006100620065006C00350039002E0055007300650072004E006100
      6D00650001004C006100620065006C0035003900010001000D000A0070007000
      4C006100620065006C00360031002E0055007300650072004E0061006D006500
      01004C006100620065006C0036003100010001000D000A00700070004C006100
      620065006C00360032002E0055007300650072004E0061006D00650001004C00
      6100620065006C0036003200010001000D000A00700070004C0069006E006500
      310036002E0055007300650072004E0061006D00650001004C0069006E006500
      31003600010001000D000A00700070004C006100620065006C00360034002E00
      55007300650072004E0061006D00650001004C006100620065006C0036003400
      010001000D000A00700070004C006100620065006C00360036002E0055007300
      650072004E0061006D00650001004C006100620065006C003600360001000100
      0D000A00700070004C006100620065006C00360037002E005500730065007200
      4E0061006D00650001004C006100620065006C0036003700010001000D000A00
      700070004C0069006E00650037002E0055007300650072004E0061006D006500
      01004C0069006E0065003700010001000D000A00700070004C0069006E006500
      310039002E0055007300650072004E0061006D00650001004C0069006E006500
      31003900010001000D000A00740073007400300031002E005500730065007200
      4E0061006D006500010074007300740030003100010001000D000A0070007000
      4C0069006E006500320030002E0055007300650072004E0061006D0065000100
      4C0069006E00650032003000010001000D000A00700070004C0069006E006500
      320031002E0055007300650072004E0061006D00650001004C0069006E006500
      32003100010001000D000A00700070004C006100620065006C00370031002E00
      55007300650072004E0061006D00650001004C006100620065006C0037003000
      3100010001000D000A00700070004C0069006E006500320032002E0055007300
      650072004E0061006D00650001004C0069006E00650032003200010001000D00
      0A00700070004C006100620065006C00350037002E0055007300650072004E00
      61006D00650001004C006100620065006C0035003700010001000D000A007000
      70004C006100620065006C00360030002E0055007300650072004E0061006D00
      650001004C006100620065006C0036003000010001000D000A00700070004C00
      6100620065006C00360039002E0055007300650072004E0061006D0065000100
      4C006100620065006C0036003900010001000D000A00700070004C0069006E00
      6500370032002E0055007300650072004E0061006D00650001004C0069006E00
      650037003200010001000D000A00700070004C006100620065006C0038003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003800
      3300010001000D000A00700070004C006100620065006C00380034002E005500
      7300650072004E0061006D00650001004C006100620065006C00350030003100
      010001000D000A00700070004C006100620065006C00380035002E0055007300
      650072004E0061006D00650001004C006100620065006C003800350001000100
      0D000A00700070004C0069006E006500370033002E0055007300650072004E00
      61006D00650001004C0069006E00650037003300010001000D000A0070007000
      4C006100620065006C00380036002E0055007300650072004E0061006D006500
      01004C006100620065006C0038003600010001000D000A00700070004C006100
      620065006C00380037002E0055007300650072004E0061006D00650001004C00
      6100620065006C00360030003100010001000D000A00700070004C0061006200
      65006C00390033002E0055007300650072004E0061006D00650001004C006100
      620065006C0039003300010001000D000A00700070004C006100620065006C00
      390034002E0055007300650072004E0061006D00650001004C00610062006500
      6C0039003400010001000D000A00700070004C006100620065006C0039003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003900
      3600010001000D000A00700070004C006100620065006C00390037002E005500
      7300650072004E0061006D00650001004C006100620065006C00390037000100
      01000D000A00700070004C006100620065006C00390038002E00550073006500
      72004E0061006D00650001004C006100620065006C0039003800010001000D00
      0A00700070004C006100620065006C003100310032002E005500730065007200
      4E0061006D00650001004C006100620065006C00310031003200010001000D00
      0A006600740079003000300031002E0055007300650072004E0061006D006500
      0100660074007900300030003100010001000D000A00700070004C0061006200
      65006C00370030002E0055007300650072004E0061006D00650001004C006100
      620065006C00370030003300010001000D000A00700070004C00610062006500
      6C00320034002E0055007300650072004E0061006D00650001004C0061006200
      65006C0032003400010001000D000A00700070004C006100620065006C003900
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      39003900010001000D000A00700070004C006100620065006C00310031003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      30003400010001000D000A0073006A00300031002E0055007300650072004E00
      61006D006500010073006A0030003100010001000D000A00700070004C006100
      620065006C003100330035002E0055007300650072004E0061006D0065000100
      4C006100620065006C00310033003500010001000D000A0073006A0030003300
      2E0055007300650072004E0061006D006500010073006A003000330001000100
      0D000A00700070004C006100620065006C003100340035002E00550073006500
      72004E0061006D00650001004C006100620065006C0031003400350001000100
      0D000A0073006A00300035002E0055007300650072004E0061006D0065000100
      73006A0030003500010001000D000A00700070004C006100620065006C003100
      340037002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310034003700010001000D000A0073006A003000300031002E0055007300
      650072004E0061006D006500010073006A00300030003100010001000D000A00
      700070004C006100620065006C003100340039002E0055007300650072004E00
      61006D00650001004C006100620065006C00310034003900010001000D000A00
      73006A003000300033002E0055007300650072004E0061006D00650001007300
      6A00300030003300010001000D000A00700070004C006100620065006C003100
      350030002E0055007300650072004E0061006D00650001004C00610062006500
      6C00310035003000010001000D000A0073006A003000300035002E0055007300
      650072004E0061006D006500010073006A00300030003500010001000D000A00
      700070004C0069006E006500320036002E0055007300650072004E0061006D00
      650001004C0069006E00650032003600010001000D000A00700070004C006100
      620065006C00330030002E0055007300650072004E0061006D00650001004C00
      6100620065006C0033003000010001000D000A00700070004C00610062006500
      6C00330031002E0055007300650072004E0061006D00650001004C0061006200
      65006C0033003100010001000D000A0070007000440042005400650078007400
      39002E0044006100740061004600690065006C00640001004C0049004E004500
      010001000D000A007000700044004200540065007800740039002E0055007300
      650072004E0061006D0065000100440042005400650078007400390001000100
      0D000A0070007000440042005400650078007400310030002E00440061007400
      61004600690065006C006400010044004100540045003100010001000D000A00
      70007000440042005400650078007400310030002E0055007300650072004E00
      61006D006500010044004200540065007800740031003000010001000D000A00
      70007000440042005400650078007400310031002E0044006100740061004600
      690065006C006400010057004B004E004F00010001000D000A00700070004400
      42005400650078007400310031002E0055007300650072004E0061006D006500
      010044004200540065007800740031003100010001000D000A00700070004400
      42005400650078007400310032002E0044006100740061004600690065006C00
      6400010043005300450043005400010001000D000A0070007000440042005400
      650078007400310032002E0055007300650072004E0061006D00650001004400
      4200540065007800740031003200010001000D000A0070007000440042005400
      650078007400310033002E0044006100740061004600690065006C0064000100
      53004500430054005400010001000D000A007000700044004200540065007800
      7400310033002E0055007300650072004E0061006D0065000100440042005400
      65007800740031003300010001000D000A007000700044004200540065007800
      7400310036002E0044006100740061004600690065006C006400010053004500
      430054004300010001000D000A00700070004400420054006500780074003100
      36002E0055007300650072004E0061006D006500010044004200540065007800
      740031003600010001000D000A00700070004400420054006500780074003100
      35002E0044006100740061004600690065006C00640001005300450043005400
      54003100010001000D000A007000700044004200540065007800740031003500
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      31003500010001000D000A0078003000300032002E0044006100740061004600
      690065006C00640001004F005300450043005400010001000D000A0078003000
      300032002E0055007300650072004E0061006D00650001007800300030003200
      010001000D000A0070007000440042005400650078007400310039002E004400
      6100740061004600690065006C0064000100540054004C00010001000D000A00
      70007000440042005400650078007400310039002E0055007300650072004E00
      61006D006500010044004200540065007800740031003900010001000D000A00
      70007000440042005400650078007400320030002E0044006100740061004600
      690065006C006400010043005300450043005400010001000D000A0070007000
      440042005400650078007400320030002E0055007300650072004E0061006D00
      6500010044004200540065007800740032003000010001000D000A0070007000
      440042005400650078007400320031002E004400610074006100460069006500
      6C00640001004C005300450043005400010001000D000A007000700044004200
      5400650078007400320031002E0055007300650072004E0061006D0065000100
      440042005400650078007400320030003100010001000D000A00700070004400
      42005400650078007400320032002E0044006100740061004600690065006C00
      6400010052005300450043005400010001000D000A0070007000440042005400
      650078007400320032002E0055007300650072004E0061006D00650001004400
      4200540065007800740032003200010001000D000A0070007000440042005400
      650078007400320033002E0044006100740061004600690065006C0064000100
      41005300450043005400010001000D000A007000700044004200540065007800
      7400320033002E0055007300650072004E0061006D0065000100440042005400
      65007800740032003300010001000D000A007000700044004200540065007800
      7400320034002E0044006100740061004600690065006C006400010045005300
      450043005400010001000D000A00700070004400420054006500780074003200
      34002E0055007300650072004E0061006D006500010044004200540065007800
      740032003400010001000D000A00700070004400420054006500780074003200
      35002E0044006100740061004600690065006C006400010046004C0041004700
      010001000D000A0070007000440042005400650078007400320035002E005500
      7300650072004E0061006D006500010044004200540065007800740032003500
      010001000D000A0070007000440042005400650078007400320036002E004400
      6100740061004600690065006C00640001005A00530045004300540001000100
      0D000A0070007000440042005400650078007400320036002E00550073006500
      72004E0061006D00650001004400420054006500780074003200360001000100
      0D000A0070007000440042005400650078007400320037002E00440061007400
      61004600690065006C00640001004F00540054004C00010001000D000A007000
      7000440042005400650078007400320037002E0055007300650072004E006100
      6D006500010044004200540065007800740032003700010001000D000A006400
      6400630075003000300031002E0055007300650072004E0061006D0065000100
      6400640063007500300030003100010001000D000A0070007000440042005400
      65007800740034002E0044006100740061004600690065006C00640001005700
      4F0052004B00450052004300010001000D000A00700070004400420054006500
      7800740034002E0055007300650072004E0061006D0065000100440042005400
      650078007400320030003200010001000D000A00700070004400420054006500
      7800740035002E0044006100740061004600690065006C006400010057004F00
      52004B00450052004F00010001000D000A007000700044004200540065007800
      740035002E0055007300650072004E0061006D00650001004400420054006500
      780074003500010001000D000A00700070004400420054006500780074003100
      34002E0044006100740061004600690065006C00640001005700440041005900
      010001000D000A0070007000440042005400650078007400310034002E005500
      7300650072004E0061006D006500010044004200540065007800740031000100
      01000D000A00640064006600300031002E0055007300650072004E0061006D00
      6500010064006400660030003100010001000D000A0064006400660030003200
      2E0055007300650072004E0061006D0065000100640064006600300032000100
      01000D000A0070007000440042005400650078007400360031002E0044006100
      740061004600690065006C00640001005300480046005400010001000D000A00
      70007000440042005400650078007400360031002E0055007300650072004E00
      61006D006500010044004200540065007800740036003100010001000D000A00
      700070004C0069006E006500320033002E0055007300650072004E0061006D00
      650001004C0069006E00650032003300010001000D000A00700070004C006900
      6E006500320034002E0055007300650072004E0061006D00650001004C006900
      6E00650032003400010001000D000A006F00740074006C003000300032002E00
      44006100740061004600690065006C00640001004F00540054004C0001000100
      0D000A006F00740074006C003000300032002E0055007300650072004E006100
      6D00650001006F00740074006C00300030003200010001000D000A0067007200
      6F00730073003000300032002E0044006100740061004600690065006C006400
      010043005300450043005400010001000D000A00670072006F00730073003000
      300032002E0055007300650072004E0061006D0065000100670072006F007300
      7300300030003200010001000D000A007000700044004200430061006C006300
      310038002E0044006100740061004600690065006C0064000100530045004300
      54005400010001000D000A007000700044004200430061006C00630031003800
      2E0055007300650072004E0061006D006500010044004200430061006C006300
      31003800010001000D000A007000700044004200430061006C00630031003900
      2E0044006100740061004600690065006C006400010053004500430054005400
      3100010001000D000A007000700044004200430061006C006300310039002E00
      55007300650072004E0061006D006500010044004200430061006C0063003100
      3900010001000D000A007000700044004200430061006C006300320030002E00
      44006100740061004600690065006C0064000100530045004300540043000100
      01000D000A007000700044004200430061006C006300320030002E0055007300
      650072004E0061006D006500010044004200430061006C006300320030000100
      01000D000A0078003000300034002E0044006100740061004600690065006C00
      640001004F005300450043005400010001000D000A0078003000300034002E00
      55007300650072004E0061006D00650001007800300030003400010001000D00
      0A00740074006C003000300032002E0044006100740061004600690065006C00
      64000100540054004C00010001000D000A00740074006C003000300032002E00
      55007300650072004E0061006D0065000100740074006C003000300032000100
      01000D000A007000700044004200430061006C006300320033002E0044006100
      740061004600690065006C006400010043005300450043005400010001000D00
      0A007000700044004200430061006C006300320033002E005500730065007200
      4E0061006D006500010044004200430061006C00630032003300010001000D00
      0A007000700044004200430061006C006300320034002E004400610074006100
      4600690065006C00640001004C005300450043005400010001000D000A007000
      700044004200430061006C006300320034002E0055007300650072004E006100
      6D006500010044004200430061006C006300310030003400010001000D000A00
      7000700044004200430061006C006300320035002E0044006100740061004600
      690065006C00640001005A005300450043005400010001000D000A0070007000
      44004200430061006C006300320035002E0055007300650072004E0061006D00
      6500010044004200430061006C00630032003500010001000D000A0070007000
      44004200430061006C006300320036002E004400610074006100460069006500
      6C006400010041005300450043005400010001000D000A007000700044004200
      430061006C006300320036002E0055007300650072004E0061006D0065000100
      44004200430061006C00630032003600010001000D000A007000700044004200
      430061006C006300320037002E0044006100740061004600690065006C006400
      010052005300450043005400010001000D000A00700070004400420043006100
      6C006300320037002E0055007300650072004E0061006D006500010044004200
      430061006C00630032003700010001000D000A00700070004400420043006100
      6C006300320038002E0044006100740061004600690065006C00640001004500
      5300450043005400010001000D000A007000700044004200430061006C006300
      320038002E0055007300650072004E0061006D00650001004400420043006100
      6C00630032003800010001000D000A004400430055003000300032002E005500
      7300650072004E0061006D006500010044004300550030003000320001000100
      0D000A00700070004C006100620065006C00360033002E005500730065007200
      4E0061006D00650001004C006100620065006C0036003300010001000D000A00
      700070004C0069006E006500320035002E0055007300650072004E0061006D00
      650001004C0069006E00650032003500010001000D000A00700070004C006100
      620065006C00360035002E0055007300650072004E0061006D00650001004C00
      6100620065006C0036003500010001000D000A00700070004D0065006D006F00
      31002E0055007300650072004E0061006D00650001004D0065006D006F003100
      010001000D000A00700070004C006100620065006C00360038002E0055007300
      650072004E0061006D00650001004C006100620065006C003600380001000100
      0D000A007000700044004200430061006C006300360032002E00440061007400
      61004600690065006C006400010057004F0052004B00450052004F0001000100
      0D000A007000700044004200430061006C006300360032002E00550073006500
      72004E0061006D006500010044004200430061006C0063003600320001000100
      0D000A007000700044004200430061006C00630038002E004400610074006100
      4600690065006C006400010057004F0052004B00450052004300010001000D00
      0A007000700044004200430061006C00630038002E0055007300650072004E00
      61006D006500010044004200430061006C0063003800010001000D000A006600
      64006600300031002E0055007300650072004E0061006D006500010066006400
      660030003100010001000D000A00660064006600300032002E00550073006500
      72004E0061006D006500010066006400660030003200010001000D000A007400
      6D00610072006B007300300031002E0055007300650072004E0061006D006500
      010074006D00610072006B00730030003100010001000D000A00700070004C00
      6100620065006C003100310034002E0055007300650072004E0061006D006500
      01004C006100620065006C00310031003400010001000D000A00700070004D00
      65006D006F0032002E0055007300650072004E0061006D00650001004D006500
      6D006F003200010001000D000A0070007000470072006F007500700031002E00
      42007200650061006B004E0061006D00650001004C0049004E00450001000100
      0D000A0070007000470072006F007500700031002E0055007300650072004E00
      61006D0065000100470072006F00750070003100010001000D000A0070007000
      5300680061007000650033002E0055007300650072004E0061006D0065000100
      530068006100700065003300010001000D000A00700070004400420043006100
      6C00630033002E0044006100740061004600690065006C006400010053004500
      4300540054003100010001000D000A007000700044004200430061006C006300
      33002E0055007300650072004E0061006D006500010044004200430061006C00
      63003300010001000D000A007000700044004200430061006C00630034002E00
      44006100740061004600690065006C0064000100530045004300540043000100
      01000D000A007000700044004200430061006C00630034002E00550073006500
      72004E0061006D006500010044004200430061006C0063003400010001000D00
      0A007000700044004200430061006C00630035002E0044006100740061004600
      690065006C006400010053004500430054005400010001000D000A0070007000
      44004200430061006C00630035002E0055007300650072004E0061006D006500
      010044004200430061006C0063003500010001000D000A00670072006F007300
      73003000300031002E0044006100740061004600690065006C00640001004300
      5300450043005400010001000D000A00670072006F0073007300300030003100
      2E0055007300650072004E0061006D0065000100670072006F00730073003000
      30003100010001000D000A00700070004C006100620065006C00340030002E00
      55007300650072004E0061006D00650001004C006100620065006C0034003000
      010001000D000A00700070004C006100620065006C00340032002E0055007300
      650072004E0061006D00650001004C006100620065006C003400320001000100
      0D000A00700070004C006100620065006C00340034002E005500730065007200
      4E0061006D00650001004C006100620065006C0034003400010001000D000A00
      5300300031002E0055007300650072004E0061006D0065000100530030003100
      010001000D000A005300300032002E0055007300650072004E0061006D006500
      0100530030003200010001000D000A007300300033002E005500730065007200
      4E0061006D0065000100730030003300010001000D000A007800300030003300
      2E0044006100740061004600690065006C00640001004F005300450043005400
      010001000D000A0078003000300033002E0055007300650072004E0061006D00
      650001007800300030003300010001000D000A00740074006C00300030003100
      2E0044006100740061004600690065006C0064000100540054004C0001000100
      0D000A00740074006C003000300031002E0055007300650072004E0061006D00
      65000100740074006C00300030003100010001000D000A007000700044004200
      430061006C00630039002E0044006100740061004600690065006C0064000100
      43005300450043005400010001000D000A007000700044004200430061006C00
      630039002E0055007300650072004E0061006D00650001004400420043006100
      6C0063003900010001000D000A007000700044004200430061006C0063003100
      30002E0044006100740061004600690065006C00640001004C00530045004300
      5400010001000D000A007000700044004200430061006C006300310030002E00
      55007300650072004E0061006D006500010044004200430061006C0063003100
      3000010001000D000A007000700044004200430061006C006300310031002E00
      44006100740061004600690065006C00640001005A0053004500430054000100
      01000D000A007000700044004200430061006C006300310031002E0055007300
      650072004E0061006D006500010044004200430061006C006300310030003100
      010001000D000A007000700044004200430061006C006300310032002E004400
      6100740061004600690065006C00640001005200530045004300540001000100
      0D000A007000700044004200430061006C006300310032002E00550073006500
      72004E0061006D006500010044004200430061006C0063003100300032000100
      01000D000A007000700044004200430061006C006300310033002E0044006100
      740061004600690065006C006400010041005300450043005400010001000D00
      0A007000700044004200430061006C006300310033002E005500730065007200
      4E0061006D006500010044004200430061006C00630031003000330001000100
      0D000A007000700044004200430061006C006300310034002E00440061007400
      61004600690065006C006400010045005300450043005400010001000D000A00
      7000700044004200430061006C006300310034002E0055007300650072004E00
      61006D006500010044004200430061006C00630031003400010001000D000A00
      700070004C0069006E006500310037002E0055007300650072004E0061006D00
      650001004C0069006E00650031003700010001000D000A00700070004C006900
      6E006500310038002E0055007300650072004E0061006D00650001004C006900
      6E00650031003800010001000D000A006F00740074006C003000300031002E00
      44006100740061004600690065006C00640001004F00540054004C0001000100
      0D000A006F00740074006C003000300031002E0055007300650072004E006100
      6D00650001006F00740074006C00300030003100010001000D000A0064006300
      75003000300031002E0055007300650072004E0061006D006500010064006300
      7500300030003100010001000D000A007000700044004200430061006C006300
      31002E0044006100740061004600690065006C006400010057004F0052004B00
      450052004300010001000D000A007000700044004200430061006C0063003100
      2E0055007300650072004E0061006D006500010044004200430061006C006300
      3100010001000D000A007000700044004200430061006C00630032002E004400
      6100740061004600690065006C006400010057004F0052004B00450052004F00
      010001000D000A007000700044004200430061006C00630032002E0055007300
      650072004E0061006D006500010044004200430061006C006300320001000100
      0D000A00700070004C006100620065006C00320032002E005500730065007200
      4E0061006D00650001004C006100620065006C003100010001000D000A007300
      300034002E0055007300650072004E0061006D00650001007300300034000100
      01000D000A006F003000300031002E0055007300650072004E0061006D006500
      01006F00300030003100010001000D000A0062003000300031002E0055007300
      650072004E0061006D00650001006200300030003100010001000D000A006400
      3000300031002E0055007300650072004E0061006D0065000100640030003000
      3100010001000D000A006E0031003000300031002E0055007300650072004E00
      61006D00650001006E003100300030003100010001000D000A006E0032003000
      300031002E0055007300650072004E0061006D00650001006E00320030003000
      3100010001000D000A006F0031003000300031002E0055007300650072004E00
      61006D00650001006F003100300030003100010001000D000A006F0032003000
      300031002E0055007300650072004E0061006D00650001006F00320030003000
      3100010001000D000A006E003000300031002E0055007300650072004E006100
      6D00650001006E00300030003100010001000D000A0064003000300031003000
      31002E0055007300650072004E0061006D006500010064003000300031003000
      3100010001000D000A00770063003000300031002E0055007300650072004E00
      61006D006500010077006300300030003100010001000D000A00610030003000
      31002E0055007300650072004E0061006D006500010061003000300031000100
      01000D000A0072003000300031002E0055007300650072004E0061006D006500
      01007200300030003100010001000D000A0065003000300031002E0055007300
      650072004E0061006D00650001006500300030003100010001000D000A006400
      63003000300031002E0055007300650072004E0061006D006500010064006300
      300030003100010001000D000A006C003000300031002E005500730065007200
      4E0061006D00650001006C00300030003100010001000D000A007A0030003000
      31002E0055007300650072004E0061006D00650001007A003000300031000100
      01000D000A006F003000300032002E0055007300650072004E0061006D006500
      01006F00300030003200010001000D000A0062003000300032002E0055007300
      650072004E0061006D00650001006200300030003200010001000D000A006400
      3000300032002E0055007300650072004E0061006D0065000100640030003000
      3200010001000D000A006E0031003000300032002E0055007300650072004E00
      61006D00650001006E003100300030003200010001000D000A006E0032003000
      300032002E0055007300650072004E0061006D00650001006E00320030003000
      3200010001000D000A006F0031003000300032002E0055007300650072004E00
      61006D00650001006F003100300030003200010001000D000A006F0032003000
      300032002E0055007300650072004E0061006D00650001006F00320030003000
      3200010001000D000A006E003000300032002E0055007300650072004E006100
      6D00650001006E00300030003200010001000D000A0064003000300031003000
      32002E0055007300650072004E0061006D006500010064003000300031003000
      3200010001000D000A00770063003000300032002E0055007300650072004E00
      61006D006500010077006300300030003200010001000D000A006C0030003000
      32002E0055007300650072004E0061006D00650001006C003000300032000100
      01000D000A007A003000300032002E0055007300650072004E0061006D006500
      01007A00300030003200010001000D000A0061003000300032002E0055007300
      650072004E0061006D00650001006100300030003200010001000D000A007200
      3000300032002E0055007300650072004E0061006D0065000100720030003000
      3200010001000D000A0065003000300032002E0055007300650072004E006100
      6D00650001006500300030003200010001000D000A0064006300300030003200
      2E0055007300650072004E0061006D0065000100640063003000300032000100
      01000D000A006F003000300033002E0055007300650072004E0061006D006500
      01006F00300030003300010001000D000A0062003000300033002E0055007300
      650072004E0061006D00650001006200300030003300010001000D000A006400
      3000300033002E0055007300650072004E0061006D0065000100640030003000
      3300010001000D000A006E0031003000300033002E0055007300650072004E00
      61006D00650001006E003100300030003300010001000D000A006E0032003000
      300033002E0055007300650072004E0061006D00650001006E00320030003000
      3300010001000D000A006F0031003000300033002E0055007300650072004E00
      61006D00650001006F003100300030003300010001000D000A006F0032003000
      300033002E0055007300650072004E0061006D00650001006F00320030003000
      3300010001000D000A006E003000300033002E0055007300650072004E006100
      6D00650001006E00300030003300010001000D000A0064003000300031003000
      33002E0055007300650072004E0061006D006500010064003000300031003000
      3300010001000D000A00770063003000300033002E0055007300650072004E00
      61006D006500010077006300300030003300010001000D000A006C0030003000
      33002E0055007300650072004E0061006D00650001006C003000300033000100
      01000D000A007A003000300033002E0055007300650072004E0061006D006500
      01007A00300030003300010001000D000A0061003000300033002E0055007300
      650072004E0061006D00650001006100300030003300010001000D000A007200
      3000300033002E0055007300650072004E0061006D0065000100720030003000
      3300010001000D000A0065003000300033002E0055007300650072004E006100
      6D00650001006500300030003300010001000D000A0064006300300030003300
      2E0055007300650072004E0061006D0065000100640063003000300033000100
      01000D000A00730064006600300031002E0055007300650072004E0061006D00
      6500010073006400660030003100010001000D000A0073006400660030003200
      2E0055007300650072004E0061006D0065000100730064006600300032000100
      01000D000A00730064006600310031002E0055007300650072004E0061006D00
      6500010073006400660031003100010001000D000A0073006400660031003200
      2E0055007300650072004E0061006D0065000100730064006600310032000100
      01000D000A00730064006600320031002E0055007300650072004E0061006D00
      6500010073006400660032003100010001000D000A0073006400660033003100
      2E0055007300650072004E0061006D0065000100730064006600330031000100
      01000D000A00730064006600330032002E0055007300650072004E0061006D00
      6500010073006400660033003200010001000D000A0073006400660032003200
      2E0055007300650072004E0061006D0065000100730064006600320032000100
      01000D000A006D006100720073006B003000300031002E005500730065007200
      4E0061006D00650001006D006100720073006B00300030003100010001000D00
      0A0070007000470072006F007500700033002E0042007200650061006B004E00
      61006D006500010044004100540045003100010001000D000A00700070004700
      72006F007500700033002E0055007300650072004E0061006D00650001004700
      72006F00750070003300010001000D000A007000700053007500620052006500
      70006F007200740031002E0055007300650072004E0061006D00650001005300
      750062005200650070006F00720074003100010001000D000A00700070004400
      42005400650078007400360034002E0044006100740061004600690065006C00
      64000100440043005500010001000D000A007000700044004200540065007800
      7400360034002E0055007300650072004E0061006D0065000100440042005400
      65007800740032003900010001000D000A007000700044004200540065007800
      7400310037002E0044006100740061004600690065006C006400010043005300
      450043005400010001000D000A00700070004400420054006500780074003100
      37002E0055007300650072004E0061006D006500010044004200540065007800
      74003100010001000D000A007000700044004200540065007800740032003900
      2E0044006100740061004600690065006C006400010053004500430054005400
      010001000D000A0070007000440042005400650078007400320039002E005500
      7300650072004E0061006D006500010044004200540065007800740032000100
      01000D000A0070007000440042005400650078007400330031002E0044006100
      740061004600690065006C006400010053004500430054004300010001000D00
      0A0070007000440042005400650078007400330031002E005500730065007200
      4E0061006D006500010044004200540065007800740033003100010001000D00
      0A0070007000440042005400650078007400330032002E004400610074006100
      4600690065006C0064000100530045004300540054003100010001000D000A00
      70007000440042005400650078007400330032002E0055007300650072004E00
      61006D006500010044004200540065007800740033003200010001000D000A00
      78003000300035002E0044006100740061004600690065006C00640001004F00
      5300450043005400010001000D000A0078003000300035002E00550073006500
      72004E0061006D00650001007800300030003500010001000D000A0070007000
      440042005400650078007400330038002E004400610074006100460069006500
      6C0064000100540054004C00010001000D000A00700070004400420054006500
      78007400330038002E0055007300650072004E0061006D006500010044004200
      540065007800740033003800010001000D000A00700070004400420054006500
      78007400340036002E0044006100740061004600690065006C00640001004300
      5300450043005400010001000D000A0070007000440042005400650078007400
      340036002E0055007300650072004E0061006D00650001004400420054006500
      78007400320030003400010001000D000A007000700044004200540065007800
      7400340039002E0044006100740061004600690065006C00640001004C005300
      450043005400010001000D000A00700070004400420054006500780074003400
      39002E0055007300650072004E0061006D006500010044004200540065007800
      740034003900010001000D000A00700070004400420054006500780074003500
      31002E0044006100740061004600690065006C00640001005200530045004300
      5400010001000D000A0070007000440042005400650078007400350031002E00
      55007300650072004E0061006D00650001004400420054006500780074003500
      3100010001000D000A0070007000440042005400650078007400350032002E00
      44006100740061004600690065006C0064000100410053004500430054000100
      01000D000A0070007000440042005400650078007400350032002E0055007300
      650072004E0061006D0065000100440042005400650078007400350032000100
      01000D000A0070007000440042005400650078007400350033002E0044006100
      740061004600690065006C006400010045005300450043005400010001000D00
      0A0070007000440042005400650078007400350033002E005500730065007200
      4E0061006D006500010044004200540065007800740035003300010001000D00
      0A0070007000440042005400650078007400350036002E004400610074006100
      4600690065006C00640001005A005300450043005400010001000D000A007000
      7000440042005400650078007400350036002E0055007300650072004E006100
      6D006500010044004200540065007800740035003600010001000D000A007000
      7000440042005400650078007400350037002E00440061007400610046006900
      65006C00640001004F00540054004C00010001000D000A007000700044004200
      5400650078007400350037002E0055007300650072004E0061006D0065000100
      44004200540065007800740035003700010001000D000A007000700044004200
      5400650078007400350038002E0044006100740061004600690065006C006400
      010057004F0052004B00450052004300010001000D000A007000700044004200
      5400650078007400350038002E0055007300650072004E0061006D0065000100
      44004200540065007800740035003800010001000D000A007000700044004200
      5400650078007400350039002E0044006100740061004600690065006C006400
      010057004F0052004B00450052004F00010001000D000A007000700044004200
      5400650078007400350039002E0055007300650072004E0061006D0065000100
      44004200540065007800740035003900010001000D000A007000700044004200
      5400650078007400360030002E0044006100740061004600690065006C006400
      010053004500430054004F00010001000D000A00700070004400420054006500
      78007400360030002E0055007300650072004E0061006D006500010044004200
      540065007800740036003000010001000D000A00700070004C00610062006500
      6C00330036002E0055007300650072004E0061006D00650001004C0061006200
      65006C003100010001000D000A0073007200640069006600300031002E005500
      7300650072004E0061006D006500010073007200640069006600300031000100
      01000D000A0073007200640069006600300032002E0055007300650072004E00
      61006D00650001007300720064006900660030003200010001000D000A007000
      7000440042005400650078007400350035002E00440061007400610046006900
      65006C006400010046004C0041004700010001000D000A007000700044004200
      5400650078007400350035002E0055007300650072004E0061006D0065000100
      44004200540065007800740035003500010001000D000A007000700052006500
      70006F007200740033002E004400650076006900630065005400790070006500
      0100530063007200650065006E00010001000D000A00700070004C0061006200
      65006C00370032002E0055007300650072004E0061006D00650001004C006100
      620065006C0031003100010001000D000A00700070004C006100620065006C00
      370039002E0055007300650072004E0061006D00650001004C00610062006500
      6C0031003800010001000D000A0070007000530079007300740065006D005600
      610072006900610062006C00650033002E0055007300650072004E0061006D00
      65000100530079007300740065006D005600610072006900610062006C006500
      3100010001000D000A00700070004C006100620065006C00380030002E005500
      7300650072004E0061006D00650001004C006100620065006C00310039000100
      01000D000A0070007000530079007300740065006D0056006100720069006100
      62006C00650034002E0055007300650072004E0061006D006500010053007900
      7300740065006D005600610072006900610062006C0065003200010001000D00
      0A00700070004C006100620065006C00380031002E0055007300650072004E00
      61006D00650001004C006100620065006C0032003000010001000D000A007000
      70005300680061007000650034002E0055007300650072004E0061006D006500
      0100530068006100700065003200010001000D000A00700070004C0061006200
      65006C003100300034002E0055007300650072004E0061006D00650001004C00
      6100620065006C0031003300010001000D000A00700070004C00610062006500
      6C003100300037002E0055007300650072004E0061006D00650001004C006100
      620065006C0032003100010001000D000A00700070004C006100620065006C00
      3100300038002E0055007300650072004E0061006D00650001004C0061006200
      65006C0032003300010001000D000A00700070004C006100620065006C003100
      300039002E0055007300650072004E0061006D00650001004C00610062006500
      6C0032003700010001000D000A00700070004C006100620065006C0031003100
      30002E0055007300650072004E0061006D00650001004C006100620065006C00
      32003800010001000D000A00700070004C0069006E006500320038002E005500
      7300650072004E0061006D00650001004C0069006E0065003300010001000D00
      0A00700070004C006100620065006C003100310035002E005500730065007200
      4E0061006D00650001004C006100620065006C0033003300010001000D000A00
      79003000300031002E0055007300650072004E0061006D00650001004C006100
      620065006C0034003600010001000D000A00700070004C0069006E0065003300
      32002E0055007300650072004E0061006D00650001004C0069006E0065003800
      010001000D000A00700070004C006100620065006C003100310038002E005500
      7300650072004E0061006D00650001004C006100620065006C00340037000100
      01000D000A00700070004C0069006E006500330033002E005500730065007200
      4E0061006D00650001004C0069006E0065003900010001000D000A0070007000
      4C006100620065006C003100310039002E0055007300650072004E0061006D00
      650001004C006100620065006C0034003800010001000D000A00700070004C00
      69006E006500330034002E0055007300650072004E0061006D00650001004C00
      69006E00650031003000010001000D000A00700070004C006100620065006C00
      3100320030002E0055007300650072004E0061006D00650001004C0061006200
      65006C0034003900010001000D000A00700070004C006100620065006C003100
      320031002E0055007300650072004E0061006D00650001004C00610062006500
      6C0035003000010001000D000A00700070004C0069006E006500330036002E00
      55007300650072004E0061006D00650001004C0069006E006500310032000100
      01000D000A00700070004C0069006E006500330037002E005500730065007200
      4E0061006D00650001004C0069006E00650031003300010001000D000A007000
      70004C0069006E006500330038002E0055007300650072004E0061006D006500
      01004C0069006E00650031003400010001000D000A00700070004C0069006E00
      6500330039002E0055007300650072004E0061006D00650001004C0069006E00
      650031003500010001000D000A00700070004C006100620065006C0031003200
      32002E0055007300650072004E0061006D00650001004C006100620065006C00
      35003100010001000D000A00700070004C006100620065006C00310032003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003500
      3200010001000D000A00700070004C006100620065006C003100320034002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003300
      010001000D000A00700070004C006100620065006C003100320036002E005500
      7300650072004E0061006D00650001004C006100620065006C00350035000100
      01000D000A00700070004C006100620065006C003100320037002E0055007300
      650072004E0061006D00650001004C006100620065006C003500360001000100
      0D000A00700070004C006100620065006C003100320038002E00550073006500
      72004E0061006D00650001004C006100620065006C0035003800010001000D00
      0A00700070004C006100620065006C003100320039002E005500730065007200
      4E0061006D00650001004C006100620065006C0035003900010001000D000A00
      700070004C006100620065006C003100330030002E0055007300650072004E00
      61006D00650001004C006100620065006C0036003100010001000D000A007000
      70004C006100620065006C003100330031002E0055007300650072004E006100
      6D00650001004C006100620065006C0036003200010001000D000A0070007000
      4C0069006E006500340030002E0055007300650072004E0061006D0065000100
      4C0069006E00650031003600010001000D000A00700070004C00610062006500
      6C003100330032002E0055007300650072004E0061006D00650001004C006100
      620065006C0036003400010001000D000A00700070004C006100620065006C00
      3100330033002E0055007300650072004E0061006D00650001004C0061006200
      65006C0036003600010001000D000A00700070004C006100620065006C003100
      330034002E0055007300650072004E0061006D00650001004C00610062006500
      6C0036003700010001000D000A00700070004C0069006E006500340032002E00
      55007300650072004E0061006D00650001004C0069006E006500310039000100
      01000D000A00700070004C006100620065006C003100330036002E0055007300
      650072004E0061006D006500010074007300740030003100010001000D000A00
      700070004C0069006E006500340034002E0055007300650072004E0061006D00
      650001004C0069006E00650032003100010001000D000A00700070004C006100
      620065006C003100330038002E0055007300650072004E0061006D0065000100
      4C006100620065006C00370030003100010001000D000A00700070004C006900
      6E006500340035002E0055007300650072004E0061006D00650001004C006900
      6E00650032003200010001000D000A00700070004C006100620065006C003100
      330039002E0055007300650072004E0061006D00650001004C00610062006500
      6C0035003700010001000D000A00700070004C006100620065006C0031003400
      30002E0055007300650072004E0061006D00650001004C006100620065006C00
      36003000010001000D000A00700070004C006100620065006C00370033002E00
      55007300650072004E0061006D00650001004C006100620065006C0037003300
      010001000D000A00640074003000300031002E0055007300650072004E006100
      6D006500010064007400300030003100010001000D000A00700070004C006100
      620065006C00370035002E0055007300650072004E0061006D00650001004C00
      6100620065006C0037003500010001000D000A00640074003000300032002E00
      55007300650072004E0061006D00650001006400740030003000320001000100
      0D000A00700070004C0069006E006500370034002E0055007300650072004E00
      61006D00650001004C0069006E00650037003400010001000D000A0070007000
      4C0069006E006500370035002E0055007300650072004E0061006D0065000100
      4C0069006E00650037003500010001000D000A00700070004C00610062006500
      6C00380038002E0055007300650072004E0061006D00650001004C0061006200
      65006C0038003800010001000D000A00700070004C006100620065006C003800
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      350030003200010001000D000A00700070004C006100620065006C0039003000
      2E0055007300650072004E0061006D00650001004C006100620065006C003900
      3000010001000D000A00700070004C0069006E006500370036002E0055007300
      650072004E0061006D00650001004C0069006E00650037003600010001000D00
      0A00700070004C006100620065006C00390031002E0055007300650072004E00
      61006D00650001004C006100620065006C0039003100010001000D000A007000
      70004C006100620065006C00390032002E0055007300650072004E0061006D00
      650001004C006100620065006C00360030003200010001000D000A0070007000
      4C006100620065006C00390035002E0055007300650072004E0061006D006500
      01004C006100620065006C0039003500010001000D000A00700070004C006100
      620065006C003100300031002E0055007300650072004E0061006D0065000100
      4C006100620065006C00310030003100010001000D000A00700070004C006100
      620065006C00320036002E0055007300650072004E0061006D00650001004C00
      6100620065006C003100010001000D000A006600740079003000300032002E00
      55007300650072004E0061006D00650001006600740079003000300032000100
      01000D000A0057006F0072006B00730068006F0070002E005500730065007200
      4E0061006D00650001004C006100620065006C003300010001000D000A007700
      6B0073003000300031002E0055007300650072004E0061006D00650001007700
      6B007300300030003100010001000D000A00700070004C0069006E0065003500
      2E0055007300650072004E0061006D00650001004C0069006E00650031000100
      01000D000A00700070004C006100620065006C00320039002E00550073006500
      72004E0061006D00650001004C006100620065006C003200010001000D000A00
      700070004C006100620065006C00370034002E0055007300650072004E006100
      6D00650001004C006100620065006C00360030003300010001000D000A007000
      70004C0069006E00650036002E0055007300650072004E0061006D0065000100
      4C0069006E0065003200010001000D000A00700070004C006100620065006C00
      380032002E0055007300650072004E0061006D00650001004C00610062006500
      6C0038003200010001000D000A00700070004C006100620065006C0031003000
      30002E0055007300650072004E0061006D00650001004C006100620065006C00
      310030003000010001000D000A00700070004C006100620065006C0031003100
      33002E0055007300650072004E0061006D00650001004C006100620065006C00
      310031003300010001000D000A00700070004C006100620065006C0033003200
      2E0055007300650072004E0061006D00650001004C006100620065006C003300
      3200010001000D000A0070007000440042005400650078007400330030002E00
      44006100740061004600690065006C00640001004C0049004E00450001000100
      0D000A0070007000440042005400650078007400330030002E00550073006500
      72004E0061006D00650001004400420054006500780074003900010001000D00
      0A0070007000440042005400650078007400330033002E004400610074006100
      4600690065006C006400010043005300450043005400010001000D000A007000
      7000440042005400650078007400330033002E0055007300650072004E006100
      6D006500010044004200540065007800740031003200010001000D000A007000
      7000440042005400650078007400330034002E00440061007400610046006900
      65006C006400010053004500430054005400010001000D000A00700070004400
      42005400650078007400330034002E0055007300650072004E0061006D006500
      010044004200540065007800740031003300010001000D000A00700070004400
      42005400650078007400330035002E0044006100740061004600690065006C00
      6400010053004500430054004300010001000D000A0070007000440042005400
      650078007400330035002E0055007300650072004E0061006D00650001004400
      4200540065007800740031003600010001000D000A0070007000440042005400
      650078007400330037002E0044006100740061004600690065006C0064000100
      530045004300540054003100010001000D000A00700070004400420054006500
      78007400330037002E0055007300650072004E0061006D006500010044004200
      540065007800740031003500010001000D000A0079003000300032002E004400
      6100740061004600690065006C00640001004F00530045004300540001000100
      0D000A0079003000300032002E0055007300650072004E0061006D0065000100
      44004200540065007800740031003800010001000D000A007000700044004200
      5400650078007400340030002E0044006100740061004600690065006C006400
      0100540054004C00010001000D000A0070007000440042005400650078007400
      340030002E0055007300650072004E0061006D00650001004400420054006500
      7800740031003900010001000D000A0070007000440042005400650078007400
      340031002E0044006100740061004600690065006C0064000100430053004500
      43005400010001000D000A007000700044004200540065007800740034003100
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      32003000010001000D000A007000700044004200540065007800740034003200
      2E0044006100740061004600690065006C00640001004C005300450043005400
      010001000D000A0070007000440042005400650078007400340032002E005500
      7300650072004E0061006D006500010044004200540065007800740032003000
      3100010001000D000A0070007000440042005400650078007400340033002E00
      44006100740061004600690065006C0064000100520053004500430054000100
      01000D000A0070007000440042005400650078007400340033002E0055007300
      650072004E0061006D0065000100440042005400650078007400320032000100
      01000D000A0070007000440042005400650078007400340034002E0044006100
      740061004600690065006C006400010041005300450043005400010001000D00
      0A0070007000440042005400650078007400340034002E005500730065007200
      4E0061006D006500010044004200540065007800740032003300010001000D00
      0A0070007000440042005400650078007400340035002E004400610074006100
      4600690065006C006400010045005300450043005400010001000D000A007000
      7000440042005400650078007400340035002E0055007300650072004E006100
      6D006500010044004200540065007800740032003400010001000D000A007000
      7000440042005400650078007400340037002E00440061007400610046006900
      65006C00640001005A005300450043005400010001000D000A00700070004400
      42005400650078007400340037002E0055007300650072004E0061006D006500
      010044004200540065007800740032003600010001000D000A00700070004400
      42005400650078007400340038002E0044006100740061004600690065006C00
      640001004F00540054004C00010001000D000A00700070004400420054006500
      78007400340038002E0055007300650072004E0061006D006500010044004200
      540065007800740032003700010001000D000A00640064006300750030003100
      2E0055007300650072004E0061006D0065000100640064006300750030003100
      010001000D000A007000700044004200540065007800740036002E0044006100
      740061004600690065006C006400010057004F0052004B004500520043000100
      01000D000A007000700044004200540065007800740036002E00550073006500
      72004E0061006D00650001004400420054006500780074003200300033000100
      01000D000A007000700044004200540065007800740038002E00440061007400
      61004600690065006C006400010057004F0052004B00450052004F0001000100
      0D000A007000700044004200540065007800740038002E005500730065007200
      4E0061006D00650001004400420054006500780074003800010001000D000A00
      7000640061007900300031002E0055007300650072004E0061006D0065000100
      700064006100790030003100010001000D000A00640069006600660030003100
      2E0055007300650072004E0061006D0065000100640069006600660030003100
      010001000D000A006400690066006600300032002E0055007300650072004E00
      61006D0065000100640069006600660030003200010001000D000A0070007000
      4C006100620065006C00370036002E0055007300650072004E0061006D006500
      01004C006100620065006C0037003600010001000D000A007000700044004200
      430061006C006300340039002E0044006100740061004600690065006C006400
      01004F00540054004C00010001000D000A007000700044004200430061006C00
      6300340039002E0055007300650072004E0061006D0065000100440042004300
      61006C00630034003900010001000D000A007000700044004200430061006C00
      6300350030002E0044006100740061004600690065006C006400010043005300
      450043005400010001000D000A007000700044004200430061006C0063003500
      30002E0055007300650072004E0061006D006500010044004200430061006C00
      630035003000010001000D000A007000700044004200430061006C0063003500
      31002E0044006100740061004600690065006C00640001005300450043005400
      5400010001000D000A007000700044004200430061006C006300350031002E00
      55007300650072004E0061006D006500010044004200430061006C0063003500
      3100010001000D000A007000700044004200430061006C006300350032002E00
      44006100740061004600690065006C0064000100530045004300540054003100
      010001000D000A007000700044004200430061006C006300350032002E005500
      7300650072004E0061006D006500010044004200430061006C00630035003200
      010001000D000A007000700044004200430061006C006300350033002E004400
      6100740061004600690065006C00640001005300450043005400430001000100
      0D000A007000700044004200430061006C006300350033002E00550073006500
      72004E0061006D006500010044004200430061006C0063003200300032000100
      01000D000A0079003000300034002E0044006100740061004600690065006C00
      640001004F005300450043005400010001000D000A0079003000300034002E00
      55007300650072004E0061006D00650001007900300030003400010001000D00
      0A007000700044004200430061006C006300350035002E004400610074006100
      4600690065006C0064000100540054004C00010001000D000A00700070004400
      4200430061006C006300350035002E0055007300650072004E0061006D006500
      010044004200430061006C00630035003500010001000D000A00700070004400
      4200430061006C006300350036002E0044006100740061004600690065006C00
      6400010043005300450043005400010001000D000A0070007000440042004300
      61006C006300350036002E0055007300650072004E0061006D00650001004400
      4200430061006C00630035003600010001000D000A0070007000440042004300
      61006C006300350037002E0044006100740061004600690065006C0064000100
      4C005300450043005400010001000D000A007000700044004200430061006C00
      6300350037002E0055007300650072004E0061006D0065000100440042004300
      61006C00630035003700010001000D000A007000700044004200430061006C00
      6300350038002E0044006100740061004600690065006C00640001005A005300
      450043005400010001000D000A007000700044004200430061006C0063003500
      38002E0055007300650072004E0061006D006500010044004200430061006C00
      630035003800010001000D000A007000700044004200430061006C0063003500
      39002E0044006100740061004600690065006C00640001004100530045004300
      5400010001000D000A007000700044004200430061006C006300350039002E00
      55007300650072004E0061006D006500010044004200430061006C0063003500
      3900010001000D000A007000700044004200430061006C006300360030002E00
      44006100740061004600690065006C0064000100520053004500430054000100
      01000D000A007000700044004200430061006C006300360030002E0055007300
      650072004E0061006D006500010044004200430061006C006300360030000100
      01000D000A007000700044004200430061006C006300360031002E0044006100
      740061004600690065006C006400010045005300450043005400010001000D00
      0A007000700044004200430061006C006300360031002E005500730065007200
      4E0061006D006500010044004200430061006C00630036003100010001000D00
      0A004100440043005500300031002E0055007300650072004E0061006D006500
      0100410044004300550030003100010001000D000A0070007000440042004300
      61006C006300360035002E0044006100740061004600690065006C0064000100
      57004F0052004B00450052004300010001000D000A0070007000440042004300
      61006C006300360035002E0055007300650072004E0061006D00650001004400
      4200430061006C00630036003500010001000D000A0070007000440042004300
      61006C006300360039002E0044006100740061004600690065006C0064000100
      57004F0052004B00450052004F00010001000D000A0070007000440042004300
      61006C006300360039002E0055007300650072004E0061006D00650001004400
      4200430061006C00630036003900010001000D000A0064006900660066003200
      31002E0055007300650072004E0061006D006500010064006900660066003200
      3100010001000D000A006400690066006600320032002E005500730065007200
      4E0061006D0065000100640069006600660032003200010001000D000A007000
      7000470072006F007500700032002E0042007200650061006B004E0061006D00
      650001005400530048004F005000010001000D000A0070007000470072006F00
      7500700032002E0055007300650072004E0061006D0065000100470072006F00
      750070003100010001000D000A00700070004C0069006E006500320037002E00
      55007300650072004E0061006D00650001004C0069006E006500320037000100
      01000D000A00700070004C0069006E006500320039002E005500730065007200
      4E0061006D00650001004C0069006E00650032003900010001000D000A007000
      700044004200430061006C006300330036002E00440061007400610046006900
      65006C00640001004F00540054004C00010001000D000A007000700044004200
      430061006C006300330036002E0055007300650072004E0061006D0065000100
      44004200430061006C00630033003600010001000D000A007000700044004200
      430061006C006300330037002E0044006100740061004600690065006C006400
      010043005300450043005400010001000D000A00700070004400420043006100
      6C006300330037002E0055007300650072004E0061006D006500010044004200
      430061006C00630033003700010001000D000A00700070004400420043006100
      6C006300330038002E0044006100740061004600690065006C00640001005300
      4500430054005400010001000D000A007000700044004200430061006C006300
      330038002E0055007300650072004E0061006D00650001004400420043006100
      6C00630033003800010001000D000A007000700044004200430061006C006300
      330039002E0044006100740061004600690065006C0064000100530045004300
      540054003100010001000D000A007000700044004200430061006C0063003300
      39002E0055007300650072004E0061006D006500010044004200430061006C00
      630033003900010001000D000A007000700044004200430061006C0063003400
      30002E0044006100740061004600690065006C00640001005300450043005400
      4300010001000D000A007000700044004200430061006C006300340030002E00
      55007300650072004E0061006D006500010044004200430061006C0063003200
      30003100010001000D000A0079003000300033002E0044006100740061004600
      690065006C00640001004F005300450043005400010001000D000A0079003000
      300033002E0055007300650072004E0061006D00650001007900300030003300
      010001000D000A007000700044004200430061006C006300340032002E004400
      6100740061004600690065006C0064000100540054004C00010001000D000A00
      7000700044004200430061006C006300340032002E0055007300650072004E00
      61006D006500010044004200430061006C00630034003200010001000D000A00
      7000700044004200430061006C006300340033002E0044006100740061004600
      690065006C006400010043005300450043005400010001000D000A0070007000
      44004200430061006C006300340033002E0055007300650072004E0061006D00
      6500010044004200430061006C00630034003300010001000D000A0070007000
      44004200430061006C006300340034002E004400610074006100460069006500
      6C00640001004C005300450043005400010001000D000A007000700044004200
      430061006C006300340034002E0055007300650072004E0061006D0065000100
      44004200430061006C00630034003400010001000D000A007000700044004200
      430061006C006300340035002E0044006100740061004600690065006C006400
      01005A005300450043005400010001000D000A00700070004400420043006100
      6C006300340035002E0055007300650072004E0061006D006500010044004200
      430061006C00630034003500010001000D000A00700070004400420043006100
      6C006300340036002E0044006100740061004600690065006C00640001004100
      5300450043005400010001000D000A007000700044004200430061006C006300
      340036002E0055007300650072004E0061006D00650001004400420043006100
      6C00630034003600010001000D000A007000700044004200430061006C006300
      340037002E0044006100740061004600690065006C0064000100520053004500
      43005400010001000D000A007000700044004200430061006C00630034003700
      2E0055007300650072004E0061006D006500010044004200430061006C006300
      34003700010001000D000A007000700044004200430061006C00630034003800
      2E0044006100740061004600690065006C006400010045005300450043005400
      010001000D000A007000700044004200430061006C006300340038002E005500
      7300650072004E0061006D006500010044004200430061006C00630034003800
      010001000D000A007300640063007500300031002E0055007300650072004E00
      61006D0065000100730064006300750030003100010001000D000A0070007000
      4C006100620065006C00370038002E0055007300650072004E0061006D006500
      01004C006100620065006C0037003800010001000D000A007000700044004200
      430061006C006300360033002E0044006100740061004600690065006C006400
      010057004F0052004B00450052004300010001000D000A007000700044004200
      430061006C006300360033002E0055007300650072004E0061006D0065000100
      44004200430061006C00630036003300010001000D000A007000700044004200
      430061006C006300360036002E0044006100740061004600690065006C006400
      010057004F0052004B00450052004F00010001000D000A007000700044004200
      430061006C006300360036002E0055007300650072004E0061006D0065000100
      44004200430061006C00630036003600010001000D000A007000700044004200
      430061006C00630036002E0044006100740061004600690065006C0064000100
      4C0049004E004500010001000D000A007000700044004200430061006C006300
      36002E0055007300650072004E0061006D006500010044004200430061006C00
      63003600010001000D000A006400690066006600310031002E00550073006500
      72004E0061006D0065000100640069006600660031003100010001000D000A00
      6400690066006600310032002E0055007300650072004E0061006D0065000100
      640069006600660031003200010001000D000A00700070005200650070006F00
      7200740031002E00440065007600690063006500540079007000650001005300
      63007200650065006E00010001000D000A00700070004C006100620065006C00
      31002E0055007300650072004E0061006D00650001004C006100620065006C00
      31003100010001000D000A00700070004C006100620065006C0032002E005500
      7300650072004E0061006D00650001004C006100620065006C00310032000100
      01000D000A00700070004C006100620065006C0033002E005500730065007200
      4E0061006D00650001006C0069006E00650030003100010001000D000A007000
      70004C006100620065006C0034002E0055007300650072004E0061006D006500
      01004C006100620065006C0031003400010001000D000A00700070004C006100
      620065006C0035002E0055007300650072004E0061006D006500010064006100
      7400650030003100010001000D000A00700070004C006100620065006C003600
      2E0055007300650072004E0061006D00650001004C006100620065006C003100
      3600010001000D000A00700070004C006100620065006C0037002E0055007300
      650072004E0061006D0065000100640061007400650030003200010001000D00
      0A00700070004C006100620065006C0038002E0055007300650072004E006100
      6D00650001004C006100620065006C0031003800010001000D000A0070007000
      530079007300740065006D005600610072006900610062006C00650035002E00
      55007300650072004E0061006D0065000100530079007300740065006D005600
      610072006900610062006C0065003100010001000D000A00700070004C006100
      620065006C0039002E0055007300650072004E0061006D00650001004C006100
      620065006C0031003900010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C00650036002E0055007300650072004E00
      61006D0065000100530079007300740065006D00560061007200690061006200
      6C0065003200010001000D000A00700070004C006100620065006C0031003000
      2E0055007300650072004E0061006D00650001004C006100620065006C003200
      3000010001000D000A00700070004C006100620065006C003100300032002E00
      55007300650072004E0061006D00650001004C006100620065006C0033003800
      010001000D000A00700070004C006100620065006C003100300033002E005500
      7300650072004E0061006D00650001007400730068006F007000300031000100
      01000D000A00700070005300680061007000650031002E005500730065007200
      4E0061006D0065000100530068006100700065003200010001000D000A007000
      70004C006100620065006C003100300035002E0055007300650072004E006100
      6D00650001004C006100620065006C0031003300010001000D000A0070007000
      4C006100620065006C003100300036002E0055007300650072004E0061006D00
      650001004C006100620065006C0031003500010001000D000A00700070004C00
      6100620065006C003100310031002E0055007300650072004E0061006D006500
      01004C006100620065006C0031003700010001000D000A00700070004C006900
      6E006500330035002E0055007300650072004E0061006D00650001004C006900
      6E0065003100010001000D000A00700070004C0069006E006500340031002E00
      55007300650072004E0061006D00650001004C0069006E006500320001000100
      0D000A00700070004C0069006E006500350030002E0055007300650072004E00
      61006D00650001004C0069006E0065003400010001000D000A00700070004C00
      6100620065006C003100340031002E0055007300650072004E0061006D006500
      01004C006100620065006C0032003200010001000D000A00700070004C006100
      620065006C003100340032002E0055007300650072004E0061006D0065000100
      4C006100620065006C0032003500010001000D000A00700070004C0061006200
      65006C003100340033002E0055007300650072004E0061006D00650001004C00
      6100620065006C0032003600010001000D000A00700070004C0069006E006500
      350031002E0055007300650072004E0061006D00650001004C0069006E006500
      3500010001000D000A00700070004C006100620065006C003100340034002E00
      55007300650072004E0061006D00650001004C006100620065006C0032003900
      010001000D000A00700070004C0069006E006500350032002E00550073006500
      72004E0061006D00650001004C0069006E0065003600010001000D000A007000
      70004C006100620065006C003100340038002E0055007300650072004E006100
      6D00650001004C006100620065006C0033003600010001000D000A0070007000
      4C0069006E006500350036002E0055007300650072004E0061006D0065000100
      4C0069006E00650031003100010001000D000A00700070004C0069006E006500
      350037002E0055007300650072004E0061006D00650001004C0069006E006500
      31003200010001000D000A00700070004C006100620065006C00310035003400
      2E0055007300650072004E0061006D00650001004C006100620065006C003500
      3100010001000D000A00700070004C006100620065006C003100350035002E00
      55007300650072004E0061006D00650001004C006100620065006C0035003200
      010001000D000A00700070004C006100620065006C003100350036002E005500
      7300650072004E0061006D00650001004C006100620065006C00350033000100
      01000D000A00700070004C006100620065006C003100350037002E0055007300
      650072004E0061006D00650001004C006100620065006C003500340001000100
      0D000A00700070004C006100620065006C003100360038002E00550073006500
      72004E0061006D006500010074007300740030003100010001000D000A007000
      70004C0069006E006500360034002E0055007300650072004E0061006D006500
      01004C0069006E00650032003000010001000D000A00700070004C0069006E00
      6500360035002E0055007300650072004E0061006D00650001004C0069006E00
      650032003100010001000D000A00700070004C006100620065006C0031003600
      39002E0055007300650072004E0061006D00650001004C006100620065006C00
      37003000010001000D000A00700070004C006100620065006C00310037003000
      2E0055007300650072004E0061006D00650001004C006100620065006C003700
      30003100010001000D000A00700070004C006100620065006C00310037003300
      2E0055007300650072004E0061006D00650001004C006100620065006C003600
      3900010001000D000A00700070004C0069006E006500340039002E0055007300
      650072004E0061006D00650001004C0069006E00650034003900010001000D00
      0A00700070004C006100620065006C00370037002E0055007300650072004E00
      61006D00650001004C006100620065006C0037003700010001000D000A007000
      70004C0069006E006500350034002E0055007300650072004E0061006D006500
      01004C0069006E00650035003400010001000D000A00700070004C0069006E00
      6500350035002E0055007300650072004E0061006D00650001004C0069006E00
      650035003500010001000D000A00700070004C0069006E006500350038002E00
      55007300650072004E0061006D00650001004C0069006E006500350038000100
      01000D000A00700070004C0069006E006500350039002E005500730065007200
      4E0061006D00650001004C0069006E00650035003900010001000D000A007000
      70004C0069006E006500360030002E0055007300650072004E0061006D006500
      01004C0069006E00650036003000010001000D000A00700070004C0069006E00
      6500360031002E0055007300650072004E0061006D00650001004C0069006E00
      650036003100010001000D000A00700070004C0069006E006500360032002E00
      55007300650072004E0061006D00650001004C0069006E006500360032000100
      01000D000A00700070004C0069006E006500360033002E005500730065007200
      4E0061006D00650001004C0069006E00650036003300010001000D000A007000
      70004C0069006E006500360036002E0055007300650072004E0061006D006500
      01004C0069006E00650036003600010001000D000A0070007000440042005400
      65007800740031002E0044006100740061004600690065006C00640001004C00
      49004E004500010001000D000A00700070004400420054006500780074003100
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      3900010001000D000A007000700044004200540065007800740032002E004400
      6100740061004600690065006C00640001004400410054004500310001000100
      0D000A007000700044004200540065007800740032002E005500730065007200
      4E0061006D006500010044004200540065007800740031003000010001000D00
      0A007000700044004200540065007800740033002E0044006100740061004600
      690065006C006400010057004B004E004F00010001000D000A00700070004400
      4200540065007800740033002E0055007300650072004E0061006D0065000100
      44004200540065007800740031003100010001000D000A00700070004C006100
      620065006C003100370034002E0055007300650072004E0061006D0065000100
      77006400610079003100010001000D000A007000700044004200540065007800
      740037002E0044006100740061004600690065006C0064000100740070006C00
      61006E007400010001000D000A00700070004400420054006500780074003700
      2E0055007300650072004E0061006D0065000100440042005400650078007400
      31003400010001000D000A007000700044004200540065007800740032003800
      2E0044006100740061004600690065006C006400010053004800460054000100
      01000D000A0070007000440042005400650078007400320038002E0055007300
      650072004E0061006D0065000100440042005400650078007400310037000100
      01000D000A0070007000440042005400650078007400350030002E0044006100
      740061004600690065006C00640001004C005300450043005400010001000D00
      0A0070007000440042005400650078007400350030002E005500730065007200
      4E0061006D006500010044004200540065007800740032003000310001000100
      0D000A0070007000440042005400650078007400350034002E00440061007400
      61004600690065006C006400010046004C0041004700010001000D000A007000
      7000440042005400650078007400350034002E0055007300650072004E006100
      6D006500010044004200540065007800740032003500010001000D000A007000
      70004C006100620065006C003100370035002E0055007300650072004E006100
      6D006500010064006F0063007500300030003100010001000D000A0070007000
      4C006100620065006C003100370036002E0055007300650072004E0061006D00
      650001006400640063007500300030003100010001000D000A00700070004C00
      69006E006500360037002E0055007300650072004E0061006D00650001004C00
      69006E00650032003300010001000D000A00700070004C0069006E0065003600
      38002E0055007300650072004E0061006D00650001004C0069006E0065003200
      3400010001000D000A007000700044004200430061006C006300360038002E00
      44006100740061004600690065006C00640001004C0053004500430054000100
      01000D000A007000700044004200430061006C006300360038002E0055007300
      650072004E0061006D006500010044004200430061006C006300310030003400
      010001000D000A00700070004C006100620065006C003100370037002E005500
      7300650072004E0061006D00650001004F004300550030003000320001000100
      0D000A00700070004C006100620065006C003100370038002E00550073006500
      72004E0061006D0065000100440043005500300030003200010001000D000A00
      700070004C006100620065006C003100370039002E0055007300650072004E00
      61006D00650001004C006100620065006C0036003300010001000D000A007000
      70004C0069006E006500360039002E0055007300650072004E0061006D006500
      01004C0069006E00650032003500010001000D000A00700070004C0061006200
      65006C003100380030002E0055007300650072004E0061006D00650001004C00
      6100620065006C0036003500010001000D000A0070007000470072006F007500
      700034002E0042007200650061006B004E0061006D00650001004C0049004E00
      4500010001000D000A0070007000470072006F007500700034002E0055007300
      650072004E0061006D0065000100470072006F00750070003100010001000D00
      0A00700070005300680061007000650035002E0055007300650072004E006100
      6D0065000100530068006100700065003300010001000D000A00700070004C00
      6100620065006C003100380032002E0055007300650072004E0061006D006500
      01004C006100620065006C0034003000010001000D000A00700070004C006100
      620065006C003100380033002E0055007300650072004E0061006D0065000100
      4C006100620065006C0034003200010001000D000A00700070004C0061006200
      65006C003100380034002E0055007300650072004E0061006D00650001004C00
      6100620065006C0034003400010001000D000A00700070004C00610062006500
      6C003100380035002E0055007300650072004E0061006D006500010053003000
      3100010001000D000A00700070004C006100620065006C003100380036002E00
      55007300650072004E0061006D0065000100530030003200010001000D000A00
      700070004C006100620065006C003100380037002E0055007300650072004E00
      61006D0065000100730030003300010001000D000A0070007000440042004300
      61006C006300380030002E0044006100740061004600690065006C0064000100
      4C005300450043005400010001000D000A007000700044004200430061006C00
      6300380030002E0055007300650072004E0061006D0065000100440042004300
      61006C00630031003000010001000D000A00700070004C0069006E0065003700
      30002E0055007300650072004E0061006D00650001004C0069006E0065003100
      3700010001000D000A00700070004C0069006E006500370031002E0055007300
      650072004E0061006D00650001004C0069006E00650031003800010001000D00
      0A00700070004C006100620065006C003100380038002E005500730065007200
      4E0061006D00650001006F0063007500300030003100010001000D000A007000
      70004C006100620065006C003100380039002E0055007300650072004E006100
      6D0065000100640063007500300030003100010001000D000A00700070004C00
      69006E006500350033002E0055007300650072004E0061006D00650001004C00
      69006E00650035003300010001000D000A007000700042004400450050006900
      700065006C0069006E00650032002E0055007300650072004E0061006D006500
      010042004400450050006900700065006C0069006E0065003200010001000D00
      0A0043006C00690065006E007400440061007400610053006500740034002E00
      43006F006D006D0061006E00640054006500780074000100730065006C006500
      6300740020002A002000660072006F006D0020007700650065006B0035003200
      5F0074006D0070005F003100010001000D000A0043006C00690065006E007400
      440061007400610053006500740034002E00500072006F007600690064006500
      72004E0061006D00650001006400730070007300630068006500640075006C00
      6500010001000D000A0053006100760065004400690061006C006F0067003100
      2E00460069006C0074006500720001002A002E0078006C0073007C002A002E00
      78006C007300010001000D000A00730074004C006F00630061006C0065007300
      5F0055006E00690063006F00640065000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A004400420047007200690064004500680031002E0043006F006C0075006D00
      6E0073005B0030005D002E005400690074006C0065002E004300610070007400
      69006F006E000100430061006C0065006E006400610072007C00440061007400
      6500010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B0031005D002E005400690074006C0065002E00
      430061007000740069006F006E000100430061006C0065006E00640061007200
      7C0057006B00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0032005D002E005400690074006C00
      65002E00430061007000740069006F006E000100430061006C0065006E006400
      610072007C0048006F006C00690019001A002D0064006100790019001A002800
      7200650066002900010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B0033005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100500072006F0064007500
      6300740069006F006E00200053006900740065007C0043006F0075006E001900
      1A002D00740072007900010001000D000A004400420047007200690064004500
      680031002E0043006F006C0075006D006E0073005B0034005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100500072006F006400
      75006300740069006F006E00200053006900740065007C004600740079000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B0035005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100500072006F00640075006300740069006F006E00
      200053006900740065007C0057007300010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0036005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005000
      72006F00640075006300740069006F006E00200053006900740065007C004C00
      69006E006500010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B0037005D002E005400690074006C00
      65002E00430061007000740069006F006E00010057006F0072006B0069006E00
      67002000530065006300740069006F006E0020004800720073007C0053006800
      69006600740019001A0043006F0064006500010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003800
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      57006F0072006B0069006E0067002000530065006300740069006F006E002000
      4800720073007C00540074006C00010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B0039005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010057006F00
      72006B0069006E0067002000530065006300740069006F006E00200048007200
      73007C0042007900200050006F007200740069006F006E007C004E0031000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B00310030005D002E005400690074006C0065002E004300
      61007000740069006F006E00010057006F0072006B0069006E00670020005300
      65006300740069006F006E0020004800720073007C0042007900200050006F00
      7200740069006F006E007C004E003200010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0031003100
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      57006F0072006B0069006E0067002000530065006300740069006F006E002000
      4800720073007C0042007900200050006F007200740069006F006E007C004F00
      540031002B003200010001000D000A0044004200470072006900640045006800
      31002E0043006F006C0075006D006E0073005B00310032005D002E0054006900
      74006C0065002E00430061007000740069006F006E00010057006F0072006B00
      69006E0067002000530065006300740069006F006E0020004800720073007C00
      50006F007200740069006F006E0020002D0020005300740061006E0064006100
      720064002000280072006500660029007C005300680069006600740020002800
      32006E00640029007C004E003100010001000D000A0044004200470072006900
      64004500680031002E0043006F006C0075006D006E0073005B00310033005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005000
      72006F0064007500630074006900760065002000530065006300740069006F00
      6E00200048007200730020002D00200049006E002D006C0069006E0065007C00
      49006E002D006C0069006E00650019001A002D00200045006600660020006300
      61006C00630075006C006100740069006F006E00200065006C0065006D006500
      6E00740073007C004E006F0072006D0061006C0020002B0020004F0054007C00
      4400650066002E0019001A00280061002900010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003100
      34005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100500072006F00640075006300740069007600650020005300650063007400
      69006F006E00200048007200730020002D00200049006E002D006C0069006E00
      65007C0049006E002D006C0069006E00650019001A002D002000450066006600
      2000630061006C00630075006C006100740069006F006E00200065006C006500
      6D0065006E00740073007C004E006F0072006D0061006C0020002B0020004F00
      54007C0050006C0061006E00010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00310035005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010050007200
      6F0064007500630074006900760065002000530065006300740069006F006E00
      200048007200730020002D00200049006E002D006C0069006E0065007C004900
      6E002D006C0069006E00650019001A002D002000450066006600200063006100
      6C00630075006C006100740069006F006E00200065006C0065006D0065006E00
      740073007C004E006F0072006D0061006C0020002B0020004F0054007C004100
      63007400750061006C0019001A0064003D0061002D0062002D00630001000100
      0D000A004400420047007200690064004500680031002E0043006F006C007500
      6D006E0073005B00310036005D002E005400690074006C0065002E0043006100
      7000740069006F006E000100500072006F006400750063007400690076006500
      2000530065006300740069006F006E00200048007200730020002D0020004900
      6E002D006C0069006E0065007C0049006E002D006C0069006E00650019001A00
      2D0020004500660066002000630061006C00630075006C006100740069006F00
      6E00200065006C0065006D0065006E00740073007C004300730054007C005000
      6C0061006E00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00310037005D002E00540069007400
      6C0065002E00430061007000740069006F006E000100500072006F0064007500
      630074006900760065002000530065006300740069006F006E00200048007200
      730020002D00200049006E002D006C0069006E0065007C0049006E002D006C00
      69006E00650019001A002D0020004500660066002000630061006C0063007500
      6C006100740069006F006E00200065006C0065006D0065006E00740073007C00
      4300730054007C00410063007400750061006C00010001000D000A0044004200
      47007200690064004500680031002E0043006F006C0075006D006E0073005B00
      310038005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004E006F006E002000500072006F006400750063007400690076006500
      2000530065006300740069006F006E00200048007200730020002D0020004F00
      660066002D006C0069006E0065007C0050006C0061006E006E00650064002000
      4F00660066002D006C0069006E00650019001A002D0020006900730020007200
      6500670075006C00610072002000740069006D006500200063006F006E007300
      75006D0065007C0050006C0061006E007C00540074006C00010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B00310039005D002E005400690074006C0065002E004300610070007400
      69006F006E0001004E006F006E002000500072006F0064007500630074006900
      760065002000530065006300740069006F006E00200048007200730020002D00
      20004F00660066002D006C0069006E0065007C0050006C0061006E006E006500
      640020004F00660066002D006C0069006E00650019001A002D00200069007300
      200072006500670075006C00610072002000740069006D006500200063006F00
      6E00730075006D0065007C0050006C0061006E007C0052006500610073006F00
      6E00200043006F00640065002F0053006500630074002E00010001000D000A00
      4400420047007200690064004500680031002E0043006F006C0075006D006E00
      73005B00320030005D002E005400690074006C0065002E004300610070007400
      69006F006E0001004E006F006E002000500072006F0064007500630074006900
      760065002000530065006300740069006F006E00200048007200730020002D00
      20004F00660066002D006C0069006E0065007C0050006C0061006E006E006500
      640020004F00660066002D006C0069006E00650019001A002D00200069007300
      200072006500670075006C00610072002000740069006D006500200063006F00
      6E00730075006D0065007C004100630074002E0019001A002800620029007C00
      540074006C00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00320031005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001004E006F006E0020005000
      72006F0064007500630074006900760065002000530065006300740069006F00
      6E00200048007200730020002D0020004F00660066002D006C0069006E006500
      7C0050006C0061006E006E006500640020004F00660066002D006C0069006E00
      650019001A002D00200069007300200072006500670075006C00610072002000
      740069006D006500200063006F006E00730075006D0065007C00410063007400
      2E0019001A002800620029007C0052006500610073006F006E00200043006F00
      640065002F0053006500630074002E00010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0032003200
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      4E006F006E002000500072006F00640075006300740069007600650020005300
      65006300740069006F006E00200048007200730020002D0020004F0066006600
      2D006C0069006E0065007C0050006C0061006E006E006500640020004F006600
      66002D006C0069006E00650019001A002D002000690073002000720065006700
      75006C00610072002000740069006D006500200063006F006E00730075006D00
      65007C004300550019001A004C006F00730073002500010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00320033005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001004E006F006E002000500072006F00640075006300740069007600
      65002000530065006300740069006F006E00200048007200730020002D002000
      4F00660066002D006C0069006E0065007C004E006F006E00200070006C006100
      6E0020004F00660066002D006C0069006E00650019001A002D00200069007300
      200075006E0066006F00720065007300650065002000740069006D0065002000
      63006F006E00730075006D0065007C004400650066007C00540074006C000100
      01000D000A004400420047007200690064004500680031002E0043006F006C00
      75006D006E0073005B00320034005D002E005400690074006C0065002E004300
      61007000740069006F006E0001004E006F006E002000500072006F0064007500
      630074006900760065002000530065006300740069006F006E00200048007200
      730020002D0020004F00660066002D006C0069006E0065007C004E006F006E00
      200070006C0061006E0020004F00660066002D006C0069006E00650019001A00
      2D00200069007300200075006E0066006F007200650073006500650020007400
      69006D006500200063006F006E00730075006D0065007C004400650066007C00
      52006500610073006F006E00200043006F00640065002F005300650063007400
      2E00010001000D000A004400420047007200690064004500680031002E004300
      6F006C0075006D006E0073005B00320035005D002E005400690074006C006500
      2E00430061007000740069006F006E0001004E006F006E002000500072006F00
      64007500630074006900760065002000530065006300740069006F006E002000
      48007200730020002D0020004F00660066002D006C0069006E0065007C004E00
      6F006E00200070006C0061006E0020004F00660066002D006C0069006E006500
      19001A002D00200069007300200075006E0066006F0072006500730065006500
      2000740069006D006500200063006F006E00730075006D0065007C0050006C00
      61006E007C00540074006C00010001000D000A00440042004700720069006400
      4500680031002E0043006F006C0075006D006E0073005B00320036005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001004E006F00
      6E002000500072006F0064007500630074006900760065002000530065006300
      740069006F006E00200048007200730020002D0020004F00660066002D006C00
      69006E0065007C004E006F006E00200070006C0061006E0020004F0066006600
      2D006C0069006E00650019001A002D00200069007300200075006E0066006F00
      720065007300650065002000740069006D006500200063006F006E0073007500
      6D0065007C0050006C0061006E007C0052006500610073006F006E0020004300
      6F00640065002F0053006500630074002E00010001000D000A00440042004700
      7200690064004500680031002E0043006F006C0075006D006E0073005B003200
      37005D002E005400690074006C0065002E00430061007000740069006F006E00
      01004E006F006E002000500072006F0064007500630074006900760065002000
      530065006300740069006F006E00200048007200730020002D0020004F006600
      66002D006C0069006E0065007C004E006F006E00200070006C0061006E002000
      4F00660066002D006C0069006E00650019001A002D0020006900730020007500
      6E0066006F00720065007300650065002000740069006D006500200063006F00
      6E00730075006D0065007C004100630074002E0019001A002800630029007C00
      540074006C00010001000D000A00440042004700720069006400450068003100
      2E0043006F006C0075006D006E0073005B00320038005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001004E006F006E0020005000
      72006F0064007500630074006900760065002000530065006300740069006F00
      6E00200048007200730020002D0020004F00660066002D006C0069006E006500
      7C004E006F006E00200070006C0061006E0020004F00660066002D006C006900
      6E00650019001A002D00200069007300200075006E0066006F00720065007300
      650065002000740069006D006500200063006F006E00730075006D0065007C00
      4100630074002E0019001A002800630029007C0052006500610073006F006E00
      200043006F00640065002F0053006500630074002E00010001000D000A004400
      420047007200690064004500680031002E0043006F006C0075006D006E007300
      5B00320039005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001004E006F006E002000500072006F00640075006300740069007600
      65002000530065006300740069006F006E00200048007200730020002D002000
      4F00660066002D006C0069006E0065007C004E006F006E00200070006C006100
      6E0020004F00660066002D006C0069006E00650019001A002D00200069007300
      200075006E0066006F00720065007300650065002000740069006D0065002000
      63006F006E00730075006D0065007C004100640064006500640019001A004300
      550019001A004C006F00730073002500010001000D000A004400420047007200
      690064004500680031002E0043006F006C0075006D006E0073005B0033003000
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      460069006E0061006C0019001A004300550019001A004C006F00730073002500
      19001A0028006500780063006C002E0019001A00430073005400290001000100
      0D000A007700650065006B00350032002E0049006E0064006500780044006500
      660073005B0030005D002E004600690065006C00640073000100640061007400
      650031003B006C0069006E006500010001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      660072006D006300750072007200630061006C00010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0044006100
      74006500450064006900740031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0044006100740065004500
      64006900740032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003100
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A006C0069006E006500300031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C00310034000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006400610074006500300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310036000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      6400610074006500300032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C00310038000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A0070007000530079007300740065006D005600
      610072006900610062006C00650031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C00310039000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C0065003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00320030000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C00330038000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A007400730068006F007000300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310033000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004C006100620065006C00310035000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C00310037000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C00320031000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0032003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0032003700010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0032003800010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00320035000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C00330033000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0078003000300031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004C006100620065006C00340037000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C00340038000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C00340039000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0035003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0035003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0035003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00350033000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C00350034000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003500
      35000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003500360001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003500380001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00350039000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C00360031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      360032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00360034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00360036000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004C006100620065006C00360037000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00740073007400
      300031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00370031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00350037000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004C006100620065006C00360030000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C00360039000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C00380033000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0038003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0038003500010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0038003600010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00380037000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C00390033000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003900
      34000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003900360001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003900370001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00390038000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C003100310032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00660074007900300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0037003000010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0032003400010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00390039000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100310036000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A0073006A0030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003300350001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007300
      6A00300033000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0031003400
      35000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0073006A00300035000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C003100340037000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0073006A00300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0031003400390001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0073006A003000300033000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100350030000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A0073006A0030003000350001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003300300001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00330031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      540065007800740039000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200540065007800
      7400310030000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004400420054006500780074003100
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070007000440042005400650078007400310032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200540065007800740031003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004400420054006500780074003100360001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      7000440042005400650078007400310035000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00780030003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070007000440042005400650078007400310039000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200540065007800740032003000010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004400420054006500780074003200310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      7000440042005400650078007400320032000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004400
      42005400650078007400320033000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0070007000440042005400
      650078007400320034000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200540065007800
      7400320035000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004400420054006500780074003200
      36000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070007000440042005400650078007400320037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A006400640063007500300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      44004200540065007800740034000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0070007000440042005400
      65007800740035000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      310034000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400640066003000310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006400
      64006600300032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      360031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006F00740074006C00300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00670072006F00730073003000300032000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004400
      4200430061006C006300310038000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0070007000440042004300
      61006C006300310039000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300320030000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00780030003000340001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007400
      74006C003000300032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300320033000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003200
      34000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300320035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630032003600010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007000700044004200430061006C0063003200370001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      700044004200430061006C006300320038000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00440043005500
      3000300032000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0036003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0036003500010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004D0065006D006F0031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C00360038000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300360032000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003800
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00660064006600300031000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00660064006600
      300032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A0074006D00610072006B0073003000310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003100310034000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004D0065006D006F0032000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0070007000440042004300
      61006C00630033000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A007000700044004200430061006C006300
      34000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300350001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00670072006F0073007300300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00340030000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C00340032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003400
      34000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A005300300031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A005300300032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007300300033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00780030003000330001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00740074006C003000300031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      430061006C00630039000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300310030000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003100
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300310032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630031003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007000700044004200430061006C0063003100340001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006F00
      740074006C003000300031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00640063007500300030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A007000700044004200430061006C0063003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007000700044004200430061006C0063003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00320032000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0073003000340001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A006F003000300031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00620030003000310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0064003000300031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A006E0031003000300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A006E0032003000300031000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006F00310030003000
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A006F003200300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A006E003000
      300031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400300030003100300031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      770063003000300031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006100300030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0072003000300031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006500300030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00640063003000300031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A006C0030003000310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A007A003000300031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A006F0030003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0062003000300032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00640030003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A006E0031003000300032000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A006E003200300030003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A006F0031003000300032000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A006F0032003000
      300032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006E00300030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0064003000
      30003100300032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0077006300300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A006C003000300032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007A00300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0061003000300032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007200300030003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0065003000300032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006400630030003000320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A006F003000300033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00620030003000330001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0064003000300033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A006E0031003000300033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A006E0032003000300033000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006F00310030003000
      33000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A006F003200300030003300010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A006E003000
      300033000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400300030003100300033000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      770063003000300033000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006C00300030003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007A003000300033000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006100300030003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0072003000300033000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A006500300030003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00640063003000300033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00730064006600300031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00730064006600300032000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007300640066003100
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0073006400660031003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0073006400
      6600320031000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00730064006600330031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      730064006600330032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007300640066003200320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A006D006100720073006B00300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      440042005400650078007400360034000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      5400650078007400310037000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420054006500
      78007400320039000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      330031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A007000700044004200540065007800740033003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A0078003000300035000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      5400650078007400330038000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420054006500
      78007400340036000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      340039000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A007000700044004200540065007800740035003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004400420054006500780074003500320001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0070007000440042005400650078007400350033000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      7000700044004200540065007800740035003600010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      440042005400650078007400350037000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      5400650078007400350038000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420054006500
      78007400350039000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      360030000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00330036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007300720064006900660030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0073007200
      640069006600300032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200540065007800
      7400350035000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0037003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0037003900010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0070007000530079007300740065006D005600610072006900610062006C00
      650033000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00380030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A0070007000530079007300740065006D0056006100720069006100
      62006C00650034000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003800
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100300034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310030003700010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003000380001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C003100300039000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C003100310030000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100310035000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007900300030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003100380001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C003100310039000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C003100320030000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100320031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      3100320032000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0031003200
      33000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100320034000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310032003600010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003200370001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C003100320038000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C003100320039000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100330030000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      3100330031000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0031003300
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100330033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310033003400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003300360001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C003100330038000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C003100330039000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100340030000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      370033000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A006400740030003000310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00370035000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006400740030003000
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003800380001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003800390001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00390030000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C00390031000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      390032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00390035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310030003100010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0032003600010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0066007400
      79003000300032000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0057006F0072006B00730068006F007000
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A0077006B007300300030003100010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00320039000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C00370034000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003800
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100300030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310031003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0033003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      440042005400650078007400330030000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      5400650078007400330033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420054006500
      78007400330034000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      330035000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A007000700044004200540065007800740033003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A0079003000300032000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      5400650078007400340030000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420054006500
      78007400340031000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A0070007000440042005400650078007400
      340032000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A007000700044004200540065007800740034003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004400420054006500780074003400340001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0070007000440042005400650078007400340035000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      7000700044004200540065007800740034003700010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      440042005400650078007400340038000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A006400640063007500
      300031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A007000700044004200540065007800740036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200540065007800740038000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      7000640061007900300031000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00640069006600660030003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00640069006600660030003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C00370036000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0070007000440042004300
      61006C006300340039000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300350030000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003500
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300350032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630035003300010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A0079003000300034000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300350035000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003500
      36000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300350037000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630035003800010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007000700044004200430061006C0063003500390001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      700044004200430061006C006300360030000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004400
      4200430061006C006300360031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0041004400430055003000
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300360035000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630036003900010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A006400690066006600320031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0064006900660066003200
      32000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A007000700044004200430061006C006300330036000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630033003700010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007000700044004200430061006C0063003300380001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      700044004200430061006C006300330039000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004400
      4200430061006C006300340030000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0079003000300033000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200430061006C00630034003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A007000700044004200430061006C0063003400330001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      700044004200430061006C006300340034000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004400
      4200430061006C006300340035000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A0070007000440042004300
      61006C006300340036000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700044004200430061006C00
      6300340037000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003400
      38000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0073006400630075003000310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00370038000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A007000700044004200
      430061006C006300360033000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420043006100
      6C006300360036000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A007000700044004200430061006C006300
      36000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0064006900660066003100310001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A006400
      690066006600310032000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      31000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0033000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C0034000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      35000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003600010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0037000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C0038000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A007000700053007900730074006500
      6D005600610072006900610062006C0065003500010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C0039000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070005300790073007400
      65006D005600610072006900610062006C006500360001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C00310030000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C003100300032000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C003100300033000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003100
      300035000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00310030003600
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0031003100310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003100340031000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004C006100620065006C00310034003200010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C003100340033000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C003100340034000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C003100340038000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003100
      350034000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00700070004C006100620065006C00310035003500
      0100440045004600410055004C0054005F004300480041005200530045005400
      010001000D000A00700070004C006100620065006C0031003500360001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A00700070004C006100620065006C003100350037000100440045004600
      410055004C0054005F004300480041005200530045005400010001000D000A00
      700070004C006100620065006C00310036003800010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A0070007000
      4C006100620065006C003100360039000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C003100370030000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004C00610062006500
      6C003100370033000100440045004600410055004C0054005F00430048004100
      5200530045005400010001000D000A00700070004C006100620065006C003700
      37000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070007000440042005400650078007400310001004400
      45004600410055004C0054005F00430048004100520053004500540001000100
      0D000A0070007000440042005400650078007400320001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      700044004200540065007800740033000100440045004600410055004C005400
      5F004300480041005200530045005400010001000D000A00700070004C006100
      620065006C003100370034000100440045004600410055004C0054005F004300
      480041005200530045005400010001000D000A00700070004400420054006500
      7800740037000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004400420054006500780074003200
      38000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A0070007000440042005400650078007400350030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A007000700044004200540065007800740035003400010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003700350001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C003100370036000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004400
      4200430061006C006300360038000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100370037000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      3100370038000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00700070004C006100620065006C0031003700
      39000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100380030000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310038003200010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00700070004C006100620065006C0031003800330001004400450046004100
      55004C0054005F004300480041005200530045005400010001000D000A007000
      70004C006100620065006C003100380034000100440045004600410055004C00
      54005F004300480041005200530045005400010001000D000A00700070004C00
      6100620065006C003100380035000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00700070004C0061006200
      65006C003100380036000100440045004600410055004C0054005F0043004800
      41005200530045005400010001000D000A00700070004C006100620065006C00
      3100380037000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A007000700044004200430061006C0063003800
      30000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00700070004C006100620065006C003100380038000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      01000D000A00700070004C006100620065006C00310038003900010044004500
      4600410055004C0054005F004300480041005200530045005400010001000D00
      0A00}
  end
end
