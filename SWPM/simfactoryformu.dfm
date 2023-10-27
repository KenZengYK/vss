object frmsimfactory: Tfrmsimfactory
  Left = 0
  Top = 115
  Caption = 'Capacity Planning (Sim Factory)'
  ClientHeight = 0
  ClientWidth = 116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 116
    Height = 0
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitWidth = 792
    ExplicitHeight = 441
    object TabSheet1: TTabSheet
      Caption = 'Factors Setting'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 108
        Height = 137
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 784
        object Label1: TLabel
          Left = 24
          Top = 8
          Width = 38
          Height = 13
          Caption = 'Factory '
        end
        object Label2: TLabel
          Left = 168
          Top = 8
          Width = 47
          Height = 13
          Caption = 'Customer '
        end
        object Label3: TLabel
          Left = 344
          Top = 8
          Width = 68
          Height = 13
          Caption = 'Product Code '
        end
        object Label8: TLabel
          Left = 24
          Top = 120
          Width = 79
          Height = 13
          Caption = 'Select Line(s) : - '
        end
        object SpeedButton2: TSpeedButton
          Left = 632
          Top = 8
          Width = 129
          Height = 22
          Caption = 'Select Prior Version'
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
          Layout = blGlyphRight
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 560
          Top = 48
          Width = 9
          Height = 21
          Date = 39573.502066331000000000
          Time = 39573.502066331000000000
          TabOrder = 7
          Visible = False
        end
        object ComboBox1: TComboBox
          Left = 64
          Top = 8
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Text = 'SL'
          OnChange = ComboBox1Change
          Items.Strings = (
            'SL'
            'KB')
        end
        object ComboBox2: TComboBox
          Left = 216
          Top = 8
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object ComboBox3: TComboBox
          Left = 416
          Top = 8
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'B'
          Items.Strings = (
            'P'
            'B'
            'K'
            'U')
        end
        object GroupBox1: TGroupBox
          Left = 24
          Top = 32
          Width = 257
          Height = 41
          Caption = 'Reference Period'
          TabOrder = 3
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 26
            Height = 13
            Caption = 'From '
          end
          object Label5: TLabel
            Left = 144
            Top = 16
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object DateEdit1: TDateEdit
            Left = 40
            Top = 16
            Width = 89
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
            Text = '01/  /    '
          end
          object DateEdit2: TDateEdit
            Left = 160
            Top = 16
            Width = 89
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
            Text = '01/  /    '
          end
        end
        object GroupBox2: TGroupBox
          Left = 288
          Top = 32
          Width = 281
          Height = 41
          Caption = 'Sim Period'
          TabOrder = 4
          object Label6: TLabel
            Left = 8
            Top = 16
            Width = 26
            Height = 13
            Caption = 'From '
          end
          object Label7: TLabel
            Left = 152
            Top = 16
            Width = 13
            Height = 13
            Caption = 'To'
          end
          object SpinEdit1: TSpinEdit
            Left = 40
            Top = 16
            Width = 65
            Height = 22
            MaxValue = 2020
            MinValue = 2008
            TabOrder = 0
            Value = 2008
          end
          object SpinEdit2: TSpinEdit
            Left = 104
            Top = 16
            Width = 41
            Height = 22
            MaxValue = 53
            MinValue = 1
            TabOrder = 1
            Value = 1
          end
          object SpinEdit3: TSpinEdit
            Left = 168
            Top = 16
            Width = 65
            Height = 22
            MaxValue = 2020
            MinValue = 2008
            TabOrder = 2
            Value = 2008
          end
          object SpinEdit4: TSpinEdit
            Left = 232
            Top = 16
            Width = 41
            Height = 22
            MaxValue = 53
            MinValue = 1
            TabOrder = 3
            Value = 1
          end
        end
        object xh1: TRadioGroup
          Left = 24
          Top = 72
          Width = 257
          Height = 41
          Caption = 'Sect Hrs (Weekly)'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            '128 sect hrs'
            'Based on calendar ')
          TabOrder = 5
        end
        object xh2: TRadioGroup
          Left = 288
          Top = 72
          Width = 281
          Height = 41
          Caption = 'WF'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Based on 9217/6'
            'Based on line profile')
          TabOrder = 6
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 137
        Width = 108
        Height = 231
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 784
        object Splitter1: TSplitter
          Left = 313
          Top = 0
          Width = 1
          Height = 231
        end
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 313
          Height = 231
          Align = alLeft
          AllowedOperations = [alopUpdateEh]
          DataSource = DataSource1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
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
              FieldName = 'SEL'
              Footer.ValueType = fvtStaticText
              Footers = <
                item
                  ValueType = fvtStaticText
                end>
              Title.Caption = 'Selection'
              Width = 47
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'TSHOP'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Workshop'
              Width = 66
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'PLINE'
              Footer.ValueType = fvtStaticText
              Footers = <
                item
                  ValueType = fvtStaticText
                end>
              ReadOnly = True
              Title.Caption = 'Line'
              Width = 59
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'CUST'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Customer'
              Width = 53
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'PTYP'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Prod Code'
              Width = 41
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 369
          Top = 0
          Width = 415
          Height = 231
          Align = alClient
          AllowedOperations = [alopUpdateEh]
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
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
              Color = 12251117
              EditButtons = <>
              FieldName = 'PLINE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Line'
              Width = 53
            end
            item
              Color = 12251117
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'ADPT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Adaptability'
              Width = 59
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'PGRP'
              Footers = <>
              Title.Caption = 'Customer'
              Width = 49
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'FLAG6'
              Footers = <>
              Title.Caption = 'Prod Code'
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'YR1'
              Footers = <>
              Title.Caption = 'Year'
              Width = 36
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'WK1'
              Footers = <>
              Title.Caption = 'Week'
              Width = 32
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'SECT1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sect Hrs|(128 sect hrs per week)'
              Width = 65
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'SECT2'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sect Hrs|(Calendar)'
              Width = 57
            end
            item
              Color = 12251117
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'WF1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'WF|(9217/6)'
              Width = 56
            end
            item
              Color = 12251117
              EditButtons = <>
              FieldName = 'WF2'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'WF|(Line profile)'
              Width = 63
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel7: TPanel
          Left = 314
          Top = 0
          Width = 55
          Height = 231
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object SpeedButton1: TSpeedButton
            Left = 16
            Top = 96
            Width = 23
            Height = 22
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
            OnClick = SpeedButton1Click
          end
          object SpeedButton3: TSpeedButton
            Left = 16
            Top = 216
            Width = 23
            Height = 22
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
            OnClick = SpeedButton3Click
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = -42
        Width = 108
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 368
        ExplicitWidth = 784
        object BitBtn1: TBitBtn
          Left = 24
          Top = 8
          Width = 113
          Height = 25
          Caption = 'Start to calculate  >>'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sim Capacity Planning'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 368
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 784
          Height = 368
          Align = alClient
          AllowedOperations = [alopUpdateEh]
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          PopupMenu = PopupMenu1
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
              Color = 13365228
              EditButtons = <>
              FieldName = 'TPLANT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Factory'
              Width = 44
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'TSHOP'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Workshop'
              Width = 54
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'PLINE'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Line'
              Width = 49
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'PGRP'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Customer'
              Width = 47
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'FLAG6'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Prod Code'
            end
            item
              Color = 13365228
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'ADPT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Adaptability'
              Width = 60
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'REFDT1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Reference|Period|From'
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'REFDT2'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Reference|Period|To'
            end
            item
              Color = 13365228
              DisplayFormat = '0.0000'
              EditButtons = <>
              FieldName = 'REFSAH'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Reference|SHV'
              Width = 42
            end
            item
              Color = 13365228
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'REFPEFF'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Reference|Capacity Lost'
              Width = 50
            end
            item
              Color = 13365228
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'REFEFF'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Reference|Eff%'
              Width = 40
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'YR1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sim Period|From|Year'
              Width = 32
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'WK1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sim Period|From|Week'
              Width = 32
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'YR2'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sim Period|To|Year'
              Width = 32
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'WK2'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sim Period|To|Week'
              Width = 32
            end
            item
              Color = 13365228
              DisplayFormat = '#0'
              EditButtons = <>
              FieldName = 'SECT1'
              Footer.DisplayFormat = '#0'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sect Hrs|(128 Sect Hrs per Week)'
              Width = 44
            end
            item
              Color = 13365228
              DisplayFormat = '#0'
              EditButtons = <>
              FieldName = 'SECT2'
              Footer.DisplayFormat = '#0'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Sect Hrs|(Calendar)'
              Width = 53
            end
            item
              Color = 13365228
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'WF1'
              Footer.DisplayFormat = '0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'WF|(9217/6)'
              Width = 46
            end
            item
              Color = 13365228
              DisplayFormat = '#0'
              EditButtons = <>
              FieldName = 'WF2'
              Footer.DisplayFormat = '#0'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'WF|(Line Profile)'
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'RATIO1'
              Footers = <>
              Title.Caption = 'Learning Curve|New Style|Ratio'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'FLR1'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|New Style|PLC From'
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'TLR1'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|New Style|PLC To'
              Visible = False
              Width = 28
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'RATIO2'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Learning Curve|Repeated Style|Ratio'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'FLR2'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|Repeated Style|PLC From'
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'TLR2'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|Repeated Style|PLC To'
              Visible = False
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'RATIO3'
              Footers = <>
              Title.Caption = 'Learning Curve|Small Order|Ratio'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'FLR3'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|Small Order|PLC From'
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'TLR3'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|Small Order|PLC To'
              Visible = False
              Width = 28
            end
            item
              Color = 13365228
              EditButtons = <>
              FieldName = 'RATIO4'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Learning Curve|Big Order|Ratio'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'FLR4'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|Big Order|PLC From'
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'TLR4'
              Footers = <>
              PickList.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
              Title.Caption = 'Learning Curve|Big Order|PLC To'
              Visible = False
              Width = 28
            end
            item
              DisplayFormat = '0.0000'
              EditButtons = <>
              FieldName = 'PSAH'
              Footers = <>
              Title.Caption = 'Default|SHV'
              Width = 44
            end
            item
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'PEFF'
              Footers = <>
              Title.Caption = 'Default|Capacity Utilization'
              Width = 51
            end
            item
              Color = 13365228
              DisplayFormat = '0.00'
              EditButtons = <>
              FieldName = 'LEFF'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Default|Eff%'
              Width = 44
            end
            item
              Color = 13365228
              DisplayFormat = '#0'
              EditButtons = <>
              FieldName = 'CAP'
              Footer.DisplayFormat = '#0'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Capacity'
              Width = 47
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 368
        Width = 784
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn2: TBitBtn
          Left = 24
          Top = 8
          Width = 153
          Height = 25
          Caption = 'Change Sect hr by phase'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
            000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
            FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
            00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
            00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
            FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
            0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
            05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
            55557F7777777555555500000005555555557777777555555555}
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 176
          Top = 8
          Width = 73
          Height = 25
          Caption = 'Save'
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
            2222200000000002222203300008030222220330000803000222033000000303
            0222033333333303000203300000330303020308888803030302030888880303
            0302030888880003030203088888080303020000000000000302220308888808
            0302220000000000000222220308888808022222000000000002}
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 248
          Top = 8
          Width = 73
          Height = 25
          Caption = 'Confirm'
          DoubleBuffered = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
            00333337777777777733333308033308033333337F7F337F7F33333308033308
            033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
            7333333373F77733733333333088888033333333373FFFF73333333333000003
            3333333333777773333333333333333333333333333333333333}
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 320
          Top = 8
          Width = 97
          Height = 25
          Caption = 'Ratio Enquiry'
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000C40E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00222222222222
            2222222222222222422222222222222244222224242424444442222222222222
            4422222222222222422222222222222222220002220002222222000222000222
            2222080020800222222207002070022222220000000002222222208000802222
            2222220020022222222222002002222222222222222222222222}
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 416
          Top = 8
          Width = 73
          Height = 25
          Caption = 'Preview'
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
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 488
          Top = 8
          Width = 73
          Height = 25
          DoubleBuffered = True
          Kind = bkClose
          ParentDoubleBuffered = False
          TabOrder = 5
        end
      end
    end
  end
  object Query1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 232
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 264
  end
  object query3: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblline where pline='#39'T002'#39
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 296
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tblline_tmp'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query4AfterOpen
    BeforeEdit = Query4BeforeEdit
    AfterPost = Query4AfterPost
    Left = 328
    object Query4TM: TDateTimeField
      FieldName = 'TM'
    end
    object Query4PLINE: TStringField
      FieldName = 'PLINE'
      Size = 10
    end
    object Query4TPLANT: TStringField
      FieldName = 'TPLANT'
      Size = 10
    end
    object Query4TSHOP: TStringField
      FieldName = 'TSHOP'
      Size = 10
    end
    object Query4SEL: TBooleanField
      FieldName = 'SEL'
    end
    object Query4CUST: TStringField
      FieldName = 'CUST'
      Size = 10
    end
    object Query4PTYP: TStringField
      FieldName = 'PTYP'
      Size = 10
    end
    object Query4YR1: TIntegerField
      FieldName = 'YR1'
    end
    object Query4WK1: TIntegerField
      FieldName = 'WK1'
    end
    object Query4YR2: TIntegerField
      FieldName = 'YR2'
    end
    object Query4WK2: TIntegerField
      FieldName = 'WK2'
    end
    object Query4TWK: TIntegerField
      FieldName = 'TWK'
    end
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_simline'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterOpen = Query5AfterOpen
    AfterPost = Query5AfterPost
    Left = 360
    object Query5TM: TDateTimeField
      FieldName = 'TM'
    end
    object Query5PLINE: TStringField
      FieldName = 'PLINE'
      Size = 10
    end
    object Query5YR1: TIntegerField
      FieldName = 'YR1'
    end
    object Query5WK1: TIntegerField
      FieldName = 'WK1'
    end
    object Query5TPLANT: TStringField
      FieldName = 'TPLANT'
      Size = 10
    end
    object Query5TSHOP: TStringField
      FieldName = 'TSHOP'
      Size = 10
    end
    object Query5PGRP: TStringField
      FieldName = 'PGRP'
      Size = 10
    end
    object Query5FLAG6: TStringField
      FieldName = 'FLAG6'
      Size = 5
    end
    object Query5YR2: TIntegerField
      FieldName = 'YR2'
    end
    object Query5WK2: TIntegerField
      FieldName = 'WK2'
    end
    object Query5SECT1: TIntegerField
      FieldName = 'SECT1'
    end
    object Query5SECT2: TIntegerField
      FieldName = 'SECT2'
    end
    object Query5WF1: TFloatField
      FieldName = 'WF1'
    end
    object Query5WF2: TFloatField
      FieldName = 'WF2'
    end
    object Query5RATIO1: TFloatField
      FieldName = 'RATIO1'
      OnChange = Query5RATIO1Change
    end
    object Query5RATIO2: TFloatField
      FieldName = 'RATIO2'
    end
    object Query5RATIO3: TFloatField
      FieldName = 'RATIO3'
      OnChange = Query5RATIO1Change
    end
    object Query5RATIO4: TFloatField
      FieldName = 'RATIO4'
    end
    object Query5FLR1: TIntegerField
      FieldName = 'FLR1'
      OnChange = Query5RATIO1Change
    end
    object Query5TLR1: TIntegerField
      FieldName = 'TLR1'
      OnChange = Query5RATIO1Change
    end
    object Query5FLR2: TIntegerField
      FieldName = 'FLR2'
      OnChange = Query5RATIO1Change
    end
    object Query5TLR2: TIntegerField
      FieldName = 'TLR2'
      OnChange = Query5RATIO1Change
    end
    object Query5FLR3: TIntegerField
      FieldName = 'FLR3'
      OnChange = Query5RATIO1Change
    end
    object Query5TLR3: TIntegerField
      FieldName = 'TLR3'
      OnChange = Query5RATIO1Change
    end
    object Query5FLR4: TIntegerField
      FieldName = 'FLR4'
      OnChange = Query5RATIO1Change
    end
    object Query5TLR4: TIntegerField
      FieldName = 'TLR4'
      OnChange = Query5RATIO1Change
    end
    object Query5LEFF: TFloatField
      FieldName = 'LEFF'
    end
    object Query5ADPT: TFloatField
      FieldName = 'ADPT'
    end
    object Query5REFDT1: TDateField
      FieldName = 'REFDT1'
    end
    object Query5REFDT2: TDateField
      FieldName = 'REFDT2'
    end
    object Query5REFEFF: TFloatField
      FieldName = 'REFEFF'
    end
    object Query5REFSAH: TFloatField
      FieldName = 'REFSAH'
    end
    object Query5PSAH: TFloatField
      FieldName = 'PSAH'
      OnChange = Query5RATIO1Change
    end
    object Query5CAP: TFloatField
      FieldName = 'CAP'
    end
    object Query5CFM: TBooleanField
      FieldName = 'CFM'
    end
    object Query5VER: TIntegerField
      FieldName = 'VER'
    end
    object Query5LR1: TIntegerField
      FieldName = 'LR1'
    end
    object Query5LR2: TIntegerField
      FieldName = 'LR2'
    end
    object Query5LR3: TIntegerField
      FieldName = 'LR3'
    end
    object Query5LR4: TIntegerField
      FieldName = 'LR4'
    end
    object Query5LR5: TIntegerField
      FieldName = 'LR5'
    end
    object Query5LR6: TIntegerField
      FieldName = 'LR6'
    end
    object Query5LR7: TIntegerField
      FieldName = 'LR7'
    end
    object Query5LR8: TIntegerField
      FieldName = 'LR8'
    end
    object Query5LR9: TIntegerField
      FieldName = 'LR9'
    end
    object Query5LR10: TIntegerField
      FieldName = 'LR10'
      OnChange = Query5RATIO1Change
    end
    object Query5LE1: TFloatField
      FieldName = 'LE1'
    end
    object Query5LE2: TFloatField
      FieldName = 'LE2'
    end
    object Query5LE3: TFloatField
      FieldName = 'LE3'
    end
    object Query5LE4: TFloatField
      FieldName = 'LE4'
    end
    object Query5LE5: TFloatField
      FieldName = 'LE5'
    end
    object Query5LE6: TFloatField
      FieldName = 'LE6'
    end
    object Query5LE7: TFloatField
      FieldName = 'LE7'
    end
    object Query5LE8: TFloatField
      FieldName = 'LE8'
    end
    object Query5LE9: TFloatField
      FieldName = 'LE9'
    end
    object Query5LE10: TFloatField
      FieldName = 'LE10'
    end
    object Query5XH1: TIntegerField
      FieldName = 'XH1'
    end
    object Query5XH2: TIntegerField
      FieldName = 'XH2'
    end
    object Query5PEFF: TFloatField
      FieldName = 'PEFF'
      OnChange = Query5RATIO1Change
    end
    object Query5REFPEFF: TFloatField
      FieldName = 'REFPEFF'
    end
  end
  object Query6: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_simline1'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 392
  end
  object DataSource1: TDataSource
    DataSet = Query4
    Left = 424
  end
  object DataSource2: TDataSource
    DataSet = Query5
    Left = 456
  end
  object DataSource3: TDataSource
    DataSet = Query6
    Left = 488
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource2
    UserName = 'DBPipeline1'
    Left = 520
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
    Left = 552
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity Planning (Sim Factory)   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 78052
        mmTop = 6085
        mmWidth = 90752
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 16669
        mmWidth = 10319
        BandType = 0
      end
      object fty001: TppLabel
        UserName = 'fty001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 16669
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Customer '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 31485
        mmTop = 16669
        mmWidth = 13229
        BandType = 0
      end
      object cust001: TppLabel
        UserName = 'cust001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 16669
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod Code '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 16669
        mmWidth = 14288
        BandType = 0
      end
      object prod001: TppLabel
        UserName = 'prod001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factory '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 83344
        mmTop = 16669
        mmWidth = 10319
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 13494
        mmLeft = 2381
        mmTop = 22490
        mmWidth = 278342
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ref Period From '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 95515
        mmTop = 16669
        mmWidth = 21696
        BandType = 0
      end
      object dt001: TppLabel
        UserName = 'dt001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/01/01 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 118004
        mmTop = 16669
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 16669
        mmWidth = 4233
        BandType = 0
      end
      object dt002: TppLabel
        UserName = 'dt002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/01/01 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 16669
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sim Period From '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 16669
        mmWidth = 22225
        BandType = 0
      end
      object wk001: TppLabel
        UserName = 'wk001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/01/01 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 16669
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'To '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 201877
        mmTop = 16669
        mmWidth = 4233
        BandType = 0
      end
      object wk002: TppLabel
        UserName = 'wk002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/01/01 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 206640
        mmTop = 16669
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Version'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 224103
        mmTop = 16669
        mmWidth = 9525
        BandType = 0
      end
      object ver001: TppLabel
        UserName = 'ver001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '2008/01/01 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 234950
        mmTop = 16669
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ws'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3704
        mmTop = 27781
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Line '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 12965
        mmTop = 27781
        mmWidth = 6138
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Adaptability '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 24871
        mmTop = 27781
        mmWidth = 15452
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reference '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52123
        mmTop = 23283
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SHV '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43392
        mmTop = 27781
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Eff% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 27781
        mmWidth = 6879
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
        mmHeight = 13229
        mmLeft = 11906
        mmTop = 22754
        mmWidth = 4233
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
        mmHeight = 13229
        mmLeft = 24077
        mmTop = 22754
        mmWidth = 4233
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
        mmHeight = 13229
        mmLeft = 40746
        mmTop = 22754
        mmWidth = 4233
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
        mmHeight = 13229
        mmLeft = 74877
        mmTop = 22490
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Sect Hr '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 76200
        mmTop = 27781
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'WF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 90752
        mmTop = 27781
        mmWidth = 4498
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 87577
        mmTop = 22490
        mmWidth = 4233
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 98954
        mmTop = 22754
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Learning Curve '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 158221
        mmTop = 23283
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'New Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 109273
        mmTop = 27781
        mmWidth = 13494
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
        mmHeight = 13229
        mmLeft = 233363
        mmTop = 22754
        mmWidth = 4233
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
        mmHeight = 13229
        mmLeft = 266965
        mmTop = 22754
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Default  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 246328
        mmTop = 23283
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Eff%  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 258763
        mmTop = 27781
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SHV  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 235744
        mmTop = 27781
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 267759
        mmTop = 27781
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Repeated Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 139171
        mmTop = 27781
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Small Order '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 27781
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Big Order '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 209286
        mmTop = 27781
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ratio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 31750
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC from '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 108744
        mmTop = 31750
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC to '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 122767
        mmTop = 31750
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ratio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 133615
        mmTop = 31750
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC from '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142346
        mmTop = 31750
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC to '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 156369
        mmTop = 31750
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ratio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 31750
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC from '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175948
        mmTop = 31750
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC to '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189971
        mmTop = 31750
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ratio '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200819
        mmTop = 31750
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC from '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 209021
        mmTop = 31750
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PLC to '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 223044
        mmTop = 31750
        mmWidth = 9525
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 99219
        mmTop = 26988
        mmWidth = 167746
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 41010
        mmTop = 26988
        mmWidth = 34131
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 51594
        mmTop = 27252
        mmWidth = 2381
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
        mmHeight = 8731
        mmLeft = 132821
        mmTop = 27252
        mmWidth = 2381
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
        mmHeight = 8731
        mmLeft = 166423
        mmTop = 27252
        mmWidth = 2381
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
        mmHeight = 8731
        mmLeft = 200025
        mmTop = 27252
        mmWidth = 2381
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
        mmHeight = 8731
        mmLeft = 258234
        mmTop = 27252
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Printed On '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 251090
        mmTop = 12700
        mmWidth = 14351
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 266436
        mmTop = 12700
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Page '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 251090
        mmTop = 16669
        mmWidth = 7408
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
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 266436
        mmTop = 16669
        mmWidth = 7112
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 244475
        mmTop = 27252
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 245005
        mmTop = 27781
        mmWidth = 11811
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Utilization '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 245005
        mmTop = 31750
        mmWidth = 13081
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
        mmHeight = 8731
        mmLeft = 65088
        mmTop = 27252
        mmWidth = 2381
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Capacity '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52123
        mmTop = 27781
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lost '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 52123
        mmTop = 31750
        mmWidth = 6181
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TSHOP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 3704
        mmTop = 529
        mmWidth = 3471
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
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 12965
        mmTop = 529
        mmWidth = 8170
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
        DataField = 'ADPT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 28310
        mmTop = 529
        mmWidth = 8636
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
        DataField = 'REFSAH'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 42598
        mmTop = 529
        mmWidth = 8636
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
        DataField = 'REFEFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 65712
        mmTop = 529
        mmWidth = 8636
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
        DataField = 'LEFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 259102
        mmTop = 529
        mmWidth = 7070
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
        DataField = 'PSAH'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.0000;-#,0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 235839
        mmTop = 529
        mmWidth = 8636
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
        DataField = 'CAP'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 277041
        mmTop = 529
        mmWidth = 1566
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RATIO1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 103474
        mmTop = 529
        mmWidth = 1566
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
        DataField = 'FLR1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 115381
        mmTop = 529
        mmWidth = 1566
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
        DataField = 'TLR1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 125455
        mmTop = 529
        mmWidth = 3133
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
        DataField = 'RATIO2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 137584
        mmTop = 529
        mmWidth = 1566
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLR2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 149490
        mmTop = 529
        mmWidth = 1566
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TLR2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 159544
        mmTop = 529
        mmWidth = 3133
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
        DataField = 'RATIO3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 170657
        mmTop = 529
        mmWidth = 1566
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'FLR3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 182563
        mmTop = 529
        mmWidth = 1566
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
        DataField = 'TLR3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 192617
        mmTop = 529
        mmWidth = 3133
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
        DataField = 'RATIO4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 204788
        mmTop = 529
        mmWidth = 1566
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
        DataField = 'FLR4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 216165
        mmTop = 529
        mmWidth = 1566
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
        DataField = 'TLR4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 226219
        mmTop = 529
        mmWidth = 3133
        BandType = 4
      end
      object s001: TppDBText
        UserName = 's001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECT1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 78062
        mmTop = 529
        mmWidth = 7070
        BandType = 4
      end
      object w001: TppDBText
        UserName = 'w001'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 90826
        mmTop = 529
        mmWidth = 7070
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
        DataField = 'PEFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 249841
        mmTop = 529
        mmWidth = 7070
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
        DataField = 'REFPEFF'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 56959
        mmTop = 529
        mmWidth = 7070
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 7916
        BandType = 7
      end
      object s002: TppDBCalc
        UserName = 's002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SECT1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 68263
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
      end
      object w002: TppDBCalc
        UserName = 'w002'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WF1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 84138
        mmTop = 1058
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CAP'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3260
        mmLeft = 265017
        mmTop = 1058
        mmWidth = 13589
        BandType = 7
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 2381
        mmTop = 0
        mmWidth = 278342
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PLINE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 13229
        mmTop = 1058
        mmWidth = 8202
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 160
    object defaultSAH1: TMenuItem
      Caption = 'default SAH'
      ShortCut = 49237
      Visible = False
      OnClick = defaultSAH1Click
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 584
  end
end
