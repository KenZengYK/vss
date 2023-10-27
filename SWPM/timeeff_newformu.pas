﻿unit timeeff_newformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, DB, DBClient, GridsEh, DBGridEh, Buttons,
  ExtCtrls, ppDB, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DBGridEHImpExp,
  ppStrtch, ppSubRpt, ppViewr, ppMemo;

type
  Tfrmtimeeff_new = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine19: TppLine;
    ppLabel30: TppLabel;
    ppLine21: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine23: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine22: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppParameterList1: TppParameterList;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine10: TppLine;
    ppLabel5: TppLabel;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    ComboBox3: TComboBox;
    ppReport2: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    BitBtn6: TBitBtn;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText68: TppDBText;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppShape9: TppShape;
    ppLabel100: TppLabel;
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
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppDBCalc73: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppShape10: TppShape;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppLine204: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLine207: TppLine;
    ppLine208: TppLine;
    ppLine209: TppLine;
    ppLine210: TppLine;
    ppShape11: TppShape;
    ppSystemVariable4: TppSystemVariable;
    ppLabel93: TppLabel;
    ppMemo1: TppMemo;
    ppLabel125: TppLabel;
    fj001: TppLabel;
    gg001: TppLabel;
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
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
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
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppShape6: TppShape;
    rx001: TppLabel;
    sl001: TppLabel;
    avg002: TppLabel;
    avg003: TppLabel;
    avg004: TppLabel;
    avg005: TppLabel;
    calccu1: TppDBCalc;
    calccu2: TppDBCalc;
    calccu3: TppDBCalc;
    calccu4: TppDBCalc;
    calcdiff1: TppDBCalc;
    calcdiff2: TppDBCalc;
    calcdiff3: TppDBCalc;
    calcdiff4: TppDBCalc;
    calceff1: TppDBCalc;
    calceff2: TppDBCalc;
    calceff3: TppDBCalc;
    calceff4: TppDBCalc;
    calctmeff1: TppDBCalc;
    calctmeff2: TppDBCalc;
    calctmeff3: TppDBCalc;
    calctmeff4: TppDBCalc;
    ppLabel136: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel87: TppLabel;
    ppLabel92: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine211: TppLine;
    ppShape8: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
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
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine35: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppShape4: TppShape;
    ppSystemVariable5: TppSystemVariable;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText3: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppShape5: TppShape;
    avg001: TppLabel;
    calcsah1: TppDBCalc;
    calcsah2: TppDBCalc;
    calcsah3: TppDBCalc;
    calcsah4: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel50: TppLabel;
    ppLabel76: TppLabel;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
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
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine147: TppLine;
    ppShape7: TppShape;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel94: TppLabel;
    ppLabel99: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine34: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppShape3: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppLabel127: TppLabel;
    ppMemo2: TppMemo;
    ppLabel128: TppLabel;
    ppMemo3: TppMemo;
    ppDBText67: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBCalc51: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppLabel126: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel137: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText89: TppDBText;
    ppLine212: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLine216: TppLine;
    ppLine217: TppLine;
    ppLine219: TppLine;
    ppLine220: TppLine;
    ppLine221: TppLine;
    ppLine222: TppLine;
    ppLine223: TppLine;
    ppLine224: TppLine;
    ppLine225: TppLine;
    ppLine226: TppLine;
    ppLine227: TppLine;
    ppLine228: TppLine;
    ppLine230: TppLine;
    ppLine231: TppLine;
    ppShape12: TppShape;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBCalc112: TppDBCalc;
    ppDBCalc113: TppDBCalc;
    ppDBCalc114: TppDBCalc;
    ppDBCalc115: TppDBCalc;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLine232: TppLine;
    ppLine234: TppLine;
    ppLine235: TppLine;
    ppLine236: TppLine;
    ppLine237: TppLine;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppLine241: TppLine;
    ppLine242: TppLine;
    ppLine243: TppLine;
    ppLine244: TppLine;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppLine252: TppLine;
    ppLine253: TppLine;
    ppMemo4: TppMemo;
    ppShape13: TppShape;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLine254: TppLine;
    ppLine255: TppLine;
    ppLine257: TppLine;
    ppLine258: TppLine;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppLine261: TppLine;
    ppLine262: TppLine;
    ppLine263: TppLine;
    ppLine264: TppLine;
    ppLine265: TppLine;
    ppLine266: TppLine;
    ppLine267: TppLine;
    ppLine268: TppLine;
    ppLine269: TppLine;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLine274: TppLine;
    ppShape14: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppLabel176: TppLabel;
    ppLabel144: TppLabel;
    ppLabel157: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBCalc81: TppDBCalc;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppDBText86: TppDBText;
    ppDBCalc85: TppDBCalc;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppDBText87: TppDBText;
    ppDBCalc86: TppDBCalc;
    ppDBText88: TppDBText;
    ppDBText90: TppDBText;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QuerySHRSChange(Sender: TField);
    procedure QuerySHRS1Change(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtimeeff_new: Tfrmtimeeff_new;

implementation

{$R *.dfm}

uses mainformu, timeeff_notepadformu;

procedure Tfrmtimeeff_new.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmtimeeff_new.BitBtn2Click(Sender: TObject);
begin
  //try
    with query3 do begin
      close;
      params.Clear;
      params.CreateParam(ftdate,'x1',ptinput);
      params.CreateParam(ftdate,'x2',ptinput);
      params.CreateParam(ftdatetime,'x3',ptinput);
      commandtext:='select distinct tm,yr,mn,sum(sah_sl) as sah_sl,sum(sah_fj) as sah_fj,sum(sah_gg) as sah_gg,sum(sah_rx) as sah_rx,'
                  +'sum(qty_sl) as qty_sl,sum(qty_fj) as qty_fj,sum(qty_gg) as qty_gg,sum(qty_rx) as qty_rx,sum(tqty) as tqty,'
                  +'sum(shrs_sl) as shrs_sl,sum(shrs_fj) as shrs_fj,sum(shrs_gg) as shrs_gg,sum(shrs_rx) as shrs_rx,sum(tshrs) as tshrs,'
                  +'sum(tsah_sl) as tsah_sl,sum(tsah_fj) as tsah_fj,sum(tsah_gg) as tsah_gg,sum(tsah_rx) as tsah_rx,sum(tsah) as tsah,'
                  +'sum(tmeff_sl) as tmeff_sl,sum(tmeff_fj) as tmeff_fj,sum(tmeff_gg) as tmeff_gg,sum(tmeff_rx) as tmeff_rx,'
                  +'sum(eff_sl) as eff_sl,sum(eff_fj) as eff_fj,sum(eff_gg) as eff_gg,sum(eff_rx) as eff_rx,'
                  +'sum(cu_sl) as cu_sl,sum(cu_fj) as cu_fj,sum(cu_gg) as cu_gg,sum(cu_rx) as cu_rx,'
                  +'sum(diff_sl) as diff_sl,sum(diff_fj) as diff_fj,sum(diff_gg) as diff_gg,sum(diff_rx) as diff_rx,'
                  +'sum(csect_sl) as csect_sl,sum(csect_fj) as csect_fj,sum(csect_gg) as csect_gg,sum(csect_rx) as csect_rx,sum(tcsect) as tcsect,'
                  +'sum(ceot_sl) as ceot_sl,sum(ceot_fj) as ceot_fj,sum(ceot_gg) as ceot_gg,sum(ceot_rx) as ceot_rx,sum(tceot) as tceot,'
                  +'sum(xjs_sl) as xjs_sl,sum(xjs_fj) as xjs_fj,sum(xjs_gg) as xjs_gg,sum(xjs_rx) as xjs_rx,'
                  +'sum(lb3_sl) as lb3_sl,sum(lb3_fj) as lb3_fj,sum(lb3_gg) as lb3_gg,sum(lb3_rx) as lb3_rx,'
                  +'sum(lb6_sl) as lb6_sl,sum(lb6_fj) as lb6_fj,sum(lb6_gg) as lb6_gg,sum(lb6_rx) as lb6_rx,'
                  +'sum(pe_sl) as pe_sl,sum(pe_fj) as pe_fj,sum(pe_gg) as pe_gg,sum(pe_rx) as pe_rx,'
                  +'sum(lbdiff_sl) as lbdiff_sl,sum(lbdiff_fj) as lbdiff_fj,sum(lbdiff_gg) as lbdiff_gg,sum(lbdiff_rx) as lbdiff_rx '
                  +'from sp_tmeffprint(:x1,:x2,:x3) group by tm,yr,mn';
      params[0].AsDate:=dateedit1.Date;
      params[1].AsDate:=dateedit2.Date;
      params[2].AsDatetime:=now;
      open;
      if not fieldbyname('tm').isnull then begin
        with query2 do begin
          close;
          params.clear;
          params.CreateParam(ftdate,'x1',ptinput);
          params.CreateParam(ftdate,'x2',ptinput);
          commandtext:='select avg(sah) as x1,avg(tmeff) as x2,avg(eff) as x3,avg(cu) as x4,avg(diff) as x5 from tbl_tmeff where dt1>=:x1 and dt2<=:x2';
          params[0].AsDate:=dateedit1.Date;
          params[1].AsDate:=dateedit2.Date;
          open;
          if not fieldbyname('x1').isnull then begin
            avg001.Caption:=formatfloat('0.0000',fieldbyname('x1').Value);
            avg002.Caption:=formatfloat('0.00',fieldbyname('x2').Value);
            avg003.Caption:=formatfloat('0.00',fieldbyname('x3').Value);
            avg004.Caption:=formatfloat('0.00',fieldbyname('x4').Value);
            avg005.Caption:=formatfloat('0.00',fieldbyname('x5').Value);
          end else begin
            avg001.Caption:='0.0000';
            avg002.Caption:='0.00';
            avg003.Caption:='0.00';
            avg004.Caption:='0.00';
            avg005.Caption:='0.00';
          end;
        end;
        ppmemo1.lines.clear;
        ppmemo2.lines.clear;
        ppmemo3.lines.clear;
        ppmemo4.lines.clear;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select remarks from tbl_tmeff_notepad';
          open;
          if not fieldbyname('remarks').isnull then begin
            ppmemo1.text:=fieldbyname('remarks').value;
            ppmemo2.text:=fieldbyname('remarks').value;
            ppmemo3.text:=fieldbyname('remarks').value;
            ppmemo4.text:=fieldbyname('remarks').value;
          end;
        end;
        ppReport2.Print;
      end;
    end;
  //finally

  //end;
end;

procedure Tfrmtimeeff_new.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.Clear;
      params.CreateParam(ftstring,'x1',ptinput);
      params.CreateParam(ftdate,'x2',ptinput);
      params.CreateParam(ftdate,'x3',ptinput);
      commandtext:='execute procedure sp_gentmeff_new(:x1,:x2,:x3)';
      params[0].AsString:=combobox1.Text;
      params[1].AsDate:=dateedit1.Date;
      params[2].AsDate:=dateedit2.Date;
      execute;
    end;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftstring,'x1',ptinput);
      params.CreateParam(ftdate,'x2',ptinput);
      params.CreateParam(ftdate,'x3',ptinput);
      commandtext:='select * from tbl_tmeff_new a where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].AsString:=combobox1.Text;
      params[1].AsDate:=dateedit1.Date;
      params[2].AsDate:=dateedit2.Date;
      open;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmtimeeff_new.BitBtn4Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
  lssavedialog: tsavedialog;
begin
  //Export data from dbgrideh into selected file type
  try
     lssavedialog := tsavedialog.Create(nil);
     lssavedialog.Filter := '*.xls|*.xls|*.csv|*.csv|*.htm|*.htm|*.rtf|*.rtf|*.txt|*.txt';
     lssavedialog.FileName := ' ';
     if lssavedialog.Execute then
     begin
       case lssavedialog.FilterIndex of
         1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
         2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
         3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
         4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
         5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
       else
         ExpClass := nil; Ext := '';
       end;
       if ExpClass <> nil then
       begin
         if UpperCase(Copy(lssavedialog.FileName, Length(lssavedialog.FileName) - 2, 3)) <> UpperCase(Ext) then
           lssavedialog.FileName := lssavedialog.FileName + '.' + Ext;
         if FileExists(lssavedialog.FileName) then
         begin
           if application.MessageBox('File existed, overwrite it?', 'Confirmation', MB_ICONASTERISK or MB_OKCANCEL) <> idok then
           begin
             exit;
           end;
         end;
         Screen.Cursor := crHourGlass;
         try
         SaveDBGridEhToExportFile(ExpClass, DBGridEh1, lssavedialog.FileName, true);
         except
           ShowMessage('NO');
         end;
         Screen.Cursor := crDefault;
       end;
     end;
   finally
     lssavedialog.Free;
   end;
end;

procedure Tfrmtimeeff_new.BitBtn5Click(Sender: TObject);
begin
  if frmtimeeff_notepad=nil then frmtimeeff_notepad:=tfrmtimeeff_notepad.create(nil);
  frmtimeeff_notepad.query1.active:=true;
  frmtimeeff_notepad.show;
end;

procedure Tfrmtimeeff_new.DataSource1StateChange(Sender: TObject);
begin
  if query1.active=true then begin
    if query1.State=dsbrowse then begin
      with query2 do begin
        close;
        params.Clear;
        params.Createparam(ftstring,'x1',ptinput);
        params.Createparam(ftdate,'x2',ptinput);
        params.Createparam(ftdate,'x3',ptinput);
        //commandtext:='select sum(tsah)/sum(tqty) as sah,sum(eff*tsah)/sum(tsah) as eff,sum(cu*tsah)/sum(tsah) as cu,sum(diff*tsah)/sum(tsah) as diff,'
        //            +'sum(pe1*tsah)/sum(tsah) as pe1,sum(pe2*tsah)/sum(tsah) as pe2,sum(pediff*tsah)/sum(tsah) as pediff,sum(lb3wf*tsah)/sum(tsah) as lb3wf,sum(lb6wf*tsah)/sum(tsah) as lb6wf '
        commandtext:='select sum(tsah)/sum(tqty) as sah,avg(eff) as eff,avg(cu) as cu,avg(diff) as diff,'
                    +'avg(pe1) as pe1,avg(pe2) as pe2,avg(pediff) as pediff,avg(lb3wf) as lb3wf,avg(lb6wf) as lb6wf '
                    +'from tbl_tmeff_new where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
        params[0].AsString:=combobox1.Text;
        params[1].AsDate:=dateedit1.Date;
        params[2].AsDate:=dateedit2.Date;
        open;
        if not fieldbyname('sah').IsNull then begin
          dbgrideh1.Columns[1].Footer.value:=formatfloat('0.0000',fieldbyname('sah').Value);
          dbgrideh1.Columns[6].Footer.value:=formatfloat('0.00',fieldbyname('eff').Value);
          dbgrideh1.Columns[7].Footer.value:=formatfloat('0.00',fieldbyname('cu').Value);
          //dbgrideh1.Columns[8].Footer.value:=formatfloat('0.00',fieldbyname('tmeff').Value);
          //dbgrideh1.Columns[9].Footer.value:=formatfloat('0.00',fieldbyname('tmeff1').Value);
          dbgrideh1.Columns[12].Footer.value:=formatfloat('0.00',fieldbyname('diff').Value);
          dbgrideh1.Columns[13].Footer.value:=formatfloat('0.00',fieldbyname('pe1').Value);
          dbgrideh1.Columns[14].Footer.value:=formatfloat('0.00',fieldbyname('pe2').Value);
          dbgrideh1.Columns[15].Footer.value:=formatfloat('0.00',fieldbyname('pediff').Value);
          dbgrideh1.Columns[16].Footer.value:=formatfloat('0.0',fieldbyname('lb3wf').Value);
          dbgrideh1.Columns[17].Footer.value:=formatfloat('0.0',fieldbyname('lb6wf').Value);
        end else begin
          dbgrideh1.Columns[1].Footer.value:='0.0000';
          dbgrideh1.Columns[6].Footer.value:='0.00';
          dbgrideh1.Columns[7].Footer.value:='0.00';
          //dbgrideh1.Columns[8].Footer.value:='0.00';
          //dbgrideh1.Columns[9].Footer.value:='0.00';
          dbgrideh1.Columns[12].Footer.value:='0.00';
          dbgrideh1.Columns[13].Footer.value:='0.00';
          dbgrideh1.Columns[14].Footer.value:='0.00';
          dbgrideh1.Columns[15].Footer.value:='0.00';
          dbgrideh1.Columns[16].Footer.value:='0.0';
          dbgrideh1.Columns[17].Footer.value:='0.0';
        end;
      end;
      with query2 do begin
        close;
        params.Clear;
        params.Createparam(ftstring,'x1',ptinput);
        params.Createparam(ftdate,'x2',ptinput);
        params.Createparam(ftdate,'x3',ptinput);
        commandtext:='select sum(tsah)/sum(shrs) as tmeff '
                    +'from tbl_tmeff_new where tplant=:x1 and dt1>=:x2 and dt1<=:x3 and shrs>0';
        params[0].AsString:=combobox1.Text;
        params[1].AsDate:=dateedit1.Date;
        params[2].AsDate:=dateedit2.Date;
        open;
        if not fieldbyname('tmeff').IsNull then
          dbgrideh1.Columns[10].Footer.value:=formatfloat('0.00',fieldbyname('tmeff').Value*100.00)
        else dbgrideh1.Columns[10].Footer.value:='0.00';
      end;
      with query2 do begin
        close;
        params.Clear;
        params.Createparam(ftstring,'x1',ptinput);
        params.Createparam(ftdate,'x2',ptinput);
        params.Createparam(ftdate,'x3',ptinput);
        commandtext:='select sum(tsah)/sum(shrs1) as tmeff1 '
                    +'from tbl_tmeff_new where tplant=:x1 and dt1>=:x2 and dt1<=:x3 and shrs1>0';
        params[0].AsString:=combobox1.Text;
        params[1].AsDate:=dateedit1.Date;
        params[2].AsDate:=dateedit2.Date;
        open;
        if not fieldbyname('tmeff1').IsNull then
          dbgrideh1.Columns[11].Footer.value:=formatfloat('0.00',fieldbyname('tmeff1').Value*100.00)
        else dbgrideh1.Columns[11].Footer.value:='0.00';
      end;
    end;
  end;
end;

procedure Tfrmtimeeff_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmtimeeff_new:=nil;
end;

procedure Tfrmtimeeff_new.FormShow(Sender: TObject);
var
  y,m,n:word;
begin
  decodedate(date,y,m,n);
  dateedit1.Date:=encodedate(y,m,1);
  dateedit2.Date:=date-2;
  if dateedit2.Date<dateedit1.Date then dateedit1.Date:=dateedit2.Date;
end;

procedure Tfrmtimeeff_new.ppDetailBand2BeforePrint(Sender: TObject);
begin
  sl001.Caption:='0.00'; fj001.Caption:='0.00'; gg001.Caption:='0.00'; rx001.Caption:='0.00';
  if query3.FieldByName('mn').Value<>1 then begin
    with query2 do begin
      close;
      params.Clear;
      params.CreateParam(ftinteger,'x1',ptinput);
      params.CreateParam(ftinteger,'x2',ptinput);
      commandtext:='select tplant,tmeff from tbl_tmeff where yr=:x1 and mn=:x2';
      params[0].AsInteger:=query3.FieldByName('yr').Value;
      params[1].AsInteger:=query3.FieldByName('mn').Value-1;
      open;
      first;
      while not eof do begin
        if fieldbyname('tplant').Value='SL' then
        sl001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_sl').Value-fieldbyname('tmeff').Value)
        else if fieldbyname('tplant').Value='FJ' then
        fj001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_fj').Value-fieldbyname('tmeff').Value)
        else if fieldbyname('tplant').Value='GG' then
        gg001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_gg').Value-fieldbyname('tmeff').Value)
        else if fieldbyname('tplant').Value='RX' then
        rx001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_rx').Value-fieldbyname('tmeff').Value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else begin
    with query2 do begin
      close;
      params.Clear;
      params.CreateParam(ftinteger,'x1',ptinput);
      params.CreateParam(ftinteger,'x2',ptinput);
      commandtext:='select tplant,tmeff from tbl_tmeff where yr=:x1 and mn=:x2';
      params[0].AsInteger:=query3.FieldByName('yr').Value-1;
      params[1].AsInteger:=12;
      open;
      first;
      while not eof do begin
        if fieldbyname('tplant').Value='SL' then
        sl001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_sl').Value-fieldbyname('tmeff').Value)
        else if fieldbyname('tplant').Value='FJ' then
        fj001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_fj').Value-fieldbyname('tmeff').Value)
        else if fieldbyname('tplant').Value='GG' then
        gg001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_gg').Value-fieldbyname('tmeff').Value)
        else if fieldbyname('tplant').Value='RX' then
        rx001.Caption:=formatfloat('0.00',query3.FieldByName('tmeff_rx').Value-fieldbyname('tmeff').Value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmtimeeff_new.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtimeeff_new.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('shrs').onchange:=queryshrschange;
  query1.fieldbyname('shrs1').onchange:=queryshrs1change;
end;

procedure Tfrmtimeeff_new.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_tmeff_new set ';
  if not query1.fieldbyname('shrs').isnull then
  str1:=str1+'shrs='+query1.FieldByName('shrs').AsString+','
  else str1:=str1+'shrs=0,';
  if not query1.fieldbyname('shrs1').isnull then
  str1:=str1+'shrs1='+query1.FieldByName('shrs1').AsString+','
  else str1:=str1+'shrs1=0,';
  str1:=str1+'tmeff='+query1.FieldByName('tmeff').AsString+',';
  str1:=str1+'tmeff1='+query1.FieldByName('tmeff1').AsString+',';
  str1:=str1+'pe2='+query1.FieldByName('pe2').AsString+',';
  str1:=str1+'pediff='+query1.FieldByName('pediff').AsString+',';
  str1:=str1+'diff='+query1.FieldByName('diff').AsString+' ';
  str1:=str1+'where tplant='''+query1.FieldByName('tplant').value+''' ';
  str1:=str1+'and dt1='''+formatdatetime('yyyy-mm-dd',query1.FieldByName('dt1').value)+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmtimeeff_new.QuerySHRS1Change(Sender: TField);
var
  shrs:double;
begin
  if not query1.fieldbyname('shrs1').isnull then
  shrs:=query1.fieldbyname('shrs1').value else shrs:=0;
  if shrs>0 then begin
    query1.fieldbyname('tmeff1').value:=query1.fieldbyname('tsah').value*100.00/shrs;
  end else begin
    query1.fieldbyname('tmeff1').value:=0;
  end;
end;

procedure Tfrmtimeeff_new.QuerySHRSChange(Sender: TField);
var
  shrs:double;
begin
  if not query1.fieldbyname('shrs').isnull then
  shrs:=query1.fieldbyname('shrs').value else shrs:=0;
  if shrs>0 then begin
    query1.fieldbyname('tmeff').value:=query1.fieldbyname('tsah').value*100.00/shrs;
    query1.fieldbyname('diff').value:=query1.fieldbyname('tsah').value*100.00/shrs-query1.fieldbyname('eff').value;
    query1.fieldbyname('pe2').value:=query1.fieldbyname('tsah').value/shrs*query1.fieldbyname('cu').value;
    query1.fieldbyname('pediff').value:=query1.fieldbyname('tsah').value/shrs*query1.fieldbyname('cu').value-query1.fieldbyname('pe1').value;
  end else begin
    query1.fieldbyname('tmeff').value:=0;
    query1.fieldbyname('diff').value:=0;
    query1.fieldbyname('pe2').value:=0;
    query1.fieldbyname('pediff').value:=0-query1.fieldbyname('pe1').value;
  end;
end;

end.
