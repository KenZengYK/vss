object frmpu2cu_elements: Tfrmpu2cu_elements
  Left = 0
  Top = 0
  Caption = 'Instructions for Step of PU Marker to CU Marker'
  ClientHeight = 217
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 582
    Height = 13
    Caption = 
      'Reasons lead to re-allocation of marking branches OR adjustment ' +
      'of marking / '#23566#33268#38656#37325#26032#20998#25903#29256' '#25110' '#35519#25972#25490#29256#30340#21407#22240': '
  end
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 44
    Height = 13
    Caption = 'CF_ID#  '
  end
  object DBText1: TDBText
    Left = 72
    Top = 16
    Width = 169
    Height = 17
    DataField = 'prjno'
    DataSource = frmfcjy.dsfcjy1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 272
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Be cut matl  '
  end
  object DBText2: TDBText
    Left = 344
    Top = 16
    Width = 177
    Height = 17
    DataField = 'wl'
    DataSource = frmfcjy.dsfcjy1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 608
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Label5: TLabel
    Left = 32
    Top = 72
    Width = 58
    Height = 13
    Caption = 'Seq / '#24207#34399'  '
  end
  object SpeedButton13: TSpeedButton
    Left = 183
    Top = 72
    Width = 22
    Height = 22
    Hint = 'Enquery'
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
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton13Click
  end
  object Label6: TLabel
    Left = 32
    Top = 100
    Width = 57
    Height = 13
    Caption = 'Desc. (EN)  '
  end
  object Label7: TLabel
    Left = 32
    Top = 127
    Width = 58
    Height = 13
    Caption = 'Desc. (CN)  '
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 72
    Width = 81
    Height = 21
    DataField = 'cde'
    DataSource = dscut_fc_pu2cu
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 100
    Width = 577
    Height = 21
    DataField = 'des_e'
    DataSource = dscut_fc_pu2cu
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 127
    Width = 577
    Height = 21
    DataField = 'des_c'
    DataSource = dscut_fc_pu2cu
    ReadOnly = True
    TabOrder = 4
  end
  object cut_fc_pu2cu: TADODataSet
    Connection = frmmain.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from cut_fc_pu2cu'
    CommandTimeout = 300
    IndexFieldNames = 'cde'
    Parameters = <>
    Left = 512
    Top = 57
  end
  object dscut_fc_pu2cu: TDataSource
    DataSet = cut_fc_pu2cu
    Left = 572
    Top = 56
  end
  object AQuery1: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 632
    Top = 57
  end
  object AQuery2: TADOQuery
    Connection = frmmain.ADOConnection1
    CommandTimeout = 600
    Parameters = <>
    Left = 664
    Top = 57
  end
end
