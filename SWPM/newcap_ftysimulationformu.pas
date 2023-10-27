unit newcap_ftysimulationformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, Mask, DBCtrls,
  rxToolEdit, Spin, ExtCtrls, Dateutils, ppProd, ppClass, ppParameter,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands,
  ppCache, ppVar, ppViewr, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridExportLink, cxCurrencyEdit,cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus;

type
  Tfrmnewcap_ftysimulation = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    ComboBox2: TComboBox;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn5: TBitBtn;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    cxView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    SEQ1: TcxGridDBColumn;
    SDESC1: TcxGridDBColumn;
    cxM1: TcxGridDBColumn;
    cxM2: TcxGridDBColumn;
    cxM3: TcxGridDBColumn;
    cxM4: TcxGridDBColumn;
    cxM5: TcxGridDBColumn;
    cxM6: TcxGridDBColumn;
    cxM7: TcxGridDBColumn;
    cxM8: TcxGridDBColumn;
    cxM9: TcxGridDBColumn;
    cxM10: TcxGridDBColumn;
    cxM11: TcxGridDBColumn;
    cxM12: TcxGridDBColumn;
    CRDT: TcxGridDBColumn;
    UPDT: TcxGridDBColumn;
    cxTTL1: TcxGridDBColumn;
    GRP: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    GRP1: TcxGridDBColumn;
    GRP2: TcxGridDBColumn;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    DBText2: TDBText;
    BitBtn10: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    lbluser: TLabel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    yr001: TppLabel;
    ppLabel4: TppLabel;
    mn001: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    d01: TppDBText;
    d02: TppDBText;
    d03: TppDBText;
    d04: TppDBText;
    d05: TppDBText;
    d06: TppDBText;
    d07: TppDBText;
    d08: TppDBText;
    d09: TppDBText;
    d10: TppDBText;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel8: TppLabel;
    m01: TppLabel;
    c01: TppLabel;
    t01: TppLabel;
    v01: TppLabel;
    m02: TppLabel;
    c02: TppLabel;
    t02: TppLabel;
    v02: TppLabel;
    m03: TppLabel;
    m04: TppLabel;
    c03: TppLabel;
    c04: TppLabel;
    t03: TppLabel;
    t04: TppLabel;
    v03: TppLabel;
    v04: TppLabel;
    m05: TppLabel;
    m06: TppLabel;
    c05: TppLabel;
    c06: TppLabel;
    t05: TppLabel;
    t06: TppLabel;
    v05: TppLabel;
    v06: TppLabel;
    m07: TppLabel;
    m08: TppLabel;
    c07: TppLabel;
    c08: TppLabel;
    t07: TppLabel;
    t08: TppLabel;
    v07: TppLabel;
    v08: TppLabel;
    m09: TppLabel;
    m10: TppLabel;
    c09: TppLabel;
    c10: TppLabel;
    t09: TppLabel;
    t10: TppLabel;
    v09: TppLabel;
    v10: TppLabel;
    shp01: TppShape;
    qry_rpt1: TClientDataSet;
    DataSource2: TDataSource;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    title001: TppLabel;
    BitBtn17: TBitBtn;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel10: TppLabel;
    cxTTL: TcxGridDBColumn;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    Label11: TLabel;
    head001: TppLabel;
    yrttl001: TppLabel;
    pdttl001: TppLabel;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    Query1TPLANT: TWideStringField;
    Query1YR: TIntegerField;
    Query1SEQ: TIntegerField;
    Query1SDESC: TWideStringField;
    Query1SEQ1: TIntegerField;
    Query1SDESC1: TWideStringField;
    Query1M1: TFloatField;
    Query1M2: TFloatField;
    Query1M3: TFloatField;
    Query1M4: TFloatField;
    Query1M5: TFloatField;
    Query1M6: TFloatField;
    Query1M7: TFloatField;
    Query1M8: TFloatField;
    Query1M9: TFloatField;
    Query1M10: TFloatField;
    Query1M11: TFloatField;
    Query1M12: TFloatField;
    Query1CRDT: TDateField;
    Query1UPDT: TDateField;
    Query1REF1: TFloatField;
    Query1SEQ2: TIntegerField;
    Query1TTL: TFloatField;
    Query1REF2: TFloatField;
    Query1TTL1: TFloatField;
    Query1GRP: TWideStringField;
    Query1GRP1: TWideStringField;
    Query1GRP2: TWideStringField;
    Query1PG: TWideStringField;
    sg01: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    bk001: TppLabel;
    bk002: TppLabel;
    bk003: TppLabel;
    bk004: TppLabel;
    bk005: TppLabel;
    bk006: TppLabel;
    bk007: TppLabel;
    bk008: TppLabel;
    bk009: TppLabel;
    ppLabel14: TppLabel;
    ar001: TppLabel;
    ar002: TppLabel;
    ar003: TppLabel;
    ar004: TppLabel;
    ar005: TppLabel;
    ar006: TppLabel;
    ar007: TppLabel;
    ar008: TppLabel;
    ar009: TppLabel;
    ay001: TppLabel;
    ap001: TppLabel;
    ppShape2: TppShape;
    ppReport2: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    fty0001: TppLabel;
    ppLabel19: TppLabel;
    yr0001: TppLabel;
    ppLabel21: TppLabel;
    mth0001: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel32: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText7: TppDBText;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    qry_at3: TClientDataSet;
    qry_at3CUST: TWideStringField;
    qry_at3WK1: TIntegerField;
    qry_at3WK2: TIntegerField;
    qry_at3WK3: TIntegerField;
    qry_at3WK4: TIntegerField;
    qry_at3WK5: TIntegerField;
    qry_at3WK: TLargeintField;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel33: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    p0001: TppLabel;
    ppLine27: TppLine;
    p0002: TppLabel;
    p0003: TppLabel;
    p0004: TppLabel;
    p0005: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    Query4: TClientDataSet;
    PopupMenu1: TPopupMenu;
    Balancing21: TMenuItem;
    Budget1: TMenuItem;
    Balancing31: TMenuItem;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SpinEdit2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure cxView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Query1M1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M3GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M4GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M5GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M6GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M7GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M8GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M9GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M10GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M11GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Query1M12GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure Balancing21Click(Sender: TObject);
    procedure Budget1Click(Sender: TObject);
    procedure Balancing31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateSimulationVersion(const ver: string; const mn: integer);
    procedure Showdetailform(const m1: integer);
    function wrkhrs(const tplant: string; const optc: integer):string;
    function sbcode(const sb1: string):string;
    function sbcode1(const sb1: string):string;
    procedure generatereportheader;
    procedure print_balancingrpt(const xh: string);
    procedure print_balancingrpt1(const xh: string);
    function matchto(const f1: Double):integer;
    function matchto1(const f1: Double):string;
    procedure print_balancingrpt_supplement;
  end;

var
  frmnewcap_ftysimulation: Tfrmnewcap_ftysimulation;

implementation

uses mainformu, newcapformu, newcap_newformatsformu, newcap_simfty1formu,
  newcap_simfty_wkformu, newcap_ref1formu, newcap_sfbalformu,
  newcap_1stchoiceformu, newcap_notepadformu, newcap_styleformu,
  newcap_cprpt_optionformu;

{$R *.dfm}

procedure Tfrmnewcap_ftysimulation.ComboBox1Change(Sender: TObject);
var
  seqsl,seqfj,seqkb:integer;
  fty:string;
begin
  //if combobox1.text>'' then CreateSimulationVersion('Curr');
  //seqsl:=999; seqfj:=999; seqkb:=999;
  if combobox1.text>'' then begin
    if ((combobox1.text='SL+FJ') or (combobox1.text='SL+GG+RX') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='GROUP') or (combobox1.text='CHINA (SL+CS+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='GROUP(SL+FJ+KBT+KBC)')) then begin
      if combobox1.text='SL+FJ' then begin
        seqsl:=999; seqfj:=999; seqkb:=0;
      end else begin
        seqsl:=999; seqfj:=999; seqkb:=999;
      end;
      {
      seqsl:=0; seqfj:=0; seqkb:=0;
      if (combobox2.text='') or (combobox2.text='Default') then showmessage('Please select a balancing option first!')
      else begin
        if combobox1.text='SL+FJ' then begin
          with query2 do begin
            close;
            params.clear;
            commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant=''SL'' and yr='+inttostr(spinedit1.value);
            open;
            if not fieldbyname('seq').isnull then seqsl:=fieldbyname('seq').value;
          end;
          with query2 do begin
            close;
            params.clear;
            commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant=''FJ'' and yr='+inttostr(spinedit1.value);
            open;
            if not fieldbyname('seq').isnull then seqfj:=fieldbyname('seq').value;
          end;
          }
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftinteger,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            commandtext:='execute procedure sp_cap_balsum_new_new(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
            params[1].asinteger:=seqsl;
            params[2].asinteger:=seqfj;
            params[3].asinteger:=seqkb;
            params[4].asinteger:=spinedit2.value;
            params[5].asinteger:=spinedit3.value;
            execute;
          end;
          with frmnewcap_ftysimulation.query1 do begin
            close;
            params.clear;
            commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' order by seq2,seq1';
            open;
          end;
        {
        end else begin
          with query2 do begin
            close;
            params.clear;
            commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant=''SL'' and yr='+inttostr(spinedit1.value);
            open;
            if not fieldbyname('seq').isnull then seqsl:=fieldbyname('seq').value;
          end;
          with query2 do begin
            close;
            params.clear;
            commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant=''FJ'' and yr='+inttostr(spinedit1.value);
            open;
            if not fieldbyname('seq').isnull then seqfj:=fieldbyname('seq').value;
          end;
          with query2 do begin
            close;
            params.clear;
            commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant=''KB'' and yr='+inttostr(spinedit1.value);
            open;
            if not fieldbyname('seq').isnull then seqkb:=fieldbyname('seq').value;
          end;
          if frmnewcap_sfbal=nil then frmnewcap_sfbal:=tfrmnewcap_sfbal.create(nil);
          frmnewcap_sfbal.Show;
        end;
        }
      //end;
      //if frmnewcap_sfbal=nil then frmnewcap_sfbal:=tfrmnewcap_sfbal.create(nil);
      //frmnewcap_sfbal.Show;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=999;
        params[3].asstring:='';
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_ftyelements where seq=999 and (seq1 not in (3,19)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
        //if combobox2.text='Default' then commandtext:=commandtext+' and seq=1'
        //else if combobox2.text>'' then commandtext:=commandtext+' and seq='+inttostr(seq);    //+' and sdesc='''+combobox2.text+'''';
        //if (frmnewcap_ftysimulation.Caption='Factory Capacity - Balancing') then
        //commandtext:=commandtext+' and seq<>2';
        open;
      end;
    end;
    //combobox2change(self);
  end;
end;

procedure Tfrmnewcap_ftysimulation.ComboBox2Change(Sender: TObject);
var
  seq:integer;
begin
  seq:=1;
  if combobox2.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value;
    end;
  end;
  if seq>1 then begin
    if ((combobox1.text<>'SL+FJ') or (combobox1.text<>'SL+FJ+KB')) then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=combobox1.text;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=seq;
        params[3].asstring:=combobox2.text;
        execute;
      end;
    end;
  end;
  if ((combobox1.text<>'SL+FJ') or (combobox1.text<>'SL+FJ+KB')) then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements where (seq1 not in (3,19)) and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
      if combobox2.text='Default' then commandtext:=commandtext+' and seq=1'
      else if combobox2.text>'' then commandtext:=commandtext+' and seq='+inttostr(seq);    //+' and sdesc='''+combobox2.text+'''';
      if (frmnewcap_ftysimulation.Caption='Factory Capacity - Balancing') then
      commandtext:=commandtext+' and seq<>2';
      open;
    end;
  end else combobox1change(self);
end;

procedure Tfrmnewcap_ftysimulation.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  combobox2.items.add('Default');
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct sdesc from tbl_cap_ftyelements where seq>1 and seq1<20 and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
    if (frmnewcap_ftysimulation.Caption='Factory Capacity - Balancing') then
    commandtext:=commandtext+' and seq<>2';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('sdesc').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1AfterOpen(DataSet: TDataSet);
var
  sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9,sb10,sb11,sb12,fty,cp_b:string;
  seqgg,seqfj:integer;
begin
  //showmessage('RX2');
  if not query1.fieldbyname('tplant').isnull then begin
    if label11.caption='Current Status' then cp_b:='Balancing 1'
    else cp_b:=label11.caption;

  (query1.fieldbyname('ttl') as tfloatfield).displayformat:='#,0.00;;''''';
  (query1.fieldbyname('ttl1') as tfloatfield).displayformat:='#,0.00;;''''';
  sb1:=''; sb2:=''; sb3:=''; sb4:=''; sb5:=''; sb6:=''; sb7:=''; sb8:=''; sb9:=''; sb10:=''; sb11:=''; sb12:='';

  seqgg:=0; seqfj:=0;
  if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)') then begin
    if combobox1.text='GUANGXI (GG+RX)' then seqgg:=query1.fieldbyname('seq').value;
    if combobox1.text='GUANGDONG (SL+CS)' then seqfj:=query1.fieldbyname('seq').value;
    //Time
    if (seqgg=0) then begin
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''SL'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''SL'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''CS'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''CS'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    end;
    if seqfj=0 then begin
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''GG'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''GG'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if seqgg<>0 then begin
        if fieldbyname('m1').value=1 then sb1:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        end else begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''RX'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''RX'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    end;
    //balancing
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''SL'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
      else sb1:=sb1+chr(13)+chr(20)+'SET';//fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
      else sb2:=sb2+chr(13)+chr(20)+'SET';//fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
      else sb3:=sb3+chr(13)+chr(20)+'SET';//fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
      else sb4:=sb4+chr(13)+chr(20)+'SET';//fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
      else sb5:=sb5+chr(13)+chr(20)+'SET';//fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
      else sb6:=sb6+chr(13)+chr(20)+'SET';//fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
      else sb7:=sb7+chr(13)+chr(20)+'SET';//fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
      else sb8:=sb8+chr(13)+chr(20)+'SET';//fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
      else sb9:=sb9+chr(13)+chr(20)+'SET';//fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
      else sb10:=sb10+chr(13)+chr(20)+'SET';//fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
      else sb11:=sb11+chr(13)+chr(20)+'SET';//fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
      else sb12:=sb12+chr(13)+chr(20)+'SET';//fieldbyname('sb12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''CS'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
        else sb1:=sb1+'+'+'SET';//fieldbyname('sb1').value;
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+'+'+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+'+'+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+'+'+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+'+'+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+'+'+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+'+'+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+'+'+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+'+'+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+'+'+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+'+'+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+'+'+'SET';//fieldbyname('sb12').value;
      end;
    end;
    end;
    if seqfj=0 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''GG'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if seqgg<>0 then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
        else sb1:=sb1+chr(13)+chr(20)+'SET';//fieldbyname('sb1').value;
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+chr(13)+chr(20)+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+chr(13)+chr(20)+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+chr(13)+chr(20)+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+chr(13)+chr(20)+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+chr(13)+chr(20)+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+chr(13)+chr(20)+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+chr(13)+chr(20)+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+chr(13)+chr(20)+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+chr(13)+chr(20)+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+chr(13)+chr(20)+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+chr(13)+chr(20)+'SET';//fieldbyname('sb12').value;
        end else begin
        if spinedit1.value>2012 then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
        else sb1:=sb1+'+'+'SET';//fieldbyname('sb1').value;
        end else sb1:=sb1+'+NA';
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+'+'+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+'+'+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+'+'+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+'+'+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+'+'+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+'+'+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+'+'+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+'+'+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+'+'+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+'+'+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+'+'+'SET';//fieldbyname('sb12').value;
        end;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''RX'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if spinedit1.value>2012 then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
        else sb1:=sb1+'+'+'SET';//fieldbyname('sb1').value;
        end else sb1:=sb1+'+NA';
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+'+'+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+'+'+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+'+'+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+'+'+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+'+'+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+'+'+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+'+'+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+'+'+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+'+'+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+'+'+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+'+'+'SET';//fieldbyname('sb12').value;
      end;
    end;
    end;
  end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''KB'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sbcode(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
      else sb1:=fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sbcode(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
      else sb2:=fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sbcode(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
      else sb3:=fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sbcode(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
      else sb4:=fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sbcode(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
      else sb5:=fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sbcode(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
      else sb6:=fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sbcode(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
      else sb7:=fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sbcode(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
      else sb8:=fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sbcode(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
      else sb9:=fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sbcode(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
      else sb10:=fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sbcode(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
      else sb11:=fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sbcode(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
      else sb12:=fieldbyname('sb12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''KBC'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
      else sb1:=sb1+'+'+fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
      else sb2:=sb2+'+'+fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
      else sb3:=sb3+'+'+fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
      else sb4:=sb4+'+'+fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
      else sb5:=sb5+'+'+fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
      else sb6:=sb6+'+'+fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
      else sb7:=sb7+'+'+fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
      else sb8:=sb8+'+'+fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
      else sb9:=sb9+'+'+fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
      else sb10:=sb10+'+'+fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
      else sb11:=sb11+'+'+fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
      else sb12:=sb12+'+'+fieldbyname('sb12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''KB'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+chr(13)+chr(20)+' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''KBC'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else if (combobox1.text='GROUP') or (combobox1.text='GROUP(SL+FJ+KBT+KBC)') then begin
    //Time
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''SL'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''CS'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''GG'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''RX'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''KB'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=sb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=sb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=sb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=sb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=sb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=sb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=sb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=sb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=sb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=sb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=sb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=sb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    //Balancing
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''SL'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
      else sb1:=sb1+chr(13)+chr(20)+'SET';//fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
      else sb2:=sb2+chr(13)+chr(20)+'SET';//fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
      else sb3:=sb3+chr(13)+chr(20)+'SET';//fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
      else sb4:=sb4+chr(13)+chr(20)+'SET';//fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
      else sb5:=sb5+chr(13)+chr(20)+'SET';//fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
      else sb6:=sb6+chr(13)+chr(20)+'SET';//fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
      else sb7:=sb7+chr(13)+chr(20)+'SET';//fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
      else sb8:=sb8+chr(13)+chr(20)+'SET';//fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
      else sb9:=sb9+chr(13)+chr(20)+'SET';//fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
      else sb10:=sb10+chr(13)+chr(20)+'SET';//fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
      else sb11:=sb11+chr(13)+chr(20)+'SET';//fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
      else sb12:=sb12+chr(13)+chr(20)+'SET';//fieldbyname('sb12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''FJ'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3);
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3);
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3);
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3);
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3);
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3);
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3);
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3);
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3);
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3);
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3);
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3);
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''GG'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3);
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3);
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3);
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3);
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3);
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3);
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3);
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3);
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3);
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3);
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3);
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3);
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''RX'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3);
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3);
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3);
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3);
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3);
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3);
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3);
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3);
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3);
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3);
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3);
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3);
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''KB'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3);
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3);
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3);
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3);
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3);
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3);
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3);
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3);
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3);
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3);
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3);
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3);
    end;
  end else begin
    //showmessage('RX3');
    if combobox1.text='THAI (KB)' then fty:='KB'
    else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant='''+fty+''' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then sb1:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then sb2:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then sb3:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then sb4:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then sb5:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then sb6:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then sb7:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then sb8:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then sb9:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then sb10:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then sb11:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then sb12:=' T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    //showmessage('RX4');
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb1').value,1,3))+' '+copy(fieldbyname('sb1').value,5,3)
      else sb1:=sb1+chr(13)+chr(20)+fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb2').value,1,3))+' '+copy(fieldbyname('sb2').value,5,3)
      else sb2:=sb2+chr(13)+chr(20)+fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb3').value,1,3))+' '+copy(fieldbyname('sb3').value,5,3)
      else sb3:=sb3+chr(13)+chr(20)+fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb4').value,1,3))+' '+copy(fieldbyname('sb4').value,5,3)
      else sb4:=sb4+chr(13)+chr(20)+fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb5').value,1,3))+' '+copy(fieldbyname('sb5').value,5,3)
      else sb5:=sb5+chr(13)+chr(20)+fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb6').value,1,3))+' '+copy(fieldbyname('sb6').value,5,3)
      else sb6:=sb6+chr(13)+chr(20)+fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb7').value,1,3))+' '+copy(fieldbyname('sb7').value,5,3)
      else sb7:=sb7+chr(13)+chr(20)+fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb8').value,1,3))+' '+copy(fieldbyname('sb8').value,5,3)
      else sb8:=sb8+chr(13)+chr(20)+fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb9').value,1,3))+' '+copy(fieldbyname('sb9').value,5,3)
      else sb9:=sb9+chr(13)+chr(20)+fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb10').value,1,3))+' '+copy(fieldbyname('sb10').value,5,3)
      else sb10:=sb10+chr(13)+chr(20)+fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb11').value,1,3))+' '+copy(fieldbyname('sb11').value,5,3)
      else sb11:=sb11+chr(13)+chr(20)+fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+chr(13)+chr(20)+sbcode(copy(fieldbyname('sb12').value,1,3))+' '+copy(fieldbyname('sb12').value,5,3)
      else sb12:=sb12+chr(13)+chr(20)+fieldbyname('sb12').value;
    end;
  end;
  //showmessage('RX5');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    //commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno where yr=:x1 group by m1 order by m1';
    commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and wkno>0 group by m1 order by m1';
    params[0].asinteger:=spinedit1.value;
    open;
    first;
    while not eof do begin
      if fieldbyname('m1').value=1 then begin
        //dbgrideh1.columns[5].Title.Caption
        cxm1.caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb1;
      end else if fieldbyname('m1').value=2 then begin
        //dbgrideh1.columns[6].Title.Caption
        cxm2.caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb2;
      end else if fieldbyname('m1').value=3 then begin
        //dbgrideh1.columns[7].Title.Caption
        cxm3.caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb3;
      end else if fieldbyname('m1').value=4 then begin
        //dbgrideh1.columns[8].Title.Caption
        cxm4.caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb4;
      end else if fieldbyname('m1').value=5 then begin
        //dbgrideh1.columns[9].Title.Caption
        cxm5.caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb5;
      end else if fieldbyname('m1').value=6 then begin
        //dbgrideh1.columns[10].Title.Caption
        cxm6.caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb6;
      end else if fieldbyname('m1').value=7 then begin
        //dbgrideh1.columns[11].Title.Caption
        cxm7.caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb7;
      end else if fieldbyname('m1').value=8 then begin
        //dbgrideh1.columns[12].Title.Caption
        cxm8.caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb8;
      end else if fieldbyname('m1').value=9 then begin
        //dbgrideh1.columns[13].Title.Caption
        cxm9.caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb9;
      end else if fieldbyname('m1').value=10 then begin
        //dbgrideh1.columns[14].Title.Caption
        cxm10.caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb10;
      end else if fieldbyname('m1').value=11 then begin
        //dbgrideh1.columns[15].Title.Caption
        cxm11.caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb11;
      end else if fieldbyname('m1').value=12 then begin
        //dbgrideh1.columns[16].Title.Caption
        cxm12.caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') '+chr(13)+chr(20)+sb12;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  cxttl.Caption:='Yearly Total'+chr(13)+chr(20)+'(12 months)';
  cxttl1.Caption:='Periodic Total'+chr(13)+chr(20)+'('+inttostr(spinedit3.value-spinedit2.value+1)+' months)';
  end;
  //showmessage('RX6');
end;

procedure Tfrmnewcap_ftysimulation.Query1AfterPost(DataSet: TDataSet);
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftfloat,'x9',ptinput);
      params.createparam(ftfloat,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      params.createparam(ftinteger,'x15',ptinput);
      params.createparam(ftinteger,'x16',ptinput);
      commandtext:='update tbl_cap_ftyelements set m1=:x1,m2=:x2,m3=:x3,m4=:x4,m5=:x5,m6=:x6,m7=:x7,m8=:x8,m9=:x9,m10=:x10,m11=:x11,m12=:x12 '
                  +'where tplant=:x13 and yr=:x14 and seq=:x15 and seq1=:x16';
      if not query1.fieldbyname('m1').isnull then
      params[0].asfloat:=query1.fieldbyname('m1').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('m2').isnull then
      params[1].asfloat:=query1.fieldbyname('m2').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('m3').isnull then
      params[2].asfloat:=query1.fieldbyname('m3').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('m4').isnull then
      params[3].asfloat:=query1.fieldbyname('m4').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('m5').isnull then
      params[4].asfloat:=query1.fieldbyname('m5').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('m6').isnull then
      params[5].asfloat:=query1.fieldbyname('m6').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('m7').isnull then
      params[6].asfloat:=query1.fieldbyname('m7').value
      else params[6].asfloat:=0;
      if not query1.fieldbyname('m8').isnull then
      params[7].asfloat:=query1.fieldbyname('m8').value
      else params[7].asfloat:=0;
      if not query1.fieldbyname('m9').isnull then
      params[8].asfloat:=query1.fieldbyname('m9').value
      else params[8].asfloat:=0;
      if not query1.fieldbyname('m10').isnull then
      params[9].asfloat:=query1.fieldbyname('m10').value
      else params[9].asfloat:=0;
      if not query1.fieldbyname('m11').isnull then
      params[10].asfloat:=query1.fieldbyname('m11').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('m12').isnull then
      params[11].asfloat:=query1.fieldbyname('m12').value
      else params[11].asfloat:=0;
      params[12].asstring:=query1.fieldbyname('tplant').value;
      params[13].asinteger:=query1.fieldbyname('yr').value;
      params[14].asinteger:=query1.fieldbyname('seq').value;
      params[15].asinteger:=query1.fieldbyname('seq1').value;
      execute;
    end;
  end;
  }
end;

procedure Tfrmnewcap_ftysimulation.BitBtn1Click(Sender: TObject);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_cap_ftyelements where seq<999 and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value else seq:=1;
  end;
  if frmnewcap_simfty1=nil then frmnewcap_simfty1:=tfrmnewcap_simfty1.create(nil);
  frmnewcap_simfty1.Edit1.text:='Balancing '+inttostr(seq);
  frmnewcap_simfty1.show;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn2Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn3Click(Sender: TObject);
begin
  if frmnewcap_newformats=nil then frmnewcap_newformats:=tfrmnewcap_newformats.create(nil);
  frmnewcap_newformats.spinedit1.value:=spinedit1.value;
  frmnewcap_newformats.spinedit2.Value:=1;
  frmnewcap_newformats.spinedit3.Value:=12;
  frmnewcap_newformats.spinedit4.value:=1;
  frmnewcap_newformats.spinedit5.value:=53;
  frmnewcap_newformats.spinedit2.Enabled:=false;
  frmnewcap_newformats.spinedit3.Enabled:=false;
  frmnewcap_newformats.spinedit4.Enabled:=false;
  frmnewcap_newformats.spinedit5.Enabled:=false;
  frmnewcap_newformats.spinedit6.value:=spinedit1.value;
  frmnewcap_newformats.spinedit8.value:=spinedit1.value;
  frmnewcap_newformats.spinedit7.Value:=1;
  frmnewcap_newformats.spinedit9.Value:=12;
  frmnewcap_newformats.label8.caption:=query1.fieldbyname('seq').asstring;
  frmnewcap_newformats.bitbtn1click(self);
end;

procedure Tfrmnewcap_ftysimulation.FormShow(Sender: TObject);
begin
  {
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_ftyelements where (seq1 not in (3,19)) and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
    if (frmnewcap_ftysimulation.Caption='Factory Capacity - Balancing') then
    commandtext:=commandtext+' and seq<>2';
    open;
  end;
  }
  spinedit2.value:=1;
  spinedit3.value:=12;
end;

procedure Tfrmnewcap_ftysimulation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmnewcap_newformats<>nil then frmnewcap_newformats:=nil;
  action:=cafree;
  frmnewcap_ftysimulation:=nil;
end;

procedure Tfrmnewcap_ftysimulation.CreateSimulationVersion(
  const ver: string; const mn: integer);
var
  seq:integer;
begin
  screen.cursor:=crSQLWait;
  try
    if ver='Curr' then seq:=1
    else begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(seq) as q from tbl_cap_ftyelements where tplant=:x1 and yr=:x2 and seq<999';
        params[0].asstring:=combobox1.text;
        params[1].asinteger:=spinedit1.value;
        open;
        if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
        else seq:=3;
      end;
      if seq<3 then seq:=3;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='execute procedure sp_cap_updftyelements_new1(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=seq;
      params[3].asstring:=ver;
      params[4].asinteger:=mn;
      execute;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Showdetailform(const m1: integer);
begin
  screen.Cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_gen_simftywk(:x1,:x2,:x3,:x4)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      params[3].asinteger:=m1;
      execute;
    end;
    if frmnewcap_simfty_wk=nil then frmnewcap_simfty_wk:=tfrmnewcap_simfty_wk.Create(nil);
    frmnewcap_simfty_wk.Caption:=frmnewcap_ftysimulation.Caption+' by week';
    frmnewcap_simfty_wk.ComboBox1.text:=combobox1.text;
    frmnewcap_simfty_wk.SpinEdit1.value:=spinedit1.value;
    with frmnewcap_simfty_wk.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements_wk where (seq1 not in (3,10,19,20)) and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value)+' and seq='+query1.fieldbyname('seq').asstring+' and m1='+inttostr(m1);
      open;
    end;
    frmnewcap_simfty_wk.Label5.Caption:='Simulation';
    {
    if frmnewcap_ftysimulation.Caption='Factory Capacity - BAL Processing' then begin
      if query1.fieldbyname('seq').value>2 then frmnewcap_simfty_wk.DBGridEh1.ReadOnly:=false
      else frmnewcap_simfty_wk.DBGridEh1.ReadOnly:=true;
    end else frmnewcap_simfty_wk.DBGridEh1.ReadOnly:=true;
    }
    frmnewcap_simfty_wk.Show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns2EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(1);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns3EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(2);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns4EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(3);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns5EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(4);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns6EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(5);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns7EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(6);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns8EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(7);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns9EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(8);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns10EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(9);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns11EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(10);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns12EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(11);
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1Columns13EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.fieldbyname('seq').value>2 then
  Showdetailform(12);
end;

procedure Tfrmnewcap_ftysimulation.BitBtn4Click(Sender: TObject);
var
  y,m,d:word;
begin
  if (combobox1.text<>'SL+FJ') and (combobox1.text<>'SL+FJ+KB') then begin
    decodedate(date,y,m,d);
    if frmnewcap_1stchoice=nil then frmnewcap_1stchoice:=tfrmnewcap_1stchoice.Create(nil);
    frmnewcap_1stchoice.Caption:='Confirm by HKOA with Factory';
    frmnewcap_1stchoice.BitBtn1.visible:=true;
    frmnewcap_1stchoice.BitBtn4.visible:=true;
    frmnewcap_1stchoice.BitBtn3.visible:=false;
    frmnewcap_1stchoice.BitBtn4.Caption:='Confirmed and Save';
    frmnewcap_1stchoice.SpinEdit1.Value:=m;
    frmnewcap_1stchoice.Label4.Visible:=false;
    frmnewcap_1stchoice.ComboBox1.visible:=false;
    frmnewcap_1stchoice.show;
  end;
  {
  if query1.fieldbyname('seq').value>2 then begin
    if pos('Execution',query1.fieldbyname('sdesc').value)>0 then begin
    end else begin
      if application.MessageBox('Confirm this balancing version?','Confirm',mb_iconquestion+mb_okcancel)=idok then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='execute procedure sp_cap_cfmsimulation(:x1,:x2,:x3)';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          params[1].asinteger:=query1.fieldbyname('yr').value;
          params[2].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        combobox2change(self);
      end;
    end;
  end;
  }
end;

procedure Tfrmnewcap_ftysimulation.Query1AfterScroll(DataSet: TDataSet);
begin
  if not query1.fieldbyname('seq').isnull then begin
    if query1.fieldbyname('seq1').value=1 then begin
      dbgrideh1.columns[4].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[5].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[6].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[7].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[8].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[9].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[10].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[11].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[12].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[13].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[14].ButtonStyle:=cbsEllipsis;
      dbgrideh1.columns[15].ButtonStyle:=cbsEllipsis;
    end else begin
      dbgrideh1.columns[4].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[5].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[6].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[7].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[8].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[9].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[10].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[11].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[12].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[13].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[14].ButtonStyle:=cbsAuto;
      dbgrideh1.columns[15].ButtonStyle:=cbsAuto;
    end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  set1,set3,set4:set of 1..90;
  set2:set of 30..80;
begin
  set1:=[4,7,9,17,18,19,24,26,27,28,29,30,31,32,33,60,61,65];
  set2:=[75,34,35];
  set3:=[10,20,25,36,37];
  set4:=[84,85];
  if (query1.fieldbyname('seq1').asinteger in set1) then
  dbgrideh1.Canvas.Brush.Color:=$00CDFCFB
  else if (query1.fieldbyname('seq1').asinteger in set2) then
  dbgrideh1.Canvas.Brush.Color:=$00EFDBF2
  else if (query1.fieldbyname('seq1').asinteger in set4) then
  dbgrideh1.canvas.brush.color:=$00E2F1DC;
  if (query1.fieldbyname('seq1').asinteger in set3) then begin
    dbgrideh1.Canvas.Font.Size:=12;
    dbgrideh1.Canvas.Font.Style:=[fsUnderline];
  end;
  dbgrideh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmnewcap_ftysimulation.SpinEdit2Change(Sender: TObject);
var
  i:integer;
  seq:integer;
begin
  if spinedit2.value>1 then begin
    for i:=5 to 16 do begin
      dbgrideh1.Columns[i].Visible:=true;
    end;
    for i:=5 to 5+spinedit2.value-2 do begin
      dbgrideh1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=16-(12-spinedit3.value)+1 to 16 do begin
        dbgrideh1.columns[i].visible:=false;
      end;
    end;
  end else begin
    for i:=5 to 16 do begin
      dbgrideh1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=16-(12-spinedit3.value)+1 to 16 do begin
        dbgrideh1.columns[i].visible:=false;
      end;
    end;
  end;
  {
  seq:=0;
  if combobox2.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select seq from tbl_cap_ftyelements where sdesc='''+combobox2.text+''' and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value else seq:=1;
    end;
  end;
  }
  if (combobox1.text<>'SL+FJ') and (combobox1.text<>'SL+FJ+KB') then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=999;
      params[3].asinteger:=spinedit2.value;
      params[4].asinteger:=spinedit3.value;
      execute;
    end;
  end;
  combobox1change(self);
  {
  if combobox1.text<>'SL+FJ' then combobox1change(self)
  else begin
    with frmnewcap_ftysimulation.query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements_slfj order by seq2,seq1';
      open;
    end;
  end;
  }
end;

procedure Tfrmnewcap_ftysimulation.BitBtn5Click(Sender: TObject);
var
  y,m,d:word;
begin
  if (combobox1.text<>'SL+FJ') and (combobox1.text<>'SL+FJ+KB') then begin
    decodedate(date,y,m,d);
    if frmnewcap_1stchoice=nil then frmnewcap_1stchoice:=tfrmnewcap_1stchoice.Create(nil);
    frmnewcap_1stchoice.Caption:='Choose';
    frmnewcap_1stchoice.BitBtn1.visible:=true;
    frmnewcap_1stchoice.BitBtn4.visible:=true;
    frmnewcap_1stchoice.BitBtn3.visible:=false;
    frmnewcap_1stchoice.BitBtn4.Caption:='Chosen and Save';
    frmnewcap_1stchoice.SpinEdit1.Value:=m;
    frmnewcap_1stchoice.Label4.Visible:=true;
    frmnewcap_1stchoice.ComboBox1.visible:=true;
    frmnewcap_1stchoice.show;
  end;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn6Click(Sender: TObject);
var
  y,m,d:word;
begin
  if (combobox1.text<>'SL+FJ') and (combobox1.text<>'SL+FJ+KB') then begin
    decodedate(date,y,m,d);
    if frmnewcap_1stchoice=nil then frmnewcap_1stchoice:=tfrmnewcap_1stchoice.Create(nil);
    frmnewcap_1stchoice.Caption:='Lock';
    frmnewcap_1stchoice.BitBtn1.visible:=true;
    frmnewcap_1stchoice.BitBtn4.visible:=true;
    frmnewcap_1stchoice.BitBtn3.visible:=false;
    frmnewcap_1stchoice.BitBtn4.Caption:='Locked and Save';
    frmnewcap_1stchoice.SpinEdit1.Value:=m;
    frmnewcap_1stchoice.Label4.Visible:=false;
    frmnewcap_1stchoice.ComboBox1.visible:=false;
    frmnewcap_1stchoice.show;
  end;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn7Click(Sender: TObject);
begin
  if frmnewcap_notepad=nil then frmnewcap_notepad:=tfrmnewcap_notepad.create(nil);
  frmnewcap_notepad.show;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn9Click(Sender: TObject);
var
  seqsl,seqfj,seqkb,seqgg,seqcs:integer;
  i:integer;
  seq:integer;
  fty,xxx:string;
begin
  screen.Cursor:=crSQLWait;
  try
  lbluser.Visible:=false;
  if spinedit2.value>1 then begin

    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    for i:=7 to 7+spinedit2.value-2 do begin
      cxview1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end else begin
    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end;

  label11.Caption:='Current Status';
  if spinedit1.value>=2014 then begin
    if spinedit1.value=2014 then begin
      if combobox1.text='CHINA (SL+GG+RX)' then combobox1.text:='CHINA (SL+GG/RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (spinedit1.value>=2015) and (spinedit1.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end;
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  if combobox1.text>'' then begin
    seqgg:=0; seqcs:=0;
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then begin
      if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)') then begin
        seqsl:=999; seqfj:=999; seqkb:=0;
      end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
        seqsl:=0; seqfj:=999; seqkb:=999;
      end else if combobox1.text='GUANGXI (GG+RX)' then begin
        seqsl:=999; seqcs:=0; seqgg:=999;
      end else if combobox1.text='GUANGDONG (SL+CS)' then begin
        seqsl:=999; seqcs:=999; seqgg:=0;
      end else begin
        seqsl:=999; seqfj:=999; seqkb:=999;
      end;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftinteger,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            if (seqgg=999) and (seqcs=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GX(:x1,:x2,:x3,:x4,:x5,:x6)'
            else if (seqcs=999) and (seqgg=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GD(:x1,:x2,:x3,:x4,:x5,:x6)'
            else commandtext:='execute procedure sp_cap_balsum_new_new(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
            params[1].asinteger:=seqsl;
            params[2].asinteger:=seqfj;
            params[3].asinteger:=seqkb;
            params[4].asinteger:=spinedit2.value;
            params[5].asinteger:=spinedit3.value;
            execute;
          end;
          with frmnewcap_ftysimulation.query1 do begin
            close;
            params.clear;
            commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=999 and seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172) order by seq2,seq1,grp2';
            open;
          end;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=999;
        params[3].asstring:='';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=999;
        params[3].asinteger:=spinedit2.value;
        params[4].asinteger:=spinedit3.value;
        execute;
      end;
      //showmessage('RX1');
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_ftyelements where seq=999 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
        open;
      end;
    end;
  end;
  cxview1.DataController.Groups.ChangeExpanding(2,true,true);
  //cxview1.ViewData.Expand(true);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Budget1Click(Sender: TObject);
var
  seqsl,seqfj,seqkb,seqgg,seqcs:integer;
  i:integer;
  seq:integer;
  fty,xxx:string;
begin
  screen.Cursor:=crSQLWait;
  try
  lbluser.Visible:=false;
  if spinedit2.value>1 then begin

    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    for i:=7 to 7+spinedit2.value-2 do begin
      cxview1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end else begin
    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end;

  if spinedit1.value>=2014 then begin
    if spinedit1.value=2014 then begin
      if combobox1.text='CHINA (SL+CS+GG+RX)' then combobox1.text:='CHINA (SL+GG/RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (spinedit1.value>=2015) and (spinedit1.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end;
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  if combobox1.text>'' then begin
    seqgg:=0; seqcs:=0;
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then begin
      if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)') then begin
        seqsl:=-666; seqfj:=-666; seqkb:=0; seqgg:=-666;
      end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
        seqsl:=0; seqfj:=-666; seqkb:=-666;
      end else if combobox1.text='GUANGXI (GG+RX)' then begin
        seqsl:=-666; seqcs:=0; seqgg:=-666;
      end else if combobox1.text='GUANGDONG (SL+CS)' then begin
        seqsl:=-666; seqgg:=0; seqcs:=-666;
      end else begin
        seqsl:=-666; seqfj:=-666; seqkb:=-666;
      end;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftinteger,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            if (seqgg=-666) and (seqcs=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GX8(:x1,:x2,:x3,:x4,:x5,:x6)'
            else if (seqcs=-666) and (seqgg=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GD8(:x1,:x2,:x3,:x4,:x5,:x6)'
            else commandtext:='execute procedure sp_cap_balsum_new_new8(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
            params[1].asinteger:=seqsl;
            params[2].asinteger:=seqfj;
            params[3].asinteger:=seqkb;
            params[4].asinteger:=spinedit2.value;
            params[5].asinteger:=spinedit3.value;
            execute;
          end;
          with frmnewcap_ftysimulation.query1 do begin
            close;
            params.clear;
            commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=-666 and seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172) order by seq2,seq1,grp2';
            open;
          end;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-666;
        params[3].asstring:='';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-666;
        params[3].asinteger:=spinedit2.value;
        params[4].asinteger:=spinedit3.value;
        execute;
      end;
      //showmessage('RX1');
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_ftyelements where seq=-666 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
        open;
      end;
    end;
  end;
  label11.Caption:='CP - Budget';
  cxview1.DataController.Groups.ChangeExpanding(2,true,true);
  //cxview1.ViewData.Expand(true);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.cxView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  set1,set3,set4,set6,set7:set of 1..250;
  set2,set5:set of 30..250;
  seqi:integer;
  m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12:double;
  fty:string;
begin
  set1:=[4,7,9,17,18,19,24,26,27,28,29,30,31,60,61,65,101,102,103,104,105,106,163];
  set2:=[75,34,35];
  set3:=[10,20,25,36,37];
  set4:=[84,85,180,181];
  set5:=[32,33,70,71,107,108];
  set6:=[95];
  set7:=[113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159];
  seqi:=AViewInfo.GridRecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('seq1').index];
  if (seqi in set1) then
  acanvas.Canvas.Brush.Color:=$00CDFCFB
  else if (seqi in set7) then
  acanvas.Canvas.Brush.Color:=$00E0BCB4
  else if (seqi in set2) then begin
    acanvas.Canvas.Brush.Color:=$00EFDBF2;
    acanvas.Canvas.Font.Style:=[fsBold];
    if seqi=75 then begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='GROUP(SL+FJ+KBT+KBC)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then
        commandtext:='select ttl,ttl1,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=:x1 and seq1=75'
        else
        commandtext:='select ttl,ttl1,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements where tplant='''+fty+''' and seq=:x1 and seq1=75 and yr='+inttostr(spinedit1.value);
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      if (AViewInfo.Item.ID=5) then begin
        if query2.fieldbyname('ttl').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('ttl').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=6) then begin
        if query2.fieldbyname('ttl1').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('ttl1').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=7) then begin
        if query2.fieldbyname('m1').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m1').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=8) then begin
        if query2.fieldbyname('m2').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m2').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=9) then begin
        if query2.fieldbyname('m3').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m3').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=10) then begin
        if query2.fieldbyname('m4').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m4').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=11) then begin
        if query2.fieldbyname('m5').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m5').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=12) then begin
        if query2.fieldbyname('m6').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m6').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=13) then begin
        if query2.fieldbyname('m7').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m7').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=14) then begin
        if query2.fieldbyname('m8').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m8').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=15) then begin
        if query2.fieldbyname('m9').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m9').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=16) then begin
        if query2.fieldbyname('m10').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m10').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=17) then begin
        if query2.fieldbyname('m11').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m11').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=18) then begin
        if query2.fieldbyname('m12').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m12').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end;
    end else if seqi=34 then begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='GROUP(SL+FJ+KBT+KBC)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then
        commandtext:='select ttl,ttl1,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=:x1 and seq1=34'
        else
        commandtext:='select ttl,ttl1,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements where tplant='''+fty+''' and seq=:x1 and seq1=34 and yr='+inttostr(spinedit1.value);
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      if (AViewInfo.Item.ID=5) then begin
        if query2.fieldbyname('ttl').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('ttl').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=6) then begin
        if query2.fieldbyname('ttl1').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('ttl1').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=7) then begin
        if query2.fieldbyname('m1').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m1').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=8) then begin
        if query2.fieldbyname('m2').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m2').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=9) then begin
        if query2.fieldbyname('m3').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m3').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=10) then begin
        if query2.fieldbyname('m4').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m4').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=11) then begin
        if query2.fieldbyname('m5').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m5').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=12) then begin
        if query2.fieldbyname('m6').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m6').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=13) then begin
        if query2.fieldbyname('m7').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m7').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=14) then begin
        if query2.fieldbyname('m8').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m8').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=15) then begin
        if query2.fieldbyname('m9').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m9').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=16) then begin
        if query2.fieldbyname('m10').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m10').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=17) then begin
        if query2.fieldbyname('m11').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m11').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=18) then begin
        if query2.fieldbyname('m12').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m12').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end;
    end else if seqi=35 then begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='GROUP(SL+FJ+KBT+KBC)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then
        commandtext:='select ttl,ttl1,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=:x1 and seq1=35'
        else
        commandtext:='select ttl,ttl1,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements where tplant='''+fty+''' and seq=:x1 and seq1=35 and yr='+inttostr(spinedit1.value);
        params[0].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      if (AViewInfo.Item.ID=5) then begin
        if query2.fieldbyname('ttl').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('ttl').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=6) then begin
        if query2.fieldbyname('ttl1').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('ttl1').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=7) then begin
        if query2.fieldbyname('m1').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m1').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=8) then begin
        if query2.fieldbyname('m2').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m2').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=9) then begin
        if query2.fieldbyname('m3').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m3').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=10) then begin
        if query2.fieldbyname('m4').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m4').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=11) then begin
        if query2.fieldbyname('m5').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m5').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=12) then begin
        if query2.fieldbyname('m6').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m6').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=13) then begin
        if query2.fieldbyname('m7').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m7').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=14) then begin
        if query2.fieldbyname('m8').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m8').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=15) then begin
        if query2.fieldbyname('m9').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m9').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=16) then begin
        if query2.fieldbyname('m10').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m10').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=17) then begin
        if query2.fieldbyname('m11').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m11').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end else if (AViewInfo.Item.ID=18) then begin
        if query2.fieldbyname('m12').value>0 then acanvas.Canvas.Font.Color:=clGreen
        else if query2.fieldbyname('m12').value<0 then acanvas.Canvas.Font.Color:=clRed
        else acanvas.Canvas.Font.Color:=clBlack;
      end;
    end;
  end else if (seqi in set4) then
  acanvas.canvas.brush.color:=$00E2F1DC
  else if (seqi in set5) then
  acanvas.canvas.brush.color:=$00F5FCF1;
  if (seqi in set3) then begin
    acanvas.Canvas.Font.Size:=12;
    acanvas.Canvas.Font.Style:=[fsUnderline];
  end;
  {
  if (seqi in set6) then begin
    TcxCurrencyEditproperties(cxM1).DisplayFormat:='####/##/##';
  end else begin
    TcxCurrencyEditproperties(cxM1).DisplayFormat:='#,0.00;;''''';
  end;
  }
  //---
  if seqi=7 then begin
    if combobox1.text='THAI (KB)' then fty:='KB'
    else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='GROUP(SL+FJ+KBT+KBC)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then
      commandtext:='select m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=:x1 and seq1=7'
      else
      commandtext:='select m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12 from tbl_cap_ftyelements where tplant='''+fty+''' and seq=:x1 and seq1=7';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      m1:=fieldbyname('m1').value;
      m2:=fieldbyname('m2').value;
      m3:=fieldbyname('m3').value;
      m4:=fieldbyname('m4').value;
      m5:=fieldbyname('m5').value;
      m6:=fieldbyname('m6').value;
      m7:=fieldbyname('m7').value;
      m8:=fieldbyname('m8').value;
      m9:=fieldbyname('m9').value;
      m10:=fieldbyname('m10').value;
      m11:=fieldbyname('m11').value;
      m12:=fieldbyname('m12').value;
    end;
    if (AViewInfo.Item.ID=7) then begin
      if m1<m2 then acanvas.Canvas.Font.Color:=clGreen
      else if  m1>m2 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=8) then begin
      if m2<m3 then acanvas.Canvas.Font.Color:=clGreen
      else if m2>m3 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=9) then begin
      if m3<m4 then acanvas.Canvas.Font.Color:=clGreen
      else if m3>m4 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=10) then begin
      if m4<m5 then acanvas.Canvas.Font.Color:=clGreen
      else if m4>m5 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=11) then begin
      if m5<m6 then acanvas.Canvas.Font.Color:=clGreen
      else if m5>m6 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=12) then begin
      if m6<m7 then acanvas.Canvas.Font.Color:=clGreen
      else if m6>m7 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=13) then begin
      if m7<m8 then acanvas.Canvas.Font.Color:=clGreen
      else if m7>m8 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=14) then begin
      if m8<m9 then acanvas.Canvas.Font.Color:=clGreen
      else if m8>m9 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=15) then begin
      if m9<m10 then acanvas.Canvas.Font.Color:=clGreen
      else if m9>m10 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=16) then begin
      if m10<m11 then acanvas.Canvas.Font.Color:=clGreen
      else if m10>m11 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end else if (AViewInfo.Item.ID=17) then begin
      if m11<m12 then acanvas.Canvas.Font.Color:=clGreen
      else if m11>m12 then acanvas.Canvas.Font.Color:=clRed
      else acanvas.Canvas.Font.Color:=clBlack;
    end;
  end;
  //dbgrideh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

function Tfrmnewcap_ftysimulation.wrkhrs(const tplant: string;
  const optc: integer): string;
begin
  with query4 do begin
    close;
    params.clear;
    commandtext:='select des from tplant_wk52_des where tplant='''+tplant+''' and optc='+inttostr(optc);
    open;
    if not fieldbyname('des').isnull then
    result:=copy(fieldbyname('des').value,1,2) else result:='0';
  end;
  {
  if tplant='SL' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='79'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='FJ' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='60'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='GG' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='59'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='RX' then begin
    if optc=1 then result:='64'
    else if optc=2 then result:='67'
    else if optc=3 then result:='70'
    else if optc=4 then result:='59'
    else if optc=5 then result:='59'
    else if optc=0 then result:='0';
  end else if tplant='KB' then begin
    if optc=1 then result:='53'
    else if optc=2 then result:='60'
    else if optc=3 then result:='65'
    else if optc=4 then result:='50';
  end else if tplant='KBC' then begin
    if optc=1 then result:='53'
    else if optc=2 then result:='60'
    else if optc=3 then result:='65'
    else if optc=4 then result:='50';
  end;
  }
end;

function Tfrmnewcap_ftysimulation.sbcode(const sb1: string): string;
begin
  {
  if sb1='Chn' then result:='Chosen'
  else if sb1='Cfm' then result:='Cfmd'
  else if sb1='lck' then result:='Locked';
  }
  if sb1='' then result:=''
  else if sb1='Setup' then result:='SET'
  else if sb1='Chn' then begin
    if combobox1.text='CHINA (SL+FJ+GG/RX)' then begin
      if spinedit1.value>=2012 then
      result:='CHO+CHO+CHO'
      else result:='CHO+CHO';
    end else if combobox1.text='CHINA (SL+GG+RX)' then begin
      if (spinedit1.value>=2015) and (spinedit1.value<=2016) then
      result:='CHO+CHO+CHO+CHO'
      else result:='CHO+CHO+CHO';
    end else if combobox1.text='CHINA (SL+GG/RX)' then begin
      if spinedit1.value>=2015 then
      result:='CHO+CHO+CHO'
      else if spinedit1.value>=2012 then
      result:='CHO+CHO'
      else result:='CHO';
    end else if combobox1.text='GUANGXI (GG+RX)' then begin
      if spinedit1.value>=2015 then
      result:='CHO+CHO'
      else result:='CHO';
    end else if combobox1.text='GUANGDONG (SL+CS)' then begin
      if spinedit1.value>=2015 then
      result:='CHO+CHO'
      else result:='CHO';
    end else result:='CHO';
  end else if sb1='Cfm' then begin
    if combobox1.text='CHINA (SL+FJ+GG/RX)' then begin
      if spinedit1.value>=2012 then
      result:='CFM+CFM+CFM'
      else result:='CFM+CFM';
    end else if combobox1.text='CHINA (SL+GG+RX)' then begin
      if (spinedit1.value>=2015) and (spinedit1.value<=2016) then
      result:='CFM+CFM+CFM+CFM'
      else result:='CFM+CFM+CFM';
    end else if combobox1.text='CHINA (SL+GG/RX)' then begin
      if spinedit1.value>=2015 then
      result:='CFM+CFM+CFM'
      else if spinedit1.value>=2012 then
      result:='CFM+CFM'
      else result:='CFM';
    end else if combobox1.text='GUANGXI (GG+RX)' then begin
      if spinedit1.value>=2015 then
      result:='CFM+CFM'
      else result:='CFM';
    end else if combobox1.text='GUANGDONG (SL+CS)' then begin
      if spinedit1.value>=2015 then
      result:='CFM+CFM'
      else result:='CFM';
    end else result:='CFM';
  end else if sb1='lck' then result:='LCK';
end;

procedure Tfrmnewcap_ftysimulation.BitBtn8Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmnewcap_ftysimulation.Balancing21Click(Sender: TObject);
var
  seqsl,seqfj,seqkb,seqgg,seqcs:integer;
  i:integer;
  seq:integer;
  fty,xxx:string;
begin
  screen.Cursor:=crSQLWait;
  try
  lbluser.Visible:=false;
  if spinedit2.value>1 then begin

    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    for i:=7 to 7+spinedit2.value-2 do begin
      cxview1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end else begin
    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end;

  label11.Caption:='Balancing 2';
  if spinedit1.value>=2014 then begin
    if spinedit1.value=2014 then begin
      if combobox1.text='CHINA (SL+CS+GG+RX)' then combobox1.text:='CHINA (SL+GG/RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (spinedit1.value>=2015) and (spinedit1.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end;
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  if combobox1.text>'' then begin
    seqgg:=0; seqcs:=0;
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then begin
      if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)') then begin
        seqsl:=-888; seqfj:=-888; seqkb:=0;
      end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
        seqsl:=0; seqfj:=-888; seqkb:=-888;
      end else if combobox1.text='GUANGXI (GG+RX)' then begin
        seqsl:=-888; seqgg:=-888; seqcs:=0;
      end else if combobox1.text='GUANGDONG (SL+CS)' then begin
        seqsl:=-888; seqgg:=0; seqcs:=-888;
      end else begin
        seqsl:=-888; seqfj:=-888; seqkb:=-888;
      end;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftinteger,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            if (seqgg=-888) and (seqcs=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GX8(:x1,:x2,:x3,:x4,:x5,:x6)'
            else if (seqcs=-888) and (seqgg=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GD8(:x1,:x2,:x3,:x4,:x5,:x6)'
            else commandtext:='execute procedure sp_cap_balsum_new_new8(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
            params[1].asinteger:=seqsl;
            params[2].asinteger:=seqfj;
            params[3].asinteger:=seqkb;
            params[4].asinteger:=spinedit2.value;
            params[5].asinteger:=spinedit3.value;
            execute;
          end;
          with frmnewcap_ftysimulation.query1 do begin
            close;
            params.clear;
            commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=-888 and seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172) order by seq2,seq1,grp2';
            open;
          end;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-888;
        params[3].asstring:='';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-888;
        params[3].asinteger:=spinedit2.value;
        params[4].asinteger:=spinedit3.value;
        execute;
      end;
      //showmessage('RX1');
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_ftyelements where seq=-888 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
        open;
      end;
    end;
  end;
  cxview1.DataController.Groups.ChangeExpanding(2,true,true);
  //cxview1.ViewData.Expand(true);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Balancing31Click(Sender: TObject);
var
  seqsl,seqfj,seqkb,seqgg,seqcs:integer;
  i:integer;
  seq:integer;
  fty,xxx:string;
begin
  screen.Cursor:=crSQLWait;
  try
  lbluser.Visible:=false;
  if spinedit2.value>1 then begin

    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    for i:=7 to 7+spinedit2.value-2 do begin
      cxview1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end else begin
    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end;

  label11.Caption:='Balancing 3';
  if spinedit1.value>=2014 then begin
    if spinedit1.value=2014 then begin
      if combobox1.text='CHINA (SL+CS+GG+RX)' then combobox1.text:='CHINA (SL+GG/RX)';
      if combobox1.text='GUANGXI (GG+RX)' then combobox1.text:='GG';
      if combobox1.text='GUANGDONG (SL+CS)' then combobox1.text:='SL';
    end else begin
      if (spinedit1.value>=2015) and (spinedit1.value<=2016) then begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end else begin
        if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+GG+RX)';
      end;
    end;
  end else begin
    if combobox1.text='CHINA (SL+GG/RX)' then combobox1.text:='CHINA (SL+FJ+GG/RX)';
  end;

  if combobox1.text>'' then begin
    seqgg:=0; seqcs:=0;
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then begin
      if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)') then begin
        seqsl:=-333; seqfj:=-333; seqkb:=0;
      end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
        seqsl:=0; seqfj:=-333; seqkb:=-333;
      end else if combobox1.text='GUANGXI (GG+RX)' then begin
        seqsl:=-333; seqgg:=-333; seqcs:=0;
      end else if combobox1.text='GUANGDONG (SL+CS)' then begin
        seqsl:=-333; seqgg:=0; seqcs:=-333;
      end else begin
        seqsl:=-333; seqfj:=-333; seqkb:=-333;
      end;
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftinteger,'x5',ptinput);
            params.createparam(ftinteger,'x6',ptinput);
            if (seqgg=-333) and (seqcs=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GX8(:x1,:x2,:x3,:x4,:x5,:x6)'
            else if (seqcs=-333) and (seqgg=0) then
              commandtext:='execute procedure sp_cap_balsum_new_new_GD8(:x1,:x2,:x3,:x4,:x5,:x6)'
            else commandtext:='execute procedure sp_cap_balsum_new_new8(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asinteger:=frmnewcap_ftysimulation.spinedit1.value;
            params[1].asinteger:=seqsl;
            params[2].asinteger:=seqfj;
            params[3].asinteger:=seqkb;
            params[4].asinteger:=spinedit2.value;
            params[5].asinteger:=spinedit3.value;
            execute;
          end;
          with frmnewcap_ftysimulation.query1 do begin
            close;
            params.clear;
            commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq=-333 and seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172) order by seq2,seq1,grp2';
            open;
          end;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelements_new(:x1,:x2,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-333;
        params[3].asstring:='';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-333;
        params[3].asinteger:=spinedit2.value;
        params[4].asinteger:=spinedit3.value;
        execute;
      end;
      //showmessage('RX1');
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_cap_ftyelements where seq=-333 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68,65,162,170,171,172)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
        open;
      end;
    end;
  end;
  cxview1.DataController.Groups.ChangeExpanding(2,true,true);
  //cxview1.ViewData.Expand(true);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn10Click(Sender: TObject);
begin
  cxview1.ViewData.Expand(true);
end;

procedure Tfrmnewcap_ftysimulation.BitBtn11Click(Sender: TObject);
begin
  cxview1.ViewData.Collapse(true);
end;

procedure Tfrmnewcap_ftysimulation.BitBtn12Click(Sender: TObject);
begin
  if frmnewcap_style=nil then frmnewcap_style:=tfrmnewcap_style.Create(nil);
  frmnewcap_style.ComboBox1.Text:='SL';
  frmnewcap_style.SpinEdit1.Value:=yearof(date);
  frmnewcap_style.Show;
end;

procedure Tfrmnewcap_ftysimulation.Query1M1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m1').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m1').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m1').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m1').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m2').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m2').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m2').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m2').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M3GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m3').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m3').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m3').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m3').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M4GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m4').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m4').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m4').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m4').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M5GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m5').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m5').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m5').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m5').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M6GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m6').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m6').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m6').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m6').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M7GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m7').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m7').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m7').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m7').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M8GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m8').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m8').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m8').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m8').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M9GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m9').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m9').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m9').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m9').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M10GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m10').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m10').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m10').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m10').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M11GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m11').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m11').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m11').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m11').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.Query1M12GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not query1.fieldbyname('tplant').isnull then begin
  if query1.state=dsbrowse then begin
    displaytext:=true;
    if (query1.fieldbyname('seq1').value=95) then begin
      if query1.fieldbyname('m12').value>100 then
      text:=formatfloat('####/##/##',query1.fieldbyname('m12').value+20000000)
      else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m12').value);
    end else text:=formatfloat('#,0.00;;''''',query1.fieldbyname('m12').value);
  end;
  end;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn13Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_cap_savelastver(:x1,:x2,:x3,:x4)';
      if combobox1.text='OFF-SHORE (CG)' then
      params[0].asstring:='CG'
      else params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asdate:=date;
      params[3].asstring:=frmmain.ComboBox1.Text;
      execute;
    end;
    showmessage('Last version saved!')
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn14Click(Sender: TObject);
var
  seqsl,seqfj,seqkb:integer;
  i:integer;
  seq:integer;
  fty:string;
begin
  screen.Cursor:=crSQLWait;
  try
  lbluser.Visible:=false;
  if spinedit2.value>1 then begin
    {
    for i:=6 to 17 do begin
      dbgrideh1.Columns[i].Visible:=true;
    end;
    for i:=6 to 6+spinedit2.value-2 do begin
      dbgrideh1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=17-(12-spinedit3.value)+1 to 17 do begin
        dbgrideh1.columns[i].visible:=false;
      end;
    end;
    }
    //cxView1.Columns[5].Caption:='Yearly Total'+chr(13)+chr(20)+'(12 months)';
    //cxView1.Columns[6].Caption:='Periodic Total'+chr(13)+chr(20)+'('+inttostr(spinedit3.value-spinedit2.value+1)+' months)';
    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    for i:=7 to 7+spinedit2.value-2 do begin
      cxview1.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end else begin
    {
    for i:=6 to 17 do begin
      dbgrideh1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=17-(12-spinedit3.value)+1 to 17 do begin
        dbgrideh1.columns[i].visible:=false;
      end;
    end;
    }
    for i:=7 to 18 do begin
      cxview1.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=18-(12-spinedit3.value)+1 to 18 do begin
        cxview1.columns[i].visible:=false;
      end;
    end;
  end;

  if combobox1.text>'' then begin
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+FJ+GG/RX)')) then begin
      if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+FJ+GG/RX)') then begin
        seqsl:=999; seqfj:=999; seqkb:=0;
      end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
        seqsl:=0; seqfj:=999; seqkb:=999;
      end else begin
        seqsl:=999; seqfj:=999; seqkb:=999;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
        params[0].asstring:='SL+FJ';
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-1;
        params[3].asinteger:=spinedit2.value;
        params[4].asinteger:=spinedit3.value;
        execute;
      end;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.value;
        params[2].asinteger:=-1;
        params[3].asinteger:=spinedit2.value;
        params[4].asinteger:=spinedit3.value;
        execute;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
      commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and tplant=''SL+FJ'' and seq=-1 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68)) and yr=:x1'
      else if (combobox1.text='THAI (KBT+KBC)') then
      commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and tplant=''KBT+KBC'' and seq=-1 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68)) and yr=:x1'
      else if combobox1.text='THAI (KB)' then
      commandtext:='select * from tbl_cap_ftyelements where tplant=''KB'' and seq=-1 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68)) and yr=:x1'
      else if combobox1.text='OFF-SHORE (CG)' then
      commandtext:='select * from tbl_cap_ftyelements where tplant=''CG'' and seq=-1 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68)) and yr=:x1'
      else if combobox1.text<>'GROUP' then
      commandtext:='select * from tbl_cap_ftyelements where tplant='''+combobox1.text+''' and seq=-1 and (seq1 not in (3,19,10,20,25,36,37,80,23,64,67,68)) and yr=:x1';
      params[0].asinteger:=spinedit1.value;
      open;
      if fieldbyname('tplant').isnull then showmessage('There is not record for last version!');
    end;
    if not query1.fieldbyname('tplant').isnull then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select * from tbl_cap_lastversion where tplant='''+query1.fieldbyname('tplant').value+''' and yr=:x1 and seq=-1 order by tm desc';
        params[0].asinteger:=spinedit1.value;
        open;
        if not fieldbyname('usr').isnull then begin
          lbluser.Visible:=true;
          lbluser.Caption:='Saved by: '+fieldbyname('usr').value+'  at: '+formatdatetime('yy/MM/dd hh:nn:ss',fieldbyname('tm').value);
        end;
      end;
      label11.Caption:='Last Version';
      cxview1.DataController.Groups.ChangeExpanding(2,true,true);
    end else lbluser.visible:=false;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn15Click(Sender: TObject);
begin
  //if lbluser.Visible=false then begin
    if not query1.fieldbyname('tplant').isnull then begin
      if spinedit3.value-spinedit2.value<=8 then begin
        if frmnewcap_cprpt_option=nil then frmnewcap_cprpt_option:=tfrmnewcap_cprpt_option.create(nil);
        if lbluser.Visible=false then
        frmnewcap_cprpt_option.label1.caption:='CURRENT'
        else frmnewcap_cprpt_option.Label1.Caption:='LAST';
        frmnewcap_cprpt_option.label8.caption:='SIMULATION';
        frmnewcap_cprpt_option.show;
      end else showmessage('Report can not show data more than 9 months!');
    end;
  //end;
end;

procedure Tfrmnewcap_ftysimulation.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_ftysimulation.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmnewcap_ftysimulation.ppSummaryBand1BeforePrint(Sender: TObject);
var
  fty,seq:string;
begin
  seq:=qry_rpt1.fieldbyname('seq').asstring;
  bk001.Caption:=''; bk002.Caption:=''; bk003.Caption:=''; bk004.Caption:='';
  bk005.Caption:=''; bk006.Caption:=''; bk007.Caption:=''; bk008.Caption:='';
  bk009.Caption:='';
  if combobox1.text='BD' then fty:=combobox1.text else fty:='SL';
  if d01.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d01.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk001.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk001.font.Color:=clRed
          else bk001.font.Color:=clGreen;
        end else bk001.font.Color:=clBlack;
      end;
    end;
  end;
  if d02.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d02.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk002.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk002.font.Color:=clRed
          else bk002.font.Color:=clGreen;
        end else bk002.font.Color:=clBlack;
      end;
    end;
  end;
  if d03.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d03.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk003.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk003.font.Color:=clRed
          else bk003.font.Color:=clGreen;
        end else bk003.font.Color:=clBlack;
      end;
    end;
  end;
  if d04.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d04.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk004.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk004.font.Color:=clRed
          else bk004.font.Color:=clGreen;
        end else bk004.font.Color:=clBlack;
      end;
    end;
  end;
  if d05.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d05.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk005.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk005.font.Color:=clRed
          else bk005.font.Color:=clGreen;
        end else bk005.font.Color:=clBlack;
      end;
    end;
  end;
  if d06.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d06.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk006.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk006.font.Color:=clRed
          else bk006.font.Color:=clGreen;
        end else bk006.font.Color:=clBlack;
      end;
    end;
  end;
  if d07.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d07.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk007.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk007.font.Color:=clRed
          else bk007.font.Color:=clGreen;
        end else bk007.font.Color:=clBlack;
      end;
    end;
  end;
  if d08.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d08.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk008.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk008.font.Color:=clRed
          else bk008.font.Color:=clGreen;
        end else bk008.font.Color:=clBlack;
      end;
    end;
  end;
  if d09.DataField>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=fty;//'SL';
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=strtoint(copy(d09.DataField,2,2));
      open;
      if not fieldbyname('ttl').isnull then begin
        bk009.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk009.font.Color:=clRed
          else bk009.font.Color:=clGreen;
        end else bk009.font.Color:=clBlack;
      end;
    end;
  end;
  ar001.Caption:=''; ar002.Caption:=''; ar003.Caption:=''; ar004.Caption:='';
  ar005.Caption:=''; ar006.Caption:=''; ar007.Caption:=''; ar008.Caption:='';
  ar009.Caption:=''; ay001.Caption:=''; ap001.Caption:='';
  if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)') then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq='+seq+' and seq1=71';
      open;
    end;
    with query3 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq='+seq+' and seq1=85';
      open;
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements where seq='+seq+' and seq1=71 and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
      open;
    end;
    with query3 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_ftyelements where seq='+seq+' and seq1=85 and tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
      open;
    end;
  end;
  if query3.fieldbyname('ttl').value>0 then
  ay001.Caption:=formatfloat('#,0',query2.fieldbyname('ttl').value)+'('+formatfloat('#,0.00%',query2.fieldbyname('ttl').value*100.00/query3.fieldbyname('ttl').value)+')'
  else ay001.Caption:=formatfloat('#,0',query2.fieldbyname('ttl').value)+'(0.00%)';
  if query3.fieldbyname('ttl1').value>0 then
  ap001.Caption:=formatfloat('#,0',query2.fieldbyname('ttl1').value)+'('+formatfloat('#,0.00%',query2.fieldbyname('ttl1').value*100.00/query3.fieldbyname('ttl1').value)+')'
  else ap001.Caption:=formatfloat('#,0',query2.fieldbyname('ttl1').value)+'(0.00%)';
  if d01.DataField>'' then
    if query3.fieldbyname(d01.DataField).value>0 then
    ar001.Caption:=formatfloat('#,0',query2.fieldbyname(d01.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d01.DataField).value*100.00/query3.fieldbyname(d01.DataField).value)+')';
  if d02.DataField>'' then
    if query3.fieldbyname(d02.DataField).value>0 then
    ar002.Caption:=formatfloat('#,0',query2.fieldbyname(d02.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d02.DataField).value*100.00/query3.fieldbyname(d02.DataField).value)+')';
  if d03.DataField>'' then
    if query3.fieldbyname(d03.DataField).value>0 then
    ar003.Caption:=formatfloat('#,0',query2.fieldbyname(d03.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d03.DataField).value*100.00/query3.fieldbyname(d03.DataField).value)+')';
  if d04.DataField>'' then
    if query3.fieldbyname(d04.DataField).value>0 then
    ar004.Caption:=formatfloat('#,0',query2.fieldbyname(d04.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d04.DataField).value*100.00/query3.fieldbyname(d04.DataField).value)+')';
  if d05.DataField>'' then
    if query3.fieldbyname(d05.DataField).value>0 then
    ar005.Caption:=formatfloat('#,0',query2.fieldbyname(d05.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d05.DataField).value*100.00/query3.fieldbyname(d05.DataField).value)+')';
  if d06.DataField>'' then
    if query3.fieldbyname(d06.DataField).value>0 then
    ar006.Caption:=formatfloat('#,0',query2.fieldbyname(d06.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d06.DataField).value*100.00/query3.fieldbyname(d06.DataField).value)+')';
  if d07.DataField>'' then
    if query3.fieldbyname(d07.DataField).value>0 then
    ar007.Caption:=formatfloat('#,0',query2.fieldbyname(d07.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d07.DataField).value*100.00/query3.fieldbyname(d07.DataField).value)+')';
  if d08.DataField>'' then
    if query3.fieldbyname(d08.DataField).value>0 then
    ar008.Caption:=formatfloat('#,0',query2.fieldbyname(d08.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d08.DataField).value*100.00/query3.fieldbyname(d08.DataField).value)+')';
  if d09.DataField>'' then
    if query3.fieldbyname(d09.DataField).value>0 then
    ar009.Caption:=formatfloat('#,0',query2.fieldbyname(d09.DataField).value)+'('+formatfloat('#,0.00%',query2.fieldbyname(d09.DataField).value*100.00/query3.fieldbyname(d09.DataField).value)+')';
end;

procedure Tfrmnewcap_ftysimulation.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc6.value>0 then begin
    p0001.caption:='('+formatfloat('0.00%',ppdbcalc1.value*100.00/ppdbcalc6.value)+')';
    p0002.caption:='('+formatfloat('0.00%',ppdbcalc2.value*100.00/ppdbcalc6.value)+')';
    p0003.caption:='('+formatfloat('0.00%',ppdbcalc3.value*100.00/ppdbcalc6.value)+')';
    p0004.caption:='('+formatfloat('0.00%',ppdbcalc4.value*100.00/ppdbcalc6.value)+')';
    p0005.caption:='('+formatfloat('0.00%',ppdbcalc5.value*100.00/ppdbcalc6.value)+')';
  end else begin
    p0001.caption:='(0.00%)';
    p0002.caption:='(0.00%)';
    p0003.caption:='(0.00%)';
    p0004.caption:='(0.00%)';
    p0005.caption:='(0.00%)';
  end;
end;

procedure Tfrmnewcap_ftysimulation.generatereportheader;
var
  sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9,sb10,sb11,sb12,fty,cp_b:string;
  tb1,tb2,tb3,tb4,tb5,tb6,tb7,tb8,tb9,tb10,tb11,tb12:string;
  mb1,mb2,mb3,mb4,mb5,mb6,mb7,mb8,mb9,mb10,mb11,mb12:string;
  vb1,vb2,vb3,vb4,vb5,vb6,vb7,vb8,vb9,vb10,vb11,vb12:string;
  ts1,ts2,ts3,ts4,ts5,ts6,ts7,ts8,ts9,ts10,ts11,ts12:integer;
  tf1,tf2,tf3,tf4,tf5,tf6,tf7,tf8,tf9,tf10,tf11,tf12:integer;
  tg1,tg2,tg3,tg4,tg5,tg6,tg7,tg8,tg9,tg10,tg11,tg12:integer;
  seqgg,seqcs:integer;
begin
  m01.Caption:=''; m02.caption:=''; m03.Caption:=''; m04.caption:=''; m05.Caption:='';
  m06.caption:=''; m07.caption:=''; m08.caption:=''; m09.Caption:=''; m10.Caption:='';
  c01.Caption:=''; c02.caption:=''; c03.Caption:=''; c04.caption:=''; c05.Caption:='';
  c06.caption:=''; c07.caption:=''; c08.caption:=''; c09.Caption:=''; c10.Caption:='';
  t01.Caption:=''; t02.caption:=''; t03.Caption:=''; t04.caption:=''; t05.Caption:='';
  t06.caption:=''; t07.caption:=''; t08.caption:=''; t09.Caption:=''; t10.Caption:='';
  d01.DataField:=''; d02.DataField:=''; d03.DataField:=''; d04.DataField:=''; d05.DataField:='';
  d06.DataField:=''; d07.DataField:=''; d08.DataField:=''; d09.DataField:=''; d10.DataField:='';

  vb1:='(Ver: 0.00.00)'; vb2:='(Ver: 0.00.00)'; vb3:='(Ver: 0.00.00)'; vb4:='(Ver: 0.00.00)'; vb5:='(Ver: 0.00.00)'; vb6:='(Ver: 0.00.00)';
  vb7:='(Ver: 0.00.00)'; vb8:='(Ver: 0.00.00)'; vb9:='(Ver: 0.00.00)'; vb10:='(Ver: 0.00.00)'; vb11:='(Ver: 0.00.00)'; vb12:='(Ver: 0.00.00)';

  ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0; ts10:=0; ts11:=0; ts12:=0;
  tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0; tf10:=0; tf11:=0; tf12:=0;
  tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0; tg10:=0; tg11:=0; tg12:=0;

  if label11.caption='Current Status' then cp_b:='Balancing 1' else cp_b:=label11.caption;
  seqgg:=0; seqcs:=0;
  if (combobox1.text='CHINA') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)') then begin
    if (combobox1.text='GUANGXI (GG+RX)') then seqgg:=999;
    if (combobox1.text='GUANGDONG (SL+CS)') then seqcs:=999;
    //sb
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''SL'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sbcode1(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
      else sb1:='SET';//fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sbcode1(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
      else sb2:='SET';//fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sbcode1(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
      else sb3:='SET';//fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sbcode1(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
      else sb4:='SET';//fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sbcode1(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
      else sb5:='SET';//fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sbcode1(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
      else sb6:='SET';//fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sbcode1(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
      else sb7:='SET';//fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sbcode1(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
      else sb8:='SET';//fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sbcode1(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
      else sb9:='SET';//fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sbcode1(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
      else sb10:='SET';//fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sbcode1(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
      else sb11:='SET';//fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sbcode1(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
      else sb12:='SET';//fieldbyname('sb12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''CS'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
        else sb1:=sb1+'+'+'SET';//fieldbyname('sb1').value;
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+'+'+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+'+'+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+'+'+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+'+'+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+'+'+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+'+'+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+'+'+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+'+'+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+'+'+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+'+'+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+'+'+'SET';//fieldbyname('sb12').value;
      end;
    end;
    end;
    if seqcs=0 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''GG'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
      if seqgg=999 then begin
        if pos('-',fieldbyname('sb1').value)>0 then sb1:=sbcode1(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
        else sb1:='SET';//fieldbyname('sb1').value;
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sbcode1(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
        else sb2:='SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sbcode1(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
        else sb3:='SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sbcode1(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
        else sb4:='SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sbcode1(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
        else sb5:='SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sbcode1(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
        else sb6:='SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sbcode1(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
        else sb7:='SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sbcode1(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
        else sb8:='SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sbcode1(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
        else sb9:='SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sbcode1(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
        else sb10:='SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sbcode1(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
        else sb11:='SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sbcode1(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
        else sb12:='SET';//fieldbyname('sb12').value;
      end else begin
        if spinedit1.value>2012 then begin
          if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
          else sb1:=sb1+'+'+'SET';//fieldbyname('sb1').value;
        end else sb1:=sb1+'+NA';
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+'+'+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+'+'+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+'+'+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+'+'+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+'+'+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+'+'+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+'+'+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+'+'+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+'+'+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+'+'+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+'+'+'SET';//fieldbyname('sb12').value;
      end;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''RX'' and yr='+inttostr(spinedit1.value);
      open;
      if not fieldbyname('tplant').isnull then begin
        if spinedit1.value>2012 then begin
          if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
          else sb1:=sb1+'+'+'SET';//fieldbyname('sb1').value;
        end else sb1:=sb1+'+NA';
        if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
        else sb2:=sb2+'+'+'SET';//fieldbyname('sb2').value;
        if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
        else sb3:=sb3+'+'+'SET';//fieldbyname('sb3').value;
        if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
        else sb4:=sb4+'+'+'SET';//fieldbyname('sb4').value;
        if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
        else sb5:=sb5+'+'+'SET';//fieldbyname('sb5').value;
        if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
        else sb6:=sb6+'+'+'SET';//fieldbyname('sb6').value;
        if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
        else sb7:=sb7+'+'+'SET';//fieldbyname('sb7').value;
        if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
        else sb8:=sb8+'+'+'SET';//fieldbyname('sb8').value;
        if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
        else sb9:=sb9+'+'+'SET';//fieldbyname('sb9').value;
        if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
        else sb10:=sb10+'+'+'SET';//fieldbyname('sb10').value;
        if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
        else sb11:=sb11+'+'+'SET';//fieldbyname('sb11').value;
        if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
        else sb12:=sb12+'+'+'SET';//fieldbyname('sb12').value;
      end;
    end;
    end;
    //tb
    if seqgg=0 then begin
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''SL'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''SL'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then begin
          tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=2 then begin
          tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=3 then begin
          tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=4 then begin
          tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=5 then begin
          tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=6 then begin
          tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=7 then begin
          tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=8 then begin
          tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=9 then begin
          tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=10 then begin
          tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=11 then begin
          tb11:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts11:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=12 then begin
          tb12:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts12:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''CS'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''CS'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then begin
          tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=2 then begin
          tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=3 then begin
          tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=4 then begin
          tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=5 then begin
          tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=6 then begin
          tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=7 then begin
          tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=8 then begin
          tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=9 then begin
          tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=10 then begin
          tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=11 then begin
          tb11:=tb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf11:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=12 then begin
          tb12:=tb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tf12:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    end;
    if seqcs=0 then begin
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''GG'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''GG'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if seqgg=999 then begin
        if fieldbyname('m1').value=1 then begin
          tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=2 then begin
          tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=3 then begin
          tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=4 then begin
          tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=5 then begin
          tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=6 then begin
          tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=7 then begin
          tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=8 then begin
          tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=9 then begin
          tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=10 then begin
          tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=11 then begin
          tb11:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts11:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=12 then begin
          tb12:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts12:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end;
        end else begin
        if fieldbyname('m1').value=1 then begin
          tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=2 then begin
          tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=3 then begin
          tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=4 then begin
          tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=5 then begin
          tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=6 then begin
          tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=7 then begin
          tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=8 then begin
          tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=9 then begin
          tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=10 then begin
          tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=11 then begin
          tb11:=tb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg11:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=12 then begin
          tb12:=tb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg12:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant=''RX'' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant=''RX'' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then begin
          tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=2 then begin
          tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=3 then begin
          tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=4 then begin
          tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=5 then begin
          tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=6 then begin
          tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=7 then begin
          tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=8 then begin
          tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=9 then begin
          tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=10 then begin
          tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=11 then begin
          tb11:=tb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg11:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=12 then begin
          tb12:=tb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          tg12:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    end;
  end else if (combobox1.text='THAI') or (combobox1.text='THAI (KBT+KBC)') then begin
    //sb
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''KB'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sbcode(copy(fieldbyname('sb1').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb1').value,5,3)
      else sb1:=fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sbcode(copy(fieldbyname('sb2').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb2').value,5,3)
      else sb2:=fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sbcode(copy(fieldbyname('sb3').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb3').value,5,3)
      else sb3:=fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sbcode(copy(fieldbyname('sb4').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb4').value,5,3)
      else sb4:=fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sbcode(copy(fieldbyname('sb5').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb5').value,5,3)
      else sb5:=fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sbcode(copy(fieldbyname('sb6').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb6').value,5,3)
      else sb6:=fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sbcode(copy(fieldbyname('sb7').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb7').value,5,3)
      else sb7:=fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sbcode(copy(fieldbyname('sb8').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb8').value,5,3)
      else sb8:=fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sbcode(copy(fieldbyname('sb9').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb9').value,5,3)
      else sb9:=fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sbcode(copy(fieldbyname('sb10').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb10').value,5,3)
      else sb10:=fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sbcode(copy(fieldbyname('sb11').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb11').value,5,3)
      else sb11:=fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sbcode(copy(fieldbyname('sb12').value,1,3))+chr(13)+chr(20)+copy(fieldbyname('sb12').value,5,3)
      else sb12:=fieldbyname('sb12').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant=''KBC'' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sb1+'+'+copy(fieldbyname('sb1').value,5,3)
      else sb1:=sb1+'+'+fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sb2+'+'+copy(fieldbyname('sb2').value,5,3)
      else sb2:=sb2+'+'+fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sb3+'+'+copy(fieldbyname('sb3').value,5,3)
      else sb3:=sb3+'+'+fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sb4+'+'+copy(fieldbyname('sb4').value,5,3)
      else sb4:=sb4+'+'+fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sb5+'+'+copy(fieldbyname('sb5').value,5,3)
      else sb5:=sb5+'+'+fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sb6+'+'+copy(fieldbyname('sb6').value,5,3)
      else sb6:=sb6+'+'+fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sb7+'+'+copy(fieldbyname('sb7').value,5,3)
      else sb7:=sb7+'+'+fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sb8+'+'+copy(fieldbyname('sb8').value,5,3)
      else sb8:=sb8+'+'+fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sb9+'+'+copy(fieldbyname('sb9').value,5,3)
      else sb9:=sb9+'+'+fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sb10+'+'+copy(fieldbyname('sb10').value,5,3)
      else sb10:=sb10+'+'+fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sb11+'+'+copy(fieldbyname('sb11').value,5,3)
      else sb11:=sb11+'+'+fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sb12+'+'+copy(fieldbyname('sb12').value,5,3)
      else sb12:=sb12+'+'+fieldbyname('sb12').value;
    end;
    //tb
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''KB'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then tb11:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then tb12:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_optc where tplant=''KBC'' and yr='+inttostr(spinedit1.value);
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then tb1:=tb1+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=2 then tb2:=tb2+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=3 then tb3:=tb3+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=4 then tb4:=tb4+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=5 then tb5:=tb5+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=6 then tb6:=tb6+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=7 then tb7:=tb7+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=8 then tb8:=tb8+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=9 then tb9:=tb9+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=10 then tb10:=tb10+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=11 then tb11:=tb11+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value)
        else if fieldbyname('m1').value=12 then tb12:=tb12+'+'+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else begin
    //sb
    if combobox1.text='THAI (KB)' then fty:='KB'
    else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_sb where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
      open;
      if pos('-',fieldbyname('sb1').value)>0 then sb1:=sbcode1(copy(fieldbyname('sb1').value,1,3))+' '+copy(fieldbyname('sb1').value,5,3)
      else sb1:=fieldbyname('sb1').value;
      if pos('-',fieldbyname('sb2').value)>0 then sb2:=sbcode1(copy(fieldbyname('sb2').value,1,3))+' '+copy(fieldbyname('sb2').value,5,3)
      else sb2:=fieldbyname('sb2').value;
      if pos('-',fieldbyname('sb3').value)>0 then sb3:=sbcode1(copy(fieldbyname('sb3').value,1,3))+' '+copy(fieldbyname('sb3').value,5,3)
      else sb3:=fieldbyname('sb3').value;
      if pos('-',fieldbyname('sb4').value)>0 then sb4:=sbcode1(copy(fieldbyname('sb4').value,1,3))+' '+copy(fieldbyname('sb4').value,5,3)
      else sb4:=fieldbyname('sb4').value;
      if pos('-',fieldbyname('sb5').value)>0 then sb5:=sbcode1(copy(fieldbyname('sb5').value,1,3))+' '+copy(fieldbyname('sb5').value,5,3)
      else sb5:=fieldbyname('sb5').value;
      if pos('-',fieldbyname('sb6').value)>0 then sb6:=sbcode1(copy(fieldbyname('sb6').value,1,3))+' '+copy(fieldbyname('sb6').value,5,3)
      else sb6:=fieldbyname('sb6').value;
      if pos('-',fieldbyname('sb7').value)>0 then sb7:=sbcode1(copy(fieldbyname('sb7').value,1,3))+' '+copy(fieldbyname('sb7').value,5,3)
      else sb7:=fieldbyname('sb7').value;
      if pos('-',fieldbyname('sb8').value)>0 then sb8:=sbcode1(copy(fieldbyname('sb8').value,1,3))+' '+copy(fieldbyname('sb8').value,5,3)
      else sb8:=fieldbyname('sb8').value;
      if pos('-',fieldbyname('sb9').value)>0 then sb9:=sbcode1(copy(fieldbyname('sb9').value,1,3))+' '+copy(fieldbyname('sb9').value,5,3)
      else sb9:=fieldbyname('sb9').value;
      if pos('-',fieldbyname('sb10').value)>0 then sb10:=sbcode1(copy(fieldbyname('sb10').value,1,3))+' '+copy(fieldbyname('sb10').value,5,3)
      else sb10:=fieldbyname('sb10').value;
      if pos('-',fieldbyname('sb11').value)>0 then sb11:=sbcode1(copy(fieldbyname('sb11').value,1,3))+' '+copy(fieldbyname('sb11').value,5,3)
      else sb11:=fieldbyname('sb11').value;
      if pos('-',fieldbyname('sb12').value)>0 then sb12:=sbcode1(copy(fieldbyname('sb12').value,1,3))+' '+copy(fieldbyname('sb12').value,5,3)
      else sb12:=fieldbyname('sb12').value;
    end;
    //tb
    with query2 do begin
      close;
      params.clear;
      //commandtext:='select * from tbl_cap_optc where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
      commandtext:='select * from tbl_cap_optc_new where tplant='''+fty+''' and yr='+inttostr(spinedit1.value)+' ';//and sdesc='''+cp_b+'''';
      if cp_b='Balancing 1' then commandtext:=commandtext+'and current_bal=1'
      else if cp_b='Balancing 2' then commandtext:=commandtext+'and bal2=1'
      else if cp_b='Balancing 3' then commandtext:=commandtext+'and bal3=1';
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then begin
          tb1:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts1:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=2 then begin
          tb2:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts2:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=3 then begin
          tb3:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts3:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=4 then begin
          tb4:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts4:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=5 then begin
          tb5:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts5:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=6 then begin
          tb6:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts6:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=7 then begin
          tb7:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts7:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=8 then begin
          tb8:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts8:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=9 then begin
          tb9:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts9:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=10 then begin
          tb10:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts10:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=11 then begin
          tb11:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts11:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end else if fieldbyname('m1').value=12 then begin
          tb12:='T '+wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value);
          ts12:=strtoint(wrkhrs(fieldbyname('tplant').value,fieldbyname('opt_c').value));
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  //mb
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    //commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno where yr=:x1 group by m1 order by m1';
    commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and wkno>0 group by m1 order by m1';
    params[0].asinteger:=spinedit1.value;
    open;
    first;
    while not eof do begin
      if fieldbyname('m1').value=1 then begin
        //dbgrideh1.columns[5].Title.Caption
        mb1:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=2 then begin
        //dbgrideh1.columns[6].Title.Caption
        mb2:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=3 then begin
        //dbgrideh1.columns[7].Title.Caption
        mb3:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=4 then begin
        //dbgrideh1.columns[8].Title.Caption
        mb4:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=5 then begin
        //dbgrideh1.columns[9].Title.Caption
        mb5:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=6 then begin
        //dbgrideh1.columns[10].Title.Caption
        mb6:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=7 then begin
        //dbgrideh1.columns[11].Title.Caption
        mb7:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=8 then begin
        //dbgrideh1.columns[12].Title.Caption
        mb8:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=9 then begin
        //dbgrideh1.columns[13].Title.Caption
        mb9:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=10 then begin
        //dbgrideh1.columns[14].Title.Caption
        mb10:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=11 then begin
        //dbgrideh1.columns[15].Title.Caption
        mb11:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end else if fieldbyname('m1').value=12 then begin
        //dbgrideh1.columns[16].Title.Caption
        mb12:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+') ';
      end;
      application.ProcessMessages;
      next;
    end;
  end;

  yrttl001.Caption:='T '+formatfloat('#0',(ts1+ts2+ts3+ts4+ts5+ts6+ts7+ts8+ts9+ts10+ts11+ts12)/12);
  if (tf1+tf2+tf3+tf4+tf5+tf6+tf7+tf8+tf9+tf10+tf11+tf12)>0 then
  yrttl001.Caption:=yrttl001.Caption+'+'+formatfloat('#0',(tf1+tf2+tf3+tf4+tf5+tf6+tf7+tf8+tf9+tf10+tf11+tf12)/12);
  if (tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10+tg11+tg12)>0 then
  yrttl001.Caption:=yrttl001.Caption+'+'+formatfloat('#0',(tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10+tg11+tg12)/12);

  if spinedit2.value=2 then begin
    ts1:=0;
    tf1:=0;
    tg1:=0;
  end else if spinedit2.value=3 then begin
    ts1:=0; ts2:=0;
    tf1:=0; tf2:=0;
    tg1:=0; tg2:=0;
  end else if spinedit2.value=4 then begin
    ts1:=0; ts2:=0; ts3:=0;
    tf1:=0; tf2:=0; tf3:=0;
    tg1:=0; tg2:=0; tg3:=0;
  end else if spinedit2.value=5 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0;
  end else if spinedit2.value=6 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0;
  end else if spinedit2.value=7 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0;
  end else if spinedit2.value=8 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0;
  end else if spinedit2.value=9 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0;
  end else if spinedit2.value=10 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0;
  end else if spinedit2.value=11 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0; ts10:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0; tf10:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0; tg10:=0;
  end else if spinedit2.value=12 then begin
    ts1:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0; ts10:=0; ts11:=0;
    tf1:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0; tf10:=0; tf11:=0;
    tg1:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0; tg10:=0; tg11:=0;
  end;
  if spinedit3.value=11 then begin
    ts12:=0;
    tf12:=0;
    tg12:=0;
  end else if spinedit3.value=10 then begin
    ts12:=0; ts11:=0;
    tf12:=0; tf11:=0;
    tg12:=0; tg11:=0;
  end else if spinedit3.value=9 then begin
    ts12:=0; ts11:=0; ts10:=0;
    tf12:=0; tf11:=0; tf10:=0;
    tg12:=0; tg11:=0; tg10:=0;
  end else if spinedit3.value=8 then begin
    ts12:=0; ts11:=0; ts10:=0; ts9:=0;
    tf12:=0; tf11:=0; tf10:=0; tf9:=0;
    tg12:=0; tg11:=0; tg10:=0; tg9:=0;
  end else if spinedit3.value=7 then begin
    ts12:=0; ts11:=0; ts10:=0; ts9:=0; ts8:=0;
    tf12:=0; tf11:=0; tf10:=0; tf9:=0; tf8:=0;
    tg12:=0; tg11:=0; tg10:=0; tg9:=0; tg8:=0;
  end else if spinedit3.value=6 then begin
    ts12:=0; ts11:=0; ts10:=0; ts9:=0; ts7:=0; ts8:=0;
    tf12:=0; tf11:=0; tf10:=0; tf9:=0; tf7:=0; tf8:=0;
    tg12:=0; tg11:=0; tg10:=0; tg9:=0; tg7:=0; tg8:=0;
  end else if spinedit3.value=5 then begin
    ts12:=0; ts11:=0; ts10:=0; ts9:=0; ts6:=0; ts7:=0; ts8:=0;
    tf12:=0; tf11:=0; tf10:=0; tf9:=0; tf6:=0; tf7:=0; tf8:=0;
    tg12:=0; tg11:=0; tg10:=0; tg9:=0; tg6:=0; tg7:=0; tg8:=0;
  end else if spinedit3.value=4 then begin
    ts12:=0; ts11:=0; ts10:=0; ts9:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0;
    tf12:=0; tf11:=0; tf10:=0; tf9:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0;
    tg12:=0; tg11:=0; tg10:=0; tg9:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0;
  end else if spinedit3.value=3 then begin
    ts12:=0; ts11:=0; ts10:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0;
    tf12:=0; tf11:=0; tf10:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0;
    tg12:=0; tg11:=0; tg10:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0;
  end else if spinedit3.value=2 then begin
    ts12:=0; ts11:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0; ts10:=0;
    tf12:=0; tf11:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0; tf10:=0;
    tg12:=0; tg11:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0; tg10:=0;
  end else if spinedit3.value=1 then begin
    ts12:=0; ts2:=0; ts3:=0; ts4:=0; ts5:=0; ts6:=0; ts7:=0; ts8:=0; ts9:=0; ts10:=0; ts11:=0;
    tf12:=0; tf2:=0; tf3:=0; tf4:=0; tf5:=0; tf6:=0; tf7:=0; tf8:=0; tf9:=0; tf10:=0; tf11:=0;
    tg12:=0; tg2:=0; tg3:=0; tg4:=0; tg5:=0; tg6:=0; tg7:=0; tg8:=0; tg9:=0; tg10:=0; tg11:=0;
  end;

  pdttl001.Caption:='T '+formatfloat('#0',(ts1+ts2+ts3+ts4+ts5+ts6+ts7+ts8+ts9+ts10+ts11+ts12)/(spinedit3.value-spinedit2.value+1));
  if (tf1+tf2+tf3+tf4+tf5+tf6+tf7+tf8+tf9+tf10+tf11+tf12)>0 then
  pdttl001.Caption:=pdttl001.Caption+'+'+formatfloat('#0',(tf1+tf2+tf3+tf4+tf5+tf6+tf7+tf8+tf9+tf10+tf11+tf12)/(spinedit3.value-spinedit2.value+1));
  if (tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10+tg11+tg12)>0 then
  pdttl001.Caption:=pdttl001.Caption+'+'+formatfloat('#0',(tg1+tg2+tg3+tg4+tg5+tg6+tg7+tg8+tg9+tg10+tg11+tg12)/(spinedit3.value-spinedit2.value+1));

  v01.Caption:=vb1;
  if spinedit2.value=1 then begin
    m01.Caption:=mb1;
    c01.Caption:=sb1;
    t01.Caption:=tb1;
    d01.DataField:='m1';
    if spinedit3.Value=2 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
    end else if spinedit3.Value=3 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
    end else if spinedit3.Value=4 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
    end else if spinedit3.Value=5 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
      m05.Caption:=mb5;
      c05.Caption:=sb5;
      t05.Caption:=tb5;
      d05.DataField:='m5';
      v05.Caption:=vb5;
    end else if spinedit3.Value=6 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
      m05.Caption:=mb5;
      c05.Caption:=sb5;
      t05.Caption:=tb5;
      d05.DataField:='m5';
      v05.Caption:=vb5;
      m06.Caption:=mb6;
      c06.Caption:=sb6;
      t06.Caption:=tb6;
      d06.DataField:='m6';
      v06.Caption:=vb6;
    end else if spinedit3.Value=7 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
      m05.Caption:=mb5;
      c05.Caption:=sb5;
      t05.Caption:=tb5;
      d05.DataField:='m5';
      v05.Caption:=vb5;
      m06.Caption:=mb6;
      c06.Caption:=sb6;
      t06.Caption:=tb6;
      d06.DataField:='m6';
      v06.Caption:=vb6;
      m07.Caption:=mb7;
      c07.Caption:=sb7;
      t07.Caption:=tb7;
      d07.DataField:='m7';
      v07.Caption:=vb7;
    end else if spinedit3.Value=8 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
      m05.Caption:=mb5;
      c05.Caption:=sb5;
      t05.Caption:=tb5;
      d05.DataField:='m5';
      v05.Caption:=vb5;
      m06.Caption:=mb6;
      c06.Caption:=sb6;
      t06.Caption:=tb6;
      d06.DataField:='m6';
      v06.Caption:=vb6;
      m07.Caption:=mb7;
      c07.Caption:=sb7;
      t07.Caption:=tb7;
      d07.DataField:='m7';
      v07.Caption:=vb7;
      m08.Caption:=mb8;
      c08.Caption:=sb8;
      t08.Caption:=tb8;
      d08.DataField:='m8';
      v08.Caption:=vb8;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
      m05.Caption:=mb5;
      c05.Caption:=sb5;
      t05.Caption:=tb5;
      d05.DataField:='m5';
      v05.Caption:=vb5;
      m06.Caption:=mb6;
      c06.Caption:=sb6;
      t06.Caption:=tb6;
      d06.DataField:='m6';
      v06.Caption:=vb6;
      m07.Caption:=mb7;
      c07.Caption:=sb7;
      t07.Caption:=tb7;
      d07.DataField:='m7';
      v07.Caption:=vb7;
      m08.Caption:=mb8;
      c08.Caption:=sb8;
      t08.Caption:=tb8;
      d08.DataField:='m8';
      v08.Caption:=vb8;
      m09.Caption:=mb9;
      c09.Caption:=sb9;
      t09.Caption:=tb9;
      d09.DataField:='m9';
      v09.Caption:=vb9;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb2;
      c02.Caption:=sb2;
      t02.Caption:=tb2;
      d02.DataField:='m2';
      v02.Caption:=vb2;
      m03.Caption:=mb3;
      c03.Caption:=sb3;
      t03.Caption:=tb3;
      d03.DataField:='m3';
      v03.Caption:=vb3;
      m04.Caption:=mb4;
      c04.Caption:=sb4;
      t04.Caption:=tb4;
      d04.DataField:='m4';
      v04.Caption:=vb4;
      m05.Caption:=mb5;
      c05.Caption:=sb5;
      t05.Caption:=tb5;
      d05.DataField:='m5';
      v05.Caption:=vb5;
      m06.Caption:=mb6;
      c06.Caption:=sb6;
      t06.Caption:=tb6;
      d06.DataField:='m6';
      v06.Caption:=vb6;
      m07.Caption:=mb7;
      c07.Caption:=sb7;
      t07.Caption:=tb7;
      d07.DataField:='m7';
      v07.Caption:=vb7;
      m08.Caption:=mb8;
      c08.Caption:=sb8;
      t08.Caption:=tb8;
      d08.DataField:='m8';
      v08.Caption:=vb8;
      m09.Caption:=mb9;
      c09.Caption:=sb9;
      t09.Caption:=tb9;
      d09.DataField:='m9';
      v09.Caption:=vb9;
      m10.Caption:=mb10;
      c10.Caption:=sb10;
      t10.Caption:=tb10;
      d10.DataField:='m10';
      v10.Caption:=vb10;
    end;
  end else if spinedit2.Value=2 then begin
    m01.Caption:=mb2;
    c01.Caption:=sb2;
    t01.Caption:=tb2;
    d01.DataField:='m2';
    if spinedit3.Value=3 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
    end else if spinedit3.Value=4 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
    end else if spinedit3.Value=5 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
    end else if spinedit3.Value=6 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
      m05.Caption:=mb6;
      c05.Caption:=sb6;
      t05.Caption:=tb6;
      d05.DataField:='m6';
      v05.Caption:=vb5;
    end else if spinedit3.Value=7 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
      m05.Caption:=mb6;
      c05.Caption:=sb6;
      t05.Caption:=tb6;
      d05.DataField:='m6';
      v05.Caption:=vb5;
      m06.Caption:=mb7;
      c06.Caption:=sb7;
      t06.Caption:=tb7;
      d06.DataField:='m7';
      v06.Caption:=vb6;
    end else if spinedit3.Value=8 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
      m05.Caption:=mb6;
      c05.Caption:=sb6;
      t05.Caption:=tb6;
      d05.DataField:='m6';
      v05.Caption:=vb5;
      m06.Caption:=mb7;
      c06.Caption:=sb7;
      t06.Caption:=tb7;
      d06.DataField:='m7';
      v06.Caption:=vb6;
      m07.Caption:=mb8;
      c07.Caption:=sb8;
      t07.Caption:=tb8;
      d07.DataField:='m8';
      v07.Caption:=vb7;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
      m05.Caption:=mb6;
      c05.Caption:=sb6;
      t05.Caption:=tb6;
      d05.DataField:='m6';
      v05.Caption:=vb5;
      m06.Caption:=mb7;
      c06.Caption:=sb7;
      t06.Caption:=tb7;
      d06.DataField:='m7';
      v06.Caption:=vb6;
      m07.Caption:=mb8;
      c07.Caption:=sb8;
      t07.Caption:=tb8;
      d07.DataField:='m8';
      v07.Caption:=vb7;
      m08.Caption:=mb9;
      c08.Caption:=sb9;
      t08.Caption:=tb9;
      d08.DataField:='m9';
      v08.Caption:=vb8;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
      m05.Caption:=mb6;
      c05.Caption:=sb6;
      t05.Caption:=tb6;
      d05.DataField:='m6';
      v05.Caption:=vb5;
      m06.Caption:=mb7;
      c06.Caption:=sb7;
      t06.Caption:=tb7;
      d06.DataField:='m7';
      v06.Caption:=vb6;
      m07.Caption:=mb8;
      c07.Caption:=sb8;
      t07.Caption:=tb8;
      d07.DataField:='m8';
      v07.Caption:=vb7;
      m08.Caption:=mb9;
      c08.Caption:=sb9;
      t08.Caption:=tb9;
      d08.DataField:='m9';
      v08.Caption:=vb8;
      m09.Caption:=mb10;
      c09.Caption:=sb10;
      t09.Caption:=tb10;
      d09.DataField:='m10';
      v09.Caption:=vb9;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb3;
      c02.Caption:=sb3;
      t02.Caption:=tb3;
      d02.DataField:='m3';
      v02.Caption:=vb2;
      m03.Caption:=mb4;
      c03.Caption:=sb4;
      t03.Caption:=tb4;
      d03.DataField:='m4';
      v03.Caption:=vb3;
      m04.Caption:=mb5;
      c04.Caption:=sb5;
      t04.Caption:=tb5;
      d04.DataField:='m5';
      v04.Caption:=vb4;
      m05.Caption:=mb6;
      c05.Caption:=sb6;
      t05.Caption:=tb6;
      d05.DataField:='m6';
      v05.Caption:=vb5;
      m06.Caption:=mb7;
      c06.Caption:=sb7;
      t06.Caption:=tb7;
      d06.DataField:='m7';
      v06.Caption:=vb6;
      m07.Caption:=mb8;
      c07.Caption:=sb8;
      t07.Caption:=tb8;
      d07.DataField:='m8';
      v07.Caption:=vb7;
      m08.Caption:=mb9;
      c08.Caption:=sb9;
      t08.Caption:=tb9;
      d08.DataField:='m9';
      v08.Caption:=vb8;
      m09.Caption:=mb10;
      c09.Caption:=sb10;
      t09.Caption:=tb10;
      d09.DataField:='m10';
      v09.Caption:=vb9;
      m10.Caption:=mb11;
      c10.Caption:=sb11;
      t10.Caption:=tb11;
      d10.DataField:='m11';
      v10.Caption:=vb10;
    end;
  end else if spinedit2.value=3 then begin
    m01.Caption:=mb3;
    c01.Caption:=sb3;
    t01.Caption:=tb3;
    d01.DataField:='m3';
    if spinedit3.Value=4 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
    end else if spinedit3.Value=5 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
    end else if spinedit3.Value=6 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
    end else if spinedit3.Value=7 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
      m05.Caption:=mb7;
      c05.Caption:=sb7;
      t05.Caption:=tb7;
      d05.DataField:='m7';
      v05.Caption:=vb5;
    end else if spinedit3.Value=8 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
      m05.Caption:=mb7;
      c05.Caption:=sb7;
      t05.Caption:=tb7;
      d05.DataField:='m7';
      v05.Caption:=vb5;
      m06.Caption:=mb8;
      c06.Caption:=sb8;
      t06.Caption:=tb8;
      d06.DataField:='m8';
      v06.Caption:=vb6;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
      m05.Caption:=mb7;
      c05.Caption:=sb7;
      t05.Caption:=tb7;
      d05.DataField:='m7';
      v05.Caption:=vb5;
      m06.Caption:=mb8;
      c06.Caption:=sb8;
      t06.Caption:=tb8;
      d06.DataField:='m8';
      v06.Caption:=vb6;
      m07.Caption:=mb9;
      c07.Caption:=sb9;
      t07.Caption:=tb9;
      d07.DataField:='m9';
      v07.Caption:=vb7;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
      m05.Caption:=mb7;
      c05.Caption:=sb7;
      t05.Caption:=tb7;
      d05.DataField:='m7';
      v05.Caption:=vb5;
      m06.Caption:=mb8;
      c06.Caption:=sb8;
      t06.Caption:=tb8;
      d06.DataField:='m8';
      v06.Caption:=vb6;
      m07.Caption:=mb9;
      c07.Caption:=sb9;
      t07.Caption:=tb9;
      d07.DataField:='m9';
      v07.Caption:=vb7;
      m08.Caption:=mb10;
      c08.Caption:=sb10;
      t08.Caption:=tb10;
      d08.DataField:='m10';
      v08.Caption:=vb8;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
      m05.Caption:=mb7;
      c05.Caption:=sb7;
      t05.Caption:=tb7;
      d05.DataField:='m7';
      v05.Caption:=vb5;
      m06.Caption:=mb8;
      c06.Caption:=sb8;
      t06.Caption:=tb8;
      d06.DataField:='m8';
      v06.Caption:=vb6;
      m07.Caption:=mb9;
      c07.Caption:=sb9;
      t07.Caption:=tb9;
      d07.DataField:='m9';
      v07.Caption:=vb7;
      m08.Caption:=mb10;
      c08.Caption:=sb10;
      t08.Caption:=tb10;
      d08.DataField:='m10';
      v08.Caption:=vb8;
      m09.Caption:=mb11;
      c09.Caption:=sb11;
      t09.Caption:=tb11;
      d09.DataField:='m11';
      v09.Caption:=vb9;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb4;
      c02.Caption:=sb4;
      t02.Caption:=tb4;
      d02.DataField:='m4';
      v02.Caption:=vb2;
      m03.Caption:=mb5;
      c03.Caption:=sb5;
      t03.Caption:=tb5;
      d03.DataField:='m5';
      v03.Caption:=vb3;
      m04.Caption:=mb6;
      c04.Caption:=sb6;
      t04.Caption:=tb6;
      d04.DataField:='m6';
      v04.Caption:=vb4;
      m05.Caption:=mb7;
      c05.Caption:=sb7;
      t05.Caption:=tb7;
      d05.DataField:='m7';
      v05.Caption:=vb5;
      m06.Caption:=mb8;
      c06.Caption:=sb8;
      t06.Caption:=tb8;
      d06.DataField:='m8';
      v06.Caption:=vb6;
      m07.Caption:=mb9;
      c07.Caption:=sb9;
      t07.Caption:=tb9;
      d07.DataField:='m9';
      v07.Caption:=vb7;
      m08.Caption:=mb10;
      c08.Caption:=sb10;
      t08.Caption:=tb10;
      d08.DataField:='m10';
      v08.Caption:=vb8;
      m09.Caption:=mb11;
      c09.Caption:=sb11;
      t09.Caption:=tb11;
      d09.DataField:='m11';
      v09.Caption:=vb9;
      m10.Caption:=mb12;
      c10.Caption:=sb12;
      t10.Caption:=tb12;
      d10.DataField:='m12';
      v10.Caption:=vb10;
    end;
  end else if spinedit2.value=4 then begin
    m01.Caption:=mb4;
    c01.Caption:=sb4;
    t01.Caption:=tb4;
    d01.DataField:='m4';
    if spinedit3.Value=5 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
    end else if spinedit3.Value=6 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
    end else if spinedit3.Value=7 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
      m04.Caption:=mb7;
      c04.Caption:=sb7;
      t04.Caption:=tb7;
      d04.DataField:='m7';
      v04.Caption:=vb4;
    end else if spinedit3.Value=8 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
      m04.Caption:=mb7;
      c04.Caption:=sb7;
      t04.Caption:=tb7;
      d04.DataField:='m7';
      v04.Caption:=vb4;
      m05.Caption:=mb8;
      c05.Caption:=sb8;
      t05.Caption:=tb8;
      d05.DataField:='m8';
      v05.Caption:=vb5;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
      m04.Caption:=mb7;
      c04.Caption:=sb7;
      t04.Caption:=tb7;
      d04.DataField:='m7';
      v04.Caption:=vb4;
      m05.Caption:=mb8;
      c05.Caption:=sb8;
      t05.Caption:=tb8;
      d05.DataField:='m8';
      v05.Caption:=vb5;
      m06.Caption:=mb9;
      c06.Caption:=sb9;
      t06.Caption:=tb9;
      d06.DataField:='m9';
      v06.Caption:=vb6;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
      m04.Caption:=mb7;
      c04.Caption:=sb7;
      t04.Caption:=tb7;
      d04.DataField:='m7';
      v04.Caption:=vb4;
      m05.Caption:=mb8;
      c05.Caption:=sb8;
      t05.Caption:=tb8;
      d05.DataField:='m8';
      v05.Caption:=vb5;
      m06.Caption:=mb9;
      c06.Caption:=sb9;
      t06.Caption:=tb9;
      d06.DataField:='m9';
      v06.Caption:=vb6;
      m07.Caption:=mb10;
      c07.Caption:=sb10;
      t07.Caption:=tb10;
      d07.DataField:='m10';
      v07.Caption:=vb7;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
      m04.Caption:=mb7;
      c04.Caption:=sb7;
      t04.Caption:=tb7;
      d04.DataField:='m7';
      v04.Caption:=vb4;
      m05.Caption:=mb8;
      c05.Caption:=sb8;
      t05.Caption:=tb8;
      d05.DataField:='m8';
      v05.Caption:=vb5;
      m06.Caption:=mb9;
      c06.Caption:=sb9;
      t06.Caption:=tb9;
      d06.DataField:='m9';
      v06.Caption:=vb6;
      m07.Caption:=mb10;
      c07.Caption:=sb10;
      t07.Caption:=tb10;
      d07.DataField:='m10';
      v07.Caption:=vb7;
      m08.Caption:=mb11;
      c08.Caption:=sb11;
      t08.Caption:=tb11;
      d08.DataField:='m11';
      v08.Caption:=vb8;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb5;
      c02.Caption:=sb5;
      t02.Caption:=tb5;
      d02.DataField:='m5';
      v02.Caption:=vb2;
      m03.Caption:=mb6;
      c03.Caption:=sb6;
      t03.Caption:=tb6;
      d03.DataField:='m6';
      v03.Caption:=vb3;
      m04.Caption:=mb7;
      c04.Caption:=sb7;
      t04.Caption:=tb7;
      d04.DataField:='m7';
      v04.Caption:=vb4;
      m05.Caption:=mb8;
      c05.Caption:=sb8;
      t05.Caption:=tb8;
      d05.DataField:='m8';
      v05.Caption:=vb5;
      m06.Caption:=mb9;
      c06.Caption:=sb9;
      t06.Caption:=tb9;
      d06.DataField:='m9';
      v06.Caption:=vb6;
      m07.Caption:=mb10;
      c07.Caption:=sb10;
      t07.Caption:=tb10;
      d07.DataField:='m10';
      v07.Caption:=vb7;
      m08.Caption:=mb11;
      c08.Caption:=sb11;
      t08.Caption:=tb11;
      d08.DataField:='m11';
      v08.Caption:=vb8;
      m09.Caption:=mb12;
      c09.Caption:=sb12;
      t09.Caption:=tb12;
      d09.DataField:='m12';
      v09.Caption:=vb9;
    end;
  end else if spinedit2.value=5 then begin
    m01.Caption:=mb5;
    c01.Caption:=sb5;
    t01.Caption:=tb5;
    d01.DataField:='m5';
    if spinedit3.Value=6 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
    end else if spinedit3.Value=7 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
      m03.Caption:=mb7;
      c03.Caption:=sb7;
      t03.Caption:=tb7;
      d03.DataField:='m7';
      v03.Caption:=vb3;
    end else if spinedit3.Value=8 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
      m03.Caption:=mb7;
      c03.Caption:=sb7;
      t03.Caption:=tb7;
      d03.DataField:='m7';
      v03.Caption:=vb3;
      m04.Caption:=mb8;
      c04.Caption:=sb8;
      t04.Caption:=tb8;
      d04.DataField:='m8';
      v04.Caption:=vb4;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
      m03.Caption:=mb7;
      c03.Caption:=sb7;
      t03.Caption:=tb7;
      d03.DataField:='m7';
      v03.Caption:=vb3;
      m04.Caption:=mb8;
      c04.Caption:=sb8;
      t04.Caption:=tb8;
      d04.DataField:='m8';
      v04.Caption:=vb4;
      m05.Caption:=mb9;
      c05.Caption:=sb9;
      t05.Caption:=tb9;
      d05.DataField:='m9';
      v05.Caption:=vb5;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
      m03.Caption:=mb7;
      c03.Caption:=sb7;
      t03.Caption:=tb7;
      d03.DataField:='m7';
      v03.Caption:=vb3;
      m04.Caption:=mb8;
      c04.Caption:=sb8;
      t04.Caption:=tb8;
      d04.DataField:='m8';
      v04.Caption:=vb4;
      m05.Caption:=mb9;
      c05.Caption:=sb9;
      t05.Caption:=tb9;
      d05.DataField:='m9';
      v05.Caption:=vb5;
      m06.Caption:=mb10;
      c06.Caption:=sb10;
      t06.Caption:=tb10;
      d06.DataField:='m10';
      v06.Caption:=vb6;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
      m03.Caption:=mb7;
      c03.Caption:=sb7;
      t03.Caption:=tb7;
      d03.DataField:='m7';
      v03.Caption:=vb3;
      m04.Caption:=mb8;
      c04.Caption:=sb8;
      t04.Caption:=tb8;
      d04.DataField:='m8';
      v04.Caption:=vb4;
      m05.Caption:=mb9;
      c05.Caption:=sb9;
      t05.Caption:=tb9;
      d05.DataField:='m9';
      v05.Caption:=vb5;
      m06.Caption:=mb10;
      c06.Caption:=sb10;
      t06.Caption:=tb10;
      d06.DataField:='m10';
      v06.Caption:=vb6;
      m07.Caption:=mb11;
      c07.Caption:=sb11;
      t07.Caption:=tb11;
      d07.DataField:='m11';
      v07.Caption:=vb7;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb6;
      c02.Caption:=sb6;
      t02.Caption:=tb6;
      d02.DataField:='m6';
      v02.Caption:=vb2;
      m03.Caption:=mb7;
      c03.Caption:=sb7;
      t03.Caption:=tb7;
      d03.DataField:='m7';
      v03.Caption:=vb3;
      m04.Caption:=mb8;
      c04.Caption:=sb8;
      t04.Caption:=tb8;
      d04.DataField:='m8';
      v04.Caption:=vb4;
      m05.Caption:=mb9;
      c05.Caption:=sb9;
      t05.Caption:=tb9;
      d05.DataField:='m9';
      v05.Caption:=vb5;
      m06.Caption:=mb10;
      c06.Caption:=sb10;
      t06.Caption:=tb10;
      d06.DataField:='m10';
      v06.Caption:=vb6;
      m07.Caption:=mb11;
      c07.Caption:=sb11;
      t07.Caption:=tb11;
      d07.DataField:='m11';
      v07.Caption:=vb7;
      m08.Caption:=mb12;
      c08.Caption:=sb12;
      t08.Caption:=tb12;
      d08.DataField:='m12';
      v08.Caption:=vb8;
    end;
  end else if spinedit2.value=6 then begin
    m01.Caption:=mb6;
    c01.Caption:=sb6;
    t01.Caption:=tb6;
    d01.DataField:='m6';
    if spinedit3.Value=7 then begin
      m02.Caption:=mb7;
      c02.Caption:=sb7;
      t02.Caption:=tb7;
      d02.DataField:='m7';
      v02.Caption:=vb2;
    end else if spinedit3.Value=8 then begin
      m02.Caption:=mb7;
      c02.Caption:=sb7;
      t02.Caption:=tb7;
      d02.DataField:='m7';
      v02.Caption:=vb2;
      m03.Caption:=mb8;
      c03.Caption:=sb8;
      t03.Caption:=tb8;
      d03.DataField:='m8';
      v03.Caption:=vb3;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb7;
      c02.Caption:=sb7;
      t02.Caption:=tb7;
      d02.DataField:='m7';
      v02.Caption:=vb2;
      m03.Caption:=mb8;
      c03.Caption:=sb8;
      t03.Caption:=tb8;
      d03.DataField:='m8';
      v03.Caption:=vb3;
      m04.Caption:=mb9;
      c04.Caption:=sb9;
      t04.Caption:=tb9;
      d04.DataField:='m9';
      v04.Caption:=vb4;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb7;
      c02.Caption:=sb7;
      t02.Caption:=tb7;
      d02.DataField:='m7';
      v02.Caption:=vb2;
      m03.Caption:=mb8;
      c03.Caption:=sb8;
      t03.Caption:=tb8;
      d03.DataField:='m8';
      v03.Caption:=vb3;
      m04.Caption:=mb9;
      c04.Caption:=sb9;
      t04.Caption:=tb9;
      d04.DataField:='m9';
      v04.Caption:=vb4;
      m05.Caption:=mb10;
      c05.Caption:=sb10;
      t05.Caption:=tb10;
      d05.DataField:='m10';
      v05.Caption:=vb5;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb7;
      c02.Caption:=sb7;
      t02.Caption:=tb7;
      d02.DataField:='m7';
      v02.Caption:=vb2;
      m03.Caption:=mb8;
      c03.Caption:=sb8;
      t03.Caption:=tb8;
      d03.DataField:='m8';
      v03.Caption:=vb3;
      m04.Caption:=mb9;
      c04.Caption:=sb9;
      t04.Caption:=tb9;
      d04.DataField:='m9';
      v04.Caption:=vb4;
      m05.Caption:=mb10;
      c05.Caption:=sb10;
      t05.Caption:=tb10;
      d05.DataField:='m10';
      v05.Caption:=vb5;
      m06.Caption:=mb11;
      c06.Caption:=sb11;
      t06.Caption:=tb11;
      d06.DataField:='m11';
      v06.Caption:=vb6;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb7;
      c02.Caption:=sb7;
      t02.Caption:=tb7;
      d02.DataField:='m7';
      v02.Caption:=vb2;
      m03.Caption:=mb8;
      c03.Caption:=sb8;
      t03.Caption:=tb8;
      d03.DataField:='m8';
      v03.Caption:=vb3;
      m04.Caption:=mb9;
      c04.Caption:=sb9;
      t04.Caption:=tb9;
      d04.DataField:='m9';
      v04.Caption:=vb4;
      m05.Caption:=mb10;
      c05.Caption:=sb10;
      t05.Caption:=tb10;
      d05.DataField:='m10';
      v05.Caption:=vb5;
      m06.Caption:=mb11;
      c06.Caption:=sb11;
      t06.Caption:=tb11;
      d06.DataField:='m11';
      v06.Caption:=vb6;
      m07.Caption:=mb12;
      c07.Caption:=sb12;
      t07.Caption:=tb12;
      d07.DataField:='m12';
      v07.Caption:=vb7;
    end;
  end else if spinedit2.value=7 then begin
    m01.Caption:=mb7;
    c01.Caption:=sb7;
    t01.Caption:=tb7;
    d01.DataField:='m7';
    if spinedit3.Value=8 then begin
      m02.Caption:=mb8;
      c02.Caption:=sb8;
      t02.Caption:=tb8;
      d02.DataField:='m8';
      v02.Caption:=vb2;
    end else if spinedit3.Value=9 then begin
      m02.Caption:=mb8;
      c02.Caption:=sb8;
      t02.Caption:=tb8;
      d02.DataField:='m8';
      v02.Caption:=vb2;
      m03.Caption:=mb9;
      c03.Caption:=sb9;
      t03.Caption:=tb9;
      d03.DataField:='m9';
      v03.Caption:=vb3;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb8;
      c02.Caption:=sb8;
      t02.Caption:=tb8;
      d02.DataField:='m8';
      v02.Caption:=vb2;
      m03.Caption:=mb9;
      c03.Caption:=sb9;
      t03.Caption:=tb9;
      d03.DataField:='m9';
      v03.Caption:=vb3;
      m04.Caption:=mb10;
      c04.Caption:=sb10;
      t04.Caption:=tb10;
      d04.DataField:='m10';
      v04.Caption:=vb4;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb8;
      c02.Caption:=sb8;
      t02.Caption:=tb8;
      d02.DataField:='m8';
      v02.Caption:=vb2;
      m03.Caption:=mb9;
      c03.Caption:=sb9;
      t03.Caption:=tb9;
      d03.DataField:='m9';
      v03.Caption:=vb3;
      m04.Caption:=mb10;
      c04.Caption:=sb10;
      t04.Caption:=tb10;
      d04.DataField:='m10';
      v04.Caption:=vb4;
      m05.Caption:=mb11;
      c05.Caption:=sb11;
      t05.Caption:=tb11;
      d05.DataField:='m11';
      v05.Caption:=vb5;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb8;
      c02.Caption:=sb8;
      t02.Caption:=tb8;
      d02.DataField:='m8';
      v02.Caption:=vb2;
      m03.Caption:=mb9;
      c03.Caption:=sb9;
      t03.Caption:=tb9;
      d03.DataField:='m9';
      v03.Caption:=vb3;
      m04.Caption:=mb10;
      c04.Caption:=sb10;
      t04.Caption:=tb10;
      d04.DataField:='m10';
      v04.Caption:=vb4;
      m05.Caption:=mb11;
      c05.Caption:=sb11;
      t05.Caption:=tb11;
      d05.DataField:='m11';
      v05.Caption:=vb5;
      m06.Caption:=mb12;
      c06.Caption:=sb12;
      t06.Caption:=tb12;
      d06.DataField:='m12';
      v06.Caption:=vb6;
    end;
  end else if spinedit2.value=8 then begin
    m01.Caption:=mb8;
    c01.Caption:=sb8;
    t01.Caption:=tb8;
    d01.DataField:='m8';
    if spinedit3.Value=9 then begin
      m02.Caption:=mb9;
      c02.Caption:=sb9;
      t02.Caption:=tb9;
      d02.DataField:='m9';
      v02.Caption:=vb2;
    end else if spinedit3.Value=10 then begin
      m02.Caption:=mb9;
      c02.Caption:=sb9;
      t02.Caption:=tb9;
      d02.DataField:='m9';
      v02.Caption:=vb2;
      m03.Caption:=mb10;
      c03.Caption:=sb10;
      t03.Caption:=tb10;
      d03.DataField:='m10';
      v03.Caption:=vb3;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb9;
      c02.Caption:=sb9;
      t02.Caption:=tb9;
      d02.DataField:='m9';
      v02.Caption:=vb2;
      m03.Caption:=mb10;
      c03.Caption:=sb10;
      t03.Caption:=tb10;
      d03.DataField:='m10';
      v03.Caption:=vb3;
      m04.Caption:=mb11;
      c04.Caption:=sb11;
      t04.Caption:=tb11;
      d04.DataField:='m11';
      v04.Caption:=vb4;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb9;
      c02.Caption:=sb9;
      t02.Caption:=tb9;
      d02.DataField:='m9';
      v02.Caption:=vb2;
      m03.Caption:=mb10;
      c03.Caption:=sb10;
      t03.Caption:=tb10;
      d03.DataField:='m10';
      v03.Caption:=vb3;
      m04.Caption:=mb11;
      c04.Caption:=sb11;
      t04.Caption:=tb11;
      d04.DataField:='m11';
      v04.Caption:=vb4;
      m05.Caption:=mb12;
      c05.Caption:=sb12;
      t05.Caption:=tb12;
      d05.DataField:='m12';
      v05.Caption:=vb5;
    end;
  end else if spinedit2.value=9 then begin
    m01.Caption:=mb9;
    c01.Caption:=sb9;
    t01.Caption:=tb9;
    d01.DataField:='m9';
    if spinedit3.Value=10 then begin
      m02.Caption:=mb10;
      c02.Caption:=sb10;
      t02.Caption:=tb10;
      d02.DataField:='m10';
      v02.Caption:=vb2;
    end else if spinedit3.Value=11 then begin
      m02.Caption:=mb10;
      c02.Caption:=sb10;
      t02.Caption:=tb10;
      d02.DataField:='m10';
      v02.Caption:=vb2;
      m03.Caption:=mb11;
      c03.Caption:=sb11;
      t03.Caption:=tb11;
      d03.DataField:='m11';
      v03.Caption:=vb3;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb10;
      c02.Caption:=sb10;
      t02.Caption:=tb10;
      d02.DataField:='m10';
      v02.Caption:=vb2;
      m03.Caption:=mb11;
      c03.Caption:=sb11;
      t03.Caption:=tb11;
      d03.DataField:='m11';
      v03.Caption:=vb3;
      m04.Caption:=mb12;
      c04.Caption:=sb12;
      t04.Caption:=tb12;
      d04.DataField:='m12';
      v04.Caption:=vb4;
    end;
  end else if spinedit2.value=10 then begin
    m01.Caption:=mb10;
    c01.Caption:=sb10;
    t01.Caption:=tb10;
    d01.DataField:='m10';
    if spinedit3.Value=11 then begin
      m02.Caption:=mb11;
      c02.Caption:=sb11;
      t02.Caption:=tb11;
      d02.DataField:='m11';
      v02.Caption:=vb2;
    end else if spinedit3.Value=12 then begin
      m02.Caption:=mb11;
      c02.Caption:=sb11;
      t02.Caption:=tb11;
      d02.DataField:='m11';
      v02.Caption:=vb2;
      m03.Caption:=mb12;
      c03.Caption:=sb12;
      t03.Caption:=tb12;
      d03.DataField:='m12';
      v03.Caption:=vb3;
    end;
  end else if spinedit2.value=11 then begin
    m01.Caption:=mb11;
    c01.Caption:=sb11;
    t01.Caption:=tb11;
    d01.DataField:='m11';
    if spinedit3.Value=12 then begin
      m02.Caption:=mb12;
      c02.Caption:=sb12;
      t02.Caption:=tb12;
      d02.DataField:='m12';
      v02.Caption:=vb2;
    end;
  end else if spinedit2.value=12 then begin
    m01.Caption:=mb12;
    c01.Caption:=sb12;
    t01.Caption:=tb12;
    d01.DataField:='m12';
  end;
end;

function Tfrmnewcap_ftysimulation.matchto(const f1: Double): integer;
var
  fs1,fs2,fs3,fs4:double;
  fs:integer;
begin
  fs:=0;
  fs1:=abs(f1-64.0);
  fs2:=abs(f1-67.0);
  fs3:=abs(f1-70.0);
  if fs1<fs2 then begin
    fs:=64;
    fs4:=fs1;
  end else begin
    fs:=67;
    fs4:=fs2;
  end;
  if fs4>fs3 then result:=70
  else result:=fs;
end;

function Tfrmnewcap_ftysimulation.matchto1(const f1: Double): string;
var
  fs1,fs2,fs3:double;
begin
  fs1:=abs(f1-64.0);
  fs2:=abs(f1-67.0);
  fs3:=abs(f1-70.0);
  result:=formatfloat('0.00',fs1)+' '+formatfloat('0.00',fs2)+' '+formatfloat('0.00',fs3);
end;

procedure Tfrmnewcap_ftysimulation.ppDetailBand1BeforePrint(
  Sender: TObject);
var
  set1,set3,set4,set6,set7,set8:set of 1..200;
  set2,set5,setd1,setd2,setd3,setd:set of 30..200;
  seqi:integer;
  seq:string;
begin
  seq:=qry_rpt1.fieldbyname('seq').asstring;
  shp01.Brush.Color:=clWhite;
  set1:=[4,7,9,17,18,19,24,26,27,28,29,30,31,60,61,65,100,101,102,103,104,105,106];
  set2:=[75,34,35];
  set3:=[10,20,25,36,37];
  set4:=[84,85];
  set5:=[32,33,70,71,107,108];
  set6:=[95];
  set7:=[88,89,94,66,90,95,69,91];
  set8:=[150];
  setd1:=[76,77];
  setd2:=[78,79];
  setd3:=[82,83];
  setd:=[76,77,78,79,82,83];
  seqi:=qry_rpt1.fieldbyname('seq1').value;
  if (seqi in set1) then
  shp01.Brush.Color:=$00CDFCFB
  else if (seqi in set2) then
  shp01.Brush.Color:=$00EFDBF2
  else if (seqi in set4) then
  shp01.brush.color:=$00E2F1DC
  else if (seqi in set5) then
  shp01.brush.color:=$00F5FCF1;
  if (title001.Caption='-  Data change vs last version  ') or (title001.Caption='-  CP vs Current LWPM  ') then begin
    if seqi in set7 then ppdetailband1.Visible:=false
    else ppdetailband1.Visible:=true;
  end else begin
    //{
    ppdbtext6.Font.Style:=[];
    ppdbtext5.Font.style:=[];
    d01.Font.style:=[];
    d02.Font.style:=[];
    d03.Font.style:=[];
    d04.Font.style:=[];
    d05.Font.style:=[];
    d06.Font.style:=[];
    d07.Font.style:=[];
    d08.Font.style:=[];
    d09.Font.style:=[];
    d01.font.color:=clBlack;
    d02.font.color:=clBlack;
    d03.font.color:=clBlack;
    d04.font.color:=clBlack;
    d05.font.color:=clBlack;
    d06.font.color:=clBlack;
    d07.font.color:=clBlack;
    d08.font.color:=clBlack;
    d09.font.color:=clBlack;
    ppdbtext6.font.color:=clBlack;
    ppdbtext5.font.color:=clBlack;
    if (seqi in setd) then begin
      with query2 do begin
        close;
        params.Clear;
        if (pos('CHINA',combobox1.Text)>0) or (pos('GROUP',combobox1.Text)>0) then
        commandtext:='select m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,ttl,ttl1 from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.Value)+' and seq='+seq+' and seq1=87'
        else commandtext:='select m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,ttl,ttl1 from tbl_cap_ftyelements where tplant='''+qry_rpt1.fieldbyname('tplant').Value+''' and yr='+inttostr(spinedit1.Value)+' and seq='+seq+' and seq1=87';
        open;
        //showmessage(matchto1(query2.fieldbyname('ttl').value));
        if matchto(query2.fieldbyname('ttl').value)=64 then begin
          if (seqi in setd1) then ppdbtext6.font.style:=[fsItalic,fsUnderLine];
        end else if matchto(query2.fieldbyname('ttl').value)=67 then begin
          if (seqi in setd2) then ppdbtext6.font.style:=[fsItalic,fsUnderLine];
        end else if matchto(query2.fieldbyname('ttl').value)=70 then begin
          if (seqi in setd3) then ppdbtext6.font.style:=[fsItalic,fsUnderLine];
        end;
        if matchto(query2.fieldbyname('ttl1').value)=64 then begin
          if (seqi in setd1) then ppdbtext5.font.style:=[fsItalic,fsUnderLine];
        end else if matchto(query2.fieldbyname('ttl1').value)=67 then begin
          if (seqi in setd2) then ppdbtext5.font.style:=[fsItalic,fsUnderLine];
        end else if matchto(query2.fieldbyname('ttl1').value)=70 then begin
          if (seqi in setd3) then ppdbtext5.font.style:=[fsItalic,fsUnderLine];
        end;
        if d01.datafield>'' then begin
          if matchto(query2.FieldByName(d01.DataField).value)=64 then begin
            if (seqi in setd1) then d01.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d01.DataField).value)=67 then begin
            if (seqi in setd2) then d01.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d01.DataField).value)=70 then begin
            if (seqi in setd3) then d01.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d02.datafield>'' then begin
          if matchto(query2.FieldByName(d02.DataField).value)=64 then begin
            if (seqi in setd1) then d02.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d02.DataField).value)=67 then begin
            if (seqi in setd2) then d02.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d02.DataField).value)=70 then begin
            if (seqi in setd3) then d02.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d03.datafield>'' then begin
          if matchto(query2.FieldByName(d03.DataField).value)=64 then begin
            if (seqi in setd1) then d03.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d03.DataField).value)=67 then begin
            if (seqi in setd2) then d03.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d03.DataField).value)=70 then begin
            if (seqi in setd3) then d03.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d04.datafield>'' then begin
          if matchto(query2.FieldByName(d04.DataField).value)=64 then begin
            if (seqi in setd1) then d04.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d04.DataField).value)=67 then begin
            if (seqi in setd2) then d04.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d04.DataField).value)=70 then begin
            if (seqi in setd3) then d04.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d05.datafield>'' then begin
          if matchto(query2.FieldByName(d05.DataField).value)=64 then begin
            if (seqi in setd1) then d05.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d05.DataField).value)=67 then begin
            if (seqi in setd2) then d05.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d05.DataField).value)=70 then begin
            if (seqi in setd3) then d05.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d06.datafield>'' then begin
          if matchto(query2.FieldByName(d06.DataField).value)=64 then begin
            if (seqi in setd1) then d06.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d06.DataField).value)=67 then begin
            if (seqi in setd2) then d06.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d06.DataField).value)=70 then begin
            if (seqi in setd3) then d06.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d07.datafield>'' then begin
          if matchto(query2.FieldByName(d07.DataField).value)=64 then begin
            if (seqi in setd1) then d07.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d07.DataField).value)=67 then begin
            if (seqi in setd2) then d07.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d07.DataField).value)=70 then begin
            if (seqi in setd3) then d07.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d08.datafield>'' then begin
          if matchto(query2.FieldByName(d08.DataField).value)=64 then begin
            if (seqi in setd1) then d08.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d08.DataField).value)=67 then begin
            if (seqi in setd2) then d08.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d08.DataField).value)=70 then begin
            if (seqi in setd3) then d08.font.style:=[fsItalic,fsUnderLine];
          end;
        end;
        if d09.datafield>'' then begin
          if matchto(query2.FieldByName(d09.DataField).value)=64 then begin
            if (seqi in setd1) then d09.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d09.DataField).value)=67 then begin
            if (seqi in setd2) then d09.font.style:=[fsItalic,fsUnderLine];
          end else if matchto(query2.FieldByName(d09.DataField).value)=70 then begin
            if (seqi in setd3) then d09.font.style:=[fsItalic,fsUnderLine];
          end;
        end;

      end;
    end else if (seqi in set8) then begin
      if ppdbtext6.FieldValue>0 then begin
        if pos('-',ppdbtext6.caption)>0 then ppdbtext6.font.color:=clGreen
        else ppdbtext6.font.color:=clRed;
      end;
      if ppdbtext5.FieldValue>0 then begin
        if pos('-',ppdbtext5.caption)>0 then ppdbtext5.font.color:=clGreen
        else ppdbtext5.font.color:=clRed;
      end;
      if d01.FieldValue>0 then begin
        if pos('-',d01.caption)>0 then d01.font.color:=clGreen
        else d01.font.color:=clRed;
      end;
      if d02.FieldValue>0 then begin
        if pos('-',d02.caption)>0 then d02.font.color:=clGreen
        else d02.font.color:=clRed;
      end;
      if d03.FieldValue>0 then begin
        if pos('-',d03.caption)>0 then d03.font.color:=clGreen
        else d03.font.color:=clRed;
      end;
      if d04.FieldValue>0 then begin
        if pos('-',d04.caption)>0 then d04.font.color:=clGreen
        else d04.font.color:=clRed;
      end;
      if d05.FieldValue>0 then begin
        if pos('-',d05.caption)>0 then d05.font.color:=clGreen
        else d05.font.color:=clRed;
      end;
      if d06.FieldValue>0 then begin
        if pos('-',d06.caption)>0 then d06.font.color:=clGreen
        else d06.font.color:=clRed;
      end;
      if d07.FieldValue>0 then begin
        if pos('-',d07.caption)>0 then d07.font.color:=clGreen
        else d07.font.color:=clRed;
      end;
      if d08.FieldValue>0 then begin
        if pos('-',d08.caption)>0 then d08.font.color:=clGreen
        else d08.font.color:=clRed;
      end;
      if d09.FieldValue>0 then begin
        if pos('-',d09.caption)>0 then d09.font.color:=clGreen
        else d09.font.color:=clRed;
      end;
    end;
    //}
  end;
end;

procedure Tfrmnewcap_ftysimulation.ppGroupHeaderBand1BeforePrint(
  Sender: TObject);
begin
  sg01.visible:=false;
  if pos('Key figure',title001.caption)>0 then begin
    if pos('Group C',qry_rpt1.fieldbyname('grp').Value)>0 then
    sg01.visible:=true;
  end;
end;

procedure Tfrmnewcap_ftysimulation.ppGroupHeaderBand2BeforePrint(
  Sender: TObject);
begin
  ppDBText2.Font.Style:=[fsUnderLine];
  if qry_rpt1.fieldbyname('grp1').Value>'' then ppGroupHeaderBand2.visible:=true
  else ppGroupHeaderBand2.visible:=false;
end;

procedure Tfrmnewcap_ftysimulation.ppGroupHeaderBand3BeforePrint(
  Sender: TObject);
begin
  if qry_rpt1.fieldbyname('grp2').Value>'' then ppGroupHeaderBand3.visible:=true
  else ppGroupHeaderBand3.visible:=false;
end;

procedure Tfrmnewcap_ftysimulation.print_balancingrpt(const xh: string);
var
  fty:string;
  seq:string;
begin
  seq:=query1.fieldbyname('seq').asstring;
      if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)') or (combobox1.text='GUANGXI (GG+RX)') or (combobox1.text='GUANGDONG (SL+CS)')) then begin
        with query2 do begin
          close;
          params.clear;
          if xh='7' then commandtext:='update tbl_cap_ftyelements_slfj set pg=2 where yr='+inttostr(spinedit1.value)+' and seq='+seq+' and seq1 in (4,8,9,80,7,88,89,90,115,118,120,125)'
          else commandtext:='update tbl_cap_ftyelements_slfj set pg=0 where yr='+inttostr(spinedit1.value)+' and seq='+seq+' and seq1 in (4,8,9,80,7,88,89,90,115,118,120,125)';
          execute;
        end;

        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements_slfj where yr='+inttostr(spinedit1.value)+' and seq='+seq+' and seq1 not in (3,19,10,20,25,36,37,23,64,67,68,65)';
          if xh='1' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'')'
          else if xh='2' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group B'')'
          else if xh='3' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'',''Group B'')'
          else if xh='4' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group C'',''Group D'')'
          else if xh='6' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'',''Group B'',''Group C'')'
          else if xh='5' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group B'',''Group C'',''Group D'')'
          else if xh='7' then commandtext:=commandtext+' and seq1 in (4,8,9,80,7,18,100,21,22,23,160,161,162,163,84,85,99,179,180,181,87,88,89,90,115,118,120,125,150,151,190,191,230)';  //76,77,78,79,82,83,
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
      end else begin
        with query2 do begin
          close;
          params.clear;
          if xh='7' then commandtext:='update tbl_cap_ftyelements set pg=2 where seq='+seq+' and seq1 in (4,8,9,80,7,88,89,90,115,118,120,125)'
          else commandtext:='update tbl_cap_ftyelements set pg=0 where seq='+seq+' and seq1 in (4,8,9,80,7,88,89,90,115,118,120,125)';
          execute;
        end;

        if combobox1.text='THAI (KB)' then fty:='KB'
        else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements where seq='+seq+' and (seq1 not in (3,19,10,20,25,36,37,23,64,67,68,65)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
          if xh='1' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'')'
          else if xh='2' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group B'')'
          else if xh='3' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'',''Group B'')'
          else if xh='4' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group C'',''Group D'')'
          else if xh='6' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group A'',''Group B'',''Group C'')'
          else if xh='5' then commandtext:=commandtext+' and substr(grp,1,7) in (''Group B'',''Group C'',''Group D'')'
          else if xh='7' then commandtext:=commandtext+' and seq1 in (4,80,7,18,21,22,23,24,84,85,99,75,34,35,87,100,89,90,115,118,120,125,150,151,230)'; //76,77,78,79,82,83,
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
      end;
      if (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KB)') or (combobox1.text='OFF-SHORE (CG)') or (combobox1.text='CHINA (SL+GG/RX)') then
      ppLabel2.Caption:='Country origin: '
      else if combobox1.text='GUANGXI (GG+RX)' then  ppLabel2.Caption:='Guangxi origin: '
      else if combobox1.text='GUANGDONG (SL+CS)' then  ppLabel2.Caption:='Guangdong origin: '
      else ppLabel2.Caption:='Factory origin: ';
      fty001.Caption:=combobox1.text;
      yr001.Caption:=inttostr(spinedit1.value);
      mn001.Caption:='from '+inttostr(spinedit2.value)+' to '+inttostr(spinedit3.value);
      generatereportheader;
      //title001.Caption:='-  Current Status  ';
      if xh='7' then title001.Caption:='(Key figure)     -  '+label11.caption+'  '
      else title001.Caption:='(Full figure)     -  '+label11.caption+'  ';
      head001.Caption:='('+inttostr(spinedit3.value-spinedit2.value+1)+' months)';
      if xh='7' then begin
        //ppsummaryband1.visible:=true;
        pplabel11.visible:=true;
        pplabel12.visible:=true;
        pplabel14.visible:=true;
        ay001.visible:=true; ap001.visible:=true; ar001.visible:=true; ar002.visible:=true;
        ar003.visible:=true; ar004.visible:=true; ar005.visible:=true; ar006.visible:=true;
        ar007.visible:=true; ar008.visible:=true; ar009.visible:=true;
      end else begin
        pplabel11.visible:=false;
        pplabel12.visible:=false;
        pplabel14.visible:=false;
        ay001.visible:=false; ap001.visible:=false; ar001.visible:=false; ar002.visible:=false;
        ar003.visible:=false; ar004.visible:=false; ar005.visible:=false; ar006.visible:=false;
        ar007.visible:=false; ar008.visible:=false; ar009.visible:=false;
        //ppsummaryband1.visible:=false;
      end;
      ppreport1.Print;
end;

procedure Tfrmnewcap_ftysimulation.BitBtn16Click(Sender: TObject);
var
  fty,cmp:string;
begin
  if spinedit3.value-spinedit2.value<=8 then begin
  //data changing: -
  cmp:='0';
  if lbluser.Visible=false then begin
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)')) then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        if combobox1.text='GROUP' then
        commandtext:='select distinct tplant from tbl_cap_ftyelements_slfj where seq=-1 and tplant=''SL+FJ+KB'' and yr=:x1'
        else if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
        commandtext:='select distinct tplant from tbl_cap_ftyelements_slfj where seq=-1 and tplant=''SL+FJ'' and yr=:x1';
        params[0].asinteger:=spinedit1.value;
        open;
        if not fieldbyname('tplant').isnull then cmp:='1';
      end;
      if cmp='1' then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
          if combobox1.text='GROUP' then
          params[0].asstring:='SL+FJ+KB'
          else if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
          params[0].asstring:='SL+FJ';
          params[1].asinteger:=spinedit1.value;
          params[2].asinteger:=-1;
          params[3].asinteger:=spinedit2.value;
          params[4].asinteger:=spinedit3.value;
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_cap_gendatachange_ttl(:x1,:x2)';
          if combobox1.text='GROUP' then
          params[0].asstring:='SL+FJ+KB'
          else if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
          params[0].asstring:='SL+FJ';
          params[1].asinteger:=spinedit1.value;
          execute;
        end;
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements_slfj where seq=-999 and seq1 not in (3,19,10,20,25,36,37,23,64,67,68,72,39,73,41,74,43,87)';
          //commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'')';
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
      end else showmessage('There is not last version!');
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select distinct tplant from tbl_cap_ftyelements where seq=-1 and tplant='''+fty+''' and yr=:x1';
        params[0].asinteger:=spinedit1.value;
        open;
        if not fieldbyname('tplant').isnull then cmp:='1';
      end;
      if cmp='1' then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='execute procedure sp_cap_updftyelementttl_period_new(:x1,:x2,:x5,:x3,:x4)';
          params[0].asstring:=fty;
          params[1].asinteger:=spinedit1.value;
          params[2].asinteger:=-1;
          params[3].asinteger:=spinedit2.value;
          params[4].asinteger:=spinedit3.value;
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='execute procedure sp_cap_gendatachange(:x1,:x2)';
          params[0].asstring:=fty;
          params[1].asinteger:=spinedit1.value;
          execute;
        end;
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements where seq=-999 and (seq1 not in (3,19,10,20,25,36,37,23,64,67,68)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
          //commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'')';
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
      end else showmessage('There is not last version!');
    end;
    if not qry_rpt1.FieldByName('tplant').isnull then begin
      if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KB)') or (combobox1.text='OFF-SHORE (CG)') then
      ppLabel2.Caption:='Country origin: '
      else ppLabel2.Caption:='Factory origin: ';
      fty001.Caption:=combobox1.text;
      yr001.Caption:=inttostr(spinedit1.value);
      mn001.Caption:='from '+inttostr(spinedit2.value)+' to '+inttostr(spinedit3.value);
      generatereportheader;
      title001.Caption:='-  Data change vs last version  ';
      head001.Caption:='('+inttostr(spinedit3.value-spinedit2.value+1)+' months)';
      ppreport1.Print;
    end;
  end;
  end else showmessage('Report can not show data more than 9 months!');
end;

procedure Tfrmnewcap_ftysimulation.print_balancingrpt1(const xh: string);
var
  fty:string;
begin
      if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+FJ)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='CHINA (SL+GG/RX)')) then begin
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements_slfj where seq=-1 and seq1 not in (3,19,10,20,25,36,37,23,64,67,68)';
          if xh='1' then commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'')'
          else if xh='2' then commandtext:=commandtext+' and grp in (''Group B (Data from SP)'')'
          else if xh='3' then commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'')'
          else if xh='4' then commandtext:=commandtext+' and grp in (''Group C (FC Utilization vs SP)'',''Group D (Time Dependent)'')'
          else if xh='6' then commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'')'
          else if xh='5' then commandtext:=commandtext+' and grp in (''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'',''Group D (Time Dependent)'')';
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
      end else begin
        if combobox1.text='THAI (KB)' then fty:='KB'
        else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements where seq=-1 and (seq1 not in (3,19,10,20,25,36,37,23,64,67,68)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
          if xh='1' then commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'')'
          else if xh='2' then commandtext:=commandtext+' and grp in (''Group B (Data from SP)'')'
          else if xh='3' then commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'')'
          else if xh='4' then commandtext:=commandtext+' and grp in (''Group C (FC Utilization vs SP)'',''Group D (Time Dependent)'')'
          else if xh='6' then commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'')'
          else if xh='5' then commandtext:=commandtext+' and grp in (''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'',''Group D (Time Dependent)'')';
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
      end;
      fty001.Caption:=combobox2.text;//combobox1.text;
      yr001.Caption:=inttostr(spinedit1.value);
      mn001.Caption:='from '+inttostr(spinedit2.value)+' to '+inttostr(spinedit3.value);
      generatereportheader;
      title001.Caption:='-  Last Version  ';
      head001.Caption:='('+inttostr(spinedit3.value-spinedit2.value+1)+' months)';
      ppreport1.Print;
end;

procedure Tfrmnewcap_ftysimulation.print_balancingrpt_supplement;
var
  dt1,dt2:tdate;
  fty:string;
  yr,mn:word;
begin
  if pos('SL',combobox1.text)>0 then fty:='SL';
  dt1:=encodedate(spinedit1.value,spinedit2.value,1);
  if spinedit3.value<12 then begin
    yr:=spinedit1.value;
    mn:=spinedit3.value+1;
  end else begin
    yr:=spinedit1.value+1;
    mn:=1;
  end;
  dt2:=encodedate(yr,mn,1)-1;
  with qry_at3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select cust,wk1,wk2,wk3,wk4,wk5,wk1+wk2+wk3+wk4+wk5 as wk from sp_cap_splitat3_customer(:x1,:x2,:x3)';
    params[0].asstring:=fty;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    open;
    if not fieldbyname('cust').isnull then begin
      fty0001.caption:=combobox1.text;
      yr0001.caption:=inttostr(spinedit1.value);
      mth0001.caption:='from '+inttostr(spinedit2.value)+'  to '+inttostr(spinedit3.value);
      ppReport2.print;
    end;
  end;
end;

function Tfrmnewcap_ftysimulation.sbcode1(const sb1: string): string;
begin
  if sb1='Setup' then result:='SET'
  else if sb1='Chn' then begin
    result:='CHO';
  end else if sb1='Cfm' then result:='CFM'
  else if sb1='lck' then result:='LCK';
end;

procedure Tfrmnewcap_ftysimulation.BitBtn17Click(Sender: TObject);
var
  fty:string;
begin
  screen.cursor:=crSQLWait;
  try
  if (spinedit3.value-spinedit2.value<=8) or (spinedit3.value>=monthof(date)) then begin
  //compare with actual data: -
  if lbluser.Visible=false then begin
    if ((combobox1.text='CHINA') or (combobox1.text='GROUP') or (combobox1.text='THAI') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KBT+KBC)') or (combobox1.text='CHINA (SL+FJ+GG/RX)')) then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_cap_getactual_fc_china(:x1,:x2)';
          params[0].asstring:='SL+FJ';
          params[1].asinteger:=spinedit1.value;
          execute;
        end;

        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='execute procedure sp_cap_updftyelementttl_period_new_actual(:x1,:x2,:x3,:x4)';
          if combobox1.text='GROUP' then
          params[0].asstring:='SL+FJ+KB'
          else if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
          params[0].asstring:='SL+FJ';
          params[1].asinteger:=spinedit1.value;
          params[2].asinteger:=spinedit2.value;
          params[3].asinteger:=spinedit3.value;
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_cap_gendatachange_ttl_actual(:x1,:x2)';
          if combobox1.text='GROUP' then
          params[0].asstring:='SL+FJ+KB'
          else if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
          params[0].asstring:='SL+FJ';
          params[1].asinteger:=spinedit1.value;
          execute;
        end;
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements_slfj where seq=-998 and seq1 not in (3,19,10,20,25,36,37,72,39,73,41,74,43,87)';
          //commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'')';
          if combobox1.text='GROUP' then
          commandtext:=commandtext+' and tplant=''SL+FJ+KB'''
          else if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') then
          commandtext:=commandtext+' and tplant=''SL+FJ''';
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
    end else begin
      if combobox1.text='THAI (KB)' then fty:='KB'
      else if combobox1.text='OFF-SHORE (CG)' then fty:='CG' else fty:=combobox1.text;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_cap_getactual_fc(:x1,:x2)';
          params[0].asstring:=fty;
          params[1].asinteger:=spinedit1.value;
          execute;
        end;

        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='execute procedure sp_cap_updftyelementttl_period_new_actual(:x1,:x2,:x3,:x4)';
          params[0].asstring:=fty;
          params[1].asinteger:=spinedit1.value;
          params[2].asinteger:=spinedit2.value;
          params[3].asinteger:=spinedit3.value;
          execute;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='execute procedure sp_cap_gendatachange_actual(:x1,:x2)';
          params[0].asstring:=fty;
          params[1].asinteger:=spinedit1.value;
          execute;
        end;
        with qry_rpt1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_ftyelements where seq=-998 and (seq1 not in (3,19,10,20,25,36,37)) and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);//+' and sdesc='''+combobox2.text+'''';
          //commandtext:=commandtext+' and grp in (''Group A (Factory Capacity)'',''Group B (Data from SP)'',''Group C (FC Utilization vs SP)'')';
          commandtext:=commandtext+' order by seq2,seq1,grp2';
          open;
        end;
    end;
    if not qry_rpt1.FieldByName('tplant').isnull then begin
      if (combobox1.text='CHINA (SL+FJ+GG/RX)') or (combobox1.text='CHINA (SL+GG+RX)') or (combobox1.text='THAI (KB)') or (combobox1.text='OFF-SHORE (CG)') then
      ppLabel2.Caption:='Country origin: '
      else ppLabel2.Caption:='Factory origin: ';
      fty001.Caption:=combobox1.text;
      yr001.Caption:=inttostr(spinedit1.value);
      mn001.Caption:='from '+inttostr(spinedit2.value)+' to '+inttostr(spinedit3.value);
      generatereportheader;
      title001.Caption:='-  CP vs Current LWPM  ';
      head001.Caption:='('+inttostr(spinedit3.value-spinedit2.value+1)+' months)';
      ppreport1.Print;
    end;
  end;
  end else showmessage('Report can not show data more than 9 months and can not show the data beyond of current month!');
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
