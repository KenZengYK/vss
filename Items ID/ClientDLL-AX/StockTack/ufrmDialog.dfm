object frmDialog: TfrmDialog
  Left = 432
  Top = 267
  BorderStyle = bsDialog
  ClientHeight = 186
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl: TcxPageControl
    Left = 8
    Top = 5
    Width = 271
    Height = 120
    ActivePage = cxTabSheet2
    TabOrder = 2
    ClientRectBottom = 120
    ClientRectRight = 271
    ClientRectTop = 23
    object cxTabSheet_Delete: TcxTabSheet
      Caption = 'cxTabSheet_Delete'
      ImageIndex = 0
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 233
        Height = 16
        AutoSize = False
        Caption = 'Please select Count No.  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 68
        Top = 56
        Width = 145
        Height = 21
        Properties.CharCase = ecUpperCase
        Properties.DropDownRows = 12
        Properties.KeyFieldNames = 'COUNT_NO'
        Properties.ListColumns = <
          item
            FieldName = 'COUNT_NO'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = frmMain.DataSource2
        TabOrder = 0
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 1
      object Label2: TLabel
        Left = 17
        Top = 16
        Width = 240
        Height = 16
        AutoSize = False
        Caption = 'Please Enter Counted Qty:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 80
        Top = 48
        Width = 161
        Height = 21
        Properties.DisplayFormat = '0.###'
        Properties.ValidateOnEnter = True
        TabOrder = 0
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 2
      object Label3: TLabel
        Left = 32
        Top = 8
        Width = 225
        Height = 13
        AutoSize = False
        Caption = 'Please Select :'
        Transparent = True
      end
      object Label4: TLabel
        Left = 20
        Top = 35
        Width = 85
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Company'
        Transparent = True
      end
      object Label5: TLabel
        Left = 20
        Top = 59
        Width = 85
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Count No.'
        Transparent = True
      end
      object cxTextEdit1: TcxTextEdit
        Left = 112
        Top = 32
        Width = 33
        Height = 21
        Properties.CharCase = ecUpperCase
        Properties.OnEditValueChanged = cxTextEdit1PropertiesEditValueChanged
        TabOrder = 0
        Text = 'P1'
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 111
        Top = 56
        Width = 90
        Height = 21
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownRows = 12
        Properties.KeyFieldNames = 'ctno54'
        Properties.ListColumns = <
          item
            FieldName = 'ctno54'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = frmMain.dsZphlib
        TabOrder = 1
      end
    end
  end
  object btnOK: TcxButton
    Left = 40
    Top = 138
    Width = 97
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    Glyph.Data = {
      6E040000424D6E04000000000000360000002800000013000000120000000100
      1800000000003804000000000000000000000000000000000000CED3D6CED3D6
      CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
      D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
      D3D6CED3D6DEDFDEC6C7C6C6C3C6DEDBDECED3D6CED3D6CED3D6CED3D6CED3D6
      CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6DEDF
      DEADAAAD6B696B6361639CA2A5DEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CE
      D3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6DEDFDEADAAAD292829
      180800210C001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CED3
      D6CED3D6CED3D6000000CED3D6CED3D6DEDFDEADAAAD292829180800D64908EF
      55102910001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
      CED3D6000000CED3D6DEDFDEADAAAD292829180800D64908FF5D10FF5D18EF59
      182910001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6CED3D600
      0000E7E7E7B5B6B5292829180800D64908FF5D10FF5D18FF6118FF6521EF6121
      2910001014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6CED3D6000000D6D7
      D6393839180800D64908FF5910FF5D18FF6118FF6521FF6921FF6D29EF692929
      10081014109C9E9CDEDBDECED3D6CED3D6CED3D6CED3D6000000949294180800
      D64908FF5910FF5D10FF6118FF6D29FF7539FF6D29FF7131FF7531EF6D312914
      081014109C9E9CDEDBDECED3D6CED3D6CED3D6000000CED3D6CE795AFF5910FF
      5D10FF6118FF6D29EFCFBDEFDFD6FF7D42FF7131FF7539FF7942EF7542291408
      1014109C9E9CDEDBDECED3D6CED3D6000000CED3D6CED3D6F79A73FF6118FF6D
      29EFCFBDCED3D6CED3D6EFDFD6FF824AFF7942FF7D42FF824AEF794A29140810
      14109C9E9CDEDBDECED3D6000000CED3D6CED3D6CED3D6F7A684EFCFC6CED3D6
      CED3D6CED3D6CED3D6EFDFD6FF8A52FF824AFF864AFF8A52EF82522918081014
      10A5A6A5E7E3E7000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
      D3D6CED3D6CED3D6EFDFDEFF8E5AFF8A52FF8E5AFF8E5AEF865A291810181C18
      CECBCE000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
      D6CED3D6CED3D6EFDFDEFF9663FF8E5AFF9263FF9663EF8E632918107B797B00
      0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
      CED3D6CED3D6EFE3DEFF9A6BFF9663FF966BFF9A6BD69A84CECBCE000000CED3
      D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
      D3D6CED3D6EFE3DEFF9E73FF9A6BF7B694CED3D6CED3D6000000CED3D6CED3D6
      CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
      D6CED3D6EFE3DEF7BEA5CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
      D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
      CED3D6CED3D6CED3D6CED3D6CED3D6000000}
  end
  object btnCancel: TcxButton
    Left = 176
    Top = 138
    Width = 97
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      1800000000007404000000000000000000000000000000000000CED3D6CED3D6
      CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
      D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
      D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
      CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6E7E3E7C6CB
      CEBDBEBDD6D3D6E7E7E7CED3D6CED3D6CED3D6DEDFDEC6C7C6BDBEBDD6D7D6E7
      EBEFCED3D6CED3D6CED3D6000000CED3D6CED3D6E7E3E7BDBABD6B6D6B4A5152
      848684CED3D6E7E7E7CED3D6DEDFDEB5B2B563696B5251528C8E8CD6D7D6E7EB
      EFCED3D6CED3D6000000CED3D6E7E7E7C6C7C64A494A00000800044A0000007B
      7D7BCECFCEDEDBDEB5B2B5313431000010000042000000949294DEDFDECED3D6
      CED3D6000000CED3D6DEE3E76365630000081014BD1818FF08085A0000007B79
      7B9C9E9C3134310000100000CE0000F700004A000000BDBABDCED3D6CED3D600
      0000CED3D6BDBEBD000008181CBD2124FF2120FF181CFF08085A000000101410
      0000100808CE0808FF0004FF0004F70000424A4D4ACED3D6CED3D6000000CED3
      D6DEDFDE8486BD3130FF292CFF2928FF2124FF2120FF08085A0000101010CE10
      14FF1010FF080CFF0808FF3134E7C6CBCECED3D6CED3D6000000CED3D6CED3D6
      CED3D6A5AAEF3938FF3130FF292CFF2928FF2124FF181CDE181CFF1818FF1818
      FF1014FF4245FFE7E3EFCED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
      D3D6A5A2E7393CFF3134FF3130FF292CFF292CFF2928FF2124FF2120FF4A49F7
      DEE3EFCED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6DEDFDEB5BA
      BD6365AD4241FF393CFF3938FF3134FF3130FF292CFF3938D6949AA5CED3D6E7
      E7E7CED3D6CED3D6CED3D6000000CED3D6CED3D6DEDFDEB5B2B5181C18000410
      4241DE4245FF4241FF393CFF3938FF3134FF1014630000007B7D7BCED3D6E7E7
      E7CED3D6CED3D6000000CED3D6E7E7E7BDBEBD3938390004104245CE5251FF4A
      4DFF4A49FF4245FF4241FF393CFF3938FF10145A000000848A8CDEDBDECED3D6
      CED3D6000000CED3D6DEDFDE5251520808104A4DCE5A5DFF5A5DFF5A59FF5255
      FF5251FF4A4DFF4A49FF4245FF4241FF10145A000000ADAEADCED3D6CED3D600
      0000CED3D6B5B6B50808105255CE6B69FF6365FF6365FF6361FF7B7DF7ADAEF7
      5A59FF5251FF4A4DFF4A49FF4245FF18185A313431CED3D6CED3D6000000CED3
      D6CED3D6A5A6CE7375FF7371FF6B6DFF6B69FF8486F7E7E7EFCED3D6B5B6EF5A
      5DFF5255FF5251FF4A4DFF6365E7D6D3D6CED3D6CED3D6000000CED3D6CED3D6
      CED3D6C6C3EF7B79FF7375FF8C8EF7E7E7EFCED3D6CED3D6CED3D6B5B6EF6361
      FF5A5DFF7B79F7E7E7EFCED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
      D3D6C6C7F79C9AF7E7E7EFE7E7E7E7E7E7CED3D6CED3D6CED3D6BDBAF78C8AFF
      E7E7EFCED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3
      D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
      D3D6CED3D6CED3D6CED3D6000000}
  end
end
