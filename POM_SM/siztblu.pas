unit siztblu;

interface

uses
  Windows, Messages, SysUtils, Bde, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ppBands, ppClass, ppCtrls, ppPrnabl, ppStrtch,
  ppRegion, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppDBBDE, StdCtrls, DBCtrls, Grids, DBGridEh, Mask,
  ExtCtrls, Buttons, ComCtrls, DBClient,ppViewr, variants, GridsEh,
  DBGridEhImpExp, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridExportLink, cxMemo, cxDropDownEdit, ppParameter,
  Menus, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, rxToolEdit,
  RXDBCtrl, DBCtrlsEh;

type
  Tfrmsiztbl = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit18: TDBEdit;
    TabSheet3: TTabSheet;
    DBGridEh2: TDBGridEh;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    SpeedButton7: TSpeedButton;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    SpeedButton9: TSpeedButton;
    DBGridEh3: TDBGridEh;
    DBEdit36: TDBEdit;
    SpeedButton10: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    DataSource5: TDataSource;
    ppBDEPipeline2: TppBDEPipeline;
    DataSource4: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel28: TppLabel;
    ppDBText59: TppDBText;
    ppLabel29: TppLabel;
    ppDBText60: TppDBText;
    ppLabel30: TppLabel;
    ppDBText61: TppDBText;
    ppRegion4: TppRegion;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppShape32: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppRegion5: TppRegion;
    ppShape33: TppShape;
    ppDBText94: TppDBText;
    ldwz: TppDBText;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppRegion6: TppRegion;
    ppLabel52: TppLabel;
    ppDBText116: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    Table2: TClientDataSet;
    Table1: TClientDataSet;
    Table3: TClientDataSet;
    Table4: TClientDataSet;
    Table2Stylno: TStringField;
    Table2Projno: TStringField;
    Table2Jobno: TStringField;
    Table2Size1: TStringField;
    Table2Size2: TStringField;
    Table2Size3: TStringField;
    Table2Size4: TStringField;
    Table2Size5: TStringField;
    Table2Size6: TStringField;
    Table2Size7: TStringField;
    Table2Size8: TStringField;
    Table2Size9: TStringField;
    Table2Size10: TStringField;
    Table2Size11: TStringField;
    Table2Size12: TStringField;
    Table2Size13: TStringField;
    Table2Size14: TStringField;
    Table2Size15: TStringField;
    Table2Size16: TStringField;
    Table2Csiz1: TStringField;
    Table2Csiz2: TStringField;
    Table2Csiz3: TStringField;
    Table2Csiz4: TStringField;
    Table2Csiz5: TStringField;
    Table2Csiz6: TStringField;
    Table2Csiz7: TStringField;
    Table2Csiz8: TStringField;
    Table2Csiz9: TStringField;
    Table2Csiz10: TStringField;
    Table2Csiz11: TStringField;
    Table2Csiz12: TStringField;
    Table2Csiz13: TStringField;
    Table2Csiz14: TStringField;
    Table2Csiz15: TStringField;
    Table2Csiz16: TStringField;
    Table2Size17: TStringField;
    Table2Size18: TStringField;
    Table2Size19: TStringField;
    Table2Size20: TStringField;
    Table2Size21: TStringField;
    Table2Size22: TStringField;
    Table2Size23: TStringField;
    Table2Size24: TStringField;
    Table2Size25: TStringField;
    Table2Size26: TStringField;
    Table2Size27: TStringField;
    Table2Size28: TStringField;
    Table2Size29: TStringField;
    Table2Size30: TStringField;
    Table2Size31: TStringField;
    Table2Size32: TStringField;
    Table2Csiz17: TStringField;
    Table2Csiz18: TStringField;
    Table2Csiz19: TStringField;
    Table2Csiz20: TStringField;
    Table2Csiz21: TStringField;
    Table2Csiz22: TStringField;
    Table2Csiz23: TStringField;
    Table2Csiz24: TStringField;
    Table2Csiz25: TStringField;
    Table2Csiz26: TStringField;
    Table2Csiz27: TStringField;
    Table2Csiz28: TStringField;
    Table2Csiz29: TStringField;
    Table2Csiz30: TStringField;
    Table2Csiz31: TStringField;
    Table2Csiz32: TStringField;
    Table2Size33: TStringField;
    Table2Size34: TStringField;
    Table2Size35: TStringField;
    Table2Size36: TStringField;
    Table2Size37: TStringField;
    Table2Size38: TStringField;
    Table2Size39: TStringField;
    Table2Size40: TStringField;
    Table2Csiz33: TStringField;
    Table2Csiz34: TStringField;
    Table2Csiz35: TStringField;
    Table2Csiz36: TStringField;
    Table2Csiz37: TStringField;
    Table2Csiz38: TStringField;
    Table2Csiz39: TStringField;
    Table2Csiz40: TStringField;
    Table3Stylno: TStringField;
    Table3Cde: TStringField;
    Table3Id: TIntegerField;
    Table3Projno: TStringField;
    Table3Jobno: TStringField;
    Table3Cmeas: TStringField;
    Table3Emeas: TStringField;
    Table3Uom: TStringField;
    Table3Methd: TStringField;
    Table3Tolerence: TStringField;
    Table3Rst1: TStringField;
    Table3Rst2: TStringField;
    Table3Rst3: TStringField;
    Table3Rst4: TStringField;
    Table3Rst5: TStringField;
    Table3Rst6: TStringField;
    Table3Rst7: TStringField;
    Table3Rst8: TStringField;
    Table3Rst9: TStringField;
    Table3Rst10: TStringField;
    Table3Rst11: TStringField;
    Table3Rst12: TStringField;
    Table3Rst13: TStringField;
    Table3Rst14: TStringField;
    Table3Rst15: TStringField;
    Table3Rst16: TStringField;
    Table3Flg1: TBooleanField;
    Table3Emethd: TStringField;
    Table3Rst17: TStringField;
    Table3Rst18: TStringField;
    Table3Rst19: TStringField;
    Table3Rst20: TStringField;
    Table3Rst21: TStringField;
    Table3Rst22: TStringField;
    Table3Rst23: TStringField;
    Table3Rst24: TStringField;
    Table3Rst25: TStringField;
    Table3Rst26: TStringField;
    Table3Rst27: TStringField;
    Table3Rst28: TStringField;
    Table3Rst29: TStringField;
    Table3Rst30: TStringField;
    Table3Rst31: TStringField;
    Table3Rst32: TStringField;
    Table3Tmeas: TStringField;
    Table3Tmethd: TStringField;
    Table3Rst33: TStringField;
    Table3Rst34: TStringField;
    Table3Rst35: TStringField;
    Table3Rst36: TStringField;
    Table3Rst37: TStringField;
    Table3Rst38: TStringField;
    Table3Rst39: TStringField;
    Table3Rst40: TStringField;
    Table4Stylno: TStringField;
    Table4Jobno: TStringField;
    Table4Cde: TStringField;
    Table4Id: TIntegerField;
    Table4Rid: TIntegerField;
    Table4Projno: TStringField;
    Table4Cmeas: TStringField;
    Table4Emeas: TStringField;
    Table4Uom: TStringField;
    Table4Methd: TStringField;
    Table4Tolerence: TStringField;
    Table4Rst1: TStringField;
    Table4Rst2: TStringField;
    Table4Rst3: TStringField;
    Table4Rst4: TStringField;
    Table4Rst5: TStringField;
    Table4Rst6: TStringField;
    Table4Rst7: TStringField;
    Table4Rst8: TStringField;
    Table4Rst9: TStringField;
    Table4Rst10: TStringField;
    Table4Rst11: TStringField;
    Table4Rst12: TStringField;
    Table4Rst13: TStringField;
    Table4Rst14: TStringField;
    Table4Rst15: TStringField;
    Table4Rst16: TStringField;
    Table4Flg1: TBooleanField;
    Table4Emethd: TStringField;
    Table4Cw: TStringField;
    Table4Cs: TIntegerField;
    Table4Dif: TFloatField;
    Table4Rs1: TStringField;
    Table4Rs2: TStringField;
    Table4Rs3: TStringField;
    Table4Rs4: TStringField;
    Table4Rs5: TStringField;
    Table4Rs6: TStringField;
    Table4Rs7: TStringField;
    Table4Rs8: TStringField;
    Table4Rs9: TStringField;
    Table4Rs10: TStringField;
    Table4Rs11: TStringField;
    Table4Rs12: TStringField;
    Table4Rs13: TStringField;
    Table4Rs14: TStringField;
    Table4Rs15: TStringField;
    Table4Rs16: TStringField;
    Table4Dif1: TFloatField;
    Table4Rst17: TStringField;
    Table4Rst18: TStringField;
    Table4Rst19: TStringField;
    Table4Rst20: TStringField;
    Table4Rst21: TStringField;
    Table4Rst22: TStringField;
    Table4Rst23: TStringField;
    Table4Rst24: TStringField;
    Table4Rst25: TStringField;
    Table4Rst26: TStringField;
    Table4Rst27: TStringField;
    Table4Rst28: TStringField;
    Table4Rst29: TStringField;
    Table4Rst30: TStringField;
    Table4Rst31: TStringField;
    Table4Rst32: TStringField;
    Table4Rs17: TStringField;
    Table4Rs18: TStringField;
    Table4Rs19: TStringField;
    Table4Rs20: TStringField;
    Table4Rs21: TStringField;
    Table4Rs22: TStringField;
    Table4Rs23: TStringField;
    Table4Rs24: TStringField;
    Table4Rs25: TStringField;
    Table4Rs26: TStringField;
    Table4Rs27: TStringField;
    Table4Rs28: TStringField;
    Table4Rs29: TStringField;
    Table4Rs30: TStringField;
    Table4Rs31: TStringField;
    Table4Rs32: TStringField;
    Table4Rst33: TStringField;
    Table4Rst34: TStringField;
    Table4Rst35: TStringField;
    Table4Rst36: TStringField;
    Table4Rst37: TStringField;
    Table4Rst38: TStringField;
    Table4Rst39: TStringField;
    Table4Rst40: TStringField;
    Table4Rs33: TStringField;
    Table4Rs34: TStringField;
    Table4Rs35: TStringField;
    Table4Rs36: TStringField;
    Table4Rs37: TStringField;
    Table4Rs38: TStringField;
    Table4Rs39: TStringField;
    Table4Rs40: TStringField;
    Query7: TClientDataSet;
    Query8: TClientDataSet;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    bastbl: TClientDataSet;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    Table1Stylno: TStringField;
    Table1Cdate: TDateTimeField;
    Table1Mdate: TDateTimeField;
    Table1Mem: TMemoField;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Stylno: TcxGridDBColumn;
    cxGrid1DBTableView1Cde: TcxGridDBColumn;
    cxGrid1DBTableView1Cmeas: TcxGridDBColumn;
    cxGrid1DBTableView1Tolerence: TcxGridDBColumn;
    cRst1: TcxGridDBColumn;
    cRst2: TcxGridDBColumn;
    cRst3: TcxGridDBColumn;
    cRst4: TcxGridDBColumn;
    cRst5: TcxGridDBColumn;
    cRst6: TcxGridDBColumn;
    cRst7: TcxGridDBColumn;
    cRst8: TcxGridDBColumn;
    cRst9: TcxGridDBColumn;
    cRst10: TcxGridDBColumn;
    cRst11: TcxGridDBColumn;
    cRst12: TcxGridDBColumn;
    cRst13: TcxGridDBColumn;
    cRst14: TcxGridDBColumn;
    cRst15: TcxGridDBColumn;
    cRst16: TcxGridDBColumn;
    cRst17: TcxGridDBColumn;
    cRst18: TcxGridDBColumn;
    cRst19: TcxGridDBColumn;
    cRst20: TcxGridDBColumn;
    cRst21: TcxGridDBColumn;
    cRst22: TcxGridDBColumn;
    cRst23: TcxGridDBColumn;
    cRst24: TcxGridDBColumn;
    cRst25: TcxGridDBColumn;
    cRst26: TcxGridDBColumn;
    cRst27: TcxGridDBColumn;
    cRst28: TcxGridDBColumn;
    cRst29: TcxGridDBColumn;
    cRst30: TcxGridDBColumn;
    cRst31: TcxGridDBColumn;
    cRst32: TcxGridDBColumn;
    cRst33: TcxGridDBColumn;
    cRst34: TcxGridDBColumn;
    cRst35: TcxGridDBColumn;
    cRst36: TcxGridDBColumn;
    cRst37: TcxGridDBColumn;
    cRst38: TcxGridDBColumn;
    cRst39: TcxGridDBColumn;
    cRst40: TcxGridDBColumn;
    ClientDataSet1: TClientDataSet;
    DataSource6: TDataSource;
    cxColumn1: TcxGridDBColumn;
    cxColumn2: TcxGridDBColumn;
    cxColumn3: TcxGridDBColumn;
    cxColumn4: TcxGridDBColumn;
    cxColumn5: TcxGridDBColumn;
    cxColumn6: TcxGridDBColumn;
    cxColumn7: TcxGridDBColumn;
    cxColumn8: TcxGridDBColumn;
    cxColumn9: TcxGridDBColumn;
    cxColumn10: TcxGridDBColumn;
    cxColumn11: TcxGridDBColumn;
    cxColumn12: TcxGridDBColumn;
    cxColumn13: TcxGridDBColumn;
    cxColumn14: TcxGridDBColumn;
    cxColumn15: TcxGridDBColumn;
    cxColumn16: TcxGridDBColumn;
    cxColumn17: TcxGridDBColumn;
    cxColumn18: TcxGridDBColumn;
    cxColumn19: TcxGridDBColumn;
    cxColumn20: TcxGridDBColumn;
    cxColumn21: TcxGridDBColumn;
    cxColumn22: TcxGridDBColumn;
    cxColumn23: TcxGridDBColumn;
    cxColumn24: TcxGridDBColumn;
    cxColumn25: TcxGridDBColumn;
    cxColumn26: TcxGridDBColumn;
    cxColumn27: TcxGridDBColumn;
    cxColumn28: TcxGridDBColumn;
    cxColumn29: TcxGridDBColumn;
    cxColumn30: TcxGridDBColumn;
    cxColumn31: TcxGridDBColumn;
    cxColumn32: TcxGridDBColumn;
    cxColumn33: TcxGridDBColumn;
    cxColumn34: TcxGridDBColumn;
    cxColumn35: TcxGridDBColumn;
    cxColumn36: TcxGridDBColumn;
    cxColumn37: TcxGridDBColumn;
    cxColumn38: TcxGridDBColumn;
    cxColumn39: TcxGridDBColumn;
    cxColumn40: TcxGridDBColumn;
    cxColumn41: TcxGridDBColumn;
    cxColumn42: TcxGridDBColumn;
    cxColumn43: TcxGridDBColumn;
    cxColumn44: TcxGridDBColumn;
    cxColumn45: TcxGridDBColumn;
    cxColumn46: TcxGridDBColumn;
    cxColumn47: TcxGridDBColumn;
    cxColumn48: TcxGridDBColumn;
    cxColumn49: TcxGridDBColumn;
    cxColumn50: TcxGridDBColumn;
    cxColumn51: TcxGridDBColumn;
    cxColumn52: TcxGridDBColumn;
    cxColumn53: TcxGridDBColumn;
    cxColumn54: TcxGridDBColumn;
    cxColumn55: TcxGridDBColumn;
    cxColumn56: TcxGridDBColumn;
    cxColumn57: TcxGridDBColumn;
    cxColumn58: TcxGridDBColumn;
    cxColumn59: TcxGridDBColumn;
    cxColumn60: TcxGridDBColumn;
    cxColumn61: TcxGridDBColumn;
    cxColumn62: TcxGridDBColumn;
    cxColumn63: TcxGridDBColumn;
    cxColumn64: TcxGridDBColumn;
    cxColumn65: TcxGridDBColumn;
    cxColumn66: TcxGridDBColumn;
    cxColumn67: TcxGridDBColumn;
    cxColumn68: TcxGridDBColumn;
    cxColumn69: TcxGridDBColumn;
    cxColumn70: TcxGridDBColumn;
    cxColumn71: TcxGridDBColumn;
    cxColumn72: TcxGridDBColumn;
    cxColumn73: TcxGridDBColumn;
    cxColumn74: TcxGridDBColumn;
    cxColumn75: TcxGridDBColumn;
    cxColumn76: TcxGridDBColumn;
    cxColumn77: TcxGridDBColumn;
    cxColumn78: TcxGridDBColumn;
    cxColumn79: TcxGridDBColumn;
    cxColumn80: TcxGridDBColumn;
    cxColumn81: TcxGridDBColumn;
    cxColumn82: TcxGridDBColumn;
    cxColumn83: TcxGridDBColumn;
    cxColumn84: TcxGridDBColumn;
    cxColumn85: TcxGridDBColumn;
    cxColumn86: TcxGridDBColumn;
    cxColumn87: TcxGridDBColumn;
    cxColumn88: TcxGridDBColumn;
    cxColumn89: TcxGridDBColumn;
    cxColumn90: TcxGridDBColumn;
    Table2size41: TStringField;
    Table2size42: TStringField;
    Table2size43: TStringField;
    Table2size44: TStringField;
    Table2size45: TStringField;
    Table2size46: TStringField;
    Table2size47: TStringField;
    Table2size48: TStringField;
    Table2size49: TStringField;
    Table2size50: TStringField;
    Table2size51: TStringField;
    Table2size52: TStringField;
    Table2csiz41: TStringField;
    Table2csiz42: TStringField;
    Table2csiz43: TStringField;
    Table2csiz44: TStringField;
    Table2csiz45: TStringField;
    Table2csiz46: TStringField;
    Table2csiz47: TStringField;
    Table2csiz48: TStringField;
    Table2csiz49: TStringField;
    Table2csiz50: TStringField;
    Table2csiz51: TStringField;
    Table2csiz52: TStringField;
    Table3rst41: TStringField;
    Table3rst42: TStringField;
    Table3rst43: TStringField;
    Table3rst44: TStringField;
    Table3rst45: TStringField;
    Table3rst46: TStringField;
    Table3rst47: TStringField;
    Table3rst48: TStringField;
    Table3rst49: TStringField;
    Table3rst50: TStringField;
    Table3rst51: TStringField;
    Table3rst52: TStringField;
    Table1uom: TStringField;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Table1cust: TStringField;
    Table1cstyle: TStringField;
    Table1status: TStringField;
    Table3mcd: TStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Stylno: TcxGridDBColumn;
    cxGrid2DBTableView1Cdate: TcxGridDBColumn;
    cxGrid2DBTableView1Mdate: TcxGridDBColumn;
    cxGrid2DBTableView1Mem: TcxGridDBColumn;
    cxGrid2DBTableView1uom: TcxGridDBColumn;
    cxGrid2DBTableView1cust: TcxGridDBColumn;
    cxGrid2DBTableView1cstyle: TcxGridDBColumn;
    cxGrid2DBTableView1status: TcxGridDBColumn;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    SpeedButton16: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Panel3: TPanel;
    Label9: TLabel;
    SpeedButton8: TSpeedButton;
    DBEdit19: TDBEdit;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton17: TSpeedButton;
    DBNavigator2: TDBNavigator;
    Table1comp: TStringField;
    DBComboBox2: TDBComboBox;
    Label13: TLabel;
    DBComboBox3: TDBComboBox;
    cxGrid2DBTableView1comp: TcxGridDBColumn;
    cRst41: TcxGridDBColumn;
    cRst42: TcxGridDBColumn;
    cRst43: TcxGridDBColumn;
    cRst44: TcxGridDBColumn;
    cRst45: TcxGridDBColumn;
    cRst46: TcxGridDBColumn;
    cRst47: TcxGridDBColumn;
    cRst48: TcxGridDBColumn;
    cRst49: TcxGridDBColumn;
    cRst50: TcxGridDBColumn;
    cRst51: TcxGridDBColumn;
    cRst52: TcxGridDBColumn;
    SpeedButton18: TSpeedButton;
    lblimg: TLabel;
    SpeedButton19: TSpeedButton;
    qry_appr: TClientDataSet;
    qry_apprStylno: TStringField;
    qry_apprUser1: TStringField;
    qry_apprdt1: TDateTimeField;
    qry_apprUser2: TStringField;
    qry_apprdt2: TDateTimeField;
    qry_apprUser3: TStringField;
    qry_apprdt3: TDateTimeField;
    qry_apprUser4: TStringField;
    qry_apprdt4: TDateTimeField;
    qry_apprUser5: TStringField;
    qry_apprdt5: TDateTimeField;
    qry_apprUser6: TStringField;
    qry_apprdt6: TDateTimeField;
    qry_apprUser7: TStringField;
    qry_apprdt7: TDateTimeField;
    qry_apprimg: TStringField;
    DataSource7: TDataSource;
    SpeedButton20: TSpeedButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Table3parts: TBooleanField;
    Table3operation: TBooleanField;
    Table3garment: TBooleanField;
    DBDateEdit1: TDBDateTimeEditEh;
    DBDateEdit2: TDBDateTimeEditEh;
    Table3parts_d: TStringField;
    Table3parts_d1: TStringField;
    Table3opt: TBooleanField;
    Table1phstyle: TStringField;
    Table1styleno1: TStringField;
    cxGrid2DBTableView1Phstyle: TcxGridDBColumn;
    Label14: TLabel;
    DBEdit111: TDBEdit;
    SpeedButton21: TSpeedButton;
    Table3crdt: TDateTimeField;
    Table3dt_plus: TStringField;
    N2: TMenuItem;
    N3: TMenuItem;
    pm1: TPopupMenu;
    ExportEnglishDescription1: TMenuItem;
    cxGrid1DBTableView1Emeas: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Table3CdeChange(Sender: TField);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure Table2AfterPost(DataSet: TDataSet);
    procedure Table3AfterPost(DataSet: TDataSet);
    procedure Table2Size1Change(Sender: TField);
    procedure Table2Size2Change(Sender: TField);
    procedure Table2Size3Change(Sender: TField);
    procedure Table2Size4Change(Sender: TField);
    procedure Table2Size5Change(Sender: TField);
    procedure Table2Size6Change(Sender: TField);
    procedure Table2Size7Change(Sender: TField);
    procedure Table2Size8Change(Sender: TField);
    procedure Table2Size9Change(Sender: TField);
    procedure Table2Size10Change(Sender: TField);
    procedure Table2Size11Change(Sender: TField);
    procedure Table2Size12Change(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure Table2Size13Change(Sender: TField);
    procedure Table2Size14Change(Sender: TField);
    procedure Table2Size15Change(Sender: TField);
    procedure Table2Size16Change(Sender: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBDateEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure Table3MethdChange(Sender: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Table4AfterPost(DataSet: TDataSet);
    procedure DBGridEh3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Table4DifChange(Sender: TField);
    procedure DBEditChange(Sender: TObject);
    procedure Table2Size17Change(Sender: TField);
    procedure Table2Size18Change(Sender: TField);
    procedure Table2Size19Change(Sender: TField);
    procedure Table2Size20Change(Sender: TField);
    procedure Table2Size21Change(Sender: TField);
    procedure Table2Size22Change(Sender: TField);
    procedure Table2Size23Change(Sender: TField);
    procedure Table2Size24Change(Sender: TField);
    procedure Table2Size25Change(Sender: TField);
    procedure Table2Size26Change(Sender: TField);
    procedure Table2Size27Change(Sender: TField);
    procedure Table2Size28Change(Sender: TField);
    procedure Table2Size29Change(Sender: TField);
    procedure Table2Size30Change(Sender: TField);
    procedure Table2Size31Change(Sender: TField);
    procedure Table2Size32Change(Sender: TField);
    procedure table2NewRecord(DataSet: TDataSet);
    procedure table3NewRecord(DataSet: TDataSet);
    procedure table4NewRecord(DataSet: TDataSet);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit50KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit51KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure table2Size33Change(Sender: TField);
    procedure table2Size34Change(Sender: TField);
    procedure table2Size35Change(Sender: TField);
    procedure table2Size36Change(Sender: TField);
    procedure table2Size37Change(Sender: TField);
    procedure table2Size38Change(Sender: TField);
    procedure table2Size39Change(Sender: TField);
    procedure table2Size40Change(Sender: TField);
    procedure DBEdit69KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit70KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit72KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit73KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit74KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit75KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit57KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit61KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit66KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit67KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit77KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit78KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit79KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit80KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit81KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit82KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit83KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit76KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure DBEdit9DblClick(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit20DblClick(Sender: TObject);
    procedure DBEdit21DblClick(Sender: TObject);
    procedure DBEdit22DblClick(Sender: TObject);
    procedure DBEdit23DblClick(Sender: TObject);
    procedure DBEdit24DblClick(Sender: TObject);
    procedure DBEdit25DblClick(Sender: TObject);
    procedure DBEdit2DblClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit4DblClick(Sender: TObject);
    procedure DBEdit5DblClick(Sender: TObject);
    procedure DBEdit37DblClick(Sender: TObject);
    procedure DBEdit38DblClick(Sender: TObject);
    procedure DBEdit39DblClick(Sender: TObject);
    procedure DBEdit40DblClick(Sender: TObject);
    procedure DBEdit41DblClick(Sender: TObject);
    procedure DBEdit42DblClick(Sender: TObject);
    procedure DBEdit43DblClick(Sender: TObject);
    procedure DBEdit44DblClick(Sender: TObject);
    procedure DBEdit45DblClick(Sender: TObject);
    procedure DBEdit46DblClick(Sender: TObject);
    procedure DBEdit47DblClick(Sender: TObject);
    procedure DBEdit48DblClick(Sender: TObject);
    procedure DBEdit49DblClick(Sender: TObject);
    procedure DBEdit50DblClick(Sender: TObject);
    procedure DBEdit51DblClick(Sender: TObject);
    procedure DBEdit52DblClick(Sender: TObject);
    procedure DBEdit69DblClick(Sender: TObject);
    procedure DBEdit70DblClick(Sender: TObject);
    procedure DBEdit71DblClick(Sender: TObject);
    procedure DBEdit72DblClick(Sender: TObject);
    procedure DBEdit73DblClick(Sender: TObject);
    procedure DBEdit74DblClick(Sender: TObject);
    procedure DBEdit75DblClick(Sender: TObject);
    procedure Table1AfterScroll(DataSet: TDataSet);
    procedure Table4BeforeDelete(DataSet: TDataSet);
    procedure Table3BeforeDelete(DataSet: TDataSet);
    procedure Table2BeforeDelete(DataSet: TDataSet);
    procedure Table1BeforeDelete(DataSet: TDataSet);
    procedure SpeedButton16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawGroupSummaryCell(
      Sender: TObject; ACanvas: TcxCanvas; ARow: TcxGridGroupRow;
      AColumn: TcxGridColumn; ASummaryItem: TcxDataSummaryItem;
      AViewInfo: TcxCustomGridViewCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1CustomDrawGroupCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
    procedure DBGridEh2Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Table3CdeSetText(Sender: TField; const Text: String);
    procedure DBEdit76DblClick(Sender: TObject);
    procedure DBEdit97DblClick(Sender: TObject);
    procedure DBEdit98DblClick(Sender: TObject);
    procedure DBEdit99DblClick(Sender: TObject);
    procedure DBEdit100DblClick(Sender: TObject);
    procedure DBEdit101DblClick(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure qry_apprAfterPost(DataSet: TDataSet);
    procedure SpeedButton20Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure Table1NewRecord(DataSet: TDataSet);
    procedure SpeedButton21Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBEdit102DblClick(Sender: TObject);
    procedure DBEdit103DblClick(Sender: TObject);
    procedure DBEdit104DblClick(Sender: TObject);
    procedure DBEdit105DblClick(Sender: TObject);
    procedure DBEdit106DblClick(Sender: TObject);
    procedure DBEdit107DblClick(Sender: TObject);
    procedure ExportEnglishDescription1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsiztbl: Tfrmsiztbl;

implementation
uses  mainu, wzxzu, mtolu, loginu, stylu, prdprintu, prdprint1u, insertsizu,
  print2u, stcpyu, styleimgformu, querenformu, szapprformu, sz_partsformu;
{$R *.DFM}

procedure Tfrmsiztbl.FormShow(Sender: TObject);
var
  i:integer;
begin
  screen.cursor:=crSQLWait;
  try
  with Table1 do begin
    close;
    open;
  end;
  with query8 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r9,r10,r11,r4 from SZ_athtbl where usr='''+frmmain.combobox1.text+'''';
    //params[0].asstring:=frmmain.combobox1.text;
    open;
    if fieldbyname('r9').value=true then begin
      lblimg.caption:='R9'; speedbutton20.visible:=true;
      speedbutton1.Enabled:=true;speedbutton2.Enabled:=true;dbgrideh2.ReadOnly:=false;speedbutton16.Enabled:=true;
      dbedit1.readonly:=false;DBDateEdit1.ReadOnly:=false;DBDateEdit2.ReadOnly:=false;dbmemo1.ReadOnly:=false;dbedit111.readonly:=false;
      dbedit109.ReadOnly:=false;dbedit110.ReadOnly:=false;dbcombobox1.ReadOnly:=false;dbcombobox2.ReadOnly:=false;dbcombobox3.ReadOnly:=false;
      DBGridEh2.AllowedOperations:=[alopUpdateEh,alopAppendEh];
      if uppercase(frmmain.combobox1.text)<>'ADMIN' then begin
        cxgrid2dbtableview1cust.options.Editing:=false;
        cxgrid2dbtableview1stylno.options.editing:=false;
        cxgrid2dbtableview1cstyle.options.editing:=false;
        cxgrid2dbtableview1cdate.options.editing:=false;
        cxgrid2dbtableview1mdate.options.editing:=false;
        cxgrid2dbtableview1uom.options.editing:=false;
        cxgrid2dbtableview1status.options.editing:=false;
        cxgrid2dbtableview1comp.options.editing:=false;
        cxgrid2dbtableview1mem.options.editing:=false;
        for i:=4 to 9 do begin
          dbgrideh2.columns[i].readonly:=true;
        end;
      end else begin
        cxgrid2dbtableview1cust.options.editing:=true;
        cxgrid2dbtableview1stylno.options.editing:=true;
        cxgrid2dbtableview1cstyle.options.editing:=true;
        cxgrid2dbtableview1cdate.options.editing:=true;
        cxgrid2dbtableview1mdate.options.editing:=true;
        cxgrid2dbtableview1uom.options.editing:=true;
        cxgrid2dbtableview1status.options.editing:=true;
        cxgrid2dbtableview1comp.options.editing:=true;
        cxgrid2dbtableview1mem.options.editing:=true;
        for i:=4 to 9 do begin
          dbgrideh2.columns[i].readonly:=false;
        end;
      end;
    end else if fieldbyname('r10').value=true then begin
      lblimg.caption:='R10'; speedbutton20.visible:=false;
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;dbgrideh2.ReadOnly:=false;speedbutton16.Enabled:=false;
      dbedit1.readonly:=true;DBDateEdit1.ReadOnly:=true;DBDateEdit2.ReadOnly:=true;dbmemo1.ReadOnly:=true;dbedit111.readonly:=true;
      dbedit109.ReadOnly:=true;dbedit110.ReadOnly:=true;dbcombobox1.ReadOnly:=true;dbcombobox2.ReadOnly:=true;dbcombobox3.ReadOnly:=true;
      DBGridEh2.AllowedOperations:=[alopUpdateEh];
      cxgrid2dbtableview1cust.options.Editing:=false;
      cxgrid2dbtableview1stylno.options.editing:=false;
      cxgrid2dbtableview1cstyle.options.editing:=false;
      cxgrid2dbtableview1cdate.options.editing:=false;
      cxgrid2dbtableview1mdate.options.editing:=false;
      cxgrid2dbtableview1uom.options.editing:=false;
      cxgrid2dbtableview1status.options.editing:=false;
      cxgrid2dbtableview1comp.options.editing:=false;
      cxgrid2dbtableview1mem.options.editing:=false;
      for i:=0 to 3 do begin
        dbgrideh2.columns[i].readonly:=true;
      end;
      for i:=6 to 64 do begin
        dbgrideh2.columns[i].readonly:=true;
      end;
    end else if fieldbyname('r11').value=true then begin
      lblimg.caption:='R11'; speedbutton20.visible:=false;
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;dbgrideh2.ReadOnly:=false;speedbutton16.Enabled:=false;
      dbedit1.readonly:=true;DBDateEdit1.ReadOnly:=true;DBDateEdit2.ReadOnly:=true;dbmemo1.ReadOnly:=true;dbedit111.readonly:=true;
      dbedit109.ReadOnly:=true;dbedit110.ReadOnly:=true;dbcombobox1.ReadOnly:=true;dbcombobox2.ReadOnly:=true;dbcombobox3.ReadOnly:=true;
      DBGridEh2.AllowedOperations:=[alopUpdateEh];
      cxgrid2dbtableview1cust.options.Editing:=false;
      cxgrid2dbtableview1stylno.options.editing:=false;
      cxgrid2dbtableview1cstyle.options.editing:=false;
      cxgrid2dbtableview1cdate.options.editing:=false;
      cxgrid2dbtableview1mdate.options.editing:=false;
      cxgrid2dbtableview1uom.options.editing:=false;
      cxgrid2dbtableview1status.options.editing:=false;
      cxgrid2dbtableview1comp.options.editing:=false;
      cxgrid2dbtableview1mem.options.editing:=false;
      for i:=0 to 5 do begin
        dbgrideh2.columns[i].readonly:=true;
      end;
      for i:=8 to 64 do begin
        dbgrideh2.columns[i].readonly:=true;
      end;
    end else if fieldbyname('r4').value=true then begin
      lblimg.caption:='R4'; speedbutton20.visible:=false;
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;dbgrideh2.ReadOnly:=false;speedbutton16.Enabled:=false;
      dbedit1.readonly:=true;DBDateEdit1.ReadOnly:=true;DBDateEdit2.ReadOnly:=true;dbmemo1.ReadOnly:=true;dbedit111.readonly:=true;
      dbedit109.ReadOnly:=true;dbedit110.ReadOnly:=true;dbcombobox1.ReadOnly:=true;dbcombobox2.ReadOnly:=true;dbcombobox3.ReadOnly:=true;
      DBGridEh2.AllowedOperations:=[alopUpdateEh];
      cxgrid2dbtableview1cust.options.Editing:=false;
      cxgrid2dbtableview1stylno.options.editing:=false;
      cxgrid2dbtableview1cstyle.options.editing:=false;
      cxgrid2dbtableview1cdate.options.editing:=false;
      cxgrid2dbtableview1mdate.options.editing:=false;
      cxgrid2dbtableview1uom.options.editing:=false;
      cxgrid2dbtableview1status.options.editing:=false;
      cxgrid2dbtableview1comp.options.editing:=false;
      cxgrid2dbtableview1mem.options.editing:=false;
      for i:=0 to 5 do begin
        dbgrideh2.columns[i].readonly:=true;
      end;
      for i:=10 to 64 do begin
        dbgrideh2.columns[i].readonly:=true;
      end;
    end else begin
      lblimg.caption:=''; speedbutton20.visible:=false;
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;dbgrideh2.ReadOnly:=true;speedbutton16.Enabled:=false;
      dbedit1.readonly:=true;DBDateEdit1.ReadOnly:=true;DBDateEdit2.ReadOnly:=true;dbmemo1.ReadOnly:=true;dbedit111.readonly:=true;
      dbedit109.ReadOnly:=true;dbedit110.ReadOnly:=true;dbcombobox1.ReadOnly:=true;dbcombobox2.ReadOnly:=true;dbcombobox3.ReadOnly:=true;
      cxgrid2dbtableview1cust.options.Editing:=false;
      cxgrid2dbtableview1stylno.options.editing:=false;
      cxgrid2dbtableview1cstyle.options.editing:=false;
      cxgrid2dbtableview1cdate.options.editing:=false;
      cxgrid2dbtableview1mdate.options.editing:=false;
      cxgrid2dbtableview1uom.options.editing:=false;
      cxgrid2dbtableview1status.options.editing:=false;
      cxgrid2dbtableview1comp.options.editing:=false;
      cxgrid2dbtableview1mem.options.editing:=false;
    end;
  end;
  edit1.text:='';

  query1.close;
  query1.params.clear;
  //query1.params.createparam(ftstring,'usr',ptinput);
  query1.commandtext:='select r6 from SZ_athtbl where usr='''+frmmain.combobox1.text+'''';
  //query1.params[0].asstring:=frmmain.combobox1.text;
  query1.open;
  if query1.recordcount>0 then
  begin
    if query1.fieldbyname('r6').value=true then
     speedbutton6.enabled:=true
    else speedbutton6.enabled:=false;
  end
  else
  begin
    speedbutton6.enabled:=true;
  end;
  pagecontrol1.ActivePage:=tabsheet1;
  (table4dif as tfloatfield).displayformat:='###0.0;;''';
  (table4dif1 as tfloatfield).displayformat:='###0.0;;''';
  (table4cs as tintegerfield).displayformat:='###0;;''';
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsiztbl.N1Click(Sender: TObject);
begin
  if frmszappr=nil then frmszappr:=tfrmszappr.create(nil);
  frmszappr.show;
end;

procedure Tfrmsiztbl.N2Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='update sz_lappr set img=null where stylno='''+table1.fieldbyname('stylno').asstring+'''';
    execute;
  end;
end;

procedure Tfrmsiztbl.N3Click(Sender: TObject);
var
  newstylno:string;
begin
  screen.cursor:=crSQLWait;
  try
  newstylno:=inputbox('New Style #','Pls input a new style#','');
  if newstylno>'' then begin
    with Query1 do begin
      close;
      Params.clear;
      //Params.CreateParam(ftString,'x1',ptInput);
      //Params.CreateParam(ftString,'x2',ptInput);
      commandtext:='exec sp_sz_amendstyleno '''+table1.fieldbyname('stylno').value+''','''+newstylno+'''';//:x1,:x2';
      //params[0].asstring:=table1.fieldbyname('stylno').value;
      //params[1].asstring:=newstylno;
      execute;
    end;
    with Table1 do begin
      close;
      open;
    end;
    table1.locate('stylno',vararrayof([newstylno]),[lopartialkey]);
    showmessage('�w��ڸ�!');
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsiztbl.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsiztbl.SpeedButton1Click(Sender: TObject);
begin
  table1.append;
  dbedit1.setfocus;
end;

procedure Tfrmsiztbl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (table3.state=dsinsert) or (table3.state=dsedit) then
    table3.post;
  if (table2.state=dsinsert) or (table2.state=dsedit) then
    table2.post;
  if (table1.state=dsinsert) or (table1.state=dsedit) then
    table1.post;
  action:=cafree;
  frmsiztbl:=nil;
end;

procedure Tfrmsiztbl.SpeedButton20Click(Sender: TObject);
begin
  if application.messagebox('�n�������ڤؤo�����T�{�H����?','���ܫH��',mb_iconquestion+mb_yesno)=idyes then begin
    with query4 do begin
      close;
      params.clear;
      commandtext:='update sz_lappr set user1=null,user2=null,user3=null,user4=null,user5=null,user6=null where stylno='''+table1.fieldbyname('stylno').value+'''';
      execute;
    end;
    showmessage('�T�{�w�����A�ݭn���s�T�{���ڤؤo���I');
  end;
end;

procedure Tfrmsiztbl.SpeedButton21Click(Sender: TObject);
begin
  if frmsz_parts=nil then frmsz_parts:=tfrmsz_parts.create(nil);
  with frmsz_parts.query1 do begin
    close;
    params.clear;
    commandtext:='select * from sz_parts where stylno='''+table1.fieldbyname('stylno').value+'''';
    open;
  end;
  frmsz_parts.show;
end;

procedure Tfrmsiztbl.SpeedButton2Click(Sender: TObject);
begin
  if dbedit1.text<>'' then
  begin
    if application.messagebox('�n�R�����ڤؤo����?','���ܫH��',mb_iconquestion+mb_okcancel)=idok then
    begin
      query1.close;
      query1.params.clear;
      //query1.params.createparam(ftstring,'stylno',ptinput);
      query1.commandtext:='delete from SZ_lsize2 where stylno='''+dbedit1.text+'''';
//      query1.prepare;
      //query1.params[0].asstring:=dbedit1.text;
      query1.Execute;
      query1.close;
      query1.params.clear;
      //query1.params.createparam(ftstring,'stylno',ptinput);
      query1.commandtext:='delete from SZ_lsize1 where stylno='''+dbedit1.text+'''';
//      query1.prepare;
      //query1.params[0].asstring:=dbedit1.text;
      query1.Execute;
      with query1 do begin
      query1.close;
      query1.params.clear;
      //query1.params.createparam(ftstring,'stylno',ptinput);
      query1.commandtext:='delete from SZ_lsize where stylno='''+dbedit1.text+'''';
//      query1.prepare;
      //query1.params[0].asstring:=dbedit1.text;
      query1.Execute;
      end;
      table1.delete;
    end;
  end;
end;

procedure Tfrmsiztbl.TabSheet1Exit(Sender: TObject);
begin
  if (table1.state=dsinsert) or (table1.state=dsedit) then
    table1.post;
end;

procedure Tfrmsiztbl.TabSheet2Exit(Sender: TObject);
begin
  if (table2.state=dsinsert) or (table2.state=dsedit) then
    table2.post;
end;

procedure Tfrmsiztbl.TabSheet3Exit(Sender: TObject);
begin
  if (table3.state=dsinsert) or (table3.state=dsedit) then
    table3.post;
end;

procedure Tfrmsiztbl.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    sendmessage(dbgrideh2.handle,wm_keydown,vk_tab,0);
  end;
end;

procedure Tfrmsiztbl.Table3CdeChange(Sender: TField);
begin
  {
  if not table3cde.isnull then
  begin
    query1.close;
    query1.params.clear;
    query1.params.createparam(ftstring,'cde',ptinput);
    query1.commandtext:='select cmeas,emeas,uom,methd,tolerence from SZ_bastbl where cde=:cde';
//    query1.prepare;
    query1.params[0].asstring:=table3cde.value;
    query1.open;
    if query1.recordcount>1 then
    begin
     if frmwzxz=nil then frmwzxz:=tfrmwzxz.create(self);
     frmwzxz.label1.caption:='siztbl';
     frmwzxz.show;
    end
    else
    begin
     if not query1.fieldbyname('cmeas').isnull then
      table3cmeas.value:=query1.fieldbyname('cmeas').value;
     if not query1.fieldbyname('emeas').isnull then
      table3emeas.value:=query1.fieldbyname('emeas').value;
     if not query1.fieldbyname('uom').isnull then
      table3uom.value:=query1.fieldbyname('uom').value;
     if not query1.fieldbyname('methd').isnull then
      table3methd.value:=query1.fieldbyname('methd').value;
     if not query1.fieldbyname('tolerence').isnull then
      table3tolerence.value:=query1.fieldbyname('tolerence').value;
    end;
  end;
  }
end;

procedure Tfrmsiztbl.Table1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
  Table1AfterScroll(nil);
end;

procedure Tfrmsiztbl.Table2AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
  with query1 do begin
    close;
    params.clear;
    commandtext:='update sz_lsize2 set size27='''' where size27 is null and csiz14>''''';
    execute;
    close;
    params.clear;
    commandtext:='update sz_lsize2 set size40='''' where size40 is null and csiz27>''''';
    execute;
  end;
end;

procedure Tfrmsiztbl.Table3AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
  with query1 do begin
    close;
    params.clear;
    CommandText:='update a set a.crdt=b.newdt from sz_lsize1 a,sz_bastbl b where a.crdt is null and ((a.cmeas=b.cmeas) or (a.emeas=b.emeas)) and a.stylno='''+table3.fieldbyname('stylno').value+''' and a.id='+table3.fieldbyname('id').asstring;
    execute;
  end;
end;

procedure Tfrmsiztbl.Table2Size1Change(Sender: TField);
begin
  if not table2size1.isnull then
    table2csiz1.value:=table2size1.Value;
end;

procedure Tfrmsiztbl.Table2Size2Change(Sender: TField);
begin
  if not table2size2.isnull then
    table2csiz2.value:=table2size2.Value;
end;

procedure Tfrmsiztbl.Table2Size3Change(Sender: TField);
begin
  if not table2size3.isnull then
    table2csiz3.value:=table2size3.Value;
end;

procedure Tfrmsiztbl.Table2Size4Change(Sender: TField);
begin
  if not table2size4.isnull then
    table2csiz4.value:=table2size4.Value;
end;

procedure Tfrmsiztbl.Table2Size5Change(Sender: TField);
begin
  if not table2size5.isnull then
    table2csiz5.value:=table2size5.Value;
end;

procedure Tfrmsiztbl.Table2Size6Change(Sender: TField);
begin
  if not table2size6.isnull then
    table2csiz6.value:=table2size6.Value;
end;

procedure Tfrmsiztbl.Table2Size7Change(Sender: TField);
begin
  if not table2size7.isnull then
    table2csiz7.value:=table2size7.Value;
end;

procedure Tfrmsiztbl.Table2Size8Change(Sender: TField);
begin
  if not table2size8.isnull then
    table2csiz8.value:=table2size8.Value;
end;

procedure Tfrmsiztbl.Table2Size9Change(Sender: TField);
begin
  if not table2size9.isnull then
    table2csiz9.value:=table2size9.Value;
end;

procedure Tfrmsiztbl.Table2Size10Change(Sender: TField);
begin
  if not table2size10.isnull then
    table2csiz10.value:=table2size10.Value;
end;

procedure Tfrmsiztbl.Table2Size11Change(Sender: TField);
begin
  if not table2size11.isnull then
    table2csiz11.value:=table2size11.Value;
end;

procedure Tfrmsiztbl.Table2Size12Change(Sender: TField);
begin
  if not table2size12.isnull then
    table2csiz12.value:=table2size12.Value;
end;

procedure Tfrmsiztbl.PageControl1Change(Sender: TObject);
var
  i:integer;
begin
  with Table1 do
    if (state=dsedit) or (state=dsinsert) then post;
  with Table2 do
    if (state=dsedit) or (state=dsinsert) then post;
  with Table3 do
    if (state=dsedit) or (state=dsinsert) then post;
  with Table4 do
    if (state=dsedit) or (state=dsinsert) then post;
  with query8 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r9 from SZ_athtbl where usr='''+frmmain.combobox1.text+'''';
//    prepare;
    //params[0].asstring:=frmmain.combobox1.text;
    open;
    if fieldbyname('r9').value=true then begin
      speedbutton1.Enabled:=true;speedbutton2.Enabled:=true;//dbgrideh2.ReadOnly:=false;
      speedbutton16.Enabled:=true;speedbutton13.Enabled:=true;speedbutton15.Enabled:=true;speedbutton6.Enabled:=true;
      dbedit1.readonly:=false;dbdateedit1.ReadOnly:=false;dbdateedit2.ReadOnly:=false;dbmemo1.ReadOnly:=false;dbedit111.readonly:=false;
      dbedit2.readonly:=false;dbedit3.readonly:=false;dbedit4.readonly:=false;dbedit5.readonly:=false;dbedit6.readonly:=false;
      dbedit7.readonly:=false;dbedit8.readonly:=false;dbedit9.readonly:=false;dbedit10.readonly:=false;dbedit11.readonly:=false;
      dbedit12.readonly:=false;dbedit13.readonly:=false;dbedit14.readonly:=false;dbedit15.readonly:=false;dbedit16.readonly:=false;
      dbedit17.readonly:=false;dbedit18.readonly:=false;dbedit19.readonly:=false;dbedit20.readonly:=false;dbedit21.readonly:=false;
      dbedit22.readonly:=false;dbedit23.readonly:=false;dbedit24.readonly:=false;dbedit25.readonly:=false;dbedit26.readonly:=false;
      dbedit27.readonly:=false;dbedit28.readonly:=false;dbedit29.readonly:=false;dbedit30.readonly:=false;dbedit31.readonly:=false;
      dbedit32.readonly:=false;dbedit33.readonly:=false;dbedit34.readonly:=false;dbedit35.readonly:=false;dbedit36.readonly:=false;
      dbedit37.readonly:=false;dbedit38.readonly:=false;dbedit39.readonly:=false;dbedit40.readonly:=false;dbedit41.readonly:=false;
      dbedit42.readonly:=false;dbedit43.readonly:=false;dbedit44.readonly:=false;dbedit45.readonly:=false;dbedit46.readonly:=false;
      dbedit47.readonly:=false;dbedit48.readonly:=false;dbedit49.readonly:=false;dbedit50.readonly:=false;dbedit51.readonly:=false;
      dbedit52.readonly:=false;dbedit53.readonly:=false;dbedit54.readonly:=false;dbedit55.readonly:=false;dbedit56.readonly:=false;
      dbedit57.readonly:=false;dbedit58.readonly:=false;dbedit59.readonly:=false;dbedit60.readonly:=false;dbedit61.readonly:=false;
      dbedit62.readonly:=false;dbedit63.readonly:=false;dbedit64.readonly:=false;dbedit65.readonly:=false;dbedit66.readonly:=false;
      dbedit67.readonly:=false;dbedit68.readonly:=false;dbedit69.readonly:=false;dbedit70.readonly:=false;dbedit71.readonly:=false;
      dbedit72.readonly:=false;dbedit73.readonly:=false;dbedit74.readonly:=false;dbedit75.readonly:=false;dbedit76.readonly:=false;
      dbedit77.readonly:=false;dbedit78.readonly:=false;dbedit79.readonly:=false;dbedit80.readonly:=false;dbedit81.readonly:=false;
      dbedit82.readonly:=false;dbedit83.readonly:=false;dbedit84.readonly:=false;
    {end else if (fieldbyname('r10').value=true) or (fieldbyname('r11').value=true) then begin
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;//dbgrideh2.ReadOnly:=false;
      speedbutton16.Enabled:=false;speedbutton13.Enabled:=false;speedbutton15.Enabled:=false;speedbutton6.Enabled:=false;
      dbedit1.readonly:=true;dbdateedit1.ReadOnly:=true;dbdateedit2.ReadOnly:=true;dbmemo1.ReadOnly:=true;
      dbedit2.readonly:=true;dbedit3.readonly:=true;dbedit4.readonly:=true;dbedit5.readonly:=true;dbedit6.readonly:=true;
      dbedit7.readonly:=true;dbedit8.readonly:=true;dbedit9.readonly:=true;dbedit10.readonly:=true;dbedit11.readonly:=true;
      dbedit12.readonly:=true;dbedit13.readonly:=true;dbedit14.readonly:=true;dbedit15.readonly:=true;dbedit16.readonly:=true;
      dbedit17.readonly:=true;dbedit18.readonly:=true;dbedit19.readonly:=true;dbedit20.readonly:=true;dbedit21.readonly:=true;
      dbedit22.readonly:=true;dbedit23.readonly:=true;dbedit24.readonly:=true;dbedit25.readonly:=true;dbedit26.readonly:=true;
      dbedit27.readonly:=true;dbedit28.readonly:=true;dbedit29.readonly:=true;dbedit30.readonly:=true;dbedit31.readonly:=true;
      dbedit32.readonly:=true;dbedit33.readonly:=true;dbedit34.readonly:=true;dbedit35.readonly:=true;dbedit36.readonly:=true;
      dbedit37.readonly:=true;dbedit38.readonly:=true;dbedit39.readonly:=true;dbedit40.readonly:=true;dbedit41.readonly:=true;
      dbedit42.readonly:=true;dbedit43.readonly:=true;dbedit44.readonly:=true;dbedit45.readonly:=true;dbedit46.readonly:=true;
      dbedit47.readonly:=true;dbedit48.readonly:=true;dbedit49.readonly:=true;dbedit50.readonly:=true;dbedit51.readonly:=true;
      dbedit52.readonly:=true;dbedit53.readonly:=true;dbedit54.readonly:=true;dbedit55.readonly:=true;dbedit56.readonly:=true;
      dbedit57.readonly:=true;dbedit58.readonly:=true;dbedit59.readonly:=true;dbedit60.readonly:=true;dbedit61.readonly:=true;
      dbedit62.readonly:=true;dbedit63.readonly:=true;dbedit64.readonly:=true;dbedit65.readonly:=true;dbedit66.readonly:=true;
      dbedit67.readonly:=true;dbedit68.readonly:=true;dbedit69.readonly:=true;dbedit70.readonly:=true;dbedit71.readonly:=true;
      dbedit72.readonly:=true;dbedit73.readonly:=true;dbedit74.readonly:=true;dbedit75.readonly:=true;dbedit76.readonly:=true;
      dbedit77.readonly:=true;dbedit78.readonly:=true;dbedit79.readonly:=true;dbedit80.readonly:=true;dbedit81.readonly:=true;
      dbedit82.readonly:=true;dbedit83.readonly:=true;dbedit84.readonly:=true;
    }
    end else begin
      speedbutton1.Enabled:=false;speedbutton2.Enabled:=false;//dbgrideh2.ReadOnly:=true;
      speedbutton16.Enabled:=false;speedbutton13.Enabled:=false;speedbutton15.Enabled:=false;speedbutton6.Enabled:=false;
      dbedit1.readonly:=true;dbdateedit1.ReadOnly:=true;dbdateedit2.ReadOnly:=true;dbmemo1.ReadOnly:=true;dbedit111.readonly:=true;
      dbedit2.readonly:=true;dbedit3.readonly:=true;dbedit4.readonly:=true;dbedit5.readonly:=true;dbedit6.readonly:=true;
      dbedit7.readonly:=true;dbedit8.readonly:=true;dbedit9.readonly:=true;dbedit10.readonly:=true;dbedit11.readonly:=true;
      dbedit12.readonly:=true;dbedit13.readonly:=true;dbedit14.readonly:=true;dbedit15.readonly:=true;dbedit16.readonly:=true;
      dbedit17.readonly:=true;dbedit18.readonly:=true;dbedit19.readonly:=true;dbedit20.readonly:=true;dbedit21.readonly:=true;
      dbedit22.readonly:=true;dbedit23.readonly:=true;dbedit24.readonly:=true;dbedit25.readonly:=true;dbedit26.readonly:=true;
      dbedit27.readonly:=true;dbedit28.readonly:=true;dbedit29.readonly:=true;dbedit30.readonly:=true;dbedit31.readonly:=true;
      dbedit32.readonly:=true;dbedit33.readonly:=true;dbedit34.readonly:=true;dbedit35.readonly:=true;dbedit36.readonly:=true;
      dbedit37.readonly:=true;dbedit38.readonly:=true;dbedit39.readonly:=true;dbedit40.readonly:=true;dbedit41.readonly:=true;
      dbedit42.readonly:=true;dbedit43.readonly:=true;dbedit44.readonly:=true;dbedit45.readonly:=true;dbedit46.readonly:=true;
      dbedit47.readonly:=true;dbedit48.readonly:=true;dbedit49.readonly:=true;dbedit50.readonly:=true;dbedit51.readonly:=true;
      dbedit52.readonly:=true;dbedit53.readonly:=true;dbedit54.readonly:=true;dbedit55.readonly:=true;dbedit56.readonly:=true;
      dbedit57.readonly:=true;dbedit58.readonly:=true;dbedit59.readonly:=true;dbedit60.readonly:=true;dbedit61.readonly:=true;
      dbedit62.readonly:=true;dbedit63.readonly:=true;dbedit64.readonly:=true;dbedit65.readonly:=true;dbedit66.readonly:=true;
      dbedit67.readonly:=true;dbedit68.readonly:=true;dbedit69.readonly:=true;dbedit70.readonly:=true;dbedit71.readonly:=true;
      dbedit72.readonly:=true;dbedit73.readonly:=true;dbedit74.readonly:=true;dbedit75.readonly:=true;dbedit76.readonly:=true;
      dbedit77.readonly:=true;dbedit78.readonly:=true;dbedit79.readonly:=true;dbedit80.readonly:=true;dbedit81.readonly:=true;
      dbedit82.readonly:=true;dbedit83.readonly:=true;dbedit84.readonly:=true;
    end;
    {
    if fieldbyname('r7').value=true then begin
      speedbutton10.enabled:=true;speedbutton14.enabled:=true;dbgrideh3.ReadOnly:=false;
    end
    else begin
      speedbutton10.enabled:=false;speedbutton14.enabled:=false;dbgrideh3.ReadOnly:=true;
    end;
    }
  end;
  if pagecontrol1.activepage=tabsheet3 then
  begin
   if table1.recordcount>0 then
   begin
    with Table3 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'stylno',ptinput);
      commandtext:='select * from sz_lsize1 where stylno='''+table1.fieldbyname('stylno').value+'''';
      //params[0].asstring:=table1.fieldbyname('stylno').value;
      open;
    end;
    query2.close;
    query2.params.clear;
    //query2.params.createparam(ftstring,'x',ptinput);
    query2.commandtext:='select * from SZ_lsize2 where stylno='''+table1.fieldbyname('stylno').value+'''';
    //query2.params[0].asstring:=table1.fieldbyname('stylno').value;
    query2.open;
    if query2.recordcount>0 then
    begin
      if not query2.fieldbyname('csiz1').isnull then
       dbgrideh2.Columns[13].Title.caption:='�ؽX|'+query2.fieldbyname('csiz1').value
      else dbgrideh2.columns[13].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz2').isnull then
       dbgrideh2.Columns[14].Title.caption:='�ؽX|'+query2.fieldbyname('csiz2').value
      else dbgrideh2.columns[14].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz3').isnull then
       dbgrideh2.Columns[15].Title.caption:='�ؽX|'+query2.fieldbyname('csiz3').value
      else dbgrideh2.columns[15].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz4').isnull then
       dbgrideh2.Columns[16].Title.caption:='�ؽX|'+query2.fieldbyname('csiz4').value
      else dbgrideh2.columns[16].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz5').isnull then
       dbgrideh2.Columns[17].Title.caption:='�ؽX|'+query2.fieldbyname('csiz5').value
      else dbgrideh2.columns[17].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz6').isnull then
       dbgrideh2.Columns[18].Title.caption:='�ؽX|'+query2.fieldbyname('csiz6').value
      else dbgrideh2.columns[18].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz7').isnull then
       dbgrideh2.Columns[19].Title.caption:='�ؽX|'+query2.fieldbyname('csiz7').value
      else dbgrideh2.columns[19].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz8').isnull then
       dbgrideh2.Columns[20].Title.caption:='�ؽX|'+query2.fieldbyname('csiz8').value
      else dbgrideh2.columns[20].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz9').isnull then
       dbgrideh2.Columns[21].Title.caption:='�ؽX|'+query2.fieldbyname('csiz9').value
      else dbgrideh2.columns[21].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz10').isnull then
       dbgrideh2.Columns[22].Title.caption:='�ؽX|'+query2.fieldbyname('csiz10').value
      else dbgrideh2.columns[22].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz11').isnull then
       dbgrideh2.Columns[23].Title.caption:='�ؽX|'+query2.fieldbyname('csiz11').value
      else dbgrideh2.columns[23].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz12').isnull then
       dbgrideh2.Columns[24].Title.caption:='�ؽX|'+query2.fieldbyname('csiz12').value
      else dbgrideh2.columns[24].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz13').isnull then
       dbgrideh2.Columns[25].Title.caption:='�ؽX|'+query2.fieldbyname('csiz13').value
      else dbgrideh2.columns[25].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz14').isnull then
       dbgrideh2.Columns[26].Title.caption:='�ؽX|'+query2.fieldbyname('csiz14').value
      else dbgrideh2.columns[26].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz15').isnull then
       dbgrideh2.Columns[27].Title.caption:='�ؽX|'+query2.fieldbyname('csiz15').value
      else dbgrideh2.columns[27].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz16').isnull then
       dbgrideh2.Columns[28].Title.caption:='�ؽX|'+query2.fieldbyname('csiz16').value
      else dbgrideh2.columns[28].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz17').isnull then
       dbgrideh2.Columns[29].Title.caption:='�ؽX|'+query2.fieldbyname('csiz17').value
      else dbgrideh2.columns[29].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz18').isnull then
       dbgrideh2.Columns[30].Title.caption:='�ؽX|'+query2.fieldbyname('csiz18').value
      else dbgrideh2.columns[30].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz19').isnull then
       dbgrideh2.Columns[31].Title.caption:='�ؽX|'+query2.fieldbyname('csiz19').value
      else dbgrideh2.columns[31].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz20').isnull then
       dbgrideh2.Columns[32].Title.caption:='�ؽX|'+query2.fieldbyname('csiz20').value
      else dbgrideh2.columns[32].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz21').isnull then
       dbgrideh2.Columns[33].Title.caption:='�ؽX|'+query2.fieldbyname('csiz21').value
      else dbgrideh2.columns[33].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz22').isnull then
       dbgrideh2.Columns[34].Title.caption:='�ؽX|'+query2.fieldbyname('csiz22').value
      else dbgrideh2.columns[34].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz23').isnull then
       dbgrideh2.Columns[35].Title.caption:='�ؽX|'+query2.fieldbyname('csiz23').value
      else dbgrideh2.columns[35].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz24').isnull then
       dbgrideh2.Columns[36].Title.caption:='�ؽX|'+query2.fieldbyname('csiz24').value
      else dbgrideh2.columns[36].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz25').isnull then
       dbgrideh2.Columns[37].Title.caption:='�ؽX|'+query2.fieldbyname('csiz25').value
      else dbgrideh2.columns[37].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz26').isnull then
       dbgrideh2.Columns[38].Title.caption:='�ؽX|'+query2.fieldbyname('csiz26').value
      else dbgrideh2.columns[38].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz27').isnull then
       dbgrideh2.Columns[39].Title.caption:='�ؽX|'+query2.fieldbyname('csiz27').value
      else dbgrideh2.columns[39].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz28').isnull then
       dbgrideh2.Columns[40].Title.caption:='�ؽX|'+query2.fieldbyname('csiz28').value
      else dbgrideh2.columns[40].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz29').isnull then
       dbgrideh2.Columns[41].Title.caption:='�ؽX|'+query2.fieldbyname('csiz29').value
      else dbgrideh2.columns[41].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz30').isnull then
       dbgrideh2.Columns[42].Title.caption:='�ؽX|'+query2.fieldbyname('csiz30').value
      else dbgrideh2.columns[42].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz31').isnull then
       dbgrideh2.Columns[43].Title.caption:='�ؽX|'+query2.fieldbyname('csiz31').value
      else dbgrideh2.columns[43].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz32').isnull then
       dbgrideh2.Columns[44].Title.caption:='�ؽX|'+query2.fieldbyname('csiz32').value
      else dbgrideh2.columns[44].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz33').isnull then
       dbgrideh2.Columns[45].Title.caption:='�ؽX|'+query2.fieldbyname('csiz33').value
      else dbgrideh2.columns[45].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz34').isnull then
       dbgrideh2.Columns[46].Title.caption:='�ؽX|'+query2.fieldbyname('csiz34').value
      else dbgrideh2.columns[46].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz35').isnull then
       dbgrideh2.Columns[47].Title.caption:='�ؽX|'+query2.fieldbyname('csiz35').value
      else dbgrideh2.columns[47].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz36').isnull then
       dbgrideh2.Columns[48].Title.caption:='�ؽX|'+query2.fieldbyname('csiz36').value
      else dbgrideh2.columns[48].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz37').isnull then
       dbgrideh2.Columns[49].Title.caption:='�ؽX|'+query2.fieldbyname('csiz37').value
      else dbgrideh2.columns[49].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz38').isnull then
       dbgrideh2.Columns[50].Title.caption:='�ؽX|'+query2.fieldbyname('csiz38').value
      else dbgrideh2.columns[50].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz39').isnull then
       dbgrideh2.Columns[51].Title.caption:='�ؽX|'+query2.fieldbyname('csiz39').value
      else dbgrideh2.columns[51].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz40').isnull then
       dbgrideh2.Columns[52].Title.caption:='�ؽX|'+query2.fieldbyname('csiz40').value
      else dbgrideh2.columns[52].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz41').isnull then
       dbgrideh2.Columns[53].Title.caption:='�ؽX|'+query2.fieldbyname('csiz41').value
      else dbgrideh2.columns[53].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz42').isnull then
       dbgrideh2.Columns[54].Title.caption:='�ؽX|'+query2.fieldbyname('csiz42').value
      else dbgrideh2.columns[54].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz43').isnull then
       dbgrideh2.Columns[55].Title.caption:='�ؽX|'+query2.fieldbyname('csiz43').value
      else dbgrideh2.columns[55].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz44').isnull then
       dbgrideh2.Columns[56].Title.caption:='�ؽX|'+query2.fieldbyname('csiz44').value
      else dbgrideh2.columns[56].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz45').isnull then
       dbgrideh2.Columns[57].Title.caption:='�ؽX|'+query2.fieldbyname('csiz45').value
      else dbgrideh2.columns[57].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz46').isnull then
       dbgrideh2.Columns[58].Title.caption:='�ؽX|'+query2.fieldbyname('csiz46').value
      else dbgrideh2.columns[58].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz47').isnull then
       dbgrideh2.Columns[59].Title.caption:='�ؽX|'+query2.fieldbyname('csiz47').value
      else dbgrideh2.columns[59].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz48').isnull then
       dbgrideh2.Columns[60].Title.caption:='�ؽX|'+query2.fieldbyname('csiz48').value
      else dbgrideh2.columns[60].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz49').isnull then
       dbgrideh2.Columns[61].Title.caption:='�ؽX|'+query2.fieldbyname('csiz49').value
      else dbgrideh2.columns[61].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz50').isnull then
       dbgrideh2.Columns[62].Title.caption:='�ؽX|'+query2.fieldbyname('csiz50').value
      else dbgrideh2.columns[62].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz51').isnull then
       dbgrideh2.Columns[63].Title.caption:='�ؽX|'+query2.fieldbyname('csiz51').value
      else dbgrideh2.columns[63].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz52').isnull then
       dbgrideh2.Columns[64].Title.caption:='�ؽX|'+query2.fieldbyname('csiz52').value
      else dbgrideh2.columns[64].title.caption:='�ؽX| ';

      if not query2.fieldbyname('csiz1').isnull then begin
        crst1.Caption:=query2.fieldbyname('csiz1').value;
        if query2.fieldbyname('csiz1').value>'' then begin
          crst1.visible:=true;
          cxcolumn1.visible:=true;
          cxcolumn2.visible:=true;
          cxcolumn3.visible:=true;
        end else begin
          crst1.visible:=false;
          cxcolumn1.visible:=false;
          cxcolumn2.visible:=false;
          cxcolumn3.visible:=false;
        end;
      end else begin
        crst1.visible:=false;
        cxcolumn1.visible:=false;
        cxcolumn2.visible:=false;
        cxcolumn3.visible:=false;
      end;
      if not query2.fieldbyname('csiz2').isnull then begin
        crst2.Caption:=query2.fieldbyname('csiz2').value;
        if query2.fieldbyname('csiz2').value>'' then begin
          crst2.visible:=true;
          cxcolumn4.visible:=true;
          cxcolumn5.visible:=true;
          cxcolumn6.visible:=true;
        end else begin
          crst2.visible:=false;
          cxcolumn4.visible:=false;
          cxcolumn5.visible:=false;
          cxcolumn6.visible:=false;
        end;
      end else begin
        crst2.visible:=false;
        cxcolumn4.visible:=false;
        cxcolumn5.visible:=false;
        cxcolumn6.visible:=false;
      end;
      if not query2.fieldbyname('csiz3').isnull then begin
        crst3.Caption:=query2.fieldbyname('csiz3').value;
        if query2.fieldbyname('csiz3').value>'' then begin
          crst3.visible:=true;
          cxcolumn7.visible:=true;
          cxcolumn8.visible:=true;
          cxcolumn9.visible:=true;
        end else begin
          crst3.visible:=false;
          cxcolumn7.visible:=false;
          cxcolumn8.visible:=false;
          cxcolumn9.visible:=false;
        end;
      end else begin
        crst3.visible:=false;
        cxcolumn7.visible:=false;
        cxcolumn8.visible:=false;
        cxcolumn9.visible:=false;
      end;
      if not query2.fieldbyname('csiz4').isnull then begin
        crst4.Caption:=query2.fieldbyname('csiz4').value;
        if query2.fieldbyname('csiz4').value>'' then begin
          crst4.visible:=true;
          cxcolumn10.visible:=true;
          cxcolumn11.visible:=true;
          cxcolumn12.visible:=true;
        end else begin
          crst4.visible:=false;
          cxcolumn10.visible:=false;
          cxcolumn11.visible:=false;
          cxcolumn12.visible:=false;
        end;
      end else begin
        crst4.visible:=false;
        cxcolumn10.visible:=false;
        cxcolumn11.visible:=false;
        cxcolumn12.visible:=false;
      end;
      if not query2.fieldbyname('csiz5').isnull then begin
        crst5.Caption:=query2.fieldbyname('csiz5').value;
        if query2.fieldbyname('csiz5').value>'' then begin
          crst5.visible:=true;
          cxcolumn13.visible:=true;
          cxcolumn14.visible:=true;
          cxcolumn15.visible:=true;
        end else begin
          crst5.visible:=false;
          cxcolumn13.visible:=false;
          cxcolumn14.visible:=false;
          cxcolumn15.visible:=false;
        end;
      end else begin
        crst5.visible:=false;
        cxcolumn13.visible:=false;
        cxcolumn14.visible:=false;
        cxcolumn15.visible:=false;
      end;
      if not query2.fieldbyname('csiz6').isnull then begin
        crst6.Caption:=query2.fieldbyname('csiz6').value;
        if query2.fieldbyname('csiz6').value>'' then begin
          crst6.visible:=true;
          cxcolumn16.visible:=true;
          cxcolumn17.visible:=true;
          cxcolumn18.visible:=true;
        end else begin
          crst6.visible:=false;
          cxcolumn16.visible:=false;
          cxcolumn17.visible:=false;
          cxcolumn18.visible:=false;
        end;
      end else begin
        crst6.visible:=false;
        cxcolumn16.visible:=false;
        cxcolumn17.visible:=false;
        cxcolumn18.visible:=false;
      end;
      if not query2.fieldbyname('csiz7').isnull then begin
        crst7.Caption:=query2.fieldbyname('csiz7').value;
        if query2.fieldbyname('csiz7').value>'' then begin
          crst7.visible:=true;
          cxcolumn19.visible:=true;
          cxcolumn20.visible:=true;
          cxcolumn21.visible:=true;
        end else begin
          crst7.visible:=false;
          cxcolumn19.visible:=false;
          cxcolumn20.visible:=false;
          cxcolumn21.visible:=false;
        end;
      end else begin
        crst7.visible:=false;
        cxcolumn19.visible:=false;
        cxcolumn20.visible:=false;
        cxcolumn21.visible:=false;
      end;
      if not query2.fieldbyname('csiz8').isnull then begin
        crst8.Caption:=query2.fieldbyname('csiz8').value;
        if query2.fieldbyname('csiz8').value>'' then begin
          crst8.visible:=true;
          cxcolumn22.visible:=true;
          cxcolumn23.visible:=true;
          cxcolumn24.visible:=true;
        end else begin
          crst8.visible:=false;
          cxcolumn22.visible:=false;
          cxcolumn23.visible:=false;
          cxcolumn24.visible:=false;
        end;
      end else begin
        crst8.visible:=false;
        cxcolumn22.visible:=false;
        cxcolumn23.visible:=false;
        cxcolumn24.visible:=false;
      end;
      if not query2.fieldbyname('csiz9').isnull then begin
        crst9.Caption:=query2.fieldbyname('csiz9').value;
        if query2.fieldbyname('csiz9').value>'' then begin
          crst9.visible:=true;
          cxcolumn25.visible:=true;
          cxcolumn26.visible:=true;
          cxcolumn27.visible:=true;
        end else begin
          crst9.visible:=false;
          cxcolumn25.visible:=false;
          cxcolumn26.visible:=false;
          cxcolumn27.visible:=false;
        end;
      end else begin
        crst9.visible:=false;
        cxcolumn25.visible:=false;
        cxcolumn26.visible:=false;
        cxcolumn27.visible:=false;
      end;
      if not query2.fieldbyname('csiz10').isnull then begin
        crst10.Caption:=query2.fieldbyname('csiz10').value;
        if query2.fieldbyname('csiz10').value>'' then begin
          crst10.visible:=true;
          cxcolumn28.visible:=true;
          cxcolumn29.visible:=true;
          cxcolumn30.visible:=true;
        end else begin
          crst10.visible:=false;
          cxcolumn28.visible:=false;
          cxcolumn29.visible:=false;
          cxcolumn30.visible:=false;
        end;
      end else begin
        crst10.visible:=false;
        cxcolumn28.visible:=false;
        cxcolumn29.visible:=false;
        cxcolumn30.visible:=false;
      end;
      if not query2.fieldbyname('csiz11').isnull then begin
        crst11.Caption:=query2.fieldbyname('csiz11').value;
        if query2.fieldbyname('csiz11').value>'' then begin
          crst11.visible:=true;
          cxcolumn31.visible:=true;
          cxcolumn32.visible:=true;
          cxcolumn33.visible:=true;
        end else begin
          crst11.visible:=false;
          cxcolumn31.visible:=false;
          cxcolumn32.visible:=false;
          cxcolumn33.visible:=false;
        end;
      end else begin
        crst11.visible:=false;
        cxcolumn31.visible:=false;
        cxcolumn32.visible:=false;
        cxcolumn33.visible:=false;
      end;
      if not query2.fieldbyname('csiz12').isnull then begin
        crst12.Caption:=query2.fieldbyname('csiz12').value;
        if query2.fieldbyname('csiz12').value>'' then begin
          crst12.visible:=true;
          cxcolumn34.visible:=true;
          cxcolumn35.visible:=true;
          cxcolumn36.visible:=true;
        end else begin
          crst12.visible:=false;
          cxcolumn34.visible:=false;
          cxcolumn35.visible:=false;
          cxcolumn36.visible:=false;
        end;
      end else begin
        crst12.visible:=false;
        cxcolumn34.visible:=false;
        cxcolumn35.visible:=false;
        cxcolumn36.visible:=false;
      end;
      if not query2.fieldbyname('csiz13').isnull then begin
        crst13.Caption:=query2.fieldbyname('csiz13').value;
        if query2.fieldbyname('csiz13').value>'' then begin
          crst13.visible:=true;
          cxcolumn37.visible:=true;
          cxcolumn38.visible:=true;
          cxcolumn39.visible:=true;
        end else begin
          crst13.visible:=false;
          cxcolumn37.visible:=false;
          cxcolumn38.visible:=false;
          cxcolumn39.visible:=false;
        end;
      end else begin
        crst13.visible:=false;
        cxcolumn37.visible:=false;
        cxcolumn38.visible:=false;
        cxcolumn39.visible:=false;
      end;
      if not query2.fieldbyname('csiz14').isnull then begin
        crst14.Caption:=query2.fieldbyname('csiz14').value;
        if query2.fieldbyname('csiz14').value>'' then begin
          crst14.visible:=true;
          cxcolumn40.visible:=true;
          cxcolumn41.visible:=true;
          cxcolumn42.visible:=true;
        end else begin
          crst14.visible:=false;
          cxcolumn40.visible:=false;
          cxcolumn41.visible:=false;
          cxcolumn42.visible:=false;
        end;
      end else begin
        crst14.visible:=false;
        cxcolumn40.visible:=false;
        cxcolumn41.visible:=false;
        cxcolumn42.visible:=false;
      end;
      if not query2.fieldbyname('csiz15').isnull then begin
        crst15.Caption:=query2.fieldbyname('csiz15').value;
        if query2.fieldbyname('csiz15').value>'' then begin
          crst15.visible:=true;
          cxcolumn43.visible:=true;
          cxcolumn44.visible:=true;
          cxcolumn45.visible:=true;
        end else begin
          crst15.visible:=false;
          cxcolumn43.visible:=false;
          cxcolumn44.visible:=false;
          cxcolumn45.visible:=false;
        end;
      end else begin
        crst15.visible:=false;
        cxcolumn43.visible:=false;
        cxcolumn44.visible:=false;
        cxcolumn45.visible:=false;
      end;
      if not query2.fieldbyname('csiz16').isnull then begin
        crst16.Caption:=query2.fieldbyname('csiz16').value;
        if query2.fieldbyname('csiz16').value>'' then begin
          crst16.visible:=true;
          cxcolumn46.visible:=true;
          cxcolumn47.visible:=true;
          cxcolumn48.visible:=true;
        end else begin
          crst16.visible:=false;
          cxcolumn46.visible:=false;
          cxcolumn47.visible:=false;
          cxcolumn48.visible:=false;
        end;
      end else begin
        crst16.visible:=false;
        cxcolumn46.visible:=false;
        cxcolumn47.visible:=false;
        cxcolumn48.visible:=false;
      end;
      if not query2.fieldbyname('csiz17').isnull then begin
        crst17.Caption:=query2.fieldbyname('csiz17').value;
        if query2.fieldbyname('csiz17').value>'' then begin
          crst17.visible:=true;
          cxcolumn49.visible:=true;
          cxcolumn50.visible:=true;
          cxcolumn51.visible:=true;
        end else begin
          crst17.visible:=false;
          cxcolumn49.visible:=false;
          cxcolumn50.visible:=false;
          cxcolumn51.visible:=false;
        end;
      end else begin
        crst17.visible:=false;
        cxcolumn49.visible:=false;
        cxcolumn50.visible:=false;
        cxcolumn51.visible:=false;
      end;
      if not query2.fieldbyname('csiz18').isnull then begin
        crst18.Caption:=query2.fieldbyname('csiz18').value;
        if query2.fieldbyname('csiz18').value>'' then begin
          crst18.visible:=true;
          cxcolumn52.visible:=true;
          cxcolumn53.visible:=true;
          cxcolumn54.visible:=true;
        end else begin
          crst18.visible:=false;
          cxcolumn52.visible:=false;
          cxcolumn53.visible:=false;
          cxcolumn54.visible:=false;
        end;
      end else begin
        crst18.visible:=false;
        cxcolumn52.visible:=false;
        cxcolumn53.visible:=false;
        cxcolumn54.visible:=false;
      end;
      if not query2.fieldbyname('csiz19').isnull then begin
        crst19.Caption:=query2.fieldbyname('csiz19').value;
        if query2.fieldbyname('csiz19').value>'' then begin
          crst19.visible:=true;
          cxcolumn55.visible:=true;
          cxcolumn56.visible:=true;
          cxcolumn57.visible:=true;
        end else begin
          crst19.visible:=false;
          cxcolumn55.visible:=false;
          cxcolumn56.visible:=false;
          cxcolumn57.visible:=false;
        end;
      end else begin
        crst19.visible:=false;
        cxcolumn55.visible:=false;
        cxcolumn56.visible:=false;
        cxcolumn57.visible:=false;
      end;
      if not query2.fieldbyname('csiz20').isnull then begin
        crst20.Caption:=query2.fieldbyname('csiz20').value;
        if query2.fieldbyname('csiz20').value>'' then begin
          crst20.visible:=true;
          cxcolumn58.visible:=true;
          cxcolumn59.visible:=true;
          cxcolumn60.visible:=true;
        end else begin
          crst20.visible:=false;
          cxcolumn58.visible:=false;
          cxcolumn59.visible:=false;
          cxcolumn60.visible:=false;
        end;
      end else begin
        crst20.visible:=false;
        cxcolumn58.visible:=false;
        cxcolumn59.visible:=false;
        cxcolumn60.visible:=false;
      end;
      if not query2.fieldbyname('csiz21').isnull then begin
        crst21.Caption:=query2.fieldbyname('csiz21').value;
        if query2.fieldbyname('csiz21').value>'' then begin
          crst21.visible:=true;
          cxcolumn61.visible:=true;
          cxcolumn62.visible:=true;
          cxcolumn63.visible:=true;
        end else begin
          crst21.visible:=false;
          cxcolumn61.visible:=false;
          cxcolumn62.visible:=false;
          cxcolumn63.visible:=false;
        end;
      end else begin
        crst21.visible:=false;
        cxcolumn61.visible:=false;
        cxcolumn62.visible:=false;
        cxcolumn63.visible:=false;
      end;
      if not query2.fieldbyname('csiz22').isnull then begin
        crst22.Caption:=query2.fieldbyname('csiz22').value;
        if query2.fieldbyname('csiz22').value>'' then begin
          crst22.visible:=true;
          cxcolumn64.visible:=true;
          cxcolumn65.visible:=true;
          cxcolumn66.visible:=true;
        end else begin
          crst22.visible:=false;
          cxcolumn64.visible:=false;
          cxcolumn65.visible:=false;
          cxcolumn66.visible:=false;
        end;
      end else begin
        crst22.visible:=false;
        cxcolumn64.visible:=false;
        cxcolumn65.visible:=false;
        cxcolumn66.visible:=false;
      end;
      if not query2.fieldbyname('csiz23').isnull then begin
        crst23.Caption:=query2.fieldbyname('csiz23').value;
        if query2.fieldbyname('csiz23').value>'' then begin
          crst23.visible:=true;
          cxcolumn67.visible:=true;
          cxcolumn68.visible:=true;
          cxcolumn69.visible:=true;
        end else begin
          crst23.visible:=false;
          cxcolumn67.visible:=false;
          cxcolumn68.visible:=false;
          cxcolumn69.visible:=false;
        end;
      end else begin
        crst23.visible:=false;
        cxcolumn67.visible:=false;
        cxcolumn68.visible:=false;
        cxcolumn69.visible:=false;
      end;
      if not query2.fieldbyname('csiz24').isnull then begin
        crst24.Caption:=query2.fieldbyname('csiz24').value;
        if query2.fieldbyname('csiz24').value>'' then begin
          crst24.visible:=true;
          cxcolumn70.visible:=true;
          cxcolumn71.visible:=true;
          cxcolumn72.visible:=true;
        end else begin
          crst24.visible:=false;
          cxcolumn70.visible:=false;
          cxcolumn71.visible:=false;
          cxcolumn72.visible:=false;
        end;
      end else begin
        crst24.visible:=false;
        cxcolumn70.visible:=false;
        cxcolumn71.visible:=false;
        cxcolumn72.visible:=false;
      end;
      if not query2.fieldbyname('csiz25').isnull then begin
        crst25.Caption:=query2.fieldbyname('csiz25').value;
        if query2.fieldbyname('csiz25').value>'' then begin
          crst25.visible:=true;
          cxcolumn73.visible:=true;
          cxcolumn74.visible:=true;
          cxcolumn75.visible:=true;
        end else begin
          crst25.visible:=false;
          cxcolumn73.visible:=false;
          cxcolumn74.visible:=false;
          cxcolumn75.visible:=false;
        end;
      end else begin
        crst25.visible:=false;
        cxcolumn73.visible:=false;
        cxcolumn74.visible:=false;
        cxcolumn75.visible:=false;
      end;
      if not query2.fieldbyname('csiz26').isnull then begin
        crst26.Caption:=query2.fieldbyname('csiz26').value;
        if query2.fieldbyname('csiz26').value>'' then begin
          crst26.visible:=true;
          cxcolumn76.visible:=true;
          cxcolumn77.visible:=true;
          cxcolumn78.visible:=true;
        end else begin
          crst26.visible:=false;
          cxcolumn76.visible:=false;
          cxcolumn77.visible:=false;
          cxcolumn78.visible:=false;
        end;
      end else begin
        crst26.visible:=false;
        cxcolumn76.visible:=false;
        cxcolumn77.visible:=false;
        cxcolumn78.visible:=false;
      end;
      if not query2.fieldbyname('csiz27').isnull then begin
        crst27.Caption:=query2.fieldbyname('csiz27').value;
        if query2.fieldbyname('csiz27').value>'' then begin
          crst27.visible:=true;
          cxcolumn79.visible:=true;
          cxcolumn80.visible:=true;
          cxcolumn81.visible:=true;
        end else begin
          crst27.visible:=false;
          cxcolumn79.visible:=false;
          cxcolumn80.visible:=false;
          cxcolumn81.visible:=false;
        end;
      end else begin
        crst27.visible:=false;
        cxcolumn79.visible:=false;
        cxcolumn80.visible:=false;
        cxcolumn81.visible:=false;
      end;
      if not query2.fieldbyname('csiz28').isnull then begin
        crst28.Caption:=query2.fieldbyname('csiz28').value;
        if query2.fieldbyname('csiz28').value>'' then begin
          crst28.visible:=true;
          cxcolumn82.visible:=true;
          cxcolumn83.visible:=true;
          cxcolumn84.visible:=true;
        end else begin
          crst28.visible:=false;
          cxcolumn82.visible:=false;
          cxcolumn83.visible:=false;
          cxcolumn84.visible:=false;
        end;
      end else begin
        crst28.visible:=false;
        cxcolumn82.visible:=false;
        cxcolumn83.visible:=false;
        cxcolumn84.visible:=false;
      end;
      if not query2.fieldbyname('csiz29').isnull then begin
        crst29.Caption:=query2.fieldbyname('csiz29').value;
        if query2.fieldbyname('csiz29').value>'' then begin
          crst29.visible:=true;
          cxcolumn85.visible:=true;
          cxcolumn86.visible:=true;
          cxcolumn87.visible:=true;
        end else begin
          crst29.visible:=false;
          cxcolumn85.visible:=false;
          cxcolumn86.visible:=false;
          cxcolumn87.visible:=false;
        end;
      end else begin
        crst29.visible:=false;
        cxcolumn85.visible:=false;
        cxcolumn86.visible:=false;
        cxcolumn87.visible:=false;
      end;
      if not query2.fieldbyname('csiz30').isnull then begin
        crst30.Caption:=query2.fieldbyname('csiz30').value;
        if query2.fieldbyname('csiz30').value>'' then begin
          crst30.visible:=true;
          cxcolumn88.visible:=true;
          cxcolumn89.visible:=true;
          cxcolumn90.visible:=true;
        end else begin
          crst30.visible:=false;
          cxcolumn88.visible:=false;
          cxcolumn89.visible:=false;
          cxcolumn90.visible:=false;
        end;
      end else begin
        crst30.visible:=false;
        cxcolumn88.visible:=false;
        cxcolumn89.visible:=false;
        cxcolumn90.visible:=false;
      end;
      {
      if not query2.fieldbyname('csiz2').isnull then
      crst2.Caption:=query2.fieldbyname('csiz2').value else crst2.Caption:='';
      if not query2.fieldbyname('csiz3').isnull then
      crst3.Caption:=query2.fieldbyname('csiz3').value else crst3.Caption:='';
      if not query2.fieldbyname('csiz4').isnull then
      crst4.Caption:=query2.fieldbyname('csiz4').value else crst4.Caption:='';
      if not query2.fieldbyname('csiz5').isnull then
      crst5.Caption:=query2.fieldbyname('csiz5').value else crst5.Caption:='';
      if not query2.fieldbyname('csiz6').isnull then
      crst6.Caption:=query2.fieldbyname('csiz6').value else crst6.Caption:='';
      if not query2.fieldbyname('csiz7').isnull then
      crst7.Caption:=query2.fieldbyname('csiz7').value else crst7.Caption:='';
      if not query2.fieldbyname('csiz8').isnull then
      crst8.Caption:=query2.fieldbyname('csiz8').value else crst8.Caption:='';
      if not query2.fieldbyname('csiz9').isnull then
      crst9.Caption:=query2.fieldbyname('csiz9').value else crst9.Caption:='';
      if not query2.fieldbyname('csiz10').isnull then
      crst10.Caption:=query2.fieldbyname('csiz10').value else crst10.Caption:='';
      if not query2.fieldbyname('csiz11').isnull then
      crst11.Caption:=query2.fieldbyname('csiz11').value else crst11.Caption:='';
      if not query2.fieldbyname('csiz12').isnull then
      crst12.Caption:=query2.fieldbyname('csiz12').value else crst12.Caption:='';
      if not query2.fieldbyname('csiz13').isnull then
      crst13.Caption:=query2.fieldbyname('csiz13').value else crst13.Caption:='';
      if not query2.fieldbyname('csiz14').isnull then
      crst14.Caption:=query2.fieldbyname('csiz14').value else crst14.Caption:='';
      if not query2.fieldbyname('csiz15').isnull then
      crst15.Caption:=query2.fieldbyname('csiz15').value else crst15.Caption:='';
      if not query2.fieldbyname('csiz16').isnull then
      crst16.Caption:=query2.fieldbyname('csiz16').value else crst16.Caption:='';
      if not query2.fieldbyname('csiz17').isnull then
      crst17.Caption:=query2.fieldbyname('csiz17').value else crst17.Caption:='';
      if not query2.fieldbyname('csiz18').isnull then
      crst18.Caption:=query2.fieldbyname('csiz18').value else crst18.Caption:='';
      if not query2.fieldbyname('csiz19').isnull then
      crst19.Caption:=query2.fieldbyname('csiz19').value else crst19.Caption:='';
      if not query2.fieldbyname('csiz20').isnull then
      crst20.Caption:=query2.fieldbyname('csiz20').value else crst20.Caption:='';
      if not query2.fieldbyname('csiz21').isnull then
      crst21.Caption:=query2.fieldbyname('csiz21').value else crst21.Caption:='';
      if not query2.fieldbyname('csiz22').isnull then
      crst22.Caption:=query2.fieldbyname('csiz22').value else crst22.Caption:='';
      if not query2.fieldbyname('csiz23').isnull then
      crst23.Caption:=query2.fieldbyname('csiz23').value else crst23.Caption:='';
      if not query2.fieldbyname('csiz24').isnull then
      crst24.Caption:=query2.fieldbyname('csiz24').value else crst24.Caption:='';
      if not query2.fieldbyname('csiz25').isnull then
      crst25.Caption:=query2.fieldbyname('csiz25').value else crst25.Caption:='';
      if not query2.fieldbyname('csiz26').isnull then
      crst26.Caption:=query2.fieldbyname('csiz26').value else crst26.Caption:='';
      if not query2.fieldbyname('csiz27').isnull then
      crst27.Caption:=query2.fieldbyname('csiz27').value else crst27.Caption:='';
      if not query2.fieldbyname('csiz28').isnull then
      crst28.Caption:=query2.fieldbyname('csiz28').value else crst28.Caption:='';
      if not query2.fieldbyname('csiz29').isnull then
      crst29.Caption:=query2.fieldbyname('csiz29').value else crst29.Caption:='';
      if not query2.fieldbyname('csiz30').isnull then
      crst30.Caption:=query2.fieldbyname('csiz30').value else crst30.Caption:='';
      }
      if not query2.fieldbyname('csiz31').isnull then begin
        crst31.Caption:=query2.fieldbyname('csiz31').value;
        if query2.fieldbyname('csiz31').value>'' then
        crst31.visible:=true else crst31.visible:=false;
      end else begin
        crst31.visible:=false;
      end;
      if not query2.fieldbyname('csiz32').isnull then begin
        crst32.Caption:=query2.fieldbyname('csiz32').value;
        if query2.fieldbyname('csiz32').value>'' then
        crst32.visible:=true else crst32.visible:=false;
      end else begin
        crst32.visible:=false;
      end;
      if not query2.fieldbyname('csiz33').isnull then begin
        crst33.Caption:=query2.fieldbyname('csiz33').value;
        if query2.fieldbyname('csiz33').value>'' then
        crst33.visible:=true else crst33.visible:=false;
      end else begin
        crst33.visible:=false;
      end;
      if not query2.fieldbyname('csiz34').isnull then begin
        crst34.Caption:=query2.fieldbyname('csiz34').value;
        if query2.fieldbyname('csiz34').value>'' then
        crst34.visible:=true else crst34.visible:=false;
      end else begin
        crst34.visible:=false;
      end;
      if not query2.fieldbyname('csiz35').isnull then begin
        crst35.Caption:=query2.fieldbyname('csiz35').value;
        if query2.fieldbyname('csiz35').value>'' then
        crst35.visible:=true else crst35.visible:=false;
      end else begin
        crst35.visible:=false;
      end;
      if not query2.fieldbyname('csiz36').isnull then begin
        crst36.Caption:=query2.fieldbyname('csiz36').value;
        if query2.fieldbyname('csiz36').value>'' then
        crst36.visible:=true else crst36.visible:=false;
      end else begin
        crst36.visible:=false;
      end;
      if not query2.fieldbyname('csiz37').isnull then begin
        crst37.Caption:=query2.fieldbyname('csiz37').value;
        if query2.fieldbyname('csiz37').value>'' then
        crst37.visible:=true else crst37.visible:=false;
      end else begin
        crst37.visible:=false;
      end;
      if not query2.fieldbyname('csiz38').isnull then begin
        crst38.Caption:=query2.fieldbyname('csiz38').value;
        if query2.fieldbyname('csiz38').value>'' then
        crst38.visible:=true else crst38.visible:=false;
      end else begin
        crst38.visible:=false;
      end;
      if not query2.fieldbyname('csiz39').isnull then begin
        crst39.Caption:=query2.fieldbyname('csiz39').value;
        if query2.fieldbyname('csiz39').value>'' then
        crst39.visible:=true else crst39.visible:=false;
      end else begin
        crst39.visible:=false;
      end;
      if not query2.fieldbyname('csiz40').isnull then begin
        crst40.Caption:=query2.fieldbyname('csiz40').value;
        if query2.fieldbyname('csiz40').value>'' then
        crst40.visible:=true else crst40.visible:=false;
      end else begin
        crst40.visible:=false;
      end;
      if not query2.fieldbyname('csiz41').isnull then begin
        crst41.Caption:=query2.fieldbyname('csiz41').value;
        if query2.fieldbyname('csiz41').value>'' then
        crst41.visible:=true else crst41.visible:=false;
      end else begin
        crst41.visible:=false;
      end;
      if not query2.fieldbyname('csiz42').isnull then begin
        crst42.Caption:=query2.fieldbyname('csiz42').value;
        if query2.fieldbyname('csiz42').value>'' then
        crst42.visible:=true else crst42.visible:=false;
      end else begin
        crst42.visible:=false;
      end;
      if not query2.fieldbyname('csiz43').isnull then begin
        crst43.Caption:=query2.fieldbyname('csiz43').value;
        if query2.fieldbyname('csiz43').value>'' then
        crst43.visible:=true else crst43.visible:=false;
      end else begin
        crst43.visible:=false;
      end;
      if not query2.fieldbyname('csiz44').isnull then begin
        crst44.Caption:=query2.fieldbyname('csiz44').value;
        if query2.fieldbyname('csiz44').value>'' then
        crst44.visible:=true else crst44.visible:=false;
      end else begin
        crst44.visible:=false;
      end;
      if not query2.fieldbyname('csiz45').isnull then begin
        crst45.Caption:=query2.fieldbyname('csiz45').value;
        if query2.fieldbyname('csiz45').value>'' then
        crst45.visible:=true else crst45.visible:=false;
      end else begin
        crst45.visible:=false;
      end;
      if not query2.fieldbyname('csiz46').isnull then begin
        crst46.Caption:=query2.fieldbyname('csiz46').value;
        if query2.fieldbyname('csiz46').value>'' then
        crst46.visible:=true else crst46.visible:=false;
      end else begin
        crst46.visible:=false;
      end;
      if not query2.fieldbyname('csiz47').isnull then begin
        crst47.Caption:=query2.fieldbyname('csiz47').value;
        if query2.fieldbyname('csiz47').value>'' then
        crst47.visible:=true else crst47.visible:=false;
      end else begin
        crst47.visible:=false;
      end;
      if not query2.fieldbyname('csiz48').isnull then begin
        crst48.Caption:=query2.fieldbyname('csiz48').value;
        if query2.fieldbyname('csiz48').value>'' then
        crst48.visible:=true else crst48.visible:=false;
      end else begin
        crst48.visible:=false;
      end;
      if not query2.fieldbyname('csiz49').isnull then begin
        crst49.Caption:=query2.fieldbyname('csiz49').value;
        if query2.fieldbyname('csiz49').value>'' then
        crst49.visible:=true else crst49.visible:=false;
      end else begin
        crst49.visible:=false;
      end;
      if not query2.fieldbyname('csiz50').isnull then begin
        crst50.Caption:=query2.fieldbyname('csiz50').value;
        if query2.fieldbyname('csiz50').value>'' then
        crst50.visible:=true else crst50.visible:=false;
      end else begin
        crst50.visible:=false;
      end;
      if not query2.fieldbyname('csiz51').isnull then begin
        crst51.Caption:=query2.fieldbyname('csiz51').value;
        if query2.fieldbyname('csiz51').value>'' then
        crst51.visible:=true else crst51.visible:=false;
      end else begin
        crst51.visible:=false;
      end;
      if not query2.fieldbyname('csiz52').isnull then begin
        crst52.Caption:=query2.fieldbyname('csiz52').value;
        if query2.fieldbyname('csiz52').value>'' then
        crst52.visible:=true else crst52.visible:=false;
      end else begin
        crst52.visible:=false;
      end;
      {
      if not query2.fieldbyname('csiz32').isnull then
      crst32.Caption:=query2.fieldbyname('csiz32').value else crst32.Caption:='';
      if not query2.fieldbyname('csiz33').isnull then
      crst33.Caption:=query2.fieldbyname('csiz33').value else crst33.Caption:='';
      if not query2.fieldbyname('csiz34').isnull then
      crst34.Caption:=query2.fieldbyname('csiz34').value else crst34.Caption:='';
      if not query2.fieldbyname('csiz35').isnull then
      crst35.Caption:=query2.fieldbyname('csiz35').value else crst35.Caption:='';
      if not query2.fieldbyname('csiz36').isnull then
      crst36.Caption:=query2.fieldbyname('csiz36').value else crst36.Caption:='';
      if not query2.fieldbyname('csiz37').isnull then
      crst37.Caption:=query2.fieldbyname('csiz37').value else crst37.Caption:='';
      if not query2.fieldbyname('csiz38').isnull then
      crst38.Caption:=query2.fieldbyname('csiz38').value else crst38.Caption:='';
      if not query2.fieldbyname('csiz39').isnull then
      crst39.Caption:=query2.fieldbyname('csiz39').value else crst39.Caption:='';
      if not query2.fieldbyname('csiz40').isnull then
      crst40.Caption:=query2.fieldbyname('csiz40').value else crst40.Caption:='';
      if not query2.fieldbyname('csiz41').isnull then
      crst41.Caption:=query2.fieldbyname('csiz41').value else crst41.Caption:='';
      if not query2.fieldbyname('csiz42').isnull then
      crst42.Caption:=query2.fieldbyname('csiz42').value else crst42.Caption:='';
      if not query2.fieldbyname('csiz43').isnull then
      crst43.Caption:=query2.fieldbyname('csiz43').value else crst43.Caption:='';
      if not query2.fieldbyname('csiz44').isnull then
      crst44.Caption:=query2.fieldbyname('csiz44').value else crst44.Caption:='';
      if not query2.fieldbyname('csiz45').isnull then
      crst45.Caption:=query2.fieldbyname('csiz45').value else crst45.Caption:='';
      if not query2.fieldbyname('csiz46').isnull then
      crst46.Caption:=query2.fieldbyname('csiz46').value else crst46.Caption:='';
      if not query2.fieldbyname('csiz47').isnull then
      crst47.Caption:=query2.fieldbyname('csiz47').value else crst47.Caption:='';
      if not query2.fieldbyname('csiz48').isnull then
      crst48.Caption:=query2.fieldbyname('csiz48').value else crst48.Caption:='';
      if not query2.fieldbyname('csiz49').isnull then
      crst49.Caption:=query2.fieldbyname('csiz49').value else crst49.Caption:='';
      if not query2.fieldbyname('csiz50').isnull then
      crst50.Caption:=query2.fieldbyname('csiz50').value else crst50.Caption:='';
      if not query2.fieldbyname('csiz51').isnull then
      crst51.Caption:=query2.fieldbyname('csiz51').value else crst51.Caption:='';
      if not query2.fieldbyname('csiz52').isnull then
      crst52.Caption:=query2.fieldbyname('csiz52').value else crst52.Caption:='';
      }
    end;
    with ClientDataSet1 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'stylno',ptinput);
      commandtext:='select stylno,cde,jobno,id,cmeas,emeas,tolerence,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8,rst9,rst10,rst11,rst12,rst13,rst14,rst15,rst16,rst17,'
                  +'rst18,rst19,rst20,rst21,rst22,rst23,rst24,rst25,rst26,rst27,rst28,rst29,rst30,rst31,rst32,rst33,rst34,rst35,rst36,rst37,rst38,rst39,rst40,rst41,rst42,rst43,rst44,'
                  +'rst45,rst46,rst47,rst48,rst49,rst50,rst51,rst52 from sz_lsize1 where stylno='''+table1.fieldbyname('stylno').value+'''';
      //params[0].asstring:=table1.fieldbyname('stylno').value;
      open;
    end;
   end;
  end
  else
  begin
   if pagecontrol1.activepage=tabsheet4 then
   begin
    if table1.recordcount>0 then
    begin
     Table4.close;
     Table4.params.clear;
     //Table4.params.createparam(ftstring,'stylno',ptinput);
     Table4.commandtext:='select * from SZ_prdsize where stylno='''+table1.fieldbyname('stylno').value+'''';
     //Table4.params[0].asstring:=table1.fieldbyname('stylno').value;
     Table4.open;
     with query4 do begin
       close;
       params.Clear;
       //params.CreateParam(ftstring,'stylno',ptinput);
       if Table4.RecordCount>0 then
         commandtext:='Exec sz_prdUpdateData '''+table1.fieldbyname('stylno').value+''''
       else
         commandtext:='Exec sz_prdAddData '''+table1.fieldbyname('stylno').value+'''';
       //params[0].asstring:=table1.fieldbyname('stylno').value;
       execute;
     end;
     Table4.Close;
     Table4.Open;
    end;
     query2.close;
     query2.params.clear;
     //query2.params.createparam(ftstring,'stylno',ptinput);
     query2.commandtext:='select * from SZ_lsize2 where stylno='''+table1.fieldbyname('stylno').value+'''';
//     query2.prepare;
     //query2.params[0].asstring:=table1.fieldbyname('stylno').value;
     query2.open;
     if query2.recordcount>0 then
     begin
      if not query2.fieldbyname('csiz1').isnull then
       dbgrideh3.Columns[9].Title.caption:='�ؽX|'+query2.fieldbyname('csiz1').value
      else dbgrideh3.columns[9].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz2').isnull then
       dbgrideh3.Columns[10].Title.caption:='�ؽX|'+query2.fieldbyname('csiz2').value
      else dbgrideh3.columns[10].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz3').isnull then
       dbgrideh3.Columns[11].Title.caption:='�ؽX|'+query2.fieldbyname('csiz3').value
      else dbgrideh3.columns[11].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz4').isnull then
       dbgrideh3.Columns[12].Title.caption:='�ؽX|'+query2.fieldbyname('csiz4').value
      else dbgrideh3.columns[12].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz5').isnull then
       dbgrideh3.Columns[13].Title.caption:='�ؽX|'+query2.fieldbyname('csiz5').value
      else dbgrideh3.columns[13].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz6').isnull then
       dbgrideh3.Columns[14].Title.caption:='�ؽX|'+query2.fieldbyname('csiz6').value
      else dbgrideh3.columns[14].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz7').isnull then
       dbgrideh3.Columns[15].Title.caption:='�ؽX|'+query2.fieldbyname('csiz7').value
      else dbgrideh3.columns[15].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz8').isnull then
       dbgrideh3.Columns[16].Title.caption:='�ؽX|'+query2.fieldbyname('csiz8').value
      else dbgrideh3.columns[16].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz9').isnull then
       dbgrideh3.Columns[17].Title.caption:='�ؽX|'+query2.fieldbyname('csiz9').value
      else dbgrideh3.columns[17].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz10').isnull then
       dbgrideh3.Columns[18].Title.caption:='�ؽX|'+query2.fieldbyname('csiz10').value
      else dbgrideh3.columns[18].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz11').isnull then
       dbgrideh3.Columns[19].Title.caption:='�ؽX|'+query2.fieldbyname('csiz11').value
      else dbgrideh3.columns[19].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz12').isnull then
       dbgrideh3.Columns[20].Title.caption:='�ؽX|'+query2.fieldbyname('csiz12').value
      else dbgrideh3.columns[20].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz13').isnull then
       dbgrideh3.Columns[21].Title.caption:='�ؽX|'+query2.fieldbyname('csiz13').value
      else dbgrideh3.columns[21].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz14').isnull then
       dbgrideh3.Columns[22].Title.caption:='�ؽX|'+query2.fieldbyname('csiz14').value
      else dbgrideh3.columns[22].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz15').isnull then
       dbgrideh3.Columns[23].Title.caption:='�ؽX|'+query2.fieldbyname('csiz15').value
      else dbgrideh3.columns[23].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz16').isnull then
       dbgrideh3.Columns[24].Title.caption:='�ؽX|'+query2.fieldbyname('csiz16').value
      else dbgrideh3.columns[24].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz17').isnull then
       dbgrideh3.Columns[25].Title.caption:='�ؽX|'+query2.fieldbyname('csiz17').value
      else dbgrideh3.columns[25].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz18').isnull then
       dbgrideh3.Columns[26].Title.caption:='�ؽX|'+query2.fieldbyname('csiz18').value
      else dbgrideh3.columns[26].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz19').isnull then
       dbgrideh3.Columns[27].Title.caption:='�ؽX|'+query2.fieldbyname('csiz19').value
      else dbgrideh3.columns[27].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz20').isnull then
       dbgrideh3.Columns[28].Title.caption:='�ؽX|'+query2.fieldbyname('csiz20').value
      else dbgrideh3.columns[28].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz21').isnull then
       dbgrideh3.Columns[29].Title.caption:='�ؽX|'+query2.fieldbyname('csiz21').value
      else dbgrideh3.columns[29].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz22').isnull then
       dbgrideh3.Columns[30].Title.caption:='�ؽX|'+query2.fieldbyname('csiz22').value
      else dbgrideh3.columns[30].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz23').isnull then
       dbgrideh3.Columns[31].Title.caption:='�ؽX|'+query2.fieldbyname('csiz23').value
      else dbgrideh3.columns[31].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz24').isnull then
       dbgrideh3.Columns[32].Title.caption:='�ؽX|'+query2.fieldbyname('csiz24').value
      else dbgrideh3.columns[32].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz25').isnull then
       dbgrideh3.Columns[33].Title.caption:='�ؽX|'+query2.fieldbyname('csiz25').value
      else dbgrideh3.columns[33].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz26').isnull then
       dbgrideh3.Columns[34].Title.caption:='�ؽX|'+query2.fieldbyname('csiz26').value
      else dbgrideh3.columns[34].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz27').isnull then
       dbgrideh3.Columns[35].Title.caption:='�ؽX|'+query2.fieldbyname('csiz27').value
      else dbgrideh3.columns[35].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz28').isnull then
       dbgrideh3.Columns[36].Title.caption:='�ؽX|'+query2.fieldbyname('csiz28').value
      else dbgrideh3.columns[36].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz29').isnull then
       dbgrideh3.Columns[37].Title.caption:='�ؽX|'+query2.fieldbyname('csiz29').value
      else dbgrideh3.columns[37].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz30').isnull then
       dbgrideh3.Columns[38].Title.caption:='�ؽX|'+query2.fieldbyname('csiz30').value
      else dbgrideh3.columns[38].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz31').isnull then
       dbgrideh3.Columns[39].Title.caption:='�ؽX|'+query2.fieldbyname('csiz31').value
      else dbgrideh3.columns[39].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz32').isnull then
       dbgrideh3.Columns[40].Title.caption:='�ؽX|'+query2.fieldbyname('csiz32').value
      else dbgrideh3.columns[40].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz33').isnull then
       dbgrideh3.Columns[41].Title.caption:='�ؽX|'+query2.fieldbyname('csiz33').value
      else dbgrideh3.columns[41].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz34').isnull then
       dbgrideh3.Columns[42].Title.caption:='�ؽX|'+query2.fieldbyname('csiz34').value
      else dbgrideh3.columns[42].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz35').isnull then
       dbgrideh3.Columns[43].Title.caption:='�ؽX|'+query2.fieldbyname('csiz35').value
      else dbgrideh3.columns[43].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz36').isnull then
       dbgrideh3.Columns[44].Title.caption:='�ؽX|'+query2.fieldbyname('csiz36').value
      else dbgrideh3.columns[44].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz37').isnull then
       dbgrideh3.Columns[45].Title.caption:='�ؽX|'+query2.fieldbyname('csiz37').value
      else dbgrideh3.columns[45].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz38').isnull then
       dbgrideh3.Columns[46].Title.caption:='�ؽX|'+query2.fieldbyname('csiz38').value
      else dbgrideh3.columns[46].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz39').isnull then
       dbgrideh3.Columns[47].Title.caption:='�ؽX|'+query2.fieldbyname('csiz39').value
      else dbgrideh3.columns[47].title.caption:='�ؽX| ';
      if not query2.fieldbyname('csiz40').isnull then
       dbgrideh3.Columns[48].Title.caption:='�ؽX|'+query2.fieldbyname('csiz40').value
      else dbgrideh3.columns[48].title.caption:='�ؽX| ';
     end;
      if dbgrideh3.fields[0].isnull then
      begin
        dbgrideh3.columns[0].Visible:=false;
        dbgrideh3.columns[1].visible:=true;
      end
      else
      begin
        dbgrideh3.columns[0].Visible:=true;
        dbgrideh3.columns[1].visible:=false;
      end;
   end
   else begin
     if pagecontrol1.activepage=tabsheet2 then begin
      with Table2 do begin
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='select * from sz_lsize2 where stylno='''+table1.fieldbyname('stylno').value+'''';
        //params[0].asstring:=table1.fieldbyname('stylno').value;
        open;
      end;
       if table2.fieldbyname('stylno').isnull then begin
         table2.append;
         table2.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
         table2.post;
       end;
       table2.locate('stylno',vararrayof([table1.fieldbyname('stylno').value]),[lopartialkey]);
     end;
   end;
  end;
end;

procedure Tfrmsiztbl.Table2Size13Change(Sender: TField);
begin
  if not table2size13.isnull then
    table2csiz13.value:=table2size13.Value;
end;

procedure Tfrmsiztbl.Table2Size14Change(Sender: TField);
begin
  if not table2size14.isnull then
    table2csiz14.value:=table2size14.Value;
end;

procedure Tfrmsiztbl.Table2Size15Change(Sender: TField);
begin
  if not table2size15.isnull then
    table2csiz15.value:=table2size15.Value;
end;

procedure Tfrmsiztbl.Table2Size16Change(Sender: TField);
begin
  if not table2size16.isnull then
    table2csiz16.value:=table2size16.Value;
end;

procedure Tfrmsiztbl.SpeedButton3Click(Sender: TObject);
begin
  //if frmprint2=nil then frmprint2:=tfrmprint2.create(self);
  //frmprint2.label1.caption:='siztbl';
  //frmprint2.show;
  try
    if savedialog1.Execute then
    //savedbgridehtoexportfile(TDBGridEhExportAsXLS,DBGridEh2,SaveDialog1.FileName,True);
    ExportGridToExcel(savedialog1.FileName,cxGrid2,true,true,false,'xls');
  finally
    showmessage('Succeeded!');
  end;
end;

procedure Tfrmsiztbl.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then  dbdateedit1.setfocus;
end;

procedure Tfrmsiztbl.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if table3.state=dsbrowse then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from sz_lsize1 where stylno='''+table1.fieldbyname('stylno').value+''' and opt=1';
      open;
      if not fieldbyname('cnt').isnull then dbgrideh2.columns[5].footers[1].value:=fieldbyname('cnt').asstring
      else dbgrideh2.columns[5].footers[1].value:='0';
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select count(distinct parts_d) as cnt,count(*) as cnt1 from sz_lsize1 where stylno='''+table1.fieldbyname('stylno').value+''' and parts_d>''''';
      open;
      if not fieldbyname('cnt').isnull then dbgrideh2.columns[6].footers[0].value:=fieldbyname('cnt').asstring
      else dbgrideh2.columns[6].footers[0].value:='0';
      if not fieldbyname('cnt1').isnull then dbgrideh2.columns[6].footers[1].value:=fieldbyname('cnt1').asstring
      else dbgrideh2.columns[6].footers[1].value:='0';
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select count(distinct parts_d) as cnt,count(*) as cnt1 from sz_lsize1 a where stylno='''+table1.fieldbyname('stylno').value+''' '
                  +'and parts_d in (select parts_d from sz_lsize1 b where a.stylno=b.stylno and parts=1) and parts_d>''''';
      open;
      if not fieldbyname('cnt').isnull then dbgrideh2.columns[7].footers[0].value:=fieldbyname('cnt').asstring
      else dbgrideh2.columns[7].footers[0].value:='0';
      if not fieldbyname('cnt1').isnull then dbgrideh2.columns[7].footers[1].value:=fieldbyname('cnt1').asstring
      else dbgrideh2.columns[7].footers[1].value:='0';
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from sz_lsize1 where stylno='''+table1.fieldbyname('stylno').value+''' and operation=1';
      open;
      if not fieldbyname('cnt').isnull then dbgrideh2.columns[8].footers[1].value:=fieldbyname('cnt').asstring
      else dbgrideh2.columns[8].footers[1].value:='0';
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from sz_lsize1 where stylno='''+table1.fieldbyname('stylno').value+''' and garment=1';
      open;
      if not fieldbyname('cnt').isnull then dbgrideh2.columns[9].footers[1].value:=fieldbyname('cnt').asstring
      else dbgrideh2.columns[9].footers[1].value:='0';
    end;
  end;
end;

procedure Tfrmsiztbl.DBDateEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=13 then  dbdateedit2.setfocus;
end;

procedure Tfrmsiztbl.DBDateEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key=13 then  dbmemo1.setfocus;
end;

procedure Tfrmsiztbl.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit7.setfocus;
end;

procedure Tfrmsiztbl.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit8.setfocus;
end;

procedure Tfrmsiztbl.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit9.setfocus;
end;

procedure Tfrmsiztbl.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit10.setfocus;
end;

procedure Tfrmsiztbl.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit11.setfocus;
end;

procedure Tfrmsiztbl.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit20.setfocus;
end;

procedure Tfrmsiztbl.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit21.setfocus;
end;

procedure Tfrmsiztbl.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit22.setfocus;
end;

procedure Tfrmsiztbl.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit23.setfocus;
end;

procedure Tfrmsiztbl.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit24.setfocus;
end;

procedure Tfrmsiztbl.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit25.setfocus;
end;

procedure Tfrmsiztbl.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit2.setfocus;
end;

procedure Tfrmsiztbl.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit3.setfocus;
end;

procedure Tfrmsiztbl.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit4.setfocus;
end;

procedure Tfrmsiztbl.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit5.setfocus;
end;

procedure Tfrmsiztbl.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit37.setfocus;
end;

procedure Tfrmsiztbl.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit13.setfocus;
end;

procedure Tfrmsiztbl.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit14.setfocus;
end;

procedure Tfrmsiztbl.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit15.setfocus;
end;

procedure Tfrmsiztbl.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit16.setfocus;
end;

procedure Tfrmsiztbl.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit17.setfocus;
end;

procedure Tfrmsiztbl.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit26.setfocus;
end;

procedure Tfrmsiztbl.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit28.setfocus;
end;

procedure Tfrmsiztbl.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit27.setfocus;
end;

procedure Tfrmsiztbl.DBEdit28KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit29.setfocus;
end;

procedure Tfrmsiztbl.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit30.setfocus;
end;

procedure Tfrmsiztbl.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit31.setfocus;
end;

procedure Tfrmsiztbl.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit32.setfocus;
end;

procedure Tfrmsiztbl.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit33.setfocus;
end;

procedure Tfrmsiztbl.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit34.setfocus;
end;

procedure Tfrmsiztbl.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit35.setfocus;
end;

procedure Tfrmsiztbl.Table3MethdChange(Sender: TField);
begin
  if not table3methd.IsNull then
  begin
    if table3methd.value='���u��' then table3emethd.value:='Strgt'
    else if table3methd.value='�u���' then table3emethd.value:='Edge'
    else if table3methd.value='��ԫ�' then table3emethd.value:='H.Strch'
    else if table3methd.value='���u��' then table3emethd.value:='Curve'
    else if table3methd.value='���ԫ�' then table3emethd.value:='M.Strch'
    else if table3methd.value='���ԫ�' then table3emethd.value:='S.Strch';
    {
    if table3methd.value='����' then
    begin
      table3emethd.Value:='Flat';
    end
    else
    begin
     if table3methd.value='����' then
     begin
      table3emethd.value:='Slant';
     end
     else
     begin
      if table3methd.value='����' then
      begin
       table3emethd.value:='Strt.';
      end
      else
      begin
       if table3methd.value='���' then
        table3emethd.value:='Refl.'
       else if table3methd.value='�ԫ�' then
        table3emethd.value:='Stre.'
       else table3emethd.value:='';
      end;
     end;
    end;
    }
  end
  else
  begin
    table3emethd.value:='';
  end;
end;

procedure Tfrmsiztbl.SpeedButton6Click(Sender: TObject);
begin
  if not dbgrideh2.fields[0].isnull then
  begin
    if frmmtol=nil then frmmtol:=tfrmmtol.create(self);
    if not table3.fieldbyname('tolerence').isnull then
     frmmtol.edit2.text:=table3.fieldbyname('tolerence').value;
    frmmtol.label4.caption:='siz';
    frmmtol.show;
  end;
end;

procedure Tfrmsiztbl.SpeedButton7Click(Sender: TObject);
begin
  if frmstyl=nil then frmstyl:=tfrmstyl.create(self);
  frmstyl.label2.caption:='size';
  frmstyl.show;
end;

procedure Tfrmsiztbl.SpeedButton10Click(Sender: TObject);
var
  i,j:integer;
begin
  if (Table4.state=dsedit) or (table4.state=dsinsert) then table4.post;
  with query4 do begin
    close;
    params.Clear;
    //params.CreateParam(ftstring,'stylno',ptinput);
    commandtext:='Exec sz_prd1 '''+table1.fieldbyname('stylno').value+'''';
    //params[0].AsString:=Table1.fieldbyname('stylno').asstring;
    execute;
  end;
  with Table4 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'stylno',ptinput);
    commandtext:='select * from SZ_prdsize where stylno='''+table1.fieldbyname('stylno').value+'''';
    //params[0].asstring:=table1.fieldbyname('stylno').value;
    open;
  end;
  dbgrideh3.columns[0].Visible:=true;
  dbgrideh3.columns[1].visible:=false;
end;

procedure Tfrmsiztbl.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmsiztbl.qry_apprAfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmsiztbl.SpeedButton11Click(Sender: TObject);
begin
  query4.close;
  query4.params.clear;
  //query4.params.createparam(ftstring,'stylno',ptinput);
  query4.commandtext:='select size1,size17,size33 from SZ_lsize2 where stylno='''+table1.fieldbyname('stylno').value+'''';
//  query4.prepare;
  //query4.params[0].asstring:=dbedit36.text;
  query4.open;
  if not query4.fieldbyname('size33').isnull then begin
    if frmprdprint1=nil then frmprdprint1:=tfrmprdprint1.create(self);
    if frmprdprint=nil then frmprdprint:=tfrmprdprint.create(self);
    query7.close;
    query7.params.clear;
    //query7.params.createparam(ftstring,'stylno',ptinput);
    query7.commandtext:='select a.*,b.*,c.* from SZ_lsize a,SZ_prdsize b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno='''+dbedit36.text+''' order by b.stylno,b.cw,b.cde';
//    query7.prepare;
    //query7.params[0].asstring:=dbedit36.text;
    query7.open;
    ppreport1.print;
    frmprdprint1.ppreport2.print;
    frmprdprint.ppreport1.print;
  end
  else begin
    if not query4.fieldbyname('size17').isnull then begin
      if frmprdprint1=nil then frmprdprint1:=tfrmprdprint1.create(self);
      query7.close;
      query7.params.clear;
      //query7.params.createparam(ftstring,'stylno',ptinput);
      query7.commandtext:='select a.*,b.*,c.* from SZ_lsize a,SZ_prdsize b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno='''+dbedit36.text+''' order by b.stylno,b.cw,b.cde';
//      query7.prepare;
      //query7.params[0].asstring:=dbedit36.text;
      query7.open;
      ppreport1.print;
      frmprdprint1.ppreport2.print;
    end
    else begin
      if not query4.fieldbyname('size1').isnull then begin
        query7.close;
        query7.params.clear;
        //query7.params.createparam(ftstring,'stylno',ptinput);
        query7.commandtext:='select a.*,b.*,c.* from SZ_lsize a,SZ_prdsize b,SZ_lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno='''+dbedit36.text+''' order by b.stylno,b.cw,b.cde';
//        query7.prepare;
        //query7.params[0].asstring:=dbedit36.text;
        query7.open;
        ppreport1.print;
      end;
    end;
  end;
end;

procedure Tfrmsiztbl.SpeedButton14Click(Sender: TObject);
begin
  if dbgrideh3.columns[0].visible=true then
  begin
    if application.messagebox('�T�w�n�����ק��?','���ܫH��',mb_iconquestion+mb_okcancel)=idok then
    begin
      Screen.Cursor:=crHourGlass;
      with query5 do begin
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='delete from sz_prdsize where stylno='''+table1.fieldbyname('stylno').value+'''';
        //params[0].asstring:=table1.fieldbyname('stylno').value;
        Execute;
        //////////////
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='Exec sz_prdAddData '''+table1.fieldbyname('stylno').value+'''';
        //params[0].asstring:=table1.fieldbyname('stylno').value;
        Execute;
      end;
      with Table4 do begin
        close;
        params.clear;
        //params.createparam(ftstring,'stylno',ptinput);
        commandtext:='select * from SZ_prdsize where stylno='''+table1.fieldbyname('stylno').value+'''';
        //params[0].asstring:=table1.fieldbyname('stylno').value;
        open;
      end;
      Screen.Cursor:=crDefault;
    end;
  end;
  dbgrideh3.columns[1].Visible:=true;
  dbgrideh3.columns[0].visible:=false;
end;

procedure Tfrmsiztbl.SpeedButton9Click(Sender: TObject);
begin
  if frmstyl=nil then frmstyl:=tfrmstyl.create(self);
  frmstyl.label2.caption:='size4';
  frmstyl.show;
end;

procedure Tfrmsiztbl.Table4AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmsiztbl.DBGridEh3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    sendmessage(dbgrideh3.handle,wm_keydown,vk_tab,0);
  end;
end;

procedure Tfrmsiztbl.Table4DifChange(Sender: TField);
begin
  {if (not table4dif.isnull) and (not table4dif1.isnull) then
  begin
    query4.close;
    query4.params.clear;
    query4.commandtext:='select * from SZ_lsize2 where stylno=:stylno';
    query4.prepare;
    query4.params[0].asstring:=table1.fieldbyname('stylno').value;
    query4.open;
    if not query4.fieldbyname('size1').isnull then
    if not table4rst1.isnull then table4rs1.value:=table4rst1.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size2').isnull then
    if not table4rst2.isnull then table4rs2.value:=table4rst2.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size3').isnull then
    if not table4rst3.isnull then table4rs3.value:=table4rst3.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size4').isnull then
    if not table4rst4.isnull then table4rs4.value:=table4rst4.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size5').isnull then
    if not table4rst5.isnull then table4rs5.value:=table4rst5.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size6').isnull then
    if not table4rst6.isnull then table4rs6.value:=table4rst6.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size7').isnull then
    if not table4rst7.isnull then table4rs7.value:=table4rst7.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size8').isnull then
    if not table4rst8.isnull then table4rs8.value:=table4rst8.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size9').isnull then
    if not table4rst9.isnull then table4rs9.value:=table4rst9.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size10').isnull then
    if not table4rst10.isnull then table4rs10.value:=table4rst10.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size11').isnull then
    if not table4rst11.isnull then table4rs11.value:=table4rst11.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size12').isnull then
    if not table4rst12.isnull then table4rs12.value:=table4rst12.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size13').isnull then
    if not table4rst13.isnull then table4rs13.value:=table4rst13.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size14').isnull then
    if not table4rst14.isnull then table4rs14.value:=table4rst14.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size15').isnull then
    if not table4rst15.isnull then table4rs15.value:=table4rst15.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size16').isnull then
    if not table4rst16.isnull then table4rs16.value:=table4rst16.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size17').isnull then
    if not table4rst17.isnull then table4rs17.value:=table4rst17.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size18').isnull then
    if not table4rst18.isnull then table4rs18.value:=table4rst18.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size19').isnull then
    if not table4rst19.isnull then table4rs19.value:=table4rst19.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size20').isnull then
    if not table4rst20.isnull then table4rs20.value:=table4rst20.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size21').isnull then
    if not table4rst21.isnull then table4rs21.value:=table4rst21.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size22').isnull then
    if not table4rst22.isnull then table4rs22.value:=table4rst22.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size23').isnull then
    if not table4rst23.isnull then table4rs23.value:=table4rst23.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size24').isnull then
    if not table4rst24.isnull then table4rs24.value:=table4rst24.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size25').isnull then
    if not table4rst25.isnull then table4rs25.value:=table4rst25.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size26').isnull then
    if not table4rst26.isnull then table4rs26.value:=table4rst26.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size27').isnull then
    if not table4rst27.isnull then table4rs27.value:=table4rst27.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size28').isnull then
    if not table4rst28.isnull then table4rs28.value:=table4rst28.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size29').isnull then
    if not table4rst29.isnull then table4rs29.value:=table4rst29.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size30').isnull then
    if not table4rst30.isnull then table4rs30.value:=table4rst30.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size31').isnull then
    if not table4rst31.isnull then table4rs31.value:=table4rst31.value+table4dif.value+table4dif1.value;
    if not query4.fieldbyname('size32').isnull then
    if not table4rst32.isnull then table4rs32.value:=table4rst32.value+table4dif.value+table4dif1.value;
  end;}
end;

procedure Tfrmsiztbl.DBEditChange(Sender: TObject);
begin
  if dbedit36.text<>'' then
  begin
    query4.close;
    query4.params.clear;
    //query4.params.createparam(ftstring,'stylno',ptinput);
    query4.commandtext:='select * from SZ_prdsize where stylno='''+dbedit36.text+'''';
//    query4.prepare;
    //query4.params[0].asstring:=dbedit36.text;
    query4.open;
    if query4.recordcount=0 then
    begin
      query5.close;
      query5.params.clear;
      //query5.params.createparam(ftstring,'stylno',ptinput);
      query5.commandtext:='select * from SZ_lsize1 where stylno='''+dbedit36.text+'''';
//      query5.prepare;
      //query5.params[0].asstring:=dbedit36.text;
      query5.open;
      query5.first;
      while not query5.eof do
      begin
        query6.close;
        query6.params.clear;
        query6.commandtext:='select * from SZ_prdsize';
        query6.open;
        query6.append;
        query6.fieldbyname('stylno').value:=dbedit36.text;
        query6.fieldbyname('cde').value:=query5.fieldbyname('cde').value;
        query6.fieldbyname('cmeas').value:=query5.fieldbyname('cmeas').value;
        query6.fieldbyname('emeas').value:=query5.fieldbyname('emeas').value;
        query6.fieldbyname('methd').value:=query5.fieldbyname('methd').value;
        query6.fieldbyname('emethd').value:=query5.fieldbyname('emethd').value;
        if not query5.fieldbyname('uom').isnull then
        query6.fieldbyname('uom').value:=query5.fieldbyname('uom').value;
        if not query5.fieldbyname('tolerence').isnull then
        query6.fieldbyname('tolerence').value:=query5.fieldbyname('tolerence').value;
        if not query5.fieldbyname('projno').isnull then
        query6.fieldbyname('projno').value:=query5.fieldbyname('projno').value;
        if not query5.fieldbyname('jobno').isnull then
        query6.fieldbyname('jobno').value:=query5.fieldbyname('jobno').value;
        if not query5.fieldbyname('rst1').isnull then
        begin
         query6.fieldbyname('rst1').value:=query5.fieldbyname('rst1').value;
         query6.fieldbyname('rs1').value:=query5.fieldbyname('rst1').value;
        end;
        if not query5.fieldbyname('rst2').isnull then
        begin
         query6.fieldbyname('rst2').value:=query5.fieldbyname('rst2').value;
         query6.fieldbyname('rs2').value:=query5.fieldbyname('rst2').value;
        end;
        if not query5.fieldbyname('rst3').isnull then
        begin
         query6.fieldbyname('rst3').value:=query5.fieldbyname('rst3').value;
         query6.fieldbyname('rs3').value:=query5.fieldbyname('rst3').value;
        end;
        if not query5.fieldbyname('rst4').isnull then
        begin
         query6.fieldbyname('rst4').value:=query5.fieldbyname('rst4').value;
         query6.fieldbyname('rs4').value:=query5.fieldbyname('rst4').value;
        end;
        if not query5.fieldbyname('rst5').isnull then
        begin
         query6.fieldbyname('rst5').value:=query5.fieldbyname('rst5').value;
         query6.fieldbyname('rs5').value:=query5.fieldbyname('rst5').value;
        end;
        if not query5.fieldbyname('rst6').isnull then
        begin
         query6.fieldbyname('rst6').value:=query5.fieldbyname('rst6').value;
         query6.fieldbyname('rs6').value:=query5.fieldbyname('rst6').value;
        end;
        if not query5.fieldbyname('rst7').isnull then
        begin
         query6.fieldbyname('rst7').value:=query5.fieldbyname('rst7').value;
         query6.fieldbyname('rs7').value:=query5.fieldbyname('rst7').value;
        end;
        if not query5.fieldbyname('rst8').isnull then
        begin
         query6.fieldbyname('rst8').value:=query5.fieldbyname('rst8').value;
         query6.fieldbyname('rs8').value:=query5.fieldbyname('rst8').value;
        end;
        if not query5.fieldbyname('rst9').isnull then
        begin
         query6.fieldbyname('rst9').value:=query5.fieldbyname('rst9').value;
         query6.fieldbyname('rs9').value:=query5.fieldbyname('rst9').value;
        end;
        if not query5.fieldbyname('rst10').isnull then
        begin
         query6.fieldbyname('rst10').value:=query5.fieldbyname('rst10').value;
         query6.fieldbyname('rs10').value:=query5.fieldbyname('rst10').value;
        end;
        if not query5.fieldbyname('rst11').isnull then
        begin
         query6.fieldbyname('rst11').value:=query5.fieldbyname('rst11').value;
         query6.fieldbyname('rs11').value:=query5.fieldbyname('rst11').value;
        end;
        if not query5.fieldbyname('rst12').isnull then
        begin
         query6.fieldbyname('rst12').value:=query5.fieldbyname('rst12').value;
         query6.fieldbyname('rs12').value:=query5.fieldbyname('rst12').value;
        end;
        if not query5.fieldbyname('rst13').isnull then
        begin
         query6.fieldbyname('rst13').value:=query5.fieldbyname('rst13').value;
         query6.fieldbyname('rs13').value:=query5.fieldbyname('rst13').value;
        end;
        if not query5.fieldbyname('rst14').isnull then
        begin
         query6.fieldbyname('rst14').value:=query5.fieldbyname('rst14').value;
         query6.fieldbyname('rs14').value:=query5.fieldbyname('rst14').value;
        end;
        if not query5.fieldbyname('rst15').isnull then
        begin
         query6.fieldbyname('rst15').value:=query5.fieldbyname('rst15').value;
         query6.fieldbyname('rs15').value:=query5.fieldbyname('rst15').value;
        end;
        if not query5.fieldbyname('rst16').isnull then
        begin
         query6.fieldbyname('rst16').value:=query5.fieldbyname('rst16').value;
         query6.fieldbyname('rs16').value:=query5.fieldbyname('rst16').value;
        end;
        if not query5.fieldbyname('rst17').isnull then
        begin
         query6.fieldbyname('rst17').value:=query5.fieldbyname('rst17').value;
         query6.fieldbyname('rs17').value:=query5.fieldbyname('rst17').value;
        end;
        if not query5.fieldbyname('rst18').isnull then
        begin
         query6.fieldbyname('rst18').value:=query5.fieldbyname('rst18').value;
         query6.fieldbyname('rs18').value:=query5.fieldbyname('rst18').value;
        end;
        if not query5.fieldbyname('rst19').isnull then
        begin
         query6.fieldbyname('rst19').value:=query5.fieldbyname('rst19').value;
         query6.fieldbyname('rs19').value:=query5.fieldbyname('rst19').value;
        end;
        if not query5.fieldbyname('rst20').isnull then
        begin
         query6.fieldbyname('rst20').value:=query5.fieldbyname('rst20').value;
         query6.fieldbyname('rs20').value:=query5.fieldbyname('rst20').value;
        end;
        if not query5.fieldbyname('rst21').isnull then
        begin
         query6.fieldbyname('rst21').value:=query5.fieldbyname('rst21').value;
         query6.fieldbyname('rs21').value:=query5.fieldbyname('rst21').value;
        end;
        if not query5.fieldbyname('rst22').isnull then
        begin
         query6.fieldbyname('rst22').value:=query5.fieldbyname('rst22').value;
         query6.fieldbyname('rs22').value:=query5.fieldbyname('rst22').value;
        end;
        if not query5.fieldbyname('rst23').isnull then
        begin
         query6.fieldbyname('rst23').value:=query5.fieldbyname('rst23').value;
         query6.fieldbyname('rs23').value:=query5.fieldbyname('rst23').value;
        end;
        if not query5.fieldbyname('rst24').isnull then
        begin
         query6.fieldbyname('rst24').value:=query5.fieldbyname('rst24').value;
         query6.fieldbyname('rs24').value:=query5.fieldbyname('rst24').value;
        end;
        if not query5.fieldbyname('rst25').isnull then
        begin
         query6.fieldbyname('rst25').value:=query5.fieldbyname('rst25').value;
         query6.fieldbyname('rs25').value:=query5.fieldbyname('rst25').value;
        end;
        if not query5.fieldbyname('rst26').isnull then
        begin
         query6.fieldbyname('rst26').value:=query5.fieldbyname('rst26').value;
         query6.fieldbyname('rs26').value:=query5.fieldbyname('rst26').value;
        end;
        if not query5.fieldbyname('rst27').isnull then
        begin
         query6.fieldbyname('rst27').value:=query5.fieldbyname('rst27').value;
         query6.fieldbyname('rs27').value:=query5.fieldbyname('rst27').value;
        end;
        if not query5.fieldbyname('rst28').isnull then
        begin
         query6.fieldbyname('rst28').value:=query5.fieldbyname('rst28').value;
         query6.fieldbyname('rs28').value:=query5.fieldbyname('rst28').value;
        end;
        if not query5.fieldbyname('rst29').isnull then
        begin
         query6.fieldbyname('rst29').value:=query5.fieldbyname('rst29').value;
         query6.fieldbyname('rs29').value:=query5.fieldbyname('rst29').value;
        end;
        if not query5.fieldbyname('rst30').isnull then
        begin
         query6.fieldbyname('rst30').value:=query5.fieldbyname('rst30').value;
         query6.fieldbyname('rs30').value:=query5.fieldbyname('rst30').value;
        end;
        if not query5.fieldbyname('rst31').isnull then
        begin
         query6.fieldbyname('rst31').value:=query5.fieldbyname('rst31').value;
         query6.fieldbyname('rs31').value:=query5.fieldbyname('rst31').value;
        end;
        if not query5.fieldbyname('rst32').isnull then
        begin
         query6.fieldbyname('rst32').value:=query5.fieldbyname('rst32').value;
         query6.fieldbyname('rs32').value:=query5.fieldbyname('rst32').value;
        end;
        if not query5.fieldbyname('rst33').isnull then
        begin
         query6.fieldbyname('rst33').value:=query5.fieldbyname('rst33').value;
         query6.fieldbyname('rs33').value:=query5.fieldbyname('rst33').value;
        end;
        if not query5.fieldbyname('rst34').isnull then
        begin
         query6.fieldbyname('rst34').value:=query5.fieldbyname('rst34').value;
         query6.fieldbyname('rs34').value:=query5.fieldbyname('rst34').value;
        end;
        if not query5.fieldbyname('rst35').isnull then
        begin
         query6.fieldbyname('rst35').value:=query5.fieldbyname('rst35').value;
         query6.fieldbyname('rs35').value:=query5.fieldbyname('rst35').value;
        end;
        if not query5.fieldbyname('rst36').isnull then
        begin
         query6.fieldbyname('rst36').value:=query5.fieldbyname('rst36').value;
         query6.fieldbyname('rs36').value:=query5.fieldbyname('rst36').value;
        end;
        if not query5.fieldbyname('rst37').isnull then
        begin
         query6.fieldbyname('rst37').value:=query5.fieldbyname('rst37').value;
         query6.fieldbyname('rs37').value:=query5.fieldbyname('rst37').value;
        end;
        if not query5.fieldbyname('rst38').isnull then
        begin
         query6.fieldbyname('rst38').value:=query5.fieldbyname('rst38').value;
         query6.fieldbyname('rs38').value:=query5.fieldbyname('rst38').value;
        end;
        if not query5.fieldbyname('rst39').isnull then
        begin
         query6.fieldbyname('rst39').value:=query5.fieldbyname('rst39').value;
         query6.fieldbyname('rs39').value:=query5.fieldbyname('rst39').value;
        end;
        if not query5.fieldbyname('rst40').isnull then
        begin
         query6.fieldbyname('rst40').value:=query5.fieldbyname('rst40').value;
         query6.fieldbyname('rs40').value:=query5.fieldbyname('rst40').value;
        end;
        query6.post;
        query5.next;
      end;
      if (Table4.state=dsedit) or (Table4.state=dsinsert) then table4.post;
      dbgrideh3.columns[0].visible:=false;
      dbgrideh3.columns[1].visible:=true;
    end
    else
    begin
      query5.close;
      query5.params.clear;
      //query5.params.createparam(ftstring,'stylno',ptinput);
      query5.commandtext:='select * from SZ_lsize1 where stylno='''+dbedit36.text+'''';
//      query5.prepare;
      //query5.params[0].asstring:=dbedit36.text;
      query5.open;
      query5.first;
      while not query5.eof do
      begin
        query6.close;
        query6.params.clear;
        //query6.params.createparam(ftstring,'stylno',ptinput);
        //query6.params.createparam(ftinteger,'id',ptinput);
        query6.commandtext:='select * from SZ_prdsize where stylno='''+query5.fieldbyname('stylno').value+''' and id='+query5.fieldbyname('id').asstring;
        //query6.params[0].asstring:=query5.fieldbyname('stylno').value;
        //query6.params[1].asinteger:=query5.fieldbyname('id').asinteger;
        query6.open;
        query6.edit;
        query6.fieldbyname('cde').value:=query5.fieldbyname('cde').value;
        query6.fieldbyname('cmeas').value:=query5.fieldbyname('cmeas').value;
        query6.fieldbyname('emeas').value:=query5.fieldbyname('emeas').value;
        query6.fieldbyname('methd').value:=query5.fieldbyname('methd').value;
        query6.fieldbyname('emethd').value:=query5.fieldbyname('emethd').value;
        if not query5.fieldbyname('uom').isnull then
        query6.fieldbyname('uom').value:=query5.fieldbyname('uom').value;
        if not query5.fieldbyname('tolerence').isnull then
        query6.fieldbyname('tolerence').value:=query5.fieldbyname('tolerence').value;
        if not query5.fieldbyname('projno').isnull then
        query6.fieldbyname('projno').value:=query5.fieldbyname('projno').value;
        if not query5.fieldbyname('jobno').isnull then
        query6.fieldbyname('jobno').value:=query5.fieldbyname('jobno').value;
        if not query5.fieldbyname('rst1').isnull then
        begin
         query6.fieldbyname('rst1').value:=query5.fieldbyname('rst1').value;
         query6.fieldbyname('rs1').value:=query5.fieldbyname('rst1').value;
        end;
        if not query5.fieldbyname('rst2').isnull then
        begin
         query6.fieldbyname('rst2').value:=query5.fieldbyname('rst2').value;
         query6.fieldbyname('rs2').value:=query5.fieldbyname('rst2').value;
        end;
        if not query5.fieldbyname('rst3').isnull then
        begin
         query6.fieldbyname('rst3').value:=query5.fieldbyname('rst3').value;
         query6.fieldbyname('rs3').value:=query5.fieldbyname('rst3').value;
        end;
        if not query5.fieldbyname('rst4').isnull then
        begin
         query6.fieldbyname('rst4').value:=query5.fieldbyname('rst4').value;
         query6.fieldbyname('rs4').value:=query5.fieldbyname('rst4').value;
        end;
        if not query5.fieldbyname('rst5').isnull then
        begin
         query6.fieldbyname('rst5').value:=query5.fieldbyname('rst5').value;
         query6.fieldbyname('rs5').value:=query5.fieldbyname('rst5').value;
        end;
        if not query5.fieldbyname('rst6').isnull then
        begin
         query6.fieldbyname('rst6').value:=query5.fieldbyname('rst6').value;
         query6.fieldbyname('rs6').value:=query5.fieldbyname('rst6').value;
        end;
        if not query5.fieldbyname('rst7').isnull then
        begin
         query6.fieldbyname('rst7').value:=query5.fieldbyname('rst7').value;
         query6.fieldbyname('rs7').value:=query5.fieldbyname('rst7').value;
        end;
        if not query5.fieldbyname('rst8').isnull then
        begin
         query6.fieldbyname('rst8').value:=query5.fieldbyname('rst8').value;
         query6.fieldbyname('rs8').value:=query5.fieldbyname('rst8').value;
        end;
        if not query5.fieldbyname('rst9').isnull then
        begin
         query6.fieldbyname('rst9').value:=query5.fieldbyname('rst9').value;
         query6.fieldbyname('rs9').value:=query5.fieldbyname('rst9').value;
        end;
        if not query5.fieldbyname('rst10').isnull then
        begin
         query6.fieldbyname('rst10').value:=query5.fieldbyname('rst10').value;
         query6.fieldbyname('rs10').value:=query5.fieldbyname('rst10').value;
        end;
        if not query5.fieldbyname('rst11').isnull then
        begin
         query6.fieldbyname('rst11').value:=query5.fieldbyname('rst11').value;
         query6.fieldbyname('rs11').value:=query5.fieldbyname('rst11').value;
        end;
        if not query5.fieldbyname('rst12').isnull then
        begin
         query6.fieldbyname('rst12').value:=query5.fieldbyname('rst12').value;
         query6.fieldbyname('rs12').value:=query5.fieldbyname('rst12').value;
        end;
        if not query5.fieldbyname('rst13').isnull then
        begin
         query6.fieldbyname('rst13').value:=query5.fieldbyname('rst13').value;
         query6.fieldbyname('rs13').value:=query5.fieldbyname('rst13').value;
        end;
        if not query5.fieldbyname('rst14').isnull then
        begin
         query6.fieldbyname('rst14').value:=query5.fieldbyname('rst14').value;
         query6.fieldbyname('rs14').value:=query5.fieldbyname('rst14').value;
        end;
        if not query5.fieldbyname('rst15').isnull then
        begin
         query6.fieldbyname('rst15').value:=query5.fieldbyname('rst15').value;
         query6.fieldbyname('rs15').value:=query5.fieldbyname('rst15').value;
        end;
        if not query5.fieldbyname('rst16').isnull then
        begin
         query6.fieldbyname('rst16').value:=query5.fieldbyname('rst16').value;
         query6.fieldbyname('rs16').value:=query5.fieldbyname('rst16').value;
        end;
        if not query5.fieldbyname('rst17').isnull then
        begin
         query6.fieldbyname('rst17').value:=query5.fieldbyname('rst17').value;
         query6.fieldbyname('rs17').value:=query5.fieldbyname('rst17').value;
        end;
        if not query5.fieldbyname('rst18').isnull then
        begin
         query6.fieldbyname('rst18').value:=query5.fieldbyname('rst18').value;
         query6.fieldbyname('rs18').value:=query5.fieldbyname('rst18').value;
        end;
        if not query5.fieldbyname('rst19').isnull then
        begin
         query6.fieldbyname('rst19').value:=query5.fieldbyname('rst19').value;
         query6.fieldbyname('rs19').value:=query5.fieldbyname('rst19').value;
        end;
        if not query5.fieldbyname('rst20').isnull then
        begin
         query6.fieldbyname('rst20').value:=query5.fieldbyname('rst20').value;
         query6.fieldbyname('rs20').value:=query5.fieldbyname('rst20').value;
        end;
        if not query5.fieldbyname('rst21').isnull then
        begin
         query6.fieldbyname('rst21').value:=query5.fieldbyname('rst21').value;
         query6.fieldbyname('rs21').value:=query5.fieldbyname('rst21').value;
        end;
        if not query5.fieldbyname('rst22').isnull then
        begin
         query6.fieldbyname('rst22').value:=query5.fieldbyname('rst22').value;
         query6.fieldbyname('rs22').value:=query5.fieldbyname('rst22').value;
        end;
        if not query5.fieldbyname('rst23').isnull then
        begin
         query6.fieldbyname('rst23').value:=query5.fieldbyname('rst23').value;
         query6.fieldbyname('rs23').value:=query5.fieldbyname('rst23').value;
        end;
        if not query5.fieldbyname('rst24').isnull then
        begin
         query6.fieldbyname('rst24').value:=query5.fieldbyname('rst24').value;
         query6.fieldbyname('rs24').value:=query5.fieldbyname('rst24').value;
        end;
        if not query5.fieldbyname('rst25').isnull then
        begin
         query6.fieldbyname('rst25').value:=query5.fieldbyname('rst25').value;
         query6.fieldbyname('rs25').value:=query5.fieldbyname('rst25').value;
        end;
        if not query5.fieldbyname('rst26').isnull then
        begin
         query6.fieldbyname('rst26').value:=query5.fieldbyname('rst26').value;
         query6.fieldbyname('rs26').value:=query5.fieldbyname('rst26').value;
        end;
        if not query5.fieldbyname('rst27').isnull then
        begin
         query6.fieldbyname('rst27').value:=query5.fieldbyname('rst27').value;
         query6.fieldbyname('rs27').value:=query5.fieldbyname('rst27').value;
        end;
        if not query5.fieldbyname('rst28').isnull then
        begin
         query6.fieldbyname('rst28').value:=query5.fieldbyname('rst28').value;
         query6.fieldbyname('rs28').value:=query5.fieldbyname('rst28').value;
        end;
        if not query5.fieldbyname('rst29').isnull then
        begin
         query6.fieldbyname('rst29').value:=query5.fieldbyname('rst29').value;
         query6.fieldbyname('rs29').value:=query5.fieldbyname('rst29').value;
        end;
        if not query5.fieldbyname('rst30').isnull then
        begin
         query6.fieldbyname('rst30').value:=query5.fieldbyname('rst30').value;
         query6.fieldbyname('rs30').value:=query5.fieldbyname('rst30').value;
        end;
        if not query5.fieldbyname('rst31').isnull then
        begin
         query6.fieldbyname('rst31').value:=query5.fieldbyname('rst31').value;
         query6.fieldbyname('rs31').value:=query5.fieldbyname('rst31').value;
        end;
        if not query5.fieldbyname('rst32').isnull then
        begin
         query6.fieldbyname('rst32').value:=query5.fieldbyname('rst32').value;
         query6.fieldbyname('rs32').value:=query5.fieldbyname('rst32').value;
        end;
        if not query5.fieldbyname('rst33').isnull then
        begin
         query6.fieldbyname('rst33').value:=query5.fieldbyname('rst33').value;
         query6.fieldbyname('rs33').value:=query5.fieldbyname('rst33').value;
        end;
        if not query5.fieldbyname('rst34').isnull then
        begin
         query6.fieldbyname('rst34').value:=query5.fieldbyname('rst34').value;
         query6.fieldbyname('rs34').value:=query5.fieldbyname('rst34').value;
        end;
        if not query5.fieldbyname('rst35').isnull then
        begin
         query6.fieldbyname('rst35').value:=query5.fieldbyname('rst35').value;
         query6.fieldbyname('rs35').value:=query5.fieldbyname('rst35').value;
        end;
        if not query5.fieldbyname('rst36').isnull then
        begin
         query6.fieldbyname('rst36').value:=query5.fieldbyname('rst36').value;
         query6.fieldbyname('rs36').value:=query5.fieldbyname('rst36').value;
        end;
        if not query5.fieldbyname('rst37').isnull then
        begin
         query6.fieldbyname('rst37').value:=query5.fieldbyname('rst37').value;
         query6.fieldbyname('rs37').value:=query5.fieldbyname('rst37').value;
        end;
        if not query5.fieldbyname('rst38').isnull then
        begin
         query6.fieldbyname('rst38').value:=query5.fieldbyname('rst38').value;
         query6.fieldbyname('rs38').value:=query5.fieldbyname('rst38').value;
        end;
        if not query5.fieldbyname('rst39').isnull then
        begin
         query6.fieldbyname('rst39').value:=query5.fieldbyname('rst39').value;
         query6.fieldbyname('rs39').value:=query5.fieldbyname('rst39').value;
        end;
        if not query5.fieldbyname('rst40').isnull then
        begin
         query6.fieldbyname('rst40').value:=query5.fieldbyname('rst40').value;
         query6.fieldbyname('rs40').value:=query5.fieldbyname('rst40').value;
        end;
        query6.post;
        query5.next;
      end;
      if (Table4.state=dsedit) or (Table4.state=dsinsert) then table4.post;
      if not dbgrideh3.fields[0].isnull then
      begin
        dbgrideh3.columns[0].Visible:=true;
        dbgrideh3.columns[1].visible:=false;
      end
      else
      begin
        dbgrideh3.columns[0].Visible:=false;
        dbgrideh3.columns[1].visible:=true;
      end;
    end;
  end;
end;

procedure Tfrmsiztbl.Table2Size17Change(Sender: TField);
begin
  if not table2size17.isnull then
    table2csiz17.value:=table2size17.Value;
end;

procedure Tfrmsiztbl.Table2Size18Change(Sender: TField);
begin
  if not table2size18.isnull then
    table2csiz18.value:=table2size18.Value;
end;

procedure Tfrmsiztbl.Table2Size19Change(Sender: TField);
begin
  if not table2size19.isnull then
    table2csiz19.value:=table2size19.Value;
end;

procedure Tfrmsiztbl.Table2Size20Change(Sender: TField);
begin
  if not table2size20.isnull then
    table2csiz20.value:=table2size20.Value;
end;

procedure Tfrmsiztbl.Table2Size21Change(Sender: TField);
begin
  if not table2size21.isnull then
    table2csiz21.value:=table2size21.Value;
end;

procedure Tfrmsiztbl.Table2Size22Change(Sender: TField);
begin
  if not table2size22.isnull then
    table2csiz22.value:=table2size22.Value;
end;

procedure Tfrmsiztbl.Table2Size23Change(Sender: TField);
begin
  if not table2size23.isnull then
    table2csiz23.value:=table2size23.Value;
end;

procedure Tfrmsiztbl.Table2Size24Change(Sender: TField);
begin
  if not table2size24.isnull then
    table2csiz24.value:=table2size24.Value;
end;

procedure Tfrmsiztbl.Table2Size25Change(Sender: TField);
begin
  if not table2size25.isnull then
    table2csiz25.value:=table2size25.Value;
end;

procedure Tfrmsiztbl.Table2Size26Change(Sender: TField);
begin
  if not table2size26.isnull then
    table2csiz26.value:=table2size26.Value;
end;

procedure Tfrmsiztbl.Table2Size27Change(Sender: TField);
begin
  if not table2size27.isnull then
    table2csiz27.value:=table2size27.Value;
end;

procedure Tfrmsiztbl.Table2Size28Change(Sender: TField);
begin
  if not table2size28.isnull then
    table2csiz28.value:=table2size28.Value;
end;

procedure Tfrmsiztbl.Table2Size29Change(Sender: TField);
begin
  if not table2size29.isnull then
    table2csiz29.value:=table2size29.Value;
end;

procedure Tfrmsiztbl.Table2Size30Change(Sender: TField);
begin
  if not table2size30.isnull then
    table2csiz30.value:=table2size30.Value;
end;

procedure Tfrmsiztbl.Table2Size31Change(Sender: TField);
begin
  if not table2size31.isnull then
    table2csiz31.value:=table2size31.Value;
end;

procedure Tfrmsiztbl.Table2Size32Change(Sender: TField);
begin
  if not table2size32.isnull then
    table2csiz32.value:=table2size32.Value;
end;

procedure Tfrmsiztbl.table2NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
end;

procedure Tfrmsiztbl.table3NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('id').value:=GetSeq('SZ_lsize1','id');
  dataset.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
  if not table1.fieldbyname('uom').isnull then
  dataset.fieldbyname('uom').value:=table1.fieldbyname('uom').value;
  dataset.fieldbyname('flg1').value:=False;
  dataset.fieldbyname('parts').value:=False;
  dataset.fieldbyname('opt').value:=False;
  dataset.fieldbyname('operation').value:=False;
  dataset.fieldbyname('garment').value:=False;
  dataset.fieldbyname('parts_d').value:='';
  dataset.fieldbyname('parts_d1').value:='';
end;

procedure Tfrmsiztbl.table4NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('Rid').value:=GetSeq('sz_prdsize','Rid');
  dataset.fieldbyname('stylno').value:=table1.fieldbyname('stylno').value;
  dataset.fieldbyname('cs').value:=0;  
end;

procedure Tfrmsiztbl.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit38.setfocus;
end;

procedure Tfrmsiztbl.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit39.setfocus;
end;

procedure Tfrmsiztbl.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit40.setfocus;
end;

procedure Tfrmsiztbl.DBEdit40KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit41.setfocus;
end;

procedure Tfrmsiztbl.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit42.setfocus;
end;

procedure Tfrmsiztbl.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit43.setfocus;
end;

procedure Tfrmsiztbl.DBEdit43KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit44.setfocus;
end;

procedure Tfrmsiztbl.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit45.setfocus;
end;

procedure Tfrmsiztbl.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit46.setfocus;
end;

procedure Tfrmsiztbl.DBEdit46KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit47.setfocus;
end;

procedure Tfrmsiztbl.DBEdit47KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit48.setfocus;
end;

procedure Tfrmsiztbl.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit49.setfocus;
end;

procedure Tfrmsiztbl.DBEdit49KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit50.setfocus;
end;

procedure Tfrmsiztbl.DBEdit50KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit51.setfocus;
end;

procedure Tfrmsiztbl.DBEdit51KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit52.setfocus;
end;

procedure Tfrmsiztbl.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit69.setfocus;
end;

procedure Tfrmsiztbl.table2Size33Change(Sender: TField);
begin
  if not table2size33.isnull then
    table2csiz33.value:=table2size33.Value;
end;

procedure Tfrmsiztbl.table2Size34Change(Sender: TField);
begin
  if not table2size34.isnull then
    table2csiz34.value:=table2size34.Value;
end;

procedure Tfrmsiztbl.table2Size35Change(Sender: TField);
begin
  if not table2size35.isnull then
    table2csiz35.value:=table2size35.Value;
end;

procedure Tfrmsiztbl.table2Size36Change(Sender: TField);
begin
  if not table2size36.isnull then
    table2csiz36.value:=table2size36.Value;
end;

procedure Tfrmsiztbl.table2Size37Change(Sender: TField);
begin
  if not table2size37.isnull then
    table2csiz37.value:=table2size37.Value;
end;

procedure Tfrmsiztbl.table2Size38Change(Sender: TField);
begin
  if not table2size38.isnull then
    table2csiz38.value:=table2size38.Value;
end;

procedure Tfrmsiztbl.table2Size39Change(Sender: TField);
begin
  if not table2size39.isnull then
    table2csiz39.value:=table2size39.Value;
end;

procedure Tfrmsiztbl.table2Size40Change(Sender: TField);
begin
  if not table2size40.isnull then
    table2csiz40.value:=table2size40.Value;
end;

procedure Tfrmsiztbl.DBEdit69KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit70.setfocus;
end;

procedure Tfrmsiztbl.DBEdit70KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit71.setfocus;
end;

procedure Tfrmsiztbl.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit72.setfocus;
end;

procedure Tfrmsiztbl.DBEdit72KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit73.setfocus;
end;

procedure Tfrmsiztbl.DBEdit73KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit74.setfocus;
end;

procedure Tfrmsiztbl.DBEdit74KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit75.setfocus;
end;

procedure Tfrmsiztbl.DBEdit75KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit76.setfocus;
end;

procedure Tfrmsiztbl.Edit1Change(Sender: TObject);
begin
  table1.locate('stylno',vararrayof([edit1.text]),[lopartialkey]);
end;

procedure Tfrmsiztbl.ExportEnglishDescription1Click(Sender: TObject);
begin
  {
  try
    if savedialog1.Execute then
    cxGrid1DBTableView1Cmeas.visible:=false;
    cxGrid1DBTableView1Emeas.visible:=true;
    //savedbgridehtoexportfile(TDBGridEhExportAsXLS,DBGridEh2,SaveDialog1.FileName,True);
    ExportGridToExcel(savedialog1.FileName,cxGrid1,true,true,false,'xls');
  finally
    showmessage('Succeeded!');
  end;
  }
end;

procedure Tfrmsiztbl.DBEdit35KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit53.setfocus;
end;

procedure Tfrmsiztbl.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit54.setfocus;
end;

procedure Tfrmsiztbl.DBEdit54KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit55.setfocus;
end;

procedure Tfrmsiztbl.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit56.setfocus;
end;

procedure Tfrmsiztbl.DBEdit56KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit57.setfocus;
end;

procedure Tfrmsiztbl.DBEdit57KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit58.setfocus;
end;

procedure Tfrmsiztbl.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit59.setfocus;
end;

procedure Tfrmsiztbl.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit60.setfocus;
end;

procedure Tfrmsiztbl.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit61.setfocus;
end;

procedure Tfrmsiztbl.DBEdit61KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit62.setfocus;
end;

procedure Tfrmsiztbl.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit63.setfocus;
end;

procedure Tfrmsiztbl.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit64.setfocus;
end;

procedure Tfrmsiztbl.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit65.setfocus;
end;

procedure Tfrmsiztbl.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit66.setfocus;
end;

procedure Tfrmsiztbl.DBEdit66KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit67.setfocus;
end;

procedure Tfrmsiztbl.DBEdit67KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit68.setfocus;
end;

procedure Tfrmsiztbl.DBEdit68KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit77.setfocus;
end;

procedure Tfrmsiztbl.DBEdit77KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit78.setfocus;
end;

procedure Tfrmsiztbl.DBEdit78KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit79.setfocus;
end;

procedure Tfrmsiztbl.DBEdit79KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit80.setfocus;
end;

procedure Tfrmsiztbl.DBEdit80KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit81.setfocus;
end;

procedure Tfrmsiztbl.DBEdit81KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit82.setfocus;
end;

procedure Tfrmsiztbl.DBEdit82KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit83.setfocus;
end;

procedure Tfrmsiztbl.DBEdit83KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit84.setfocus;
end;

procedure Tfrmsiztbl.DBEdit76KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then  dbedit12.setfocus;
end;

procedure Tfrmsiztbl.SpeedButton13Click(Sender: TObject);
begin
  table3.append;
end;

procedure Tfrmsiztbl.SpeedButton15Click(Sender: TObject);
begin
    if application.messagebox('�n�R�����ؤo��?','���ܫH��',mb_iconquestion+mb_okcancel)=idok then
    begin
      //table3.delete;
      with query1 do begin
        close;
        params.clear;
        //params.createparam(ftstring,'x1',ptinput);
        //params.createparam(ftinteger,'x2',ptinput);
        commandtext:='delete from sz_lsize1 where stylno='''+table3.fieldbyname('stylno').value+''' and id='+table3.fieldbyname('id').asstring;
        //params[0].asstring:=table3.fieldbyname('stylno').value;
        //params[1].asinteger:=table3.fieldbyname('id').value;
        execute;
      end;
      table3.Delete;
    end;
end;

procedure Tfrmsiztbl.DBEdit6DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit6.text;
  frminsertsiz.label5.caption:='1';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit7DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit7.text;
  frminsertsiz.label5.caption:='2';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit8DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit8.text;
  frminsertsiz.label5.caption:='3';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit9DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit9.text;
  frminsertsiz.label5.caption:='4';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit10DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit10.text;
  frminsertsiz.label5.caption:='5';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit11DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit11.text;
  frminsertsiz.label5.caption:='6';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit20DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit20.text;
  frminsertsiz.label5.caption:='7';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit21DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit21.text;
  frminsertsiz.label5.caption:='8';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit22DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit22.text;
  frminsertsiz.label5.caption:='9';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit23DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit23.text;
  frminsertsiz.label5.caption:='10';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit24DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit24.text;
  frminsertsiz.label5.caption:='11';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit25DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit25.text;
  frminsertsiz.label5.caption:='12';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit2DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit2.text;
  frminsertsiz.label5.caption:='13';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit3DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit3.text;
  frminsertsiz.label5.caption:='14';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit4DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit4.text;
  frminsertsiz.label5.caption:='15';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit5DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit5.text;
  frminsertsiz.label5.caption:='16';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit37DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit37.text;
  frminsertsiz.label5.caption:='17';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit38DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit38.text;
  frminsertsiz.label5.caption:='18';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit39DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit39.text;
  frminsertsiz.label5.caption:='19';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit40DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit40.text;
  frminsertsiz.label5.caption:='20';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit41DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit41.text;
  frminsertsiz.label5.caption:='21';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit42DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit42.text;
  frminsertsiz.label5.caption:='22';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit43DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit43.text;
  frminsertsiz.label5.caption:='23';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit44DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit44.text;
  frminsertsiz.label5.caption:='24';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit45DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit45.text;
  frminsertsiz.label5.caption:='25';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit46DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit46.text;
  frminsertsiz.label5.caption:='26';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit47DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit47.text;
  frminsertsiz.label5.caption:='27';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit48DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit48.text;
  frminsertsiz.label5.caption:='28';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit49DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit49.text;
  frminsertsiz.label5.caption:='29';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit50DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit50.text;
  frminsertsiz.label5.caption:='30';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit51DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit51.text;
  frminsertsiz.label5.caption:='31';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit52DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit52.text;
  frminsertsiz.label5.caption:='32';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit69DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit69.text;
  frminsertsiz.label5.caption:='33';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit70DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit70.text;
  frminsertsiz.label5.caption:='34';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit71DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit71.text;
  frminsertsiz.label5.caption:='35';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit72DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit72.text;
  frminsertsiz.label5.caption:='36';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit73DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit73.text;
  frminsertsiz.label5.caption:='37';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit74DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit74.text;
  frminsertsiz.label5.caption:='38';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit75DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit75.text;
  frminsertsiz.label5.caption:='39';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.Table1AfterScroll(DataSet: TDataSet);
var
  stylno:string;
begin
  if not Table1.FieldByName('stylno').isnull then stylno:=Table1.FieldByName('stylno').asstring else exit;
  with Table2 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'stylno',ptinput);
    commandtext:='select * from sz_lsize2 where stylno='''+stylno+'''';
    //params[0].asstring:=Stylno;
    open;
  end;
  with query4 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'stylno',ptinput);
    commandtext:='update sz_lsize1 set jobno='''' where stylno='''+stylno+''' and jobno is null';
    //params[0].asstring:=Stylno;
    execute;
  end;
  with Table3 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'stylno',ptinput);
    commandtext:='select * from sz_lsize1 where stylno='''+stylno+'''';
    //params[0].asstring:=Stylno;
    open;
  end;
  with ClientDataSet1 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'stylno',ptinput);
    commandtext:='select stylno,cde,jobno,id,cmeas,emeas,tolerence,rst1,rst2,rst3,rst4,rst5,rst6,rst7,rst8,rst9,rst10,rst11,rst12,rst13,rst14,rst15,rst16,rst17,'
                +'rst18,rst19,rst20,rst21,rst22,rst23,rst24,rst25,rst26,rst27,rst28,rst29,rst30,rst31,rst32,rst33,rst34,rst35,rst36,rst37,rst38,rst39,rst40 from sz_lsize1 where stylno='''+stylno+'''';
    //params[0].asstring:=Stylno;
    open;
  end;
end;

procedure Tfrmsiztbl.Table4BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet);
end;

procedure Tfrmsiztbl.Table3BeforeDelete(DataSet: TDataSet);
begin
  //DataSetBeforeDelete(DataSet);
  
end;

procedure Tfrmsiztbl.Table2BeforeDelete(DataSet: TDataSet);
begin
  DataSetBeforeDelete(DataSet);
end;

procedure Tfrmsiztbl.Table1BeforeDelete(DataSet: TDataSet);
begin
  //DataSetBeforeDelete(DataSet);
end;

procedure Tfrmsiztbl.Table1NewRecord(DataSet: TDataSet);
begin
  table1.fieldbyname('phstyle').value:='';
end;

procedure Tfrmsiztbl.SpeedButton16Click(Sender: TObject);
begin
  if frmstcpy=nil then frmstcpy:=tfrmstcpy.create(self);
  frmstcpy.show;
end;

procedure Tfrmsiztbl.FormCreate(Sender: TObject);
begin
  //DBGridEh1.Columns.LoadFromFile('j:\mu\frmsiztbl_DBGrideh1');
end;

procedure Tfrmsiztbl.SpeedButton17Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsiztbl.SpeedButton18Click(Sender: TObject);
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select stylno from sz_lappr where stylno='''+table1.fieldbyname('stylno').value+'''';
    open;
    if fieldbyname('stylno').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='insert into sz_lappr(stylno) values('''+table1.fieldbyname('stylno').value+''')';
        execute;
      end;
    end;
  end;
  with qry_appr do begin
    close;
    params.clear;
    commandtext:='select * from sz_lappr where stylno='''+table1.fieldbyname('stylno').value+'''';
    open;
  end;
  if frmstyleimg=nil then frmstyleimg:=tfrmstyleimg.create(nil);
  frmstyleimg.show;
end;

procedure Tfrmsiztbl.SpeedButton19Click(Sender: TObject);
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select stylno from sz_lappr where stylno='''+table1.fieldbyname('stylno').value+'''';
    open;
    if fieldbyname('stylno').isnull then begin
      with query3 do begin
        close;
        params.clear;
        commandtext:='insert into sz_lappr(stylno) values('''+table1.fieldbyname('stylno').value+''')';
        execute;
      end;
    end;
  end;
  with qry_appr do begin
    close;
    params.clear;
    commandtext:='select * from sz_lappr where stylno='''+table1.fieldbyname('stylno').value+'''';
    open;
  end;
  if frmqueren=nil then frmqueren:=tfrmqueren.create(nil);
  frmqueren.show;
end;

procedure Tfrmsiztbl.SpeedButton5Click(Sender: TObject);
begin
  try
    if savedialog1.Execute then
    cxGrid1DBTableView1Cmeas.visible:=true;
    cxGrid1DBTableView1Emeas.visible:=true;
    //savedbgridehtoexportfile(TDBGridEhExportAsXLS,DBGridEh2,SaveDialog1.FileName,True);
    ExportGridToExcel(savedialog1.FileName,cxGrid1,true,true,false,'xls');
  finally
    showmessage('Succeeded!');
  end;
end;

procedure Tfrmsiztbl.cxGrid1DBTableView1CustomDrawGroupSummaryCell(
  Sender: TObject; ACanvas: TcxCanvas; ARow: TcxGridGroupRow;
  AColumn: TcxGridColumn; ASummaryItem: TcxDataSummaryItem;
  AViewInfo: TcxCustomGridViewCellViewInfo; var ADone: Boolean);
var
  FBounds: TRect;
  sGroupName: string;
  i, iChildCount: Integer;
begin
  sGroupName := 'Prepared by:                    Confirmed by:    ';
  FBounds := AViewInfo.Bounds;
  ACanvas.FillRect(FBounds);
  ACanvas.DrawTexT(sGroupName, FBounds, cxAlignLeft or cxAlignVCenter or cxDontClip);
  ADone := true;
end;

procedure Tfrmsiztbl.cxGrid1DBTableView1CustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
var
  FBounds: TRect;
  sGroupName: string;
  i, iChildCount: Integer;
begin
  sGroupName := Format('%s: %s', [cxGrid1DBTableView1.GroupedColumns[0].Caption,AViewInfo.GridRecord.Values[0]]);
  sGroupName := sGroupName+'     Printed On: '+formatdatetime('yyyy-MM-dd',date);
  FBounds := AViewInfo.Bounds;
  ACanvas.FillRect(FBounds);
  OffsetRect(FBounds, 25, 0); 
  ACanvas.DrawTexT(sGroupName, FBounds, cxAlignLeft or cxAlignVCenter or cxDontClip);
  ADone := true;
end;

procedure Tfrmsiztbl.DBGridEh2Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if lblimg.caption='R9' then begin
    if frmwzxz=nil then frmwzxz:=tfrmwzxz.create(self);
    frmwzxz.label1.caption:='siztbl';
    frmwzxz.show;
  end;
end;

procedure Tfrmsiztbl.Table3CdeSetText(Sender: TField; const Text: String);
begin
  table3cde.Value:=uppercase(text);
end;

procedure Tfrmsiztbl.DBEdit76DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit76.text;
  frminsertsiz.label5.caption:='40';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit97DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit97.text;
  frminsertsiz.label5.caption:='41';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit98DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit98.text;
  frminsertsiz.label5.caption:='42';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit99DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit99.text;
  frminsertsiz.label5.caption:='43';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit100DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit100.text;
  frminsertsiz.label5.caption:='44';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit101DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit101.text;
  frminsertsiz.label5.caption:='45';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit102DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit102.text;
  frminsertsiz.label5.caption:='46';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit103DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit103.text;
  frminsertsiz.label5.caption:='47';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit104DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit104.text;
  frminsertsiz.label5.caption:='48';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit105DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit105.text;
  frminsertsiz.label5.caption:='49';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit106DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit106.text;
  frminsertsiz.label5.caption:='50';
  frminsertsiz.show;
end;

procedure Tfrmsiztbl.DBEdit107DblClick(Sender: TObject);
begin
  if frminsertsiz=nil then frminsertsiz:=tfrminsertsiz.create(self);
  frminsertsiz.label2.caption:=dbedit108.text;
  frminsertsiz.label5.caption:='51';
  frminsertsiz.show;
end;

end.
