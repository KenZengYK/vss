unit trsummaryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, DB, DBClient, ppProd, ppClass, ppReport, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, myChkBox, ppViewr, ppStrtch,
  ppMemo, ppParameter, ADODB;

type
  Tfrmtrsummary = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rg01: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    title001: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText8: TppDBText;
    ppShape2: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText9: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText10: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText11: TppDBText;
    ppLine25: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel43: TppLabel;
    ttlwo: TppLabel;
    ppLabel11: TppLabel;
    ppLabel85: TppLabel;
    ppLabel88: TppLabel;
    ppLabel94: TppLabel;
    ppLine90: TppLine;
    ppLine111: TppLine;
    ppLabel104: TppLabel;
    ppLine126: TppLine;
    ppDBText47: TppDBText;
    ppLine127: TppLine;
    ppDBCalc28: TppDBCalc;
    ppLabel124: TppLabel;
    ppDBText48: TppDBText;
    ppDBCalc29: TppDBCalc;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLabel126: TppLabel;
    ppLine130: TppLine;
    ppLabel127: TppLabel;
    ppLine131: TppLine;
    ppDBText49: TppDBText;
    ppDBCalc30: TppDBCalc;
    ppLine134: TppLine;
    ppLabel129: TppLabel;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppReport3: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel136: TppLabel;
    title003: TppLabel;
    ppLabel138: TppLabel;
    ppDBText69: TppDBText;
    ppLabel139: TppLabel;
    ppDBText70: TppDBText;
    ppLabel142: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel143: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppShape7: TppShape;
    ppLabel144: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLine159: TppLine;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel176: TppLabel;
    pqty001: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape8: TppShape;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine191: TppLine;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel195: TppLabel;
    ppDBCalc34: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    cmp001: TmyCheckBox;
    cmp201: TmyCheckBox;
    cmp302: TmyCheckBox;
    cmp401: TmyCheckBox;
    ppDBText6: TppDBText;
    ppDBCalc61: TppDBCalc;
    ppMemo2: TppMemo;
    ppShape3: TppShape;
    ppShape9: TppShape;
    ppMemo3: TppMemo;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel42: TppLabel;
    ppDBText27: TppDBText;
    Label4: TLabel;
    Edit4: TEdit;
    ppLabel27: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppLine1: TppLine;
    ppDBText16: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel39: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText20: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppDBText21: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppDBText22: TppDBText;
    ppDBCalc31: TppDBCalc;
    ppDBText29: TppDBText;
    ppDBCalc32: TppDBCalc;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel62: TppLabel;
    ppDBText30: TppDBText;
    ppDBCalc33: TppDBCalc;
    ppLine21: TppLine;
    cmp400: TmyCheckBox;
    ppLine22: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    cmps03: TmyCheckBox;
    ppLine37: TppLine;
    cmps02: TmyCheckBox;
    ppLine38: TppLine;
    cmps01: TmyCheckBox;
    ppLine39: TppLine;
    ppLine40: TppLine;
    cmp002: TmyCheckBox;
    ppLine41: TppLine;
    ppLine42: TppLine;
    cmp402: TmyCheckBox;
    ppReport2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel53: TppLabel;
    title002: TppLabel;
    ppLabel86: TppLabel;
    ppDBText45: TppDBText;
    ppLabel87: TppLabel;
    ppDBText46: TppDBText;
    ppLabel90: TppLabel;
    ppDBText51: TppDBText;
    ppLabel91: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel92: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape5: TppShape;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLine93: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine94: TppLine;
    ppLine97: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel181: TppLabel;
    ppLabel196: TppLabel;
    ppLabel89: TppLabel;
    ppDBText50: TppDBText;
    ppLabel45: TppLabel;
    ppDBText28: TppDBText;
    ppDBText103: TppDBText;
    ppLabel46: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel40: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppDetailBand3: TppDetailBand;
    ppShape6: TppShape;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine148: TppLine;
    ppLine155: TppLine;
    ppLine182: TppLine;
    ppLine189: TppLine;
    ppLine215: TppLine;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    cmpr01: TmyCheckBox;
    cmpr02: TmyCheckBox;
    cmpr03: TmyCheckBox;
    cmpr04: TmyCheckBox;
    cmpr05: TmyCheckBox;
    cmpr06: TmyCheckBox;
    cmpr07: TmyCheckBox;
    cmpr08: TmyCheckBox;
    myCheckBox10: TmyCheckBox;
    myCheckBox11: TmyCheckBox;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel210: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppShape4: TppShape;
    ppMemo1: TppMemo;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppParameterList3: TppParameterList;
    cmpp01: TmyCheckBox;
    cmpp02: TmyCheckBox;
    cmpp04: TmyCheckBox;
    cmpp05: TmyCheckBox;
    cmpp06: TmyCheckBox;
    cmpp07: TmyCheckBox;
    cmpp08: TmyCheckBox;
    myCheckBox8: TmyCheckBox;
    myCheckBox9: TmyCheckBox;
    cmpp03: TmyCheckBox;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText44: TppDBText;
    ppDBText52: TppDBText;
    ppDBText57: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText74: TppDBText;
    ppDBText82: TppDBText;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine135: TppLine;
    ppLine137: TppLine;
    ppLabel9: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel93: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppLabel121: TppLabel;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLabel122: TppLabel;
    ppDBText83: TppDBText;
    ppLabel123: TppLabel;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLabel125: TppLabel;
    ppDBText84: TppDBText;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLabel128: TppLabel;
    ppDBText85: TppDBText;
    ppReport4: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppDBText86: TppDBText;
    ppLabel135: TppLabel;
    ppDBText87: TppDBText;
    ppLabel137: TppLabel;
    ppDBText88: TppDBText;
    ppLabel140: TppLabel;
    ppDBText89: TppDBText;
    ppLabel141: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel145: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape10: TppShape;
    ppLabel157: TppLabel;
    ppLabel161: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLine177: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLine181: TppLine;
    ppLabel175: TppLabel;
    ppLabel187: TppLabel;
    ppLine190: TppLine;
    ppLine192: TppLine;
    ppLabel188: TppLabel;
    ttlwo1: TppLabel;
    ppLabel190: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLine194: TppLine;
    ppLine196: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLine202: TppLine;
    mat001: TppLabel;
    ppLine204: TppLine;
    ppLine206: TppLine;
    ppLabel218: TppLabel;
    ppLine207: TppLine;
    ppLabel219: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape11: TppShape;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppLine208: TppLine;
    ppLine209: TppLine;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLine212: TppLine;
    ppLine213: TppLine;
    ppLine214: TppLine;
    ppLine216: TppLine;
    ppLine217: TppLine;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppLine218: TppLine;
    ppLine219: TppLine;
    ppLine220: TppLine;
    ppLine221: TppLine;
    ppLine222: TppLine;
    ppLine223: TppLine;
    ppLine224: TppLine;
    ppLine225: TppLine;
    ppDBText106: TppDBText;
    ppLine226: TppLine;
    ppLine227: TppLine;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLine230: TppLine;
    ppLine233: TppLine;
    ppLine236: TppLine;
    ppLine238: TppLine;
    ppLine242: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape12: TppShape;
    ppLabel220: TppLabel;
    ppDBCalc65: TppDBCalc;
    ppMemo4: TppMemo;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppParameterList4: TppParameterList;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppDBText116: TppDBText;
    ppLabel224: TppLabel;
    ppDBText117: TppDBText;
    ppLabel225: TppLabel;
    ppDBText118: TppDBText;
    ppLabel226: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel227: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel249: TppLabel;
    ppDBText119: TppDBText;
    ppLabel250: TppLabel;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppLabel251: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel277: TppLabel;
    ppDBCalc81: TppDBCalc;
    ppShape15: TppShape;
    ppMemo5: TppMemo;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel278: TppLabel;
    ppDBCalc97: TppDBCalc;
    ppDBCalc98: TppDBCalc;
    ppDBCalc99: TppDBCalc;
    ppDBCalc100: TppDBCalc;
    ppDBCalc101: TppDBCalc;
    ppDBCalc102: TppDBCalc;
    ppDBCalc103: TppDBCalc;
    ppDBCalc104: TppDBCalc;
    ppDBCalc105: TppDBCalc;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    ppDBCalc108: TppDBCalc;
    ppDBCalc109: TppDBCalc;
    ppDBCalc110: TppDBCalc;
    ppDBCalc111: TppDBCalc;
    ppDBCalc112: TppDBCalc;
    ppParameterList5: TppParameterList;
    ppDBText92: TppDBText;
    mat002: TppLabel;
    mat004: TppLabel;
    mat003: TppLabel;
    mat006: TppLabel;
    mat005: TppLabel;
    mat008: TppLabel;
    mat007: TppLabel;
    mat009: TppLabel;
    ppLabel183: TppLabel;
    ppLabel186: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLine193: TppLine;
    ppLine195: TppLine;
    ppLine197: TppLine;
    ppLabel204: TppLabel;
    ppLabel207: TppLabel;
    ppLabel209: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine203: TppLine;
    ppLine205: TppLine;
    ppLine234: TppLine;
    ppDBText93: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLine231: TppLine;
    ppLine232: TppLine;
    ppLine235: TppLine;
    ppLine237: TppLine;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppLine241: TppLine;
    ppLine243: TppLine;
    ppLine244: TppLine;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine249: TppLine;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppLine252: TppLine;
    ppLine253: TppLine;
    ppLine254: TppLine;
    ppLine255: TppLine;
    ppLine256: TppLine;
    ppLine257: TppLine;
    ppLine258: TppLine;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppLine261: TppLine;
    ppShape13: TppShape;
    mat01: TppLabel;
    mat02: TppLabel;
    mat03: TppLabel;
    mat04: TppLabel;
    mat05: TppLabel;
    mat06: TppLabel;
    mat07: TppLabel;
    mat08: TppLabel;
    mat09: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLine262: TppLine;
    ppLine263: TppLine;
    ppLine264: TppLine;
    ppLine265: TppLine;
    ppLine266: TppLine;
    ppLine267: TppLine;
    ppLine268: TppLine;
    ppLine269: TppLine;
    ppLine270: TppLine;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLine273: TppLine;
    ppLine274: TppLine;
    ppLine275: TppLine;
    ppLine276: TppLine;
    ppLine277: TppLine;
    ppLine278: TppLine;
    ppLine279: TppLine;
    ppLine280: TppLine;
    ppLine281: TppLine;
    ppLine282: TppLine;
    ppLine283: TppLine;
    ppLine284: TppLine;
    ppLine285: TppLine;
    ppLine286: TppLine;
    ppLine287: TppLine;
    ppLine288: TppLine;
    ppLine289: TppLine;
    ppShape14: TppShape;
    cq001: TppLabel;
    cd001: TppLabel;
    cq002: TppLabel;
    cd002: TppLabel;
    cq003: TppLabel;
    cd003: TppLabel;
    cq004: TppLabel;
    cd004: TppLabel;
    cq005: TppLabel;
    cd005: TppLabel;
    cq006: TppLabel;
    cd006: TppLabel;
    cq007: TppLabel;
    cd007: TppLabel;
    cq008: TppLabel;
    cd008: TppLabel;
    cq009: TppLabel;
    cd009: TppLabel;
    acq001: TppLabel;
    ADOQuery1: TADOQuery;
    acq01: TppLabel;
    cd01: TppLabel;
    cd02: TppLabel;
    cd03: TppLabel;
    cd04: TppLabel;
    cd05: TppLabel;
    cd06: TppLabel;
    cd07: TppLabel;
    cd08: TppLabel;
    cd09: TppLabel;
    cq01: TppLabel;
    cq02: TppLabel;
    cq03: TppLabel;
    cq04: TppLabel;
    cq05: TppLabel;
    cq06: TppLabel;
    cq07: TppLabel;
    cq08: TppLabel;
    cq09: TppLabel;
    ppLabel44: TppLabel;
    ppLabel103: TppLabel;
    ppLabel97: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtrsummary: Tfrmtrsummary;

implementation

uses mainformu, worksheet, achievingformu, lwoformu, trsummary1formu,
  trsummary2formu, trsummary_1formu, trsummary_2formu;

{$R *.dfm}

procedure Tfrmtrsummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmtrsummary_1<>nil then frmtrsummary_1:=nil;
  if frmtrsummary_2<>nil then frmtrsummary_2:=nil;
  action:=cafree;
  frmtrsummary:=nil;
end;

procedure Tfrmtrsummary.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  //showmessage(inttostr(rg01.itemindex));
  try
    tm:=now;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if (rg01.ItemIndex=0) or (rg01.ItemIndex=4) or (rg01.ItemIndex=2) then begin
        commandtext:='execute procedure sp_gen_tmptransit(:x1,:x2,:x3)';
      end else begin
        commandtext:='execute procedure sp_gen_tmptransit_1(:x1,:x2,:x3)';
      end;
      params[0].asstring:=edit1.text;
      if rg01.ItemIndex<>4 then
      params[1].asstring:=edit2.text
      else params[1].asstring:='';
      params[2].asdatetime:=tm;
      execute;
    end;
    if rg01.ItemIndex=0 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit where tm=:x1';
        if edit3.text>'' then commandtext:=commandtext+' and rwo='''+edit3.text+'''';// and acol='''+edit4.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' order by rwo,acol,fccs';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          //if pos('test',application.ExeName)>0 then title002.Caption:='-Test'
          //else title002.Caption:='- Total Transit Qty';
          ppReport2.Print;
        end;
      end;
    end else if rg01.ItemIndex=2 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,acol,sum(pqty) as pqty,max(plan_date) as plan_date,min(cfksrq) as cfksrq,max(cfwcrq) as cfwcrq,'
                    +'avg(xc3) as xc3,avg(yszq) as yszq,sum(tqty) as tqty,sum(ttqty) as ttqty,sum(tsqty) as tsqty,sum(tpqty) as tpqty,sum(tfqty) as tfqty,sum(teqty) as teqty,'
                    +'sum(t1b) as t1b,sum(taql) as taql,sum(tiqty) as tiqty,'
                    +'sum(diff1) as diff1,sum(diff2) as diff2,sum(diff3) as diff3,sum(diff4) as diff4,sum(diff5) as diff5,sum(diff6) as diff6,max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        if rg01.ItemIndex=0 then commandtext:=commandtext+' and rwo='''+edit3.text+''''// and acol='''+edit4.text+''''
        else if rg01.ItemIndex=1 then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,acol order by rwo';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select sum(pqty) as q1 from tbl_tmp_transit where tm=:x1 and j2_job='''+edit2.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('q1').isnull then ttlwo.Caption:=fieldbyname('q1').AsString else ttlwo.Caption:='0';
          end;
          //if pos('test',application.ExeName)>0 then title001.Caption:='-Test'
          //else title001.Caption:='- Total Transit Qty';
          ppReport1.Print;
        end;
      end;
      if frmtrsummary_1=nil then frmtrsummary_1:=tfrmtrsummary_1.Create(nil);
      with frmtrsummary_1.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,acol,sum(pqty) as pqty,max(plan_date) as plan_date,min(cfksrq) as cfksrq,max(cfwcrq) as cfwcrq,'
                    +'avg(xc3) as xc3,avg(yszq) as yszq,sum(tqty) as tqty,sum(ttqty) as ttqty,sum(tsqty) as tsqty,sum(tpqty) as tpqty,sum(tfqty) as tfqty,sum(teqty) as teqty,'
                    +'sum(t1b) as t1b,sum(taql) as taql,sum(tiqty) as tiqty,'
                    +'sum(tqty-pqty) as diff1,sum(ttqty-tqty) as diff2,sum(ttqty-ttqty) as diff3,sum(ttqty-ttqty) as diff4,sum(t1b-t1b) as diff5,sum(taql-t1b) as diff6,'
                    +'sum(taql-taql) as diff7,sum(tsqty-ttqty) as diff8,sum(tpqty-tsqty) as diff9,sum(tpqty-tpqty) as diff10,sum(tfqty-tpqty) as diff11,sum(tfqty-tfqty) as diff12,'
                    +'sum(teqty-tfqty) as diff13,sum(teqty-teqty) as diff14,sum(tiqty-teqty) as diff15,'
                    +'max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        if rg01.ItemIndex=0 then commandtext:=commandtext+' and rwo='''+edit3.text+''''// and acol='''+edit4.text+''''
        else if rg01.ItemIndex=1 then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,acol order by rwo';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          with frmtrsummary_1.query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select sum(pqty) as q1,sum(tiqty-pqty) as q2 from tbl_tmp_transit where tm=:x1 and j2_job='''+edit2.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('q1').isnull then frmtrsummary_1.ttlwo.Caption:=fieldbyname('q1').AsString else frmtrsummary_1.ttlwo.Caption:='0';
            //if not fieldbyname('q2').isnull then frmtrsummary_1.ttlloss.Caption:=fieldbyname('q2').AsString else frmtrsummary_1.ttlloss.Caption:='0';
          end;
          //if pos('test',application.ExeName)>0 then frmtrsummary_1.title001.Caption:='-Test'
          //else frmtrsummary_1.title001.Caption:='- Total Transit Qty';
          frmtrsummary_1.ppReport1.Print;
        end;
      end;
    end else if rg01.ItemIndex=15 then begin
      if frmtrsummary1=nil then frmtrsummary1:=tfrmtrsummary1.Create(nil);
      with frmtrsummary1.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,fccs,did,psiz,acol,sum(pqty) as pqty,max(plan_date) as plan_date,min(cfksrq) as cfksrq,max(cfwcrq) as cfwcrq,'
                    +'avg(xc3) as xc3,avg(yszq) as yszq,sum(tqty) as tqty,sum(ttqty) as ttqty,sum(tsqty) as tsqty,sum(tpqty) as tpqty,sum(tfqty) as tfqty,sum(teqty) as teqty,'
                    +'sum(diff1) as diff1,sum(diff2) as diff2,sum(diff3) as diff3,sum(diff4) as diff4,sum(diff5) as diff5,sum(diff6) as diff6,max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,fccs,did,psiz,acol order by rwo,fccs,psiz,did';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
            with frmtrsummary1.query2 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              commandtext:='select sum(pqty) as q1 from tbl_tmp_transit where tm=:x1 and j2_job='''+edit2.text+'''';
              if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
              params[0].asdatetime:=tm;
              open;
              if not fieldbyname('q1').isnull then frmtrsummary1.ttlwo.Caption:=fieldbyname('q1').AsString else frmtrsummary1.ttlwo.Caption:='0';
            end;
            //if pos('test',application.ExeName)>0 then frmtrsummary1.title001.Caption:='-Test'
            //else frmtrsummary1.title001.Caption:='';
            frmtrsummary1.ppDBText6.Visible:=true;
            frmtrsummary1.ppReport1.Print;
        end;
      end;
    end else if rg01.ItemIndex=11 then begin
      if frmtrsummary1=nil then frmtrsummary1:=tfrmtrsummary1.Create(nil);
      with frmtrsummary1.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit where tm=:x1';
        if edit3.text>'' then commandtext:=commandtext+' and rwo='''+edit3.text+'''';// and acol='''+edit4.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' order by rwo,fccs,did';
        //commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,fccs,did,psiz,sum(pqty) as pqty,max(plan_date) as plan_date,min(cfksrq) as cfksrq,max(cfwcrq) as cfwcrq,'
        //            +'avg(xc3) as xc3,avg(yszq) as yszq,sum(tqty) as tqty,sum(ttqty) as ttqty,sum(tsqty) as tsqty,sum(tpqty) as tpqty,sum(tfqty) as tfqty,sum(teqty) as teqty,'
        //            +'sum(diff1) as diff1,sum(diff2) as diff2,sum(diff3) as diff3,sum(diff4) as diff4,sum(diff5) as diff5,sum(diff6) as diff6,max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        //commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        //commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,fccs,did,psiz order by rwo,fccs,did';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
            //if pos('test',application.ExeName)>0 then frmtrsummary1.title002.Caption:='-Test'
            //else frmtrsummary1.title002.Caption:='';
            frmtrsummary1.ppDBText54.Visible:=true;
            frmtrsummary1.ppDBText56.Visible:=true;
            frmtrsummary1.ppDBText58.Visible:=true;
            frmtrsummary1.ppReport2.Print;
        end;
      end;
    end else if rg01.ItemIndex=4 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_tmp_transit_1 where tm=:x1 and j_no='''+edit1.text+''' order by j2_job';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select sum(pqty) as q1 from tbl_tmp_transit_1 where tm=:x1 and j_no='''+edit1.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('q1').isnull then pqty001.Caption:=fieldbyname('q1').AsString else pqty001.Caption:='0';
          end;
          //if pos('test',application.ExeName)>0 then title003.Caption:='-Test'
          //else title003.Caption:='';
          ppReport3.Print;
        end;
      end;
    end else if rg01.ItemIndex=1 then begin
      {
      with query1 do begin
        close;
        params.Clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        commandtext:='delete from transit_tmp_cutqty where (tm<:x1) or (tm=:x2)';
        params[0].asdatetime:=tm-0.1;
        params[1].asdatetime:=tm;
        execute;
      end;
      with adoquery1 do begin
        close;
        sql.text:='exec phgdb..sp_cutplan_getcutqty_bymaterial '''+edit2.text+'''';
        if edit4.text>'' then sql.text:=sql.text+','''+edit4.text+''''
        else sql.text:=sql.text+',''''';
        open;
        first;
        while not eof do begin
          with query1 do begin
            close;
            params.Clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            commandtext:='insert into transit_tmp_cutqty(tm,j2_job,acol,wl,psiz,mjjs) values(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asdatetime:=tm;
            params[1].asstring:=adoquery1.FieldByName('zdh').Value;
            params[2].asstring:=adoquery1.FieldByName('sh').Value;
            params[3].asstring:=adoquery1.FieldByName('wl').Value;
            params[4].asstring:=adoquery1.FieldByName('cm').Value;
            params[5].asinteger:=adoquery1.FieldByName('mjjs').Value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      }
      if frmtrsummary2=nil then frmtrsummary2:=tfrmtrsummary2.Create(nil);
      with frmtrsummary2.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select * from tbl_tmp_transit where tm=:x1';
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,fccs,psiz,acol,sum(pqty) as pqty,max(plan_date) as plan_date,min(cfksrq) as cfksrq,max(cfwcrq) as cfwcrq,'
                    +'sum(pqty) as pqty,avg(xc3) as xc3,avg(yszq) as yszq,sum(tqty) as tqty,sum(ttqty) as ttqty,sum(tsqty) as tsqty,sum(tpqty) as tpqty,sum(tfqty) as tfqty,sum(teqty) as teqty,'
                    +'sum(t1b) as t1b,sum(taql) as taql,max(yqlcrq) as yqlcrq,sum(tip) as tip from tbl_tmp_transit where tm=:x1';
        if edit3.text>'' then commandtext:=commandtext+' and rwo='''+edit3.text+'''';// and acol='''+edit4.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,fccs,psiz,acol order by acol,rwo,fccs,psiz';
        //commandtext:=commandtext+' order by rwo,did';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
            //if pos('test',application.ExeName)>0 then frmtrsummary2.title002.Caption:='-Test'
            //else frmtrsummary2.title002.Caption:='';
            frmtrsummary2.ppReport2.Print;
        end;
      end;
      {
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select * from tbl_tmp_transit where tm=:x1';
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,psiz,acol,sum(pqty) as pqty,'
                    +'max(plan_date) as plan_date,avg(xc3) as xc3,avg(yszq) as yszq,max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        if edit3.text>'' then commandtext:=commandtext+' and rwo='''+edit3.text+'''';// and acol='''+edit4.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,psiz,acol order by acol,rwo,psiz';
        //commandtext:=commandtext+' order by rwo,did';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          //if pos('test',application.ExeName)>0 then frmtrsummary2.title002.Caption:='-Test'
          //else frmtrsummary2.title002.Caption:='';
          mat01.Caption:=''; mat02.Caption:=''; mat03.Caption:=''; mat04.Caption:=''; mat05.Caption:='';
          mat06.Caption:=''; mat07.Caption:=''; mat08.Caption:=''; mat09.Caption:='';
          i:=0;
          with query1 do begin
            close;
            params.Clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select distinct wl from transit_tmp_cutqty where tm=:x1';
            params[0].asdatetime:=tm;
            open;
            first;
            while not eof do begin
              i:=i+1;
              if i=1 then mat01.Caption:=fieldbyname('wl').Value
              else if i=2 then mat02.Caption:=fieldbyname('wl').Value
              else if i=3 then mat03.Caption:=fieldbyname('wl').Value
              else if i=4 then mat04.Caption:=fieldbyname('wl').Value
              else if i=5 then mat05.Caption:=fieldbyname('wl').Value
              else if i=6 then mat06.Caption:=fieldbyname('wl').Value
              else if i=7 then mat07.Caption:=fieldbyname('wl').Value
              else if i=8 then mat08.Caption:=fieldbyname('wl').Value
              else if i=9 then mat09.Caption:=fieldbyname('wl').Value;
              application.ProcessMessages;
              next;
            end;
          end;
          ppReport5.Print;
        end;
      end;
      }
    end else if rg01.ItemIndex=3 then begin
      {
      with query1 do begin
        close;
        params.Clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        commandtext:='delete from transit_tmp_cutqty where (tm<:x1) or (tm=:x2)';
        params[0].asdatetime:=tm-0.1;
        params[1].asdatetime:=tm;
        execute;
      end;
      with adoquery1 do begin
        close;
        sql.text:='exec phgdb..sp_cutplan_getcutqty_bymaterial '''+edit2.text+'''';
        if edit4.text>'' then sql.text:=sql.text+','''+edit4.text+''''
        else sql.text:=sql.text+',''''';
        open;
        first;
        while not eof do begin
          with query1 do begin
            close;
            params.Clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            commandtext:='insert into transit_tmp_cutqty(tm,j2_job,acol,wl,psiz,mjjs) values(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asdatetime:=tm;
            params[1].asstring:=adoquery1.FieldByName('zdh').Value;
            params[2].asstring:=adoquery1.FieldByName('sh').Value;
            params[3].asstring:=adoquery1.FieldByName('wl').Value;
            params[4].asstring:=adoquery1.FieldByName('cm').Value;
            params[5].asinteger:=adoquery1.FieldByName('mjjs').Value;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      }
      if frmtrsummary2=nil then frmtrsummary2:=tfrmtrsummary2.Create(nil);
      with frmtrsummary2.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,fccs,psiz,acol,sum(pqty) as pqty,max(plan_date) as plan_date,min(cfksrq) as cfksrq,max(cfwcrq) as cfwcrq,'
                    +'avg(xc3) as xc3,avg(yszq) as yszq,sum(tqty) as tqty,sum(ttqty) as ttqty,sum(tsqty) as tsqty,sum(tpqty) as tpqty,sum(tfqty) as tfqty,sum(teqty) as teqty,'
                    +'sum(tip) as tip,sum(taql) as taql,max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,fccs,psiz,acol order by acol,rwo,fccs,psiz';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
            with frmtrsummary2.query2 do begin
              close;
              params.clear;
              params.createparam(ftdatetime,'x1',ptinput);
              commandtext:='select sum(pqty) as q1 from tbl_tmp_transit where tm=:x1 and j2_job='''+edit2.text+'''';
              if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
              params[0].asdatetime:=tm;
              open;
              if not fieldbyname('q1').isnull then frmtrsummary2.ttlwo.Caption:=fieldbyname('q1').AsString else frmtrsummary2.ttlwo.Caption:='0';
            end;
            //if pos('test',application.ExeName)>0 then frmtrsummary2.title001.Caption:='-Test'
            //else frmtrsummary2.title001.Caption:='';
            frmtrsummary2.ppReport1.Print;
        end;
      end;
      {
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select * from tbl_tmp_transit where tm=:x1';
        commandtext:='select distinct tm,tplant,j_no,j2_job,cstyle,rwo,psiz,acol,sum(pqty) as pqty,'
                    +'max(plan_date) as plan_date,avg(xc3) as xc3,avg(yszq) as yszq,max(yqlcrq) as yqlcrq from tbl_tmp_transit where tm=:x1';
        //if edit3.text>'' then commandtext:=commandtext+' and rwo='''+edit3.text+'''';// and acol='''+edit4.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and j2_job='''+edit2.text+'''';
        if edit4.text>'' then commandtext:=commandtext+' and acol='''+edit4.text+'''';
        commandtext:=commandtext+' group by tm,tplant,j_no,j2_job,cstyle,rwo,psiz,acol order by acol,rwo,psiz';
        //commandtext:=commandtext+' order by rwo,did';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          //if pos('test',application.ExeName)>0 then frmtrsummary2.title002.Caption:='-Test'
          //else frmtrsummary2.title002.Caption:='';
          mat001.Caption:=''; mat002.Caption:=''; mat003.Caption:=''; mat004.Caption:=''; mat005.Caption:='';
          mat006.Caption:=''; mat007.Caption:=''; mat008.Caption:=''; mat009.Caption:='';
          i:=0;
          with query1 do begin
            close;
            params.Clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select distinct wl from transit_tmp_cutqty where tm=:x1';
            params[0].asdatetime:=tm;
            open;
            first;
            while not eof do begin
              i:=i+1;
              if i=1 then mat001.Caption:=fieldbyname('wl').Value
              else if i=2 then mat002.Caption:=fieldbyname('wl').Value
              else if i=3 then mat003.Caption:=fieldbyname('wl').Value
              else if i=4 then mat004.Caption:=fieldbyname('wl').Value
              else if i=5 then mat005.Caption:=fieldbyname('wl').Value
              else if i=6 then mat006.Caption:=fieldbyname('wl').Value
              else if i=7 then mat007.Caption:=fieldbyname('wl').Value
              else if i=8 then mat008.Caption:=fieldbyname('wl').Value
              else if i=9 then mat009.Caption:=fieldbyname('wl').Value;
              application.ProcessMessages;
              next;
            end;
          end;
          ppReport4.Print;
        end;
      end;
      }
    end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmtrsummary.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtrsummary.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp from tbl_tmp_transit where tm=:x1 and cmp=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp').isnull then cmp001.Checked:=false else cmp001.Checked:=true;
  end;
  //{
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp1 from tbl_tmp_transit where tm=:x1 and cmp1=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp1').isnull then cmp002.Checked:=false else cmp002.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmps from tbl_tmp_transit where tm=:x1 and cmps=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmps').isnull then cmps03.Checked:=false else cmps03.Checked:=true;
  end;
  //}
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp2 from tbl_tmp_transit where tm=:x1 and cmp2=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp2').isnull then cmp201.Checked:=false else cmp201.Checked:=true;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp3 from tbl_tmp_transit where tm=:x1 and cmp3=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp3').isnull then begin
      //cmp301.Checked:=false;
      cmp302.Checked:=false;
    end else begin
      //cmp301.Checked:=true;
      cmp302.Checked:=true;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmp4 from tbl_tmp_transit where tm=:x1 and cmp4=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmp4').isnull then cmp400.Checked:=false else cmp400.Checked:=true;
    if not fieldbyname('cmp4').isnull then cmp401.Checked:=false else cmp401.Checked:=true;
  end;
  //{
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct cmpi from tbl_tmp_transit where tm=:x1 and cmpi=0';
    params[0].asdatetime:=query3.fieldbyname('tm').value;
    open;
    if not fieldbyname('cmpi').isnull then title001.Caption:='- WIP'
    else title001.Caption:='- Complete';
    if not fieldbyname('cmpi').isnull then cmp402.Checked:=false else cmp402.Checked:=true;
  end;
  //}
end;

procedure Tfrmtrsummary.ppDetailBand2BeforePrint(Sender: TObject);
begin
  cq001.Caption:=''; cd001.Caption:=''; cq002.Caption:=''; cd002.Caption:='';
  cq003.Caption:=''; cd003.Caption:=''; cq004.Caption:=''; cd004.Caption:='';
  cq005.Caption:=''; cd005.Caption:=''; cq006.Caption:=''; cd006.Caption:='';
  cq007.Caption:=''; cd007.Caption:=''; cq008.Caption:=''; cd008.Caption:='';
  cq009.Caption:=''; cd009.Caption:=''; acq001.Caption:='';
  if mat001.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      acq001.Caption:=fieldbyname('x1').AsString;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat001.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq001.Caption:=fieldbyname('x1').AsString;
      cd001.Caption:=inttostr(strtoint(cq001.Caption)-strtoint(acq001.Caption));
    end;
  end;
  if mat002.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat002.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq002.Caption:=fieldbyname('x1').AsString;
      cd002.Caption:=inttostr(strtoint(cq002.Caption)-strtoint(acq001.Caption));
    end;
  end;
  if mat003.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat003.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq003.Caption:=fieldbyname('x1').AsString;
      cd003.Caption:=inttostr(strtoint(cq003.Caption)-strtoint(acq001.Caption));
    end;
  end;
  if mat004.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat004.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq004.Caption:=fieldbyname('x1').AsString;
      cd004.Caption:=inttostr(strtoint(cq004.Caption)-strtoint(acq001.Caption));
    end;
  end;
  if mat005.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat005.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq005.Caption:=fieldbyname('x1').AsString;
      cd005.Caption:=inttostr(strtoint(cq005.Caption)-strtoint(acq001.Caption));
    end;
  end;
end;

procedure Tfrmtrsummary.ppDetailBand3BeforePrint(Sender: TObject);
begin
  cmpr01.checked:=query3.fieldbyname('cmp').value;
  cmpr02.checked:=query3.fieldbyname('cmp1').value;
  cmpr03.checked:=query3.fieldbyname('cmps').value;
  cmpr04.checked:=query3.fieldbyname('cmp2').value;
  cmpr05.checked:=query3.fieldbyname('cmp3').value;
  cmpr06.checked:=query3.fieldbyname('cmp4').value;
  cmpr07.checked:=query3.fieldbyname('cmp4').value;
  cmpr08.checked:=query3.fieldbyname('cmpi').value;
end;

procedure Tfrmtrsummary.ppDetailBand4BeforePrint(Sender: TObject);
begin
  cmpp01.checked:=query3.fieldbyname('cmp').value;
  cmpp02.checked:=query3.fieldbyname('cmp1').value;
  cmpp03.checked:=query3.fieldbyname('cmps').value;
  cmpp04.checked:=query3.fieldbyname('cmp2').value;
  cmpp05.checked:=query3.fieldbyname('cmp3').value;
  cmpp06.checked:=query3.fieldbyname('cmp4').value;
  cmpp07.checked:=query3.fieldbyname('cmp4').value;
  cmpp08.checked:=query3.fieldbyname('cmpi').value;
end;

procedure Tfrmtrsummary.ppDetailBand5BeforePrint(Sender: TObject);
begin
  cq01.Caption:=''; cd01.Caption:=''; cq02.Caption:=''; cd02.Caption:='';
  cq03.Caption:=''; cd03.Caption:=''; cq04.Caption:=''; cd04.Caption:='';
  cq05.Caption:=''; cd05.Caption:=''; cq06.Caption:=''; cd06.Caption:='';
  cq07.Caption:=''; cd07.Caption:=''; cq08.Caption:=''; cd08.Caption:='';
  cq09.Caption:=''; cd09.Caption:=''; acq01.Caption:='';
  if mat01.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      acq01.Caption:=fieldbyname('x1').AsString;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat01.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq01.Caption:=fieldbyname('x1').AsString;
      cd01.Caption:=inttostr(strtoint(cq01.Caption)-strtoint(acq01.Caption));
    end;
  end;
  if mat02.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat02.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq02.Caption:=fieldbyname('x1').AsString;
      cd02.Caption:=inttostr(strtoint(cq02.Caption)-strtoint(acq01.Caption));
    end;
  end;
  if mat03.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat03.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq03.Caption:=fieldbyname('x1').AsString;
      cd03.Caption:=inttostr(strtoint(cq03.Caption)-strtoint(acq01.Caption));
    end;
  end;
  if mat04.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat04.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq04.Caption:=fieldbyname('x1').AsString;
      cd04.Caption:=inttostr(strtoint(cq04.Caption)-strtoint(acq01.Caption));
    end;
  end;
  if mat05.Caption>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select min(mjjs) as x1 from transit_tmp_cutqty where tm=:x1 and acol=:x2 and psiz=:x3 and wl='''+mat05.caption+'''';
      params[0].asdatetime:=query3.fieldbyname('tm').value;
      params[1].asstring:=query3.fieldbyname('acol').value;
      params[2].asstring:=query3.fieldbyname('psiz').value;
      open;
      cq05.Caption:=fieldbyname('x1').AsString;
      cd05.Caption:=inttostr(strtoint(cq05.Caption)-strtoint(acq01.Caption));
    end;
  end;
end;

end.
