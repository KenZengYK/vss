object frmServer: TfrmServer
  Left = 203
  Top = 288
  Width = 200
  Height = 98
  Caption = 'frmServer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 45
    Width = 192
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 161
      Height = 19
      Align = alLeft
    end
  end
  object IdTCPServer: TIdTCPServer
    Bindings = <
      item
        Port = 10235
      end>
    CommandHandlers = <>
    DefaultPort = 0
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnExecute = IdTCPServerExecute
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 48
    Top = 8
  end
  object FormTrayIcon1: TFormTrayIcon
    CaptionButton.BtnOrder = 0
    CaptionButton.Cursor = crDefault
    CaptionButton.CursorDown = crDefault
    CaptionButton.Enabled = True
    CaptionButton.Hint = 'Minimize to System Tray'
    CaptionButton.SeparatorWidth = 0
    CaptionButton.ShowHint = True
    CaptionButton.Visible = True
    SystemMenu.ApplyToMenu = False
    SystemMenu.Position = 0
    SystemMenu.Separators = []
    Icon.Data = {
      0000010005001010100001000400280100005600000010100000010008006805
      00007E0100002020100001000400E8020000E60600002020000001000800A808
      0000CE0900003030000001000800A80E00007612000028000000100000002000
      00000100040000000000C0000000000000000000000000000000000000000000
      0000000000000080000000808000800000008000800080800000C0C0C0008080
      80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF001111
      1100011111111111007880011111110077800880011110778878800880011888
      77788880080188777778888880018F7777F8888888808F77FF77788888808FFF
      7799777888808F77AA7778807880188F77788FF0700111188F8FFFFF01111111
      188FFFFFF01111111118FFFFFF00111111118FFF88111111111118881111FC7F
      7788F01F7888C007088880011111800188770001788800008008000011110000
      77770000788880018880E0071111F8037777FE007888FF038888FF8F11112800
      0000100000002000000001000800000000004001000000000000000000000000
      00000000000000000000A68686009E8B8B0073676700554F4F00C4BBBB00817B
      7B00B6B3B300CEBAB9007A636100E6D8D700FFD2C700FBD7CE00D5BFB900B0A1
      9D00CBABA100FFD4C500EFDCD500DFC3B700DBC1B500E5E1DF00FFD6B300FFD4
      AF00F9DDC400FFDCB800FFE5CB00FFEDDC00FFF7EE007AAA8A0067847100FAFA
      FA00F2F2F200F1F1F100F0F0F000EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9
      E900E8E8E800E7E7E700E5E5E500E1E1E100E0E0E000D9D9D900D8D8D800D5D5
      D500D4D4D400D2D2D200CFCFCF00CECECE00CCCCCC00C9C9C900C2C2C200C0C0
      C000BFBFBF00BEBEBE00BDBDBD00BCBCBC00BABABA00B6B6B600B5B5B500B4B4
      B400B3B3B300B2B2B200B1B1B100AEAEAE00ACACAC00ABABAB00AAAAAA00A6A6
      A600A5A5A500A0A0A0009F9F9F009E9E9E009D9D9D009B9B9B00979797009595
      95009494940093939300929292008E8E8E008D8D8D008C8C8C00898989008888
      880086868600858585008383830082828200808080007E7E7E007C7C7C007A7A
      7A007676760073737300717171006D6D6D0064646400606060005F5F5F005858
      58005757570055555500505050004E4E4E004545450043434300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000005757575757575700000000000000004F646B6C0406
      6A686057000000000063462040020107293E67695E0000004C22202743506562
      543A26416100003D1E1F2D4E5C4D40464F5255635E00003D2D484C3444535B59
      49371C665D00005F462C2D2D2D2B31384B551D675A00004A2A2D30342E323536
      332F33615700003D2E354547312123252C373856000000003D3424403B423C39
      393F5700000000000005100B0C1114285857000000000000000D181818151609
      5700000000000000000F191919191703000000000000000000121A1A1A1A1351
      0000000000000000081B1B1B1B1B0E0000000000000000000A0A0A0A0A0A0A00
      000000000000F80F9D6CF0035053E00185BEC001AA9780018683800197A58001
      80BB8001000080039B6EC007535DE00FA477E01FB3C4E03F9286E03F7D7AC07F
      73ACC07F00002800000020000000400000000100040000000000800200000000
      0000000000000000000000000000000000000000000000800000008080008000
      00008000800080800000C0C0C000808080000000FF0000FF000000FFFF00FF00
      0000FF00FF00FFFF0000FFFFFF00111111111111111111111111111111111111
      1111111111111111111111111111111111111111000111111111111111111111
      1111110078800111111111111111111111110077788880011111111111111111
      1100777780088880011111111111111100777788788008888001111111111100
      7777887878888008888001111111107777887778788888800888800111111877
      8877777878888888800888801111188877777778788888888880088011118878
      77777778788888888888800011118F7877777778F88888888888888001118F78
      777777F8877888888888888800118F787777FF77788778888888888808018F78
      77FF7777777887788888888807808F78FF777997788778877888888807888FF8
      877AA7788777770887788888081188F778877887777700F70887788801111188
      F77888877700FFFF077887780111111188F7788800FFFCCF7087788111111111
      1188F7788FFCCFFFF088811111111111111188F778FFFFCCF701111111111111
      11111188F8FFCCFFFF7011111111111111111111888FFFFCCFF7011111111111
      11111111118FFCCFFFFF701111111111111111111118FFFFFCCFF70011111111
      1111111111118FFCCFFFFF881111111111111111111118FFFFFF881111111111
      111111111111118FFF8811111111111111111111111111188811111111111111
      1111111111111111111111111111FFFFFFFFFFFFFFFFFFF1FFFFFFC07FFFFF00
      1FFFFC0007FFF00001FFC000007F8000001F8000000F8000000F0000000F0000
      0007000000030000000100000000000000000000000300000007C0000007F000
      001FFC00007FFF0001FFFFC000FFFFF0007FFFFC003FFFFE000FFFFF000FFFFF
      803FFFFFC0FFFFFFE3FFFFFFFFFF280000002000000040000000010008000000
      0000800400000000000000000000000000000000000000000000C2939300AD86
      8600B8929200AC89890080666600B28F8F00B18E8E00745E5E00AD9090006959
      59008A767600CCB3B300C6AEAE007A6D6D00695F5F007F757500BBAEAE00B0A6
      A600D6CCCC0045424200504D4D00B9B3B300DAD4D400A77C7B00AC807D00AC82
      7F00926F6C00A5878300FFB3A600ECE1DF00FFC5B900E6B6AD00BF958B00FFD6
      CC00BF958A00D9BFB800FFE6DF00D9BCB200F1E3DE00CCA29200D9B7A800F2D4
      C600FFBC9900FFC29F00FFCAAC00FFC5A200FFC8A500FFD3B900F2E6DF00FFCC
      A800E6BA9B00F2DBCA00FFD0AA00F9D4B200FFD6AD00FFD7B000FFDAB500FFDB
      B700FFDFBE00FFE7CF00FFECD900FFF8F100FFFDFB00FFE4C800FFF0E000FFF5
      EA0056BF79006E9E7E0070A0800059AF7600FFFFFF00FEFEFE00FBFBFB00FAFA
      FA00F8F8F800F7F7F700F6F6F600F4F4F400F3F3F300F2F2F200F1F1F100EFEF
      EF00EEEEEE00EDEDED00EBEBEB00EAEAEA00E8E8E800E7E7E700E6E6E600E5E5
      E500E3E3E300E2E2E200E1E1E100E0E0E000DFDFDF00DEDEDE00DBDBDB00DADA
      DA00D9D9D900D8D8D800D7D7D700D6D6D600D5D5D500D4D4D400D3D3D300D2D2
      D200D1D1D100D0D0D000CFCFCF00CECECE00CDCDCD00CCCCCC00CBCBCB00CACA
      CA00C8C8C800C7C7C700C6C6C600C5C5C500C3C3C300C1C1C100C0C0C000BFBF
      BF00BEBEBE00BDBDBD00BCBCBC00BBBBBB00BABABA00B9B9B900B8B8B800B7B7
      B700B6B6B600B5B5B500B4B4B400B3B3B300B2B2B200B1B1B100B0B0B000AFAF
      AF00AEAEAE00ADADAD00ACACAC00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7
      A700A6A6A600A5A5A500A4A4A400A3A3A300A2A2A200A1A1A100A0A0A0009F9F
      9F009E9E9E009D9D9D009C9C9C009B9B9B009A9A9A0099999900979797009696
      96009494940092929200909090008F8F8F008E8E8E008D8D8D008C8C8C008B8B
      8B008A8A8A008989890088888800878787008585850084848400838383008282
      820081818100808080007F7F7F007E7E7E007D7D7D007C7C7C007A7A7A007979
      7900787878007777770076767600757575007474740073737300717171007070
      70006F6F6F006E6E6E006D6D6D006B6B6B006767670066666600656565006363
      6300606060005F5F5F005E5E5E005C5C5C005A5A5A0059595900575757005555
      55005252520051515100505050004F4F4F004E4E4E004D4D4D004C4C4C004B4B
      4B004A4A4A004949490048484800474747004545450044444400414141003D3D
      3D003C3C3C003A3A3A0035353500333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAAAAA000000AAAAAA000000000000000000000000000000000000000000
      00AFDADACCA9BCBCC3DBD3C100000000000000000000000000000000000000BC
      D8D8CEE5E4E0DA140512C7E3D7C700000000000000000000000000000000CCDF
      A2507996C415050103174759B3DEDDCD000000000000000000000000BCE1B256
      50537C898611020EC3B69E6A4F5093D4E0D0B200000000000000BCDBC5664D50
      53567F8C898EE2D5CCC3B6A79C76564770BDDFAA0000000000BDCF77494D5053
      5659838F8C89AAC5D1CCC3B6A79C8A75594AC6AA000000009E9848494D505356
      595C8E928F8C898683A0B0BEB6A79C92A8C1DCAA000000009D6C494D50535659
      85BEC8B9AA978C898683808297A5D7E680BBDCAA000000009B6E4D50535D92BD
      A4778CA6B3C4C0A6928683807D7A779873ACDAAA000000009C71505A90BDA36E
      6266869B97959FB1C0BFAD92807D7A4546BCD9AA00000000B482A0C494626062
      6669555D6E8191928F95A6BFC2AA8D4443C9D8AA00000000BBBC81595C606266
      6B60535C5556576274848C898BA1B4CAC9BAD6AA00000000B965595C6062666B
      68517A8086816B5B58595D6D7783838598C0D5AA00000000B7595C6062666B6D
      526B765253576A7C877E6E5E5B5D646F77ACD2AA00000000AA636062666B6C52
      697E505152535455565F7283887B6D5E60ADC3000000000000A862666B665F89
      9F6B4E50515253545556575859617B8E6CCB0000000000000000B5A2A18F9E89
      8AA3ABA2967C67535455565758598473BA00000000000000000000009A565656
      838E87807A8C9AA79C98785C608376B80000000000000000000000009F4C4B4A
      62747887807A756F6969978E8897AE00000000000000000000000000A216201D
      1D1F222527565E67696799C49000000000000000000000000000000000213337
      35322F2E2C2B2D302A13AF00000000000000000000000000000000000007363A
      3A3A3A3A3A3A3938330A000000000000000000000000000000000000001A3B3B
      3B3B3B3B3B3B3B3B280F00000000000000000000000000000000000000214040
      404040404040404023B700000000000000000000000000000000000021293C3C
      3C3C3C3C3C3C3C3C1B0000000000000000000000000000000000000004343D3D
      3D3D3D3D3D3D3D34080000000000000000000000000000000000000019414141
      4141414141414126100000000000000000000000000000000000002124424242
      424242424242421C00000000000000000000000000000000000000183E3E3E3E
      3E3E3E3E3E3E310B000000000000000000000000000000000000061E3F3F3F3F
      3F3F3F3F3F3F09000000000000000000000000000000000000000C0C0C0C0C0C
      0C0C0C0C0C0D00000000000000000000000000000000FFF1C7FFFFE003FFFF80
      00FFFF00003FFC000007F0000003E0000003C0000003C0000003C0000003C000
      0003C0000003C0000003C0000003C0000003C0000007E000000FF000001FFC00
      003FFC00007FFC0001FFFE0007FFFE000FFFFE000FFFFE000FFFFC001FFFFC00
      1FFFFC001FFFF8003FFFF8003FFFF0007FFFF000FFFF28000000300000006000
      00000100080000000000800A0000000000000000000000000000000000000000
      00009966660096666600976868009F6F6F00946767008F696900916B6B008D68
      6800CC999900B98C8C00BF92920093707000C3969600B1888800A6808000B38C
      8C0090717100977777009174740096797900A1838300997D7D006C595900A68A
      8A00997F7F009C828200957C7C00665656007F6C6C0088757500927F7F009F8C
      8C00D2BBBB00A7959500AFA2A200B4A8A800B6AAAA00FFF2F200B9B3B300FFF9
      F9009B747300AC828100CCB2B100A6777400A6787600A2777500B38B8900A675
      7100C69B9700E6D8D700DFCCCA00ECE2E100FFA69900FFBCB300FFC7BF00FFE9
      E600F2EBEA00FFAC9F00FFD3CC00B3827800B98D8400BF978F00C6A29A00D9C1
      BB00ECE0DD00B9897B00D2B4AC00E6D3CC00FFB69900FFB79A00FFBB9F00FFC9
      B300D2AE9F00FFBC9D00D29F8900CC9F8B00FFD7C600FFE1D200F8F4F200FFC0
      9F00FFC4A200ECD7CC00FFEFE600ECD5C700E6BDA100E6C4AE00FFC9A000FFCB
      A500F2D8C500FFFBF800FFC69900FFC89D00FFCDA600FFCFA700FFD1AA00F9D6
      B600FFD7AE00FFD7B000FFD8B200FFDAB500FFDDBB00FFE0C100FFE8D200FFEB
      D700FFEEDD00FFF1E300FFF9F300FFE3C600FFE6CC00FFF4E800FFF7EE0066FF
      990056A26F00486F550052785E0065786B0059CC80006B756F00FFFFFF00FDFD
      FD00FAFAFA00F7F7F700F5F5F500F2F2F200F1F1F100EFEFEF00EDEDED00EAEA
      EA00E9E9E900E7E7E700E5E5E500E3E3E300E0E0E000DEDEDE00DDDDDD00DADA
      DA00D9D9D900D7D7D700D4D4D400D2D2D200D1D1D100CFCFCF00CCCCCC00CACA
      CA00C9C9C900C6C6C600C5C5C500C2C2C200C0C0C000BFBFBF00BDBDBD00BBBB
      BB00B9B9B900B7B7B700B4B4B400B2B2B200B0B0B000AEAEAE00ACACAC00ABAB
      AB00A9A9A900A7A7A700A5A5A500A2A2A200A0A0A0009E9E9E009C9C9C009B9B
      9B0099999900979797009494940093939300919191008F8F8F008D8D8D008A8A
      8A0089898900868686008585850083838300808080007F7F7F007C7C7C007A7A
      7A0079797900777777007575750073737300707070006F6F6F006C6C6C006A6A
      6A0069696900666666006464640063636300616161005E5E5E005C5C5C005B5B
      5B0059595900575757005454540053535300515151004E4E4E004C4C4C004A4A
      4A0048484800464646004545450043434300414141003E3E3E003D3D3D003B3B
      3B00393939003737370034343400333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000CDDBD8BB000000000000C1DADAC1000000
      0000000000000000000000000000000000000000000000000000000000C0DAD5
      BBD7DADACE0000B6D8170A7FA9CECA0000000000000000000000000000000000
      0000000000000000000000B5D6D4AB828DA0B3CADADADB1C0A090D7777779BC2
      CEA7000000000000000000000000000000000000000000000000CFD9B5877C7E
      8E9D9C9BA3BA0F090B1FB8B0957D777789B5CEB5000000000000000000000000
      0000000000000000C7D8C0917B7C7E7F8F9E9D9C9B9B0E1DC8C3BDB8B4AEA088
      79777CA2CBC100000000000000000000000000000000B9D5CB9B7A7B7C7E7F80
      919F9E9D9C9BC7D3CDC8C3BDB8B4AEA9A08F7D77778FBBC50000000000000000
      0000000000D1D0A6797A7B7C7E7F808292A19F9E9D9CC4D7D3CDC8C3BDB8B4AE
      A9A39D9484787782A9B3000000000000000000C9D5B17D797A7B7C7E7F808283
      93A2A19F9E9D9CA3B4C8CDC8C3BDB8B4AEA9A39D9893857B77BF000000000000
      0000D4BD8778797A7B7C7E7F8082838494A3A2A19F9E9D9C9B9BA0AFBEC3BDB8
      B4AEA9A39D989BABBFBE00000000000000B8D37778797A7B7C7E7F808283848D
      ACA9A3A2A19F9E9D9C9B9B9A999DA9B6B8B4AEB5C2C2D0D6D400000000000000
      00B8D278797A7B7C7E7F8082838FABC2C2C2BEB4ACA19F9E9D9C9B9B9A999897
      9AA5C2DCDCA38FB5D20000000000000000B8D1797A7B7C7E7F808293B2C2B39B
      98A9B1BDC2C0B5AA9E9D9C9B9B9A999897959498AE9B91B1D100000000000000
      00B8D07A7B7C7E7F809AB2C2AB96888A99A6A5A4A5AFB8C2C0B7AB9E9B9B9A99
      9897959498A49BB1D00000000000000000B8CF7B7C7E7F99BAC2AB8D87888A8B
      9AA7A6A5A4A3A3A4ABB5C0C2B6AA9D9A99989795767571BACF00000000000000
      00B8CE7C829CBABEA3888587888A8B8C8484919AA3A4A3A3A2A19FAAB2BEC2BB
      AB9D9897747075C2CE0000000000000000B8BEA0BEBA9A87848587888A8B8C8A
      7E7F8080808A949DA3A2A19F9E9DA4AFBBC2BAADAC7273BACE00000000000000
      00B9C7B6998283848587888A8B8C8E827E7E7F8080808182868E969E9F9E9D9C
      9BA0ABB7C2BDAEB6CD0000000000000000B9B9808283848587888A8B8C8E877D
      7E9EA1998F858081828282838891999D9C9B9B9A9BA8B5C6CC00000000000000
      00B8B88283848587888A8B8C8E8B7D7D90997E86919EA49A8D84828283838385
      8C93999B9A9998B1CB0000000000000000B8B883848587888A8B8C8E8E7F7C8D
      A0807E7E7E7F808A949EA1988E858383848585898F9499B1CA00000000000000
      00B6B8848587888A8B8C8E8E7E7B8CA07F7D7D7E7E7E7F808080838E98A2A296
      8D848585858687AAC90000000000000000B8B88A87888A8B8C8E8E7E7A8F9D7E
      7C7C7D7D7E7E7E7F808080818282858F9BA4A0978B8586BFC100000000000000
      0000C4AF888A8B8C8E8B7D859AAC887B7B7C7C7D7D7E7E7E7F80808081828282
      83838892A9879DC60000000000000000000000C5B39A8F8F8C909EACB7ABB7BF
      B0A396857D7D7E7E7E7F808080818282828383969789C2B20000000000000000
      00000000B8C5C2C0B3A3A39485949F9DA0A6ADB7BEB1A093877E7F8080808182
      8282919F88B9BB00000000000000000000000000000000BD998080808092A29F
      9D9B9997959BA3ACB8BAADA19084808184989A89B8BB00000000000000000000
      00000000000000BB8E7C7C7C7C9BA4A29F9D9B99979593908E8B98A1ACBF9392
      9E8E9EBFB1000000000000000000000000000000000000BF8579787728267C81
      8B92969B99979593908E8B8A87B7A69EA5BEBA00000000000000000000000000
      00000000000000B8A527313A35353536373B38287F83888D91908E8B8AC2BCB4
      A40000000000000000000000000000000000000000000000001E425E5D51504A
      4645454547484D4E534F7C818FBF000000000000000000000000000000000000
      000000000000000000144C626262626262625F5E58575C5B5B5B4B20B3B10000
      0000000000000000000000000000000000000000000000000007556464646464
      646464646464646463613C000000000000000000000000000000000000000000
      0000000000000000000160656565656565656565656565656565300000000000
      0000000000000000000000000000000000000000000000000030666666666666
      6666666666666666666602000000000000000000000000000000000000000000
      00000000000000001A3D6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C56070000000000
      00000000000000000000000000000000000000000000000007496D6D6D6D6D6D
      6D6D6D6D6D6D6D6D6D491A000000000000000000000000000000000000000000
      000000000000000001596767676767676767676767676767673E000000000000
      0000000000000000000000000000000000000000000000222C68686868686868
      6868686868686868682C00000000000000000000000000000000000000000000
      000000000000000C3F696969696969696969696969696969540C000000000000
      000000000000000000000000000000000000000000000001526A6A6A6A6A6A6A
      6A6A6A6A6A6A6A6A432200000000000000000000000000000000000000000000
      0000000000001A2D6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E2E00000000000000
      0000000000000000000000000000000000000000000005406F6F6F6F6F6F6F6F
      6F6F6F6F6F6F6F44120000000000000000000000000000000000000000000000
      00000000001A2A6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B2F0000000000000000
      00000000000000000000000000000000000000000004415A5A5A5A5A5A5A5A5A
      5A5A5A5A5A5A3316000000000000000000000000000000000000000000000000
      0000000003102B2B213232323977777777777777773429000000000000000000
      0000000000000000000000000000000000000000000000252423191B1B130608
      151810101011000000000000000000000000000000000000000000000000FFFF
      FFFFFFFF0000FFFFFFFFFFFF0000FFFF87E1FFFF0000FFFE01807FFF0000FFF8
      00000FFF0000FFF0000003FF0000FFC0000000FF0000FF000000003F0000FE00
      0000000F0000F8000000000F0000F0000000000F0000E0000000001F0000E000
      0000001F0000E0000000001F0000E0000000001F0000E0000000001F0000E000
      0000001F0000E0000000001F0000E0000000001F0000E0000000001F0000E000
      0000001F0000E0000000001F0000E0000000001F0000E0000000001F0000F000
      0000003F0000F8000000003F0000FC000000007F0000FF80000000FF0000FF80
      000001FF0000FF80000007FF0000FF8000001FFF0000FFE00000FFFF0000FFE0
      0000FFFF0000FFE00007FFFF0000FFE00007FFFF0000FFE00007FFFF0000FFC0
      0007FFFF0000FFC00007FFFF0000FFC0000FFFFF0000FF80000FFFFF0000FF80
      000FFFFF0000FF80000FFFFF0000FF00001FFFFF0000FF00001FFFFF0000FE00
      003FFFFF0000FE00003FFFFF0000FC00007FFFFF0000FF8000FFFFFF0000}
    Options = [oHideOnRestore, oMinimizeToTray, oDblClickRestore, oShowAtDesignTime]
    PopupMenu = TrayPopupMenu
    PopupMenuRestoreItem = Restore1
    PopupMenuTrayMinimizeItem = Minimize1
    StartMinimized = True
    Left = 80
    Top = 8
  end
  object TrayPopupMenu: TPopupMenu
    Left = 116
    Top = 12
    object Restore1: TMenuItem
      Caption = 'Restore from Tray'
      Default = True
    end
    object Minimize1: TMenuItem
      Caption = 'Minimize to Tray'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Close1: TMenuItem
      Caption = '&Close'
      OnClick = Close1Click
    end
  end
  object RMGridReport1: TRMGridReport
    ThreadPrepareReport = True
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbPageSetup, pbExit]
    DefaultCollate = False
    SaveReportOptions.RegistryPath = 'ReportMachine\ReportSettings\'
    PreviewOptions.RulerUnit = rmutScreenPixels
    PreviewOptions.RulerVisible = False
    PreviewOptions.DrawBorder = False
    PreviewOptions.BorderPen.Color = clBlue
    PreviewOptions.BorderPen.Style = psDash
    CompressLevel = rmzcFastest
    CompressThread = False
    Left = 16
    Top = 24
    ReportData = {}
  end
end
