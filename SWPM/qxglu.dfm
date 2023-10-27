object frmqxgl: Tfrmqxgl
  Left = 135
  Top = 79
  Width = 449
  Height = 372
  Caption = 'Rights Management'
  Color = clBtnFace
  Font.Charset = CHINESEBIG5_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #26032#32048#26126#39636
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 23
    Height = 13
    Caption = 'User'
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 32
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 64
    Width = 377
    Height = 201
    TabOrder = 1
    object DBCheckBox1: TDBCheckBox
      Left = 24
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Line Profile'
      DataField = 'R1'
      DataSource = DataSource1
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 200
      Top = 24
      Width = 169
      Height = 17
      Caption = 'Line Work Calendar'
      DataField = 'R2'
      DataSource = DataSource1
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox3: TDBCheckBox
      Left = 24
      Top = 48
      Width = 153
      Height = 17
      Caption = 'HK/Factory Calendar'
      DataField = 'R3'
      DataSource = DataSource1
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox4: TDBCheckBox
      Left = 200
      Top = 48
      Width = 169
      Height = 17
      Caption = 'GSD TMU (Weight Average)'
      DataField = 'R4'
      DataSource = DataSource1
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox5: TDBCheckBox
      Left = 24
      Top = 72
      Width = 121
      Height = 17
      Caption = 'Customer Profile'
      DataField = 'R5'
      DataSource = DataSource1
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox6: TDBCheckBox
      Left = 200
      Top = 72
      Width = 121
      Height = 17
      Caption = 'Material Matching'
      DataField = 'R6'
      DataSource = DataSource1
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 24
      Top = 96
      Width = 121
      Height = 17
      Caption = 'LWPM-Worksheet'
      DataField = 'R7'
      DataSource = DataSource1
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox8: TDBCheckBox
      Left = 200
      Top = 96
      Width = 153
      Height = 17
      Caption = 'Production Matching'
      DataField = 'R8'
      DataSource = DataSource1
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox9: TDBCheckBox
      Left = 24
      Top = 120
      Width = 97
      Height = 17
      Caption = 'Impact Code'
      DataField = 'R9'
      DataSource = DataSource1
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox10: TDBCheckBox
      Left = 200
      Top = 120
      Width = 161
      Height = 17
      Caption = 'Route for GSD TMU'
      DataField = 'R10'
      DataSource = DataSource1
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox11: TDBCheckBox
      Left = 24
      Top = 144
      Width = 137
      Height = 17
      Caption = 'Locked Difference Day'
      DataField = 'R11'
      DataSource = DataSource1
      TabOrder = 10
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox12: TDBCheckBox
      Left = 200
      Top = 144
      Width = 161
      Height = 17
      Caption = 'Route for Sewing Start Date'
      DataField = 'R12'
      DataSource = DataSource1
      TabOrder = 11
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox13: TDBCheckBox
      Left = 24
      Top = 168
      Width = 145
      Height = 17
      Caption = 'Rights Management'
      DataField = 'R13'
      DataSource = DataSource1
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 280
    Width = 73
    Height = 33
    Caption = 'Submit'
    ModalResult = 1
    TabOrder = 2
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
    Left = 104
    Top = 280
    Width = 73
    Height = 33
    Caption = 'Exit'
    TabOrder = 3
    Kind = bkClose
  end
  object Query1: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from tbluser'
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    AfterPost = Query1AfterPost
    Left = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 40
  end
  object Query2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspschedule'
    RemoteServer = frmmain.SocketConnection1
    Left = 72
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 104
  end
end
