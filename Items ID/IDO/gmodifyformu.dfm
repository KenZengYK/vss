object frmgmodify: Tfrmgmodify
  Left = 192
  Top = 107
  Width = 289
  Height = 236
  Caption = 'Group Modify'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object opt1: TRadioButton
    Left = 40
    Top = 24
    Width = 113
    Height = 17
    Caption = 'Material'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object opt2: TRadioButton
    Left = 40
    Top = 64
    Width = 113
    Height = 17
    Caption = 'Color'
    TabOrder = 1
  end
  object opt3: TRadioButton
    Left = 40
    Top = 104
    Width = 113
    Height = 17
    Caption = 'Size'
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 120
    Top = 24
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 152
    Width = 75
    Height = 33
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 6
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
    Left = 168
    Top = 152
    Width = 75
    Height = 33
    Caption = 'Close'
    TabOrder = 7
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Erp_pnum'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_mat'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Erp_col'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Erp_siz'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'New_mat'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'New_col'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'New_siz'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Erp_id'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_iunt'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Erp_narr'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_recd'
        DataType = ftInteger
      end
      item
        Name = 'Erp_mwth'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_awth'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_qcre'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Erp_qcac'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Erp_usep'
        DataType = ftFloat
      end
      item
        Name = 'Phis_id'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Phis_typ'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Phis_cod'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Phis_col'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Phis_ltn'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Phis_shd'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Phis_sup'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Phis_curr'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Phis_qty'
        DataType = ftFloat
      end
      item
        Name = 'Phis_pric'
        DataType = ftFloat
      end
      item
        Name = 'Phis_rate'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'ERP_ID'
      end
      item
        Name = 'idx2'
        Fields = 'ERP_PNUM'
      end
      item
        Name = 'idx3'
        Fields = 'phis_id'
      end
      item
        Name = 'idx4'
        Fields = 'phis_cod'
      end>
    IndexName = 'idx2'
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = frmlogin.SocketConnection1
    StoreDefs = True
    Left = 128
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Erp_pnum'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_mat'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Erp_col'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Erp_siz'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'New_mat'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'New_col'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'New_siz'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Erp_id'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_iunt'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Erp_narr'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_recd'
        DataType = ftInteger
      end
      item
        Name = 'Erp_mwth'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_awth'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Erp_qcre'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Erp_qcac'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Erp_usep'
        DataType = ftFloat
      end
      item
        Name = 'Phis_id'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Phis_typ'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Phis_cod'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Phis_col'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Phis_ltn'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Phis_shd'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Phis_sup'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Phis_curr'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Phis_qty'
        DataType = ftFloat
      end
      item
        Name = 'Phis_pric'
        DataType = ftFloat
      end
      item
        Name = 'Phis_rate'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idx1'
        Fields = 'ERP_ID'
      end
      item
        Name = 'idx2'
        Fields = 'ERP_PNUM'
      end
      item
        Name = 'idx3'
        Fields = 'phis_id'
      end
      item
        Name = 'idx4'
        Fields = 'phis_cod'
      end>
    IndexName = 'idx2'
    Params = <>
    ProviderName = 'DataSetProvider1'
    RemoteServer = frmlogin.SocketConnection1
    StoreDefs = True
    Left = 160
  end
end
