object frmpdnprint: Tfrmpdnprint
  Left = 192
  Top = 114
  Caption = 'PDN Reports'
  ClientHeight = 384
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 240
    Width = 53
    Height = 13
    Caption = 'Manifest # '
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 272
    Width = 73
    Height = 25
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
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 272
    Width = 153
    Height = 25
    Caption = 'Turnkey Vendor Booking'
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
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object rg1: TGroupBox
    Left = 24
    Top = 24
    Width = 217
    Height = 209
    Caption = 'by WO (SKU)'
    TabOrder = 2
    object xh01: TCheckBox
      Left = 8
      Top = 16
      Width = 185
      Height = 17
      Caption = 'PDN apply'
      TabOrder = 0
    end
    object xh02: TCheckBox
      Left = 8
      Top = 40
      Width = 185
      Height = 17
      Caption = 'PDN active'
      TabOrder = 1
    end
    object xh03: TCheckBox
      Left = 8
      Top = 64
      Width = 193
      Height = 17
      Caption = 'PDN manifest instruction'
      TabOrder = 2
    end
    object xh04: TCheckBox
      Left = 8
      Top = 112
      Width = 201
      Height = 17
      Caption = 'PDN waiting for write off  inactive SKU'
      TabOrder = 3
    end
    object xh05: TCheckBox
      Left = 8
      Top = 136
      Width = 206
      Height = 17
      Caption = 'PDN waiting for delay shpt balance SKU'
      TabOrder = 4
    end
    object xh06: TCheckBox
      Left = 8
      Top = 160
      Width = 193
      Height = 17
      Caption = 'PDN to be acted'
      TabOrder = 5
    end
    object xh07: TCheckBox
      Left = 8
      Top = 184
      Width = 185
      Height = 17
      Caption = 'PDN acted performance'
      TabOrder = 6
    end
    object xh08: TCheckBox
      Left = 8
      Top = 88
      Width = 193
      Height = 17
      Caption = 'PDN manifest confirmation'
      TabOrder = 7
    end
  end
  object rg2: TGroupBox
    Left = 248
    Top = 24
    Width = 217
    Height = 209
    Caption = 'by RWO (SKU)'
    TabOrder = 3
    object xh11: TCheckBox
      Left = 8
      Top = 16
      Width = 185
      Height = 17
      Caption = 'PDN apply'
      TabOrder = 0
    end
    object xh12: TCheckBox
      Left = 8
      Top = 40
      Width = 177
      Height = 17
      Caption = 'PDN active'
      TabOrder = 1
    end
    object xh13: TCheckBox
      Left = 8
      Top = 64
      Width = 193
      Height = 17
      Caption = 'PDN manifest instruction'
      TabOrder = 2
    end
    object xh14: TCheckBox
      Left = 8
      Top = 112
      Width = 201
      Height = 17
      Caption = 'PDN waiting for write off  inactive SKU'
      TabOrder = 3
    end
    object xh15: TCheckBox
      Left = 8
      Top = 136
      Width = 206
      Height = 17
      Caption = 'PDN waiting for delay shpt balance SKU'
      TabOrder = 4
    end
    object xh16: TCheckBox
      Left = 8
      Top = 160
      Width = 169
      Height = 17
      Caption = 'PDN to be acted'
      TabOrder = 5
    end
    object xh17: TCheckBox
      Left = 8
      Top = 184
      Width = 185
      Height = 17
      Caption = 'PDN acted performance'
      TabOrder = 6
    end
    object xh18: TCheckBox
      Left = 8
      Top = 88
      Width = 193
      Height = 17
      Caption = 'PDN manifest confirmation'
      TabOrder = 7
    end
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 240
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    ItemIndex = 0
    TabOrder = 4
    Text = 'ALL'
    Items.Strings = (
      'ALL')
  end
  object chk1: TCheckBox
    Left = 168
    Top = 240
    Width = 145
    Height = 17
    Caption = 'WO Dependent(Appt Clr) '
    TabOrder = 5
  end
  object chk2: TCheckBox
    Left = 336
    Top = 240
    Width = 121
    Height = 17
    Caption = 'RWO Dependent'
    TabOrder = 6
  end
  object chk3: TCheckBox
    Left = 184
    Top = 256
    Width = 233
    Height = 17
    Caption = 'Only Preliminary Dispatch Plan for the week'
    TabOrder = 7
    Visible = False
  end
  object BitBtn3: TBitBtn
    Left = 248
    Top = 272
    Width = 73
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object BitBtn4: TBitBtn
    Left = 248
    Top = 272
    Width = 113
    Height = 25
    Caption = 'Export to Excel'
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
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 360
    Top = 272
    Width = 81
    Height = 25
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 10
  end
  object cxSpreadSheet1: TcxSpreadSheet
    Left = 176
    Top = -40
    Width = 137
    Height = 41
    Visible = False
    DefaultStyle.Font.Name = 'MS Sans Serif'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
  end
  object BitBtn6: TBitBtn
    Left = 24
    Top = 304
    Width = 145
    Height = 25
    Caption = 'QC Inspection Booking'
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
    TabOrder = 12
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 168
    Top = 304
    Width = 153
    Height = 25
    Caption = 'Weekly Shipment Report'
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
    TabOrder = 13
    OnClick = BitBtn7Click
  end
  object BitBtn8: TBitBtn
    Left = 320
    Top = 304
    Width = 121
    Height = 25
    Caption = 'Shipment Record'
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
    TabOrder = 14
    OnClick = BitBtn8Click
  end
  object BitBtn9: TBitBtn
    Left = 24
    Top = 336
    Width = 169
    Height = 25
    Caption = 
      'Logistic Info for cost analysis (cbm, actual weight and volume w' +
      'eight)'
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
    TabOrder = 15
    OnClick = BitBtn9Click
  end
  object BitBtn10: TBitBtn
    Left = 24
    Top = 337
    Width = 209
    Height = 25
    Caption = ' New report format for PDN manifest '
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
    TabOrder = 16
    OnClick = BitBtn10Click
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    FieldDefs = <
      item
        Name = 'SEQ'
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
        Name = 'ORDLINE'
        DataType = ftInteger
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
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
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
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 24
    Top = 65528
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 56
    Top = 65528
  end
  object Query3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 88
    Top = 65528
  end
  object Query4: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_d'
    FieldDefs = <
      item
        Name = 'SEQ'
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
        Name = 'ORDLINE'
        DataType = ftInteger
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
        Name = 'DID'
        DataType = ftInteger
      end
      item
        Name = 'PSIZ'
        DataType = ftString
        Size = 10
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
        Name = 'Q1T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'CFM'
        DataType = ftBoolean
      end
      item
        Name = 'CFMTM'
        DataType = ftDateTime
      end
      item
        Name = 'SHPD'
        DataType = ftInteger
      end
      item
        Name = 'DIFF'
        DataType = ftInteger
      end
      item
        Name = 'OSQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25QTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q1AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q2AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q3AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q4AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q5AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q6AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q7AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q8AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q9AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q10AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q11AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q12AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q13AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q14AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q15AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q16AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q17AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q18AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q19AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q20AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q21AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q22AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q23AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q24AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25PKQTY'
        DataType = ftInteger
      end
      item
        Name = 'Q25AQQTY'
        DataType = ftInteger
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 120
    Top = 65528
  end
  object Query5: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbl_pdn_log_info'
    FieldDefs = <
      item
        Name = 'TM'
        DataType = ftDateTime
      end
      item
        Name = 'PDN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BCN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'J_NO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CUSTPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FLAG6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CSTYLE'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'T4QTY'
        DataType = ftInteger
      end
      item
        Name = 'BOX'
        DataType = ftFloat
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
        Name = 'VWGHT'
        DataType = ftFloat
      end
      item
        Name = 'SHPM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DEST'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EXFTY'
        DataType = ftDate
      end
      item
        Name = 'ETM'
        DataType = ftTime
      end
      item
        Name = 'XBOX'
        DataType = ftFloat
      end
      item
        Name = 'XWGHT'
        DataType = ftFloat
      end
      item
        Name = 'XCBM'
        DataType = ftFloat
      end
      item
        Name = 'XVWGHT'
        DataType = ftFloat
      end
      item
        Name = 'SEQ1'
        DataType = ftInteger
      end
      item
        Name = 'FLAG60'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PKM'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    StoreDefs = True
    Left = 376
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = Query5
    Left = 408
    Top = 336
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    UserName = 'DBPipeline1'
    Left = 440
    Top = 336
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
    Left = 376
    Top = 360
    Version = '11.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 33867
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Logistic Info for cost analysis (cbm, actual weight and volume w' +
          'eight)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 35190
        mmTop = 5556
        mmWidth = 142875
        BandType = 0
      end
      object title002: TppLabel
        UserName = 'title002'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '- HANS (Vendor Booking)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 6085
        mmWidth = 70644
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 14552
        mmLeft = 1588
        mmTop = 19579
        mmWidth = 279665
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Project # '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 20638
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust PO# '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 22225
        mmTop = 20638
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prod '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 20638
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cust Style '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 49213
        mmTop = 20638
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Category '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 25400
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shipped '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 20638
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 25400
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qty '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 20638
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Unit '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 82815
        mmTop = 25400
        mmWidth = 5821
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
        mmHeight = 14552
        mmLeft = 89429
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 20638
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carton '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 91017
        mmTop = 25400
        mmWidth = 9271
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 104246
        mmTop = 25400
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(kgs) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 104246
        mmTop = 29633
        mmWidth = 7112
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CBMs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 116946
        mmTop = 25400
        mmWidth = 8509
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
        mmHeight = 14552
        mmLeft = 127529
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 89694
        mmTop = 24606
        mmWidth = 38100
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
        mmHeight = 14552
        mmLeft = 184944
        mmTop = 19579
        mmWidth = 3704
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
        mmHeight = 14552
        mmLeft = 138907
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EA per  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 128323
        mmTop = 20638
        mmWidth = 10287
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Carton '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 128323
        mmTop = 25400
        mmWidth = 9271
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 138907
        mmTop = 24606
        mmWidth = 46038
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(Per 1,000 EA)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 153723
        mmTop = 20638
        mmWidth = 20362
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vol. Wt. '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 141023
        mmTop = 25400
        mmWidth = 10922
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(kgs) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 141023
        mmTop = 29633
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weight '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 158486
        mmTop = 25400
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(kgs) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 158486
        mmTop = 29633
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CBMs '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175419
        mmTop = 25400
        mmWidth = 8467
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
        mmHeight = 14552
        mmLeft = 201877
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ship mode  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 186002
        mmTop = 20638
        mmWidth = 15198
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Destination  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 202671
        mmTop = 20638
        mmWidth = 15875
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
        mmHeight = 14552
        mmLeft = 224896
        mmTop = 19579
        mmWidth = 3704
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
        mmHeight = 14552
        mmLeft = 243682
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN #   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 225955
        mmTop = 20638
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Manifest #  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 244740
        mmTop = 20638
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '(if avaliable)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 244740
        mmTop = 25400
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Actual   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 264584
        mmTop = 20638
        mmWidth = 10329
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ex-fty date  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 264584
        mmTop = 25400
        mmWidth = 14817
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
        mmHeight = 14552
        mmLeft = 262467
        mmTop = 19579
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4763
        mmTop = 14288
        mmWidth = 7578
        BandType = 0
      end
      object pdn001: TppLabel
        UserName = 'pdn001'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PDN  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14288
        mmTop = 14288
        mmWidth = 36777
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 216959
        mmTop = 14288
        mmWidth = 15346
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 233892
        mmTop = 14288
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 250561
        mmTop = 14288
        mmWidth = 7673
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
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 259292
        mmTop = 14288
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 4763
        mmLeft = 1588
        mmTop = 0
        mmWidth = 279665
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
        DataField = 'J_NO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 2381
        mmTop = 794
        mmWidth = 12150
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
        DataField = 'CUSTPO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 22225
        mmTop = 794
        mmWidth = 16256
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
        DataField = 'FLAG6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 40217
        mmTop = 794
        mmWidth = 3006
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
        DataField = 'CSTYLE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 49213
        mmTop = 794
        mmWidth = 8848
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
        DataField = 'PDN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 225955
        mmTop = 794
        mmWidth = 13039
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
        DataField = 'DEST'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 202671
        mmTop = 794
        mmWidth = 10880
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
        DataField = 'BCN'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 244740
        mmTop = 794
        mmWidth = 10837
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
        DataField = 'EXFTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 264584
        mmTop = 794
        mmWidth = 9483
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
        DataField = 'SHPM'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ResetGroup = ppGroup1
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 186002
        mmTop = 794
        mmWidth = 6731
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
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 71015
        mmTop = 794
        mmWidth = 6773
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
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 96213
        mmTop = 794
        mmWidth = 4064
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
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 104552
        mmTop = 794
        mmWidth = 9483
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
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 119317
        mmTop = 794
        mmWidth = 6096
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EA  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 82815
        mmTop = 794
        mmWidth = 4763
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
        DataField = 'XBOX'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 131487
        mmTop = 794
        mmWidth = 6096
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
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 158793
        mmTop = 794
        mmWidth = 9483
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
        DataField = 'XCBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 179144
        mmTop = 794
        mmWidth = 4741
        BandType = 4
      end
      object v001: TppLabel
        UserName = 'v001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'v001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 146579
        mmTop = 794
        mmWidth = 5292
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 89429
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 127529
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 138907
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 184944
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 224896
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 243682
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 262467
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 201877
        mmTop = 0
        mmWidth = 2910
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 12171
        mmLeft = 1588
        mmTop = 0
        mmWidth = 279665
        BandType = 7
      end
      object y001: TppLabel
        UserName = 'y001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x001'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 132292
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object y002: TppLabel
        UserName = 'y002'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x002'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 146579
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object y003: TppLabel
        UserName = 'y003'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x003'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 162984
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object y004: TppLabel
        UserName = 'y004'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'x004'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 178594
        mmTop = 7144
        mmWidth = 5292
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total (by PDN): -  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4763
        mmTop = 1588
        mmWidth = 22860
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'T4QTY'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 63183
        mmTop = 1588
        mmWidth = 14605
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'BOX'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 88466
        mmTop = 1588
        mmWidth = 11811
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WGHT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 99685
        mmTop = 1588
        mmWidth = 14351
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
        DataField = 'CBM'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2879
        mmLeft = 113306
        mmTop = 1588
        mmWidth = 12107
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Weighted Ave (by PDN): -  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 4763
        mmTop = 7144
        mmWidth = 34290
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 89429
        mmTop = 0
        mmWidth = 2910
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 138907
        mmTop = 265
        mmWidth = 2910
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 184944
        mmTop = 265
        mmWidth = 2910
        BandType = 7
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 127529
        mmTop = 265
        mmWidth = 2910
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'BCN'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewFile = False
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 12171
        mmPrintPosition = 0
        object ppShape3: TppShape
          UserName = 'Shape3'
          mmHeight = 12435
          mmLeft = 1588
          mmTop = 0
          mmWidth = 279665
          BandType = 5
          GroupNo = 0
        end
        object x001: TppLabel
          UserName = 'x001'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x001'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 132292
          mmTop = 7408
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object x002: TppLabel
          UserName = 'x002'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 146579
          mmTop = 7408
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object x003: TppLabel
          UserName = 'x003'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x003'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 162984
          mmTop = 7408
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object x004: TppLabel
          UserName = 'x004'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'x004'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 178594
          mmTop = 7408
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Sub-Ttl (by manifest): -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 22225
          mmTop = 1852
          mmWidth = 26162
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
          DataField = 'T4QTY'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 63183
          mmTop = 1852
          mmWidth = 14605
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
          DataField = 'BOX'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 88466
          mmTop = 1852
          mmWidth = 11811
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
          DataField = 'WGHT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 99685
          mmTop = 1852
          mmWidth = 14351
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
          DataField = 'CBM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 2879
          mmLeft = 113306
          mmTop = 1852
          mmWidth = 12107
          BandType = 5
          GroupNo = 0
        end
        object ppLabel32: TppLabel
          UserName = 'Label32'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Weighted Ave (by manifest): -  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          mmHeight = 2879
          mmLeft = 22225
          mmTop = 7408
          mmWidth = 33613
          BandType = 5
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 89429
          mmTop = 0
          mmWidth = 2910
          BandType = 5
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 138907
          mmTop = 0
          mmWidth = 2910
          BandType = 5
          GroupNo = 0
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 12171
          mmLeft = 184944
          mmTop = 0
          mmWidth = 2910
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
          mmHeight = 12171
          mmLeft = 127529
          mmTop = 0
          mmWidth = 2910
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ROQuery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.ROConnection
    Left = 384
  end
end
