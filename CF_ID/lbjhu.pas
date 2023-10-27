unit lbjhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGridEh, ExtCtrls, Buttons, Db, DBTables,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppBands, ppPrnabl, ppCtrls, myChkBox, ppStrtch, ppRegion, ppViewr,
  ComCtrls, ppSubRpt, ppVar, Math, Menus, DBClient, ppMemo, Variants,
  GridsEh, siComp, ADODB, ppParameter;

type
  Tfrmlbjh = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ppBDEPipeline1: TppBDEPipeline;
    dslbjhm: TDataSource;
    dslbjhd: TDataSource;
    ppBDEPipeline2: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel36: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel42: TppLabel;
    ppDBText20: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    myDBCheckBox9: TmyDBCheckBox;
    myDBCheckBox10: TmyDBCheckBox;
    myDBCheckBox11: TmyDBCheckBox;
    myDBCheckBox12: TmyDBCheckBox;
    myDBCheckBox13: TmyDBCheckBox;
    myDBCheckBox14: TmyDBCheckBox;
    myDBCheckBox15: TmyDBCheckBox;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    Region1: TppRegion;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel69: TppLabel;
    wlmc: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppRegion3: TppRegion;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel31: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText12: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape6: TppShape;
    ppShape9: TppShape;
    DataSource2: TDataSource;
    ppBDEPipeline4: TppBDEPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel39: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel44: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel49: TppLabel;
    ppDBText34: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppRegion4: TppRegion;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppShape19: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppFooterBand3: TppFooterBand;
    ppDBText44: TppDBText;
    mjbh: TppLabel;
    zmjjs: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText15: TppDBText;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppDBText24: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppRegion5: TppRegion;
    ppDBText25: TppDBText;
    region2: TppRegion;
    ppLabel78: TppLabel;
    ppDBText28: TppDBText;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText29: TppDBText;
    yslbzs: TppLabel;
    scmjcd: TppLabel;
    scmjfd: TppLabel;
    ybl: TppLabel;
    scmjzc: TppLabel;
    ppDBText9: TppDBText;
    dzmjps: TppLabel;
    jhcgzsj: TppLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    scmjyl: TppLabel;
    fcgch: TppLabel;
    fczdh: TppLabel;
    fckh: TppLabel;
    fcsh: TppLabel;
    fccm: TppLabel;
    fcmjjs: TppLabel;
    fcmjs: TppLabel;
    fcgch1: TppLabel;
    fczdh1: TppLabel;
    fckh1: TppLabel;
    fcsh1: TppLabel;
    fccm1: TppLabel;
    fcmjjs1: TppLabel;
    fcmjs1: TppLabel;
    fcgch2: TppLabel;
    fczdh2: TppLabel;
    fckh2: TppLabel;
    fcsh2: TppLabel;
    fccm2: TppLabel;
    fcmjjs2: TppLabel;
    fcmjs2: TppLabel;
    fcgch3: TppLabel;
    fczdh3: TppLabel;
    fckh3: TppLabel;
    fcsh3: TppLabel;
    fccm3: TppLabel;
    fcmjjs3: TppLabel;
    fcmjs3: TppLabel;
    fcgch4: TppLabel;
    fczdh4: TppLabel;
    fckh4: TppLabel;
    fcsh4: TppLabel;
    fccm4: TppLabel;
    fcmjjs4: TppLabel;
    fcmjs4: TppLabel;
    ppLabel62: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    dslbjh1: TDataSource;
    dslbjh2: TDataSource;
    dslbjh3: TDataSource;
    dsfcwl2: TDataSource;
    lbjhm: TClientDataSet;
    lbjhd: TClientDataSet;
    lbwld: TClientDataSet;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton15: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ComboBox1: TComboBox;
    DBEdit17: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    tc: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton16: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit19: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGridEh1: TDBGridEh;
    DBCheckBox1: TDBCheckBox;
    SpeedButton17: TSpeedButton;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    BitBtn4: TBitBtn;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel26: TppLabel;
    ppLine9: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine11: TppLine;
    ppLine18: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    ppMemo1: TppMemo;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    siLang1: TsiLang;
    AQuery1: TADOQuery;
    AQuery2: TADOQuery;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton20: TSpeedButton;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label30: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    lbjh1: TADODataSet;
    lbjh2: TADODataSet;
    Panel7: TPanel;
    DBGridEh3: TDBGridEh;
    lbjh3: TADODataSet;
    Panel8: TPanel;
    DBGridEh4: TDBGridEh;
    fcwl2: TADODataSet;
    Query1: TADOQuery;
    Query2: TADOQuery;
    Query3: TADOQuery;
    Query4: TADOQuery;
    Query5: TADOQuery;
    Query6: TADOQuery;
    Query7: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    SpeedButton21: TSpeedButton;
    procedure tcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure dslbjhmDataChange(Sender: TObject; Field: TField);
    procedure dslbjh1DataChange(Sender: TObject; Field: TField);
    procedure lbjh1AfterPost(DataSet: TDataSet);
    procedure lbjh2AfterPost(DataSet: TDataSet);
    procedure lbjh3AfterPost(DataSet: TDataSet);
    procedure fcwl2AfterPost(DataSet: TDataSet);
    procedure SpeedButton10Click(Sender: TObject);
    procedure lbjh2MjsChange(Sender: TField);
    procedure lbjh3NewRecord(DataSet: TDataSet);
    procedure lbjh3MjcdChange(Sender: TField);
    procedure lbjh3MjypzbcChange(Sender: TField);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure lbjh1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton17Click(Sender: TObject);
    procedure lbjh2NewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure lbjh3BeforePost(DataSet: TDataSet);
    procedure lbjh3MjhChange(Sender: TField);
    procedure lbjh3MjhSetText(Sender: TField; const Text: String);
    procedure lbjh3lb_outChange(Sender: TField);
    procedure SpeedButton20Click(Sender: TObject);
    procedure lbjh2AfterOpen(DataSet: TDataSet);
    procedure lbjh1zshdChange(Sender: TField);
    procedure lbjh3AfterOpen(DataSet: TDataSet);
    procedure SpeedButton21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlbjh: Tfrmlbjh;
  GetCutFromCsv: function (sMarkerNo: String; out arRst: array of Variant): Boolean; stdcall;

implementation
uses mainu, zdzlu, lbjgu, mmyzu, zdsu, xgtm, sclfxu, lhjlu,
  xgcmu, xgkhu, lbyldyu, xglbzsu, lbyl1dyu, jhmjfxformu, XGWL1U, frmcsvu, pu2cu_elementsformu;
{$R *.DFM}

procedure Tfrmlbjh.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlbjh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (lbjh1.state=dsedit) or (lbjh2.state=dsedit) then
    speedbutton10click(self);
  if (lbjh3.state=dsedit) or (lbjh3.state=dsinsert) then
    speedbutton7click(self);
  if frmlbyldy<>nil then frmlbyldy:=nil;
  if frmlbyl1dy<>nil then frmlbyl1dy:=nil;
  if frmcsv<>nil then frmcsv:=nil;
  action:=cafree;
  frmlbjh:=nil;
end;

procedure Tfrmlbjh.FormShow(Sender: TObject);
begin
  //showmessage('1');
  silang1.LoadAllFromFile('cutplan.sil',false);
  silang1.ActiveLanguage:=frmmain.SpinEdit1.value;
  //frmlbjh.PageControl1.activepage:=frmlbjh.TabSheet1;
  combobox1.items.clear;
  //showmessage('2');
  with query1 do begin
    close;
    //params.clear;
    //commandtext:='select distinct prjno from cut_fcjy1 order by prjno';// where not prjno is null';
    SQL.text:='select distinct a.prjno from cut_fcjy1 a,cut_fcjy3 b where a.prjno=b.prjno and a.wl=b.wl and b.wc=0 and a.fcrq>=''2023-03-01''';
    open;
    first;
    while not eof do begin
      if not fieldbyname('prjno').isnull then
      combobox1.items.add(fieldbyname('prjno').value);
      next;
    end;
  end;
  //showmessage('02');
  label10.visible:=false;
  dbedit10.visible:=false;
  dbedit3.readonly:=true;
  if uppercase(frmmain.Label1.caption)='PAUL' then begin
    speedbutton2.Enabled:=true;
    speedbutton3.Enabled:=true;
    speedbutton4.Enabled:=true;
    speedbutton6.Enabled:=true;
    speedbutton7.Enabled:=true;
    speedbutton10.Enabled:=true;
    speedbutton13.Enabled:=true;
    speedbutton14.Enabled:=true;
    speedbutton15.Enabled:=true;
    speedbutton17.enabled:=true;
    speedbutton18.enabled:=true;
    speedbutton19.enabled:=true;
    bitbtn1.enabled:=true;
    bitbtn2.enabled:=true;
    bitbtn3.enabled:=true;
    dbedit4.ReadOnly:=false;
    dbedit19.ReadOnly:=false;
    dbedit20.ReadOnly:=false;
    dbgrideh1.ReadOnly:=false;
    dbgrideh2.ReadOnly:=false;
  end
  else begin
    speedbutton2.Enabled:=false;
    speedbutton3.Enabled:=false;
    speedbutton4.Enabled:=false;
    speedbutton6.Enabled:=false;
    speedbutton7.Enabled:=false;
    speedbutton10.Enabled:=false;
    speedbutton13.Enabled:=false;
    speedbutton14.Enabled:=false;
    speedbutton15.Enabled:=false;
    speedbutton17.enabled:=false;
    speedbutton18.enabled:=false;
    speedbutton19.enabled:=false;
    bitbtn1.enabled:=false;
    bitbtn2.enabled:=false;
    bitbtn3.enabled:=false;
    dbedit4.ReadOnly:=true;
    dbedit19.ReadOnly:=true;
    dbedit20.ReadOnly:=true;
    dbgrideh1.ReadOnly:=true;
    dbgrideh2.ReadOnly:=true;
  end;
end;

procedure Tfrmlbjh.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if lbjh1.state=dsedit then speedbutton10click(self);
  if lbjh1.recordcount>0 then
  begin
    lbjhm.close;
    lbjhm.params.clear;
    //lbjhm.params.createparam(ftstring,'prjno',ptinput);
    lbjhm.commandtext:='select a.*,a.lbzs*a.mjzcd as scmjyl,b.* from cut_lbjh1 a,cut_fcwl2 b '
                      +'where b.prjno=a.prjno and b.wl=a.wl and b.xh=a.xh '
                      +'and a.prjno='''+dbedit1.text+''' order by a.prjno,a.wl,a.xh';
    //lbjhm.params[0].asstring:=dbedit1.text;
    lbjhm.open;
    if lbjhm.recordcount>0 then
    begin
      ppreport1.print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton2Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmlbjg=nil then frmlbjg:=tfrmlbjg.create(self);
  frmlbjg.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmlbjh.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmlbjh.SpeedButton3Click(Sender: TObject);
begin
  lbjh3.append;
  dbgrideh1.selectedindex:=0;
end;

procedure Tfrmlbjh.SpeedButton4Click(Sender: TObject);
begin
  if lbjh3.recordcount>0 then
  begin
   if application.messagebox('要刪除此嘜架嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
   begin
     with query1 do begin
       close;
       //params.clear;
       //params.createparam(ftstring,'prjno',ptinput);
       //params.createparam(ftstring,'wl',ptinput);
       //params.createparam(ftinteger,'xh',ptinput);
       //params.createparam(ftstring,'mjh',ptinput);
       sql.text:='delete from cut_lbjh3 where prjno=:prjno and wl=:wl and xh=:xh and mjh=:mjh';
       parameters[0].value:=lbjh3.fieldbyname('prjno').value;
       parameters[1].value:=lbjh3.fieldbyname('wl').value;
       parameters[2].value:=lbjh3.fieldbyname('xh').value;
       parameters[3].value:=lbjh3.fieldbyname('mjh').value;
       execsql;
     end;
     lbjh3.delete;
   end;
  end;
end;

procedure Tfrmlbjh.ComboBox1Change(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if combobox1.text<>'' then
  begin
    with AQuery1 do begin
      close;
      //parameters.clear;
      sql.text:='exec phgdb..cut_jsttlch :x1';
      parameters[0].value:=combobox1.text;
      execsql;
    end;
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      sql.text:='select prjno from cut_lbjh1 where prjno='''+combobox1.text+'''';//:prjno';
      //params[0].asstring:=combobox1.text;
      open;
      if recordcount=0 then begin
        with aquery2 do begin
          close;
          {
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          }
          sql.text:='exec cut_fc2lb :prjno';
          parameters[0].value:=combobox1.text;
          execsql;
        end;
      end;
    end;
    with lbjh1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbjh1 where prjno='''+combobox1.text+'''';//:prjno';
      //params[0].asstring:=combobox1.text;
      open;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton6Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmmmyz=nil then frmmmyz:=tfrmmmyz.create(self);
  frmmmyz.label1.caption:='lbjh1';
  frmmmyz.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton8Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if dbedit1.text<>'' then
 begin
  with aquery1 do begin
    close;
    {
    params.clear;
    params.createparam(ftstring,'prjno',ptinput);
    }
    sql.text:='exec cut_lbfx :prjno';
    parameters[0].value:=dbedit1.text;
    execsql;
  end;
  if frmlbyldy=nil then frmlbyldy:=tfrmlbyldy.create(self);
  with frmlbyldy.lbwlm do begin
    Close;
    params.Clear;
    //params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select * from cut_lbwldy where prjno='''+dbedit1.text+'''';//:prjno';
    //params[0].asstring:=dbedit1.text;
    open;
  end;
  frmlbyldy.ppreport2.print;
  lbwld.close;
  lbwld.params.clear;
  //lbwld.params.createparam(ftstring,'prjno',ptinput);
  lbwld.commandtext:='select * from cut_lbwl1 where prjno='''+dbedit1.text+''' order by kh,zdh,sh,id,siz1,cm';// order by prjno,kh,zdh,id,cup,siz1';
  //lbwld.params[0].asstring:=dbedit1.text;
  lbwld.open;
  ppreport3.print;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton9Click(Sender: TObject);
begin
  if frmzds=nil then frmzds:=tfrmzds.create(self);
  frmzds.caption:='CF_ID | View Marker Creation 查閱嘜架建立';
  frmzds.label2.caption:='lbjh';
  frmzds.show;
end;

procedure Tfrmlbjh.ppGroupHeaderBand2BeforePrint(Sender: TObject);
var
  i:integer;
  jf:double;
begin
  jf:=1.00;
  mjbh.caption:='';zmjjs.caption:='';yslbzs.Caption:='';scmjcd.Caption:='';scmjyl.Caption:='';
  scmjfd.Caption:='';ybl.Caption:='';scmjzc.Caption:='';dzmjps.caption:='';jhcgzsj.caption:='';
  if lbjhm.Active=true then
  begin
    if lbjhm.fieldbyname('zp').value=true then
    begin
      region1.Visible:=false;
      region1.SendToBack;
      region2.visible:=true;
      region2.BringToFront;
    end
    else
    begin
      if not lbjhm.fieldbyname('mjstatus').isnull then begin
        if copy(lbjhm.fieldbyname('mjstatus').value,1,4)='封度' then begin
          if lbjhm.fieldbyname('mjstatus').value='封度折半' then jf:=2.00
          else if lbjhm.fieldbyname('mjstatus').value='封度折四' then jf:=4.00
          else jf:=strtofloat(trim(copy(lbjhm.fieldbyname('mjstatus').value,7,5)));
        end;
      end;
      region1.visible:=true;
      region1.BringToFront;
      region2.Visible:=false;
      region2.SendToBack;
    end;
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      sql.text:='select mjh,ybl,mjfd,mjcd,mjypzbc,jhlbzs from cut_lbjh3 where prjno=:prjno and wl=:wl and xh=:xh';
      parameters[0].value:=lbjhm.fieldbyname('prjno').value;
      parameters[1].value:=lbjhm.fieldbyname('wl').value;
      parameters[2].value:=lbjhm.fieldbyname('xh').value;
      open;
      last;
      i:=recordcount;
      first;
      while not eof do begin
        if not fieldbyname('mjh').isnull then begin
          if mjbh.caption>' ' then mjbh.caption:=mjbh.caption+','+fieldbyname('mjh').value
          else mjbh.caption:=fieldbyname('mjh').value;
          if ybl.caption>' ' then ybl.caption:=ybl.caption+','+formatfloat('#0.000%',fieldbyname('ybl').asfloat)
          else ybl.caption:=formatfloat('#0.000%',fieldbyname('ybl').asfloat);
          if scmjcd.caption>' ' then scmjcd.caption:=scmjcd.caption+','+formatfloat('#0.000000',fieldbyname('mjcd').asfloat)
          else scmjcd.caption:=formatfloat('#0.000000',fieldbyname('mjcd').asfloat);
          if scmjfd.Caption>' ' then scmjfd.caption:=scmjfd.caption+','+inttostr(fieldbyname('mjfd').asinteger)
          else scmjfd.caption:=inttostr(fieldbyname('mjfd').asinteger);
          if scmjzc.Caption>' ' then scmjzc.Caption:=scmjzc.caption+','+formatfloat('#0.0',fieldbyname('mjypzbc').asfloat)
          else scmjzc.caption:=formatfloat('#0.0',fieldbyname('mjypzbc').asfloat);
          if yslbzs.Caption>' ' then yslbzs.caption:=yslbzs.caption+','+inttostr(fieldbyname('jhlbzs').asinteger)
          else yslbzs.caption:=inttostr(fieldbyname('jhlbzs').asinteger);
        end;
        if dzmjps.caption>' ' then
        dzmjps.caption:=dzmjps.caption+','+inttostr(lbjhm.fieldbyname('dzmjps').asinteger)
        else dzmjps.caption:=inttostr(lbjhm.fieldbyname('dzmjps').asinteger);
        if jhcgzsj.caption>' ' then
        jhcgzsj.Caption:=jhcgzsj.caption+','+formatfloat('#0.00',lbjhm.fieldbyname('jhcgzsj').asfloat)
        else jhcgzsj.caption:=formatfloat('#0.00',lbjhm.fieldbyname('jhcgzsj').asfloat);
        next;
      end;
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      sql.text:='select sum(a.mjcd*a.jhlbzs) as scmjyl from cut_lbjh3 a,cut_lbjh1 b where a.prjno=b.prjno and a.xh=b.xh and a.wl=b.wl and b.prjno=:prjno and b.xh=:xh and b.wl=:wl';
      parameters[0].value:=lbjhm.fieldbyname('prjno').value;
      parameters[1].value:=lbjhm.fieldbyname('xh').value;
      parameters[2].value:=lbjhm.fieldbyname('wl').value;
      open;
      if not fieldbyname('scmjyl').isnull then scmjyl.Caption:=formatfloat('#0.0000',fieldbyname('scmjyl').asfloat/jf);
    end;
    if lbjhm.fieldbyname('mbyl').value=true then scmjyl.caption:=formatfloat('#0.0000',lbjhm.fieldbyname('mjyl').asfloat);
    query1.close;
    //query1.params.clear;
    //query1.params.createparam(ftstring,'prjno',ptinput);
    //query1.params.createparam(ftinteger,'xh',ptinput);
    //query1.params.createparam(ftstring,'wl',ptinput);
    query1.sql.text:='select sum(mjs) as zmjjs from cut_lbjh2 where prjno=:prjno and xh=:xh and wl=:wl';
    query1.parameters[0].value:=lbjhm.fieldbyname('prjno').value;
    query1.parameters[1].value:=lbjhm.fieldbyname('xh').value;
    query1.parameters[2].value:=lbjhm.fieldbyname('wl').value;
    query1.open;
    if not query1.fieldbyname('zmjjs').isnull then begin
      if i=1 then zmjjs.caption:=formatfloat('#0.0',query1.fieldbyname('zmjjs').value)
      else if i=2 then zmjjs.caption:=formatfloat('#0.0',query1.fieldbyname('zmjjs').value)+','+formatfloat('#0.0',query1.fieldbyname('zmjjs').value)
      else if i=3 then zmjjs.caption:=formatfloat('#0.0',query1.fieldbyname('zmjjs').value)+','+formatfloat('#0.0',query1.fieldbyname('zmjjs').value)+','+formatfloat('#0.0',query1.fieldbyname('zmjjs').value);
    end;
  end;
end;

procedure Tfrmlbjh.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppreport3.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport3.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmlbjh.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dbedit4.setfocus;
end;

procedure Tfrmlbjh.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  query1.close;
  //query1.params.clear;
  //query1.params.createparam(ftstring,'prjno',ptinput);
  //query1.params.createparam(ftstring,'wl',ptinput);
  //query1.params.createparam(ftinteger,'xh',ptinput);
  query1.sql.text:='select tm from cut_lbtz where prjno=:prjno and wl=:wl and xh=:xh';
  query1.parameters[0].value:=lbjh1.fieldbyname('prjno').value;
  query1.parameters[1].value:=lbjh1.fieldbyname('wl').value;
  query1.parameters[2].value:=lbjh1.fieldbyname('xh').value;
  query1.open;
  if query1.recordcount>0 then begin
   if query1.fieldbyname('tm').value=false then begin
    if frmxgtm=nil then frmxgtm:=tfrmxgtm.create(self);
    frmxgtm.label2.caption:='lbjh';
    frmxgtm.show;
   end
   else begin
    application.messagebox('此已為通碼!','提示信息',mb_iconinformation+mb_ok);
   end;
  end
  else begin
    if frmxgtm=nil then frmxgtm:=tfrmxgtm.create(self);
    frmxgtm.label2.caption:='lbjh';
    frmxgtm.show;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.N1Click(Sender: TObject);
begin
  if dbedit1.text<>'' then begin
    if application.messagebox('要刪除此床記錄嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      with aquery2 do begin
        close;
        sql.text:='exec cut_dltlb2 :prjno,:wl,:xh';
        parameters[0].value:=lbjh1.fieldbyname('prjno').value;
        parameters[1].value:=lbjh1.fieldbyname('wl').value;
        parameters[2].value:=lbjh1.fieldbyname('xh').value;
        execsql;
      end;
      lbjh1.delete;
    end;
  end;
end;

procedure Tfrmlbjh.N2Click(Sender: TObject);
begin
  if dbedit1.text<>'' then begin
    if application.messagebox('要刪除此工程嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then
    begin
      with aquery2 do begin
        close;
        {
        params.clear;
        params.createparam(ftstring,'prjno',ptinput);
        }
        sql.text:='exec cut_dltlb1 :prjno';
        parameters[0].value:=lbjh1.fieldbyname('prjno').value;
        execsql;
      end;
      lbjh1.active:=false;
      lbjh2.active:=false;
      lbjh3.active:=false;
      fcwl2.active:=false;
      combobox1.text:='';
    end;
  end;
end;

procedure Tfrmlbjh.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  fcgch.Caption:='';fczdh.caption:='';fckh.caption:='';fcsh.caption:='';fccm.caption:='';fcmjjs.caption:='';fcmjs.Caption:='';
  fcgch1.Caption:='';fczdh1.caption:='';fckh1.caption:='';fcsh1.caption:='';fccm1.caption:='';fcmjjs1.caption:='';fcmjs1.Caption:='';
  fcgch2.Caption:='';fczdh2.caption:='';fckh2.caption:='';fcsh2.caption:='';fccm2.caption:='';fcmjjs2.caption:='';fcmjs2.Caption:='';
  fcgch3.Caption:='';fczdh3.caption:='';fckh3.caption:='';fcsh3.caption:='';fccm3.caption:='';fcmjjs3.caption:='';fcmjs3.Caption:='';
  fcgch4.Caption:='';fczdh4.caption:='';fckh4.caption:='';fcsh4.caption:='';fccm4.caption:='';fcmjjs4.caption:='';fcmjs4.Caption:='';
  with query1 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    //params.createparam(ftinteger,'xh',ptinput);
    //params.createparam(ftstring,'wl',ptinput);
    sql.text:='select * from cut_fcjy2 where prjno=:prjno and xh=:xh and wl=:wl and gm>0';
    parameters[0].Value:=lbjhm.fieldbyname('prjno').value;
    parameters[1].Value:=lbjhm.fieldbyname('yxh').value;//lbjhm.fieldbyname('xh').value;
    parameters[2].Value:=lbjhm.fieldbyname('wl').value;
    open;
    if recordcount>0 then begin
      ppgroupfooterband2.Visible:=true;
      fcgch.Visible:=true;fczdh.Visible:=true;fckh.visible:=true;fcsh.Visible:=true;
      fccm.Visible:=true;fcmjjs.Visible:=true;fcmjs.Visible:=true;
      fcgch1.Visible:=true;fczdh1.Visible:=true;fckh1.visible:=true;fcsh1.Visible:=true;
      fccm1.Visible:=true;fcmjjs1.Visible:=true;fcmjs1.Visible:=true;
      fcgch2.Visible:=true;fczdh2.Visible:=true;fckh2.visible:=true;fcsh2.Visible:=true;
      fccm2.Visible:=true;fcmjjs2.Visible:=true;fcmjs2.Visible:=true;
      fcgch3.Visible:=true;fczdh3.Visible:=true;fckh3.visible:=true;fcsh3.Visible:=true;
      fccm3.Visible:=true;fcmjjs3.Visible:=true;fcmjs3.Visible:=true;
      fcgch4.Visible:=true;fczdh4.Visible:=true;fckh4.visible:=true;fcsh4.Visible:=true;
      fccm4.Visible:=true;fcmjjs4.Visible:=true;fcmjs4.Visible:=true;
      first;
      if not eof then begin
         fcgch.caption:=query1.fieldbyname('gch').value;
         fczdh.caption:=query1.fieldbyname('zdh').value;
         fckh.caption:=query1.fieldbyname('kh').value;
         fcsh.caption:=query1.fieldbyname('sh').value;
         fccm.caption:=query1.fieldbyname('cm').value;
         fcmjs.caption:=formatfloat('#0.0',query1.fieldbyname('sj').asfloat);//'0.0';
         fcmjjs.caption:=copy(query1.fieldbyname('bz').value,6,20)+': '+inttostr(query1.fieldbyname('gm').asinteger)+'件';
         next;
         if not eof then begin
           fcgch1.caption:=query1.fieldbyname('gch').value;
           fczdh1.caption:=query1.fieldbyname('zdh').value;
           fckh1.caption:=query1.fieldbyname('kh').value;
           fcsh1.caption:=query1.fieldbyname('sh').value;
           fccm1.caption:=query1.fieldbyname('cm').value;
           fcmjs1.caption:=formatfloat('#0.0',query1.fieldbyname('sj').asfloat);//'0.0';
           fcmjjs1.caption:=copy(query1.fieldbyname('bz').value,6,20)+': '+inttostr(query1.fieldbyname('gm').asinteger)+'件';
           next;
           if not eof then begin
             fcgch2.caption:=query1.fieldbyname('gch').value;
             fczdh2.caption:=query1.fieldbyname('zdh').value;
             fckh2.caption:=query1.fieldbyname('kh').value;
             fcsh2.caption:=query1.fieldbyname('sh').value;
             fccm2.caption:=query1.fieldbyname('cm').value;
             fcmjs2.caption:=formatfloat('#0.0',query1.fieldbyname('sj').asfloat);//'0.0';
             fcmjjs2.caption:=copy(query1.fieldbyname('bz').value,6,20)+': '+inttostr(query1.fieldbyname('gm').asinteger)+'件';
             next;
             if not eof then begin
               fcgch3.caption:=query1.fieldbyname('gch').value;
               fczdh3.caption:=query1.fieldbyname('zdh').value;
               fckh3.caption:=query1.fieldbyname('kh').value;
               fcsh3.caption:=query1.fieldbyname('sh').value;
               fccm3.caption:=query1.fieldbyname('cm').value;
               fcmjs3.caption:=formatfloat('#0.0',query1.fieldbyname('sj').asfloat);//'0.0';
               fcmjjs3.caption:=copy(query1.fieldbyname('bz').value,6,20)+': '+inttostr(query1.fieldbyname('gm').asinteger)+'件';
               next;
               if not eof then begin
                 fcgch4.caption:=query1.fieldbyname('gch').value;
                 fczdh4.caption:=query1.fieldbyname('zdh').value;
                 fckh4.caption:=query1.fieldbyname('kh').value;
                 fcsh4.caption:=query1.fieldbyname('sh').value;
                 fccm4.caption:=query1.fieldbyname('cm').value;
                 fcmjs4.caption:=formatfloat('#0.0',query1.fieldbyname('sj').asfloat);//'0.0';
                 fcmjjs4.caption:=copy(query1.fieldbyname('bz').value,6,20)+': '+inttostr(query1.fieldbyname('gm').asinteger)+'件';
               end;
             end;
           end;
         end;
      end;
    end
    else begin
      ppgroupfooterband2.Visible:=false;
      fcgch.Visible:=false;fczdh.Visible:=false;fckh.visible:=false;fcsh.Visible:=false;
      fccm.Visible:=false;fcmjjs.Visible:=false;fcmjs.Visible:=false;
      fcgch1.Visible:=false;fczdh.Visible:=false;fckh1.visible:=false;fcsh1.Visible:=false;
      fccm1.Visible:=false;fcmjjs1.Visible:=false;fcmjs1.Visible:=false;
      fcgch2.Visible:=false;fczdh2.Visible:=false;fckh2.visible:=false;fcsh2.Visible:=false;
      fccm2.Visible:=false;fcmjjs2.Visible:=false;fcmjs2.Visible:=false;
      fcgch3.Visible:=false;fczdh3.Visible:=false;fckh3.visible:=false;fcsh3.Visible:=false;
      fccm3.Visible:=false;fcmjjs3.Visible:=false;fcmjs3.Visible:=false;
      fcgch4.Visible:=false;fczdh4.Visible:=false;fckh4.visible:=false;fcsh4.Visible:=false;
      fccm4.Visible:=false;fcmjjs4.Visible:=false;fcmjs4.Visible:=false;
    end;
  end;
end;

procedure Tfrmlbjh.SpeedButton11Click(Sender: TObject);
begin
  if frmsclfx=nil then frmsclfx:=tfrmsclfx.create(self);
  frmsclfx.dateedit1.text:='    /  /  ';
  frmsclfx.dateedit2.text:='    /  /  ';
  frmsclfx.edit1.text:=dbedit1.text;
  frmsclfx.label4.caption:='lbjh';
  frmsclfx.show;
end;

procedure Tfrmlbjh.SpeedButton12Click(Sender: TObject);
begin
  if frmlhjl=nil then frmlhjl:=tfrmlhjl.create(self);
  frmlhjl.label6.caption:='lbjh';
  frmlhjl.combobox1.text:='';frmlhjl.combobox2.text:='';
  frmlhjl.edit1.text:='';frmlhjl.edit2.text:='';
  frmlhjl.dateedit1.text:='    /  /  ';
  frmlhjl.dateedit2.text:='    /  /  ';
  frmlhjl.show;
end;

procedure Tfrmlbjh.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmxgcm=nil then frmxgcm:=tfrmxgcm.create(self);
  if lbjh2.active then begin
    frmxgcm.Edit1.text:=lbjh2.fieldbyname('prjno').value;
    frmxgcm.combobox1.text:=lbjh2.fieldbyname('kh').value;
    frmxgcm.combobox2.text:=lbjh2.fieldbyname('cm').value;
  end else begin
    frmxgcm.Edit1.text:='';
    frmxgcm.combobox1.text:='';
    frmxgcm.combobox2.text:='';
  end;
  frmxgcm.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton13Click(Sender: TObject);
var
  xh1:integer;
  prjno,wl:string;
  xh:integer;
begin
  screen.cursor:=crHourglass;
  if application.MessageBox('要復製一床嗎?','提示',mb_iconquestion+mb_okcancel)=idok then begin
    prjno:=lbjh1.fieldbyname('prjno').value;
    wl:=lbjh1.fieldbyname('wl').value;
    xh:=lbjh1.fieldbyname('xh').value;
    with aquery1 do begin
      close;
      sql.text:='exec cut_lbfz :prjno,:wl,:xh';
      parameters[0].value:=prjno;
      parameters[1].value:=wl;
      parameters[2].value:=xh;
      execsql;
    end;
    with lbjh1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbjh1 where prjno=:prjno';
      parameters[0].value:=prjno;
      open;
      locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[lopartialkey]);
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton14Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmxgkh=nil then frmxgkh:=tfrmxgkh.create(self);
  frmxgkh.edit1.text:=lbjh2.fieldbyname('prjno').value;
  frmxgkh.edit2.text:=lbjh2.fieldbyname('kh').value;
  frmxgkh.edit3.text:='';
  frmxgkh.label4.caption:='lbjh';
  frmxgkh.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.dslbjhmDataChange(Sender: TObject; Field: TField);
begin
  with lbjhd do begin
    close;
    params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    //params.createparam(ftinteger,'xh',ptinput);
    //params.createparam(ftstring,'wl',ptinput);
    commandtext:='select prjno,xh,wl,gch,zdh,kh,sh,id,siz1,cup,cm,zds,mjjs,mjs,zds-mjjs as ys,jc,bz '
                +'from cut_lbjh2 where prjno='''+lbjhm.fieldbyname('prjno').value+''' and xh='+lbjhm.fieldbyname('xh').asstring+' and wl='''+lbjhm.fieldbyname('wl').value+''' order by prjno,wl,xh,kh,id,siz1,cup';
    //params[0].asstring:=lbjhm.fieldbyname('prjno').value;
    //params[1].asinteger:=lbjhm.fieldbyname('xh').value;
    //params[2].asstring:=lbjhm.fieldbyname('wl').value;
    open;
  end;
end;

procedure Tfrmlbjh.dslbjh1DataChange(Sender: TObject; Field: TField);
begin
  if lbjh1.state=dsbrowse then begin
    if not lbjh1.FieldByName('ttl_ch').IsNull then
    edit1.Text:=lbjh1.FieldByName('xh').AsString+'/'+lbjh1.FieldByName('ttl_ch').Value
    else edit1.Text:='';
    Edit2.Text:=Edit1.Text;
      if not lbjh1.fieldbyname('hd_limit').isnull then begin
        if lbjh1.fieldbyname('lbhd').Value>lbjh1.FieldByName('hd_limit').Value then
          DBEdit27.Font.Color:=clRed
        else DBEdit27.Font.Color:=clBlack;
      end else DBEdit27.Font.Color:=clBlack;
      if uppercase(frmmain.label1.Caption)='PAUL' then begin
        dbedit10.ReadOnly:=false;
        dbedit4.ReadOnly:=false;
        dbedit19.ReadOnly:=false;
        dbedit20.ReadOnly:=false;
        dbcheckbox1.readonly:=false;
        dbgrideh1.ReadOnly:=false;
        dbgrideh2.ReadOnly:=false;
        N1.Enabled:=true;
        n2.Enabled:=true;
        n3.Enabled:=true;
        n4.Enabled:=true;
        n5.Enabled:=true;
        n6.Enabled:=true;
        bitbtn2.Enabled:=true;
        bitbtn4.Enabled:=true;
        speedbutton2.Enabled:=true;
        speedbutton3.Enabled:=true;
        speedbutton4.Enabled:=true;
        speedbutton6.Enabled:=true;
        speedbutton13.Enabled:=true;
        speedbutton14.Enabled:=true;
        speedbutton15.Enabled:=true;
        speedbutton18.Enabled:=true;
        speedbutton19.Enabled:=true;
      end;
      if lbjh1.fieldbyname('mbyl').value=true then begin
        label10.visible:=true;
        dbedit10.visible:=true;
        dbedit3.readonly:=true;
        dbgrideh2.columns[0].readonly:=false;
        dbgrideh2.columns[1].readonly:=false;
        dbgrideh2.columns[2].readonly:=false;
        dbgrideh2.columns[3].readonly:=false;
        dbgrideh2.columns[4].readonly:=false;
        //dbgrideh2.columns[5].readonly:=false;
        dbgrideh2.AllowedOperations:=[alopInsertEh,alopUpdateEh,alopDeleteEh,alopAppendEh];
      end
      else begin
        label10.visible:=false;
        dbedit10.visible:=false;
        dbedit3.readonly:=true;
        dbgrideh2.columns[0].readonly:=true;
        dbgrideh2.columns[1].readonly:=true;
        dbgrideh2.columns[2].readonly:=true;
        dbgrideh2.columns[3].readonly:=true;
        dbgrideh2.columns[4].readonly:=true;
        //dbgrideh2.columns[5].readonly:=true;
        dbgrideh2.AllowedOperations:=[alopInsertEh,alopUpdateEh,alopDeleteEh];
      end;
    //end;
    with lbjh2 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cut_lbjh2 where prjno='''+lbjh1.fieldbyname('prjno').value+''' and wl='''+lbjh1.fieldbyname('wl').value+''' and xh='+lbjh1.fieldbyname('xh').asstring;//:xh';
      //params[0].asstring:=lbjh1.fieldbyname('prjno').value;
      //params[1].asstring:=lbjh1.fieldbyname('wl').value;
      //params[2].asinteger:=lbjh1.fieldbyname('xh').value;
      open;
    end;
    with lbjh3 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cut_lbjh3 where prjno='''+lbjh1.fieldbyname('prjno').value+''' and wl='''+lbjh1.fieldbyname('wl').value+''' and xh='+lbjh1.fieldbyname('xh').asstring;
      //params[0].asstring:=lbjh1.fieldbyname('prjno').value;
      //params[1].asstring:=lbjh1.fieldbyname('wl').value;
      //params[2].asinteger:=lbjh1.fieldbyname('xh').value;
      open;
    end;
    {
    with fcwl2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cut_fcwl2 where prjno=:prjno and wl=:wl and xh=:xh';
      params[0].asstring:=lbjh1.fieldbyname('prjno').value;
      params[1].asstring:=lbjh1.fieldbyname('wl').value;
      params[2].asinteger:=lbjh1.fieldbyname('xh').value;
      open;
    end;
    }
  end;
end;

procedure Tfrmlbjh.lbjh1AfterPost(DataSet: TDataSet);
begin
  lbjh1.UpdateBatch(arAll);
  {
  if lbjh1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      commandtext:='select * from cut_lbjh1 where prjno='''+lbjh1.fieldbyname('prjno').value+''' and wl='''+lbjh1.fieldbyname('wl').value+''' and xh='+lbjh1.fieldbyname('xh').asstring;
      //params[0].asstring:=lbjh1.fieldbyname('prjno').value;
      //params[1].asstring:=lbjh1.fieldbyname('wl').value;
      //params[2].asinteger:=lbjh1.fieldbyname('xh').value;
      open;
      if recordcount>0 then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'dzmjps',ptinput);
          params.createparam(ftfloat,'zdypcd',ptinput);
          params.createparam(ftfloat,'ysmjfd',ptinput);
          params.createparam(ftboolean,'bmj',ptinput);
          params.createparam(ftfloat,'pbl',ptinput);
          params.createparam(ftfloat,'hsl',ptinput);
          params.createparam(ftfloat,'pjmjfd',ptinput);
          params.createparam(ftfloat,'ybl',ptinput);
          params.createparam(ftfloat,'mjzcd',ptinput);
          params.createparam(ftfloat,'mjypzbzc',ptinput);
          params.createparam(ftfloat,'jhdzlbzc',ptinput);
          params.createparam(ftfloat,'jhwlzc',ptinput);
          params.createparam(ftfloat,'jhcgzsj',ptinput);
          params.createparam(ftfloat,'jhscsh',ptinput);
          params.createparam(ftfloat,'mjyl',ptinput);
          params.createparam(ftfloat, 'bcd', ptinput);
          params.createparam(ftfloat, 'bfd', ptinput);
          params.createparam(ftfloat, 'bzl', ptinput);
          params.createparam(ftboolean,'cm1',ptinput);
          params.createparam(ftboolean,'cm2',ptinput);
          params.createparam(ftboolean,'cm3',ptinput);
          params.createparam(ftboolean,'cm4',ptinput);
          params.createparam(ftboolean,'m1',ptinput);
          params.createparam(ftboolean,'m2',ptinput);
          params.createparam(ftboolean,'m3',ptinput);
          params.createparam(ftboolean,'mak1',ptinput);
          params.createparam(ftboolean,'mak2',ptinput);
          params.createparam(ftboolean,'mak3',ptinput);
          params.createparam(ftboolean,'mak4',ptinput);
          params.createparam(ftboolean,'mak5',ptinput);
          params.createparam(ftfloat, 'hd_dz', ptinput);
          params.createparam(ftfloat, 'hd_limit', ptinput);
          params.createparam(ftfloat, 'lbhd', ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          commandtext:='update cut_lbjh1 set dzmjps=:dzmjps,zdypcd=:zdypcd,ysmjfd=:ysmjfd,bmj=:bmj,'
                      +'pbl=:pbl,hsl=:hsl,pjmjfd=:pjmjfd,ybl=:ybl,mjzcd=:mjzcd,mjypzbzc=:mjypzbzc,'
                      +'jhdzlbzc=:jhdzlbzc,jhwlzc=:jhwlzc,jhcgzsj=:jhcgzsj,jhscsh=:jhscsh,mjyl=:mjyl,'
                      +'bcd=:bcd,bfd=:bfd,bzl=:bzl,cut_m1=:cm1,cut_m2=:cm2,cut_m3=:cm3,cut_m4=:cm4,'
                      +'m_1=:m1,m_2=:m2,m_3=:m3,mak_1=:mak1,mak_2=:mak2,mak_3=:mak3,mak_4=:mak4,mak_5=:mak5,'
                      +'hd_dz=:hd_dz,hd_limit=:hd_limit,lbhd=:lbhd '
                      +'where prjno=:prjno and wl=:wl and xh=:xh';
          params[0].asinteger:=lbjh1.fieldbyname('dzmjps').value;
          params[1].asfloat:=lbjh1.fieldbyname('zdypcd').value;
          params[2].asfloat:=lbjh1.fieldbyname('ysmjfd').value;
          params[3].asboolean:=lbjh1.fieldbyname('bmj').value;
          params[4].asfloat:=lbjh1.fieldbyname('pbl').value;
          params[5].asfloat:=lbjh1.fieldbyname('hsl').value;
          params[6].asfloat:=lbjh1.fieldbyname('pjmjfd').value;
          params[7].asfloat:=lbjh1.fieldbyname('ybl').value;
          params[8].asfloat:=lbjh1.fieldbyname('mjzcd').value;
          params[9].asfloat:=lbjh1.fieldbyname('mjypzbzc').value;
          params[10].asfloat:=lbjh1.fieldbyname('jhdzlbzc').value;
          params[11].asfloat:=lbjh1.fieldbyname('jhwlzc').value;
          params[12].asfloat:=lbjh1.fieldbyname('jhcgzsj').value;
          params[13].asfloat:=lbjh1.fieldbyname('jhscsh').value;
          params[14].asfloat:=lbjh1.fieldbyname('mjyl').value;
          if not lbjh1.fieldbyname('bcd').isnull then
            params[15].asfloat := lbjh1.fieldbyname('bcd').value
          else params[15].asfloat := 0;
          if not lbjh1.fieldbyname('bfd').isnull then
            params[16].asfloat := lbjh1.fieldbyname('bfd').value
          else params[16].asfloat := 0;
          if not lbjh1.fieldbyname('bzl').isnull then
            params[17].asfloat := lbjh1.fieldbyname('bzl').value
          else params[17].asfloat := 0;
          Params[18].asboolean:=lbjh1.FieldByName('cut_m1').value;
          Params[19].asboolean:=lbjh1.FieldByName('cut_m2').value;
          Params[20].asboolean:=lbjh1.FieldByName('cut_m3').value;
          Params[21].asboolean:=lbjh1.FieldByName('cut_m4').value;
          if not lbjh1.fieldbyname('m_1').isnull then
          Params[22].asboolean:=lbjh1.FieldByName('m_1').value
          else Params[22].asboolean:=false;
          if not lbjh1.fieldbyname('m_2').isnull then
          Params[23].asboolean:=lbjh1.FieldByName('m_2').value
          else Params[23].asboolean:=false;
          if not lbjh1.fieldbyname('m_3').isnull then
          Params[24].asboolean:=lbjh1.FieldByName('m_3').value
          else Params[24].asboolean:=false;
          if not lbjh1.fieldbyname('mak_1').isnull then
          Params[25].asboolean:=lbjh1.FieldByName('mak_1').value
          else Params[25].asboolean:=false;
          if not lbjh1.fieldbyname('mak_2').isnull then
          Params[26].asboolean:=lbjh1.FieldByName('mak_2').value
          else Params[26].asboolean:=false;
          if not lbjh1.fieldbyname('mak_3').isnull then
          Params[27].asboolean:=lbjh1.FieldByName('mak_3').value
          else Params[27].asboolean:=false;
          if not lbjh1.fieldbyname('mak_4').isnull then
          Params[28].asboolean:=lbjh1.FieldByName('mak_4').value
          else Params[28].asboolean:=false;
          if not lbjh1.fieldbyname('mak_5').isnull then
          Params[29].asboolean:=lbjh1.FieldByName('mak_5').value
          else Params[29].asboolean:=false;
          if not lbjh1.fieldbyname('hd_dz').isnull then
            params[30].asfloat := lbjh1.fieldbyname('hd_dz').value
          else params[30].asfloat := 0;
          if not lbjh1.fieldbyname('hd_limit').isnull then
            params[31].asfloat := lbjh1.fieldbyname('hd_limit').value
          else params[31].asfloat := 0;
          if not lbjh1.fieldbyname('lbhd').isnull then
            params[32].asfloat := lbjh1.fieldbyname('lbhd').value
          else params[32].asfloat := 0;
          params[33].asstring := lbjh1.fieldbyname('prjno').value;
          params[34].asstring := lbjh1.fieldbyname('wl').value;
          params[35].asinteger := lbjh1.fieldbyname('xh').value;
          execute;
        end;
      end
      else begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'dzmjps',ptinput);
          params.createparam(ftfloat,'zdypcd',ptinput);
          params.createparam(ftfloat,'ysmjfd',ptinput);
          params.createparam(ftboolean,'bmj',ptinput);
          params.createparam(ftfloat,'pbl',ptinput);
          params.createparam(ftfloat,'hsl',ptinput);
          params.createparam(ftfloat,'pjmjfd',ptinput);
          params.createparam(ftfloat,'ybl',ptinput);
          params.createparam(ftfloat,'mjzcd',ptinput);
          params.createparam(ftfloat,'mjypzbzc',ptinput);
          params.createparam(ftfloat,'jhdzlbzc',ptinput);
          params.createparam(ftfloat,'jhwlzc',ptinput);
          params.createparam(ftfloat,'jhcgzsj',ptinput);
          params.createparam(ftfloat,'jhscsh',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          params.createparam(ftinteger,'lbzs',ptinput);
          params.createparam(ftfloat,'mjyl',ptinput);
          params.createparam(ftstring,'mjstatus',ptinput);
          params.createparam(ftboolean,'zp',ptinput);
          params.createparam(ftboolean,'mbyl',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftinteger,'yxh',ptinput);
          params.createparam(ftfloat, 'bcd', ptinput);
          params.createparam(ftfloat, 'bfd', ptinput);
          params.createparam(ftfloat, 'bzl', ptinput);
          commandtext:='insert into cut_lbjh1(dzmjps,zdypcd,ysmjfd,bmj,pbl,hsl,pjmjfd,ybl,mjzcd,mjypzbzc,'
                      +'jhdzlbzc,jhwlzc,jhcgzsj,jhscsh,prjno,wl,xh,lbzs,mjyl,mjstatus,zp,mbyl,seq,yxh,bcd,bfd,bzl) '
                      +'values(:dzmjps,:zdypcd,:ysmjfd,:bmj,:pbl,:hsl,:pjmjfd,:ybl,:mjzcd,:mjypzbzc,'
                      +':jhdzlbzc,:jhwlzc,:jhcgzsj,:jhscsh,:prjno,:wl,:xh,:lbzs,:mjyl,:mjstatus,:zp,:mbyl,:seq,:yxh,:bcd,:bfd,:bzl)';
          //commandtext:='update cut_lbjh1 set dzmjps=:dzmjps,zdypcd=:zdypcd,ysmjfd=:ysmjfd,bmj=:bmj,'
          //            +'pbl=:pbl,hsl=:hsl,pjmjfd=:pjmjfd,ybl=:ybl,mjzcd=:mjzcd,mjypzbzc=:mjypzbzc,'
          //            +'jhdzlbzc=:jhdzlbzc,jhwlzc=:jhwlzc,jhcgzsj=:jhcgzsj,jhscsh=:jhscsh where prjno=:prjno and wl=:wl and xh=:xh';
          if not lbjh1.fieldbyname('dzmjps').isnull then
          params[0].asinteger:=lbjh1.fieldbyname('dzmjps').value
          else params[0].asinteger:=0;
          if not lbjh1.fieldbyname('zdypcd').isnull then
          params[1].asfloat:=lbjh1.fieldbyname('zdypcd').value
          else params[1].asfloat:=0;
          if not lbjh1.fieldbyname('ysmjfd').isnull then
          params[2].asfloat:=lbjh1.fieldbyname('ysmjfd').value
          else params[2].asfloat:=0;
          if not lbjh1.fieldbyname('bmj').isnull then
          params[3].asboolean:=lbjh1.fieldbyname('bmj').value
          else params[3].asboolean:=false;
          if not lbjh1.fieldbyname('pbl').isnull then
          params[4].asfloat:=lbjh1.fieldbyname('pbl').value
          else params[4].asfloat:=0;
          if not lbjh1.fieldbyname('hsl').isnull then
          params[5].asfloat:=lbjh1.fieldbyname('hsl').value
          else params[5].asfloat:=0;
          if not lbjh1.fieldbyname('pjmjfd').isnull then
          params[6].asfloat:=lbjh1.fieldbyname('pjmjfd').value
          else params[6].asfloat:=0;
          if not lbjh1.fieldbyname('ybl').isnull then
          params[7].asfloat:=lbjh1.fieldbyname('ybl').value
          else params[7].asfloat:=0;
          if not lbjh1.fieldbyname('mjzcd').isnull then
          params[8].asfloat:=lbjh1.fieldbyname('mjzcd').value
          else params[8].asfloat:=0;
          if not lbjh1.fieldbyname('mjypzbzc').isnull then
          params[9].asfloat:=lbjh1.fieldbyname('mjypzbzc').value
          else params[9].asfloat:=0;
          if not lbjh1.fieldbyname('jhdzlbzc').isnull then
          params[10].asfloat:=lbjh1.fieldbyname('jhdzlbzc').value
          else params[10].asfloat:=0;
          if not lbjh1.fieldbyname('jhwlzc').isnull then
          params[11].asfloat:=lbjh1.fieldbyname('jhwlzc').value
          else params[11].asfloat:=0;
          if not lbjh1.fieldbyname('jhcgzsj').isnull then
          params[12].asfloat:=lbjh1.fieldbyname('jhcgzsj').value
          else params[12].asfloat:=0;
          if not lbjh1.fieldbyname('jhscsh').isnull then
          params[13].asfloat:=lbjh1.fieldbyname('jhscsh').value
          else params[13].asfloat:=0;
          params[14].asstring:=lbjh1.fieldbyname('prjno').value;
          params[15].asstring:=lbjh1.fieldbyname('wl').value;
          params[16].asinteger:=lbjh1.fieldbyname('xh').value;
          if not lbjh1.fieldbyname('lbzs').isnull then
          params[17].asinteger:=lbjh1.fieldbyname('lbzs').value
          else params[17].asinteger:=0;
          if not lbjh1.fieldbyname('mjyl').isnull then
          params[18].asfloat:=lbjh1.fieldbyname('mjyl').value
          else params[18].asfloat:=0;
          params[19].asstring:=lbjh1.fieldbyname('mjstatus').value;
          params[20].asboolean:=false;
          params[21].asboolean:=true;
          params[22].asinteger:=lbjh1.fieldbyname('seq').value;
          params[23].asinteger:=lbjh1.fieldbyname('yxh').value;
          if not lbjh1.fieldbyname('bcd').isnull then
            params[24].asfloat := lbjh1.fieldbyname('bcd').value
          else params[24].asfloat := 0;
          if not lbjh1.fieldbyname('bfd').isnull then
            params[25].asfloat := lbjh1.fieldbyname('bfd').value
          else params[25].asfloat := 0;
          if not lbjh1.fieldbyname('bzl').isnull then
            params[26].asfloat := lbjh1.fieldbyname('bzl').value
          else params[26].asfloat := 0;
          execute;
        end;
      end;
    end;
  end;
  }
end;

procedure Tfrmlbjh.lbjh2AfterPost(DataSet: TDataSet);
begin
  lbjh2.UpdateBatch(arAll);
  {
  if lbjh2.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      params.createparam(ftstring,'kh',ptinput);
      params.createparam(ftstring,'cm',ptinput);
      commandtext:='select * from cut_lbjh2 where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh and cm=:cm';
      params[0].asstring:=lbjh2.fieldbyname('prjno').value;
      params[1].asstring:=lbjh2.fieldbyname('wl').value;
      params[2].asinteger:=lbjh2.fieldbyname('xh').value;
      params[3].asstring:=lbjh2.fieldbyname('kh').value;
      params[4].asstring:=lbjh2.fieldbyname('cm').value;
      open;
      if recordcount>0 then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'mjjs',ptinput);
          params.createparam(ftfloat,'mjs',ptinput);
          params.createparam(ftstring,'cor',ptinput);
          params.createparam(ftstring,'pt',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'cm',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='update cut_lbjh2 set mjjs=:mjjs,mjs=:mjs,cm_cor=:cor,cm_pt=:pt where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh and cm=:cm and sh=:sh';
          params[0].asinteger:=lbjh2.fieldbyname('mjjs').value;
          params[1].asfloat:=lbjh2.fieldbyname('mjs').value;
          if not lbjh2.fieldbyname('cm_cor').isnull then
          params[2].asstring:=lbjh2.fieldbyname('cm_cor').value
          else params[2].asstring:='';
          if not lbjh2.fieldbyname('cm_pt').isnull then
          params[3].asstring:=lbjh2.fieldbyname('cm_pt').value
          else params[3].asstring:='';
          params[4].asstring:=lbjh2.fieldbyname('prjno').value;
          params[5].asstring:=lbjh2.fieldbyname('wl').value;
          params[6].asinteger:=lbjh2.fieldbyname('xh').value;
          params[7].asstring:=lbjh2.fieldbyname('kh').value;
          params[8].asstring:=lbjh2.fieldbyname('cm').value;
          params[9].asstring:=lbjh2.fieldbyname('sh').value;
          execute;
        end;
      end
      else begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'mjjs',ptinput);
          params.createparam(ftfloat,'mjs',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          params.createparam(ftstring,'kh',ptinput);
          params.createparam(ftstring,'cm',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          params.createparam(ftstring,'gch',ptinput);
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'cor',ptinput);
          params.createparam(ftstring,'pt',ptinput);
          commandtext:='insert into cut_lbjh2(mjjs,mjs,prjno,wl,xh,kh,cm,sh,gch,zdh,cm_cor,cm_pt) '
                      +'values(:mjjs,:mjs,:prjno,:wl,:xh,:kh,:cm,:sh,:gch,:zdh,:cor,:pt)';
          //commandtext:='update cut_lbjh2 set mjjs=:mjjs,mjs=:mjs where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh and cm=:cm and sh=:sh';
          params[0].asinteger:=lbjh2.fieldbyname('mjjs').value;
          params[1].asfloat:=lbjh2.fieldbyname('mjs').value;
          params[2].asstring:=lbjh2.fieldbyname('prjno').value;
          params[3].asstring:=lbjh2.fieldbyname('wl').value;
          params[4].asinteger:=lbjh2.fieldbyname('xh').value;
          params[5].asstring:=lbjh2.fieldbyname('kh').value;
          params[6].asstring:=lbjh2.fieldbyname('cm').value;
          params[7].asstring:=lbjh2.fieldbyname('sh').value;
          params[8].asstring:=lbjh2.fieldbyname('gch').value;
          params[9].asstring:=lbjh2.fieldbyname('zdh').value;
          if not lbjh2.fieldbyname('cm_cor').isnull then
          params[10].asstring:=lbjh2.fieldbyname('cm_cor').value
          else params[10].asstring:='';
          if not lbjh2.fieldbyname('cm_pt').isnull then
          params[11].asstring:=lbjh2.fieldbyname('cm_pt').value
          else params[11].asstring:='';
          execute;
        end;
        with aquery1 do begin
          close;
          sql.text:='exec cut_jsidsiz1cup :prjno,:wl,:xh,:kh,:cm';
          parameters[0].value:=lbjh2.fieldbyname('prjno').value;
          parameters[1].value:=lbjh2.fieldbyname('wl').value;
          parameters[2].value:=lbjh2.fieldbyname('xh').value;
          parameters[3].value:=lbjh2.fieldbyname('kh').value;
          parameters[4].value:=lbjh2.fieldbyname('cm').value;
          execsql;
        end;
      end;
    end;
  end;
  }
end;

procedure Tfrmlbjh.lbjh3AfterOpen(DataSet: TDataSet);
begin
  (lbjh3.fieldbyname('ybl') as tfloatfield).displayformat:='0.00';
  (lbjh3.fieldbyname('jhcgsj') as tfloatfield).displayformat:='0.00';
  (lbjh3.fieldbyname('pbl') as tfloatfield).displayformat:='0.00';
  (lbjh3.fieldbyname('hsl') as tfloatfield).displayformat:='0.00';
  lbjh3.fieldbyname('mjh').onchange:=lbjh3mjhchange;
  lbjh3.fieldbyname('mjh').onsettext:=lbjh3mjhsettext;
  lbjh3.fieldbyname('mjcd').onchange:=lbjh3mjcdchange;
  lbjh3.fieldbyname('mjypzbc').onchange:=lbjh3mjypzbcchange;
  lbjh3.fieldbyname('lb_out').onchange:=lbjh3lb_outchange;
  lbjh3.fieldbyname('tw_out').onchange:=lbjh3lb_outchange;
  lbjh3.fieldbyname('wt_g').onchange:=lbjh3lb_outchange;
end;

procedure Tfrmlbjh.lbjh3AfterPost(DataSet: TDataSet);
begin
  lbjh3.UpdateBatch(arAll);
  {
  if lbjh3.applyupdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select * from cut_lbjh3 where prjno=:prjno and wl=:wl and xh=:xh and seq=:seq';
      params[0].asstring:=lbjh3.fieldbyname('prjno').value;
      params[1].asstring:=lbjh3.fieldbyname('wl').value;
      params[2].asinteger:=lbjh3.fieldbyname('xh').value;
      params[3].asinteger:=lbjh3.fieldbyname('seq').value;
      open;
      if recordcount=0 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          params.createparam(ftstring,'mjh',ptinput);
          params.createparam(ftfloat,'ybl',ptinput);
          params.createparam(ftinteger,'mjfd',ptinput);
          params.createparam(ftfloat,'mjcd',ptinput);
          params.createparam(ftfloat,'mjypzbc',ptinput);
          params.createparam(ftinteger,'jhlbzs',ptinput);
          params.createparam(ftfloat,'jhdzlbcd',ptinput);
          params.createparam(ftfloat,'jhcgsj',ptinput);
          params.createparam(ftfloat,'jhwlcd',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftfloat,'lb_out',ptinput);
          params.createparam(ftfloat,'tw_out',ptinput);
          params.createparam(ftfloat,'sh_in',ptinput);
          params.createparam(ftfloat,'sh_out',ptinput);
          params.createparam(ftfloat,'sh_ttl',ptinput);
          params.createparam(ftfloat,'wt_g',ptinput);
          params.createparam(ftfloat,'wt_ttlsh',ptinput);
          commandtext:='insert into cut_lbjh3(prjno,wl,xh,mjh,ybl,mjfd,mjcd,mjypzbc,jhlbzs,jhdzlbcd,jhcgsj,jhwlcd,seq,lb_out,tw_out,sh_in,sh_out,sh_ttl,wt_g,wt_ttlsh) '
                      +'values(:prjno,:wl,:xh,:mjh,:ybl,:mjfd,:mjcd,:mjypzbc,:jhlbzs,:jhdzlbcd,:jhcgsj,:jhwlcd,:seq,:lb_out,:tw_out,:sh_in,:sh_out,:sh_ttl,:wt_g,:wt_ttlsh)';
          params[0].asstring:=lbjh3.fieldbyname('prjno').value;
          params[1].asstring:=lbjh3.fieldbyname('wl').value;
          params[2].asinteger:=lbjh3.fieldbyname('xh').value;
          params[3].asstring:=lbjh3.fieldbyname('mjh').value;
          params[4].asfloat:=lbjh3.fieldbyname('ybl').value;
          params[5].asinteger:=lbjh3.fieldbyname('mjfd').value;
          params[6].asfloat:=lbjh3.fieldbyname('mjcd').value;
          params[7].asfloat:=lbjh3.fieldbyname('mjypzbc').value;
          if lbjh1.fieldbyname('bmj').value=true then
          params[8].asinteger:=lbjh1.fieldbyname('lbzs').value
          else params[8].asinteger:=lbjh3.fieldbyname('jhlbzs').value;
          params[9].asfloat:=lbjh3.fieldbyname('jhdzlbcd').value;
          params[10].asfloat:=lbjh3.fieldbyname('jhcgsj').value;
          params[11].asfloat:=lbjh3.fieldbyname('jhwlcd').value;
          params[12].asinteger:=lbjh3.fieldbyname('xh').value;
          params[13].asfloat:=lbjh3.fieldbyname('lb_out').value;
          params[14].asfloat:=lbjh3.fieldbyname('tw_out').value;
          params[15].asfloat:=lbjh3.fieldbyname('sh_in').value;
          params[16].asfloat:=lbjh3.fieldbyname('sh_out').value;
          params[17].asfloat:=lbjh3.fieldbyname('sh_ttl').value;
          params[18].asfloat:=lbjh3.fieldbyname('wt_g').value;
          params[19].asfloat:=lbjh3.fieldbyname('wt_ttlsh').value;
          execute;
        end;
      end
      else begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'ybl',ptinput);
          params.createparam(ftinteger,'mjfd',ptinput);
          params.createparam(ftfloat,'mjcd',ptinput);
          params.createparam(ftfloat,'mjypzbc',ptinput);
          params.createparam(ftinteger,'jhlbzs',ptinput);
          params.createparam(ftfloat,'jhdzlbcd',ptinput);
          params.createparam(ftfloat,'jhcgsj',ptinput);
          params.createparam(ftfloat,'jhwlcd',ptinput);
          params.createparam(ftstring,'mjh',ptinput);
          params.createparam(ftfloat,'lb_out',ptinput);
          params.createparam(ftfloat,'tw_out',ptinput);
          params.createparam(ftfloat,'sh_in',ptinput);
          params.createparam(ftfloat,'sh_out',ptinput);
          params.createparam(ftfloat,'sh_ttl',ptinput);
          params.createparam(ftfloat,'wt_g',ptinput);
          params.createparam(ftfloat,'wt_ttlsh',ptinput);
          params.createparam(ftstring,'prjno',ptinput);
          params.createparam(ftstring,'wl',ptinput);
          params.createparam(ftinteger,'xh',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update cut_lbjh3 set ybl=:ybl,mjfd=:mjfd,mjcd=:mjcd,mjypzbc=:mjypzbc,jhlbzs=:jhlbzs,jhdzlbcd=:jhdzlbcd,jhcgsj=:jhcgsj,jhwlcd=:jhwlcd,mjh=:mjh,'
                      +'lb_out=:lb_out,tw_out=:tw_out,sh_in=:sh_in,sh_out=:sh_out,sh_ttl=:sh_ttl,wt_g=:wt_g,wt_ttlsh=:wt_ttlsh '
                      +'where prjno=:prjno and wl=:wl and xh=:xh and seq=:seq';
          params[0].asfloat:=lbjh3.fieldbyname('ybl').value;
          params[1].asinteger:=lbjh3.fieldbyname('mjfd').value;
          params[2].asfloat:=lbjh3.fieldbyname('mjcd').value;
          params[3].asfloat:=lbjh3.fieldbyname('mjypzbc').value;
          params[4].asinteger:=lbjh3.fieldbyname('jhlbzs').value;
          params[5].asfloat:=lbjh3.fieldbyname('jhdzlbcd').value;
          params[6].asfloat:=lbjh3.fieldbyname('jhcgsj').value;
          params[7].asfloat:=lbjh3.fieldbyname('jhwlcd').value;
          params[8].asstring:=lbjh3.fieldbyname('mjh').value;
          params[9].asfloat:=lbjh3.fieldbyname('lb_out').value;
          params[10].asfloat:=lbjh3.fieldbyname('tw_out').value;
          params[11].asfloat:=lbjh3.fieldbyname('sh_in').value;
          params[12].asfloat:=lbjh3.fieldbyname('sh_out').value;
          params[13].asfloat:=lbjh3.fieldbyname('sh_ttl').value;
          params[14].asfloat:=lbjh3.fieldbyname('wt_g').value;
          params[15].asfloat:=lbjh3.fieldbyname('wt_ttlsh').value;
          params[16].asstring:=lbjh3.fieldbyname('prjno').value;
          params[17].asstring:=lbjh3.fieldbyname('wl').value;
          params[18].asinteger:=lbjh3.fieldbyname('xh').value;
          params[19].asinteger:=lbjh3.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
  }
end;

procedure Tfrmlbjh.fcwl2AfterPost(DataSet: TDataSet);
begin
  fcwl2.UpdateBatch(arAll);
  {
  if fcwl2.applyupdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'bzmj',ptinput);
      params.createparam(ftboolean,'zbmj',ptinput);
      params.createparam(ftboolean,'twmj',ptinput);
      params.createparam(ftboolean,'pzx',ptinput);
      params.createparam(ftboolean,'yymj',ptinput);
      params.createparam(ftboolean,'dk',ptinput);
      params.createparam(ftboolean,'hk',ptinput);
      params.createparam(ftboolean,'ds',ptinput);
      params.createparam(ftboolean,'hs',ptinput);
      params.createparam(ftboolean,'dzd',ptinput);
      params.createparam(ftboolean,'hzd',ptinput);
      params.createparam(ftboolean,'ldz',ptinput);
      params.createparam(ftboolean,'lhz',ptinput);
      params.createparam(ftboolean,'yqxg',ptinput);
      params.createparam(ftboolean,'zysc',ptinput);
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      params.createparam(ftinteger,'xh',ptinput);
      commandtext:='update cut_fcwl2 set bzmj=:bzmj,zbmj=:zbmj,twmj=:twmj,pzx=:pzx,yymj=:yymj,dk=:dk,hk=:hk,ds=:ds,hs=:hs,dzd=:dzd,hzd=:hzd,ldz=:ldz,lhz=:lhz,yqxg=:yqxg,zysc=:zysc '
                  +'where prjno=:prjno and wl=:wl and xh=:xh';
      params[0].asboolean:=fcwl2.fieldbyname('bzmj').value;
      params[1].asboolean:=fcwl2.fieldbyname('zbmj').value;
      params[2].asboolean:=fcwl2.fieldbyname('twmj').value;
      params[3].asboolean:=fcwl2.fieldbyname('pzx').value;
      params[4].asboolean:=fcwl2.fieldbyname('yymj').value;
      params[5].asboolean:=fcwl2.fieldbyname('dk').value;
      params[6].asboolean:=fcwl2.fieldbyname('hk').value;
      params[7].asboolean:=fcwl2.fieldbyname('ds').value;
      params[8].asboolean:=fcwl2.fieldbyname('hs').value;
      params[9].asboolean:=fcwl2.fieldbyname('dzd').value;
      params[10].asboolean:=fcwl2.fieldbyname('hzd').value;
      params[11].asboolean:=fcwl2.fieldbyname('ldz').value;
      params[12].asboolean:=fcwl2.fieldbyname('lhz').value;
      params[13].asboolean:=fcwl2.fieldbyname('yqxg').value;
      params[14].asboolean:=fcwl2.fieldbyname('zysc').value;
      params[15].asstring:=fcwl2.fieldbyname('prjno').value;
      params[16].asstring:=fcwl2.fieldbyname('wl').value;
      params[17].asinteger:=fcwl2.fieldbyname('xh').value;
      execute;
    end;
  end;
  }
end;

procedure Tfrmlbjh.SpeedButton10Click(Sender: TObject);
begin
  if lbjh1.state=dsedit then lbjh1.post;
  if lbjh2.state=dsedit then lbjh2.post;
end;

procedure Tfrmlbjh.lbjh2MjsChange(Sender: TField);
begin
  if not lbjh2.fieldbyname('mjs').isnull then
    lbjh2.fieldbyname('mjjs').asinteger:=round(lbjh1.fieldbyname('lbzs').value*lbjh2.fieldbyname('mjs').value);
end;

procedure Tfrmlbjh.lbjh3NewRecord(DataSet: TDataSet);
var
  seqno:integer;
begin
  with query1 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    //params.createparam(ftstring,'wl',ptinput);
    //params.createparam(ftinteger,'xh',ptinput);
    //commandtext:='select a.lbzs-sum(b.jhlbzs) as lbzs from cut_lbjh1 a,cut_lbjh3 b '
    //            +'where a.prjno=b.prjno and a.wl=b.wl and a.xh=b.xh and a.prjno=:prjno '
    //            +'and a.wl=:wl and a.xh=:xh group by a.lbzs';
    sql.text:='select sum(jhlbzs) as lbzs from cut_lbjh3 where prjno=:prjno and wl=:wl and xh=:xh';
    parameters[0].value:=lbjh1.fieldbyname('prjno').value;
    parameters[1].value:=lbjh1.fieldbyname('wl').value;
    parameters[2].value:=lbjh1.fieldbyname('xh').value;
    open;
  end;
  with query2 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    //params.createparam(ftstring,'wl',ptinput);
    //params.createparam(ftinteger,'xh',ptinput);
    sql.text:='select max(seq) as seqno from cut_lbjh3 where prjno=:prjno and wl=:wl and xh=:xh';
    parameters[0].value:=lbjh1.fieldbyname('prjno').value;
    parameters[1].value:=lbjh1.fieldbyname('wl').value;
    parameters[2].value:=lbjh1.fieldbyname('xh').value;
    open;
    if not fieldbyname('seqno').isnull then seqno:=fieldbyname('seqno').value+1
    else seqno:=1;
  end;
  lbjh3.fieldbyname('prjno').value:=lbjh1.fieldbyname('prjno').value;
  lbjh3.fieldbyname('wl').value:=lbjh1.fieldbyname('wl').value;
  lbjh3.fieldbyname('xh').value:=lbjh1.fieldbyname('xh').value;
  if not query1.fieldbyname('lbzs').isnull then begin
    if lbjh1.fieldbyname('bmj').value=true then
    lbjh3.fieldbyname('jhlbzs').value:=lbjh1.fieldbyname('lbzs').value
    else lbjh3.fieldbyname('jhlbzs').value:=lbjh1.fieldbyname('lbzs').value-query1.fieldbyname('lbzs').value;
  end else lbjh3.fieldbyname('jhlbzs').value:=lbjh1.fieldbyname('lbzs').value;
  lbjh3.fieldbyname('seq').value:=seqno;
  lbjh3.fieldbyname('lb_out').value:=0;
  lbjh3.fieldbyname('tw_out').value:=40;
  lbjh3.fieldbyname('wt_g').value:=0;
end;

procedure Tfrmlbjh.lbjh3MjcdChange(Sender: TField);
begin
  if not lbjh3.fieldbyname('mjcd').isnull then begin
    lbjh3.fieldbyname('jhdzlbcd').value:=lbjh3.fieldbyname('mjcd').value+0.02;
    lbjh3.fieldbyname('jhwlcd').value:=lbjh3.fieldbyname('jhlbzs').value*lbjh3.fieldbyname('jhdzlbcd').value;
  end;
end;

procedure Tfrmlbjh.lbjh3MjypzbcChange(Sender: TField);
begin
  if not lbjh3.fieldbyname('mjypzbc').isnull then
    lbjh3.fieldbyname('jhcgsj').Value:=lbjh3.fieldbyname('mjypzbc').value/450;
end;

procedure Tfrmlbjh.SpeedButton7Click(Sender: TObject);
begin
  if (lbjh3.state=dsinsert) or (lbjh3.state=dsedit) then lbjh3.post;
  if lbjh1.recordcount>0 then
  begin
    query2.close;
    //query2.params.clear;
    //query2.params.createparam(ftstring,'prjno',ptinput);
    //query2.params.createparam(ftinteger,'xh',ptinput);
    //query2.params.createparam(ftstring,'wl',ptinput);
    query2.sql.text:='select * from cut_lbjh3 where prjno=:prjno and xh=:xh and wl=:wl';
    query2.parameters[0].value:=dbedit1.text;
    query2.parameters[1].value:=strtoint(dbedit2.text);
    query2.parameters[2].value:=dbedit17.text;
    query2.open;
    if query2.recordcount>0 then
    begin
     query1.close;
     //query1.params.clear;
     //query1.params.createparam(ftstring,'prjno',ptinput);
     //query1.params.createparam(ftinteger,'xh',ptinput);
     //query1.params.createparam(ftstring,'wl',ptinput);
     query1.SQL.text:='select sum(mjfd*jhlbzs)/sum(jhlbzs) as pjmjfd,sum(pbl*jhlbzs)/sum(jhlbzs) as pbl,sum(ybl*jhlbzs)/sum(jhlbzs) as ybl,'
                        +'sum(hsl*jhlbzs)/sum(jhlbzs) as hsl,sum(mjcd*jhlbzs)/sum(jhlbzs) as mjzcd,sum(mjypzbc) as mjypzbzc, sum(jhdzlbcd) as jhdzlbzc,'
                        +'sum(jhwlcd) as jhwlzc,sum(jhcgsj) as jhcgzsj,sum(jhscsh) as jhscsh from cut_lbjh3 where prjno=:prjno and xh=:xh and wl=:wl';
     query1.parameters[0].value:=lbjh1.fieldbyname('prjno').value;
     query1.parameters[1].value:=lbjh1.fieldbyname('xh').value;
     query1.parameters[2].value:=lbjh1.fieldbyname('wl').value;
     query1.open;
     if query1.recordcount>0 then
     begin
      lbjh1.edit;
      if not query1.fieldbyname('pbl').isnull then
      lbjh1.fieldbyname('pbl').value:=query1.fieldbyname('pbl').value;
      if not query1.fieldbyname('hsl').isnull then
      lbjh1.fieldbyname('hsl').value:=query1.fieldbyname('hsl').value;
      if not query1.fieldbyname('pjmjfd').isnull then
      lbjh1.fieldbyname('pjmjfd').value:=query1.fieldbyname('pjmjfd').value;
      if not query1.fieldbyname('ybl').isnull then
      lbjh1.fieldbyname('ybl').value:=query1.fieldbyname('ybl').value;
      lbjh1.fieldbyname('mjzcd').value:=query1.fieldbyname('mjzcd').value;
      lbjh1.fieldbyname('mjypzbzc').value:=query1.fieldbyname('mjypzbzc').value;
      lbjh1.fieldbyname('jhdzlbzc').value:=query1.fieldbyname('jhdzlbzc').value;
      lbjh1.fieldbyname('jhwlzc').value:=query1.fieldbyname('jhwlzc').value;
      lbjh1.fieldbyname('jhcgzsj').value:=query1.fieldbyname('jhcgzsj').value;
      lbjh1.fieldbyname('jhscsh').value:=query1.fieldbyname('jhscsh').value;
      lbjh1.post;
     end;
    end;
  end;
end;

procedure Tfrmlbjh.SpeedButton15Click(Sender: TObject);
begin
  if frmxglbzs=nil then frmxglbzs:=tfrmxglbzs.create(self);
  frmxglbzs.label3.caption:='lbjh';
  frmxglbzs.edit1.text:=dbedit3.text;
  frmxglbzs.edit2.text:='';
  frmxglbzs.show;
end;

procedure Tfrmlbjh.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.activepage=tabsheet1 then begin
    speedbutton7click(self);
  end
  else begin
    if (lbjh1.state=dsedit) or (lbjh2.state=dsedit) then
      speedbutton10click(self);
  end;
end;

procedure Tfrmlbjh.N3Click(Sender: TObject);
begin
  if application.MessageBox('要取消拉布調整嗎?','提示信息',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'mjstatus',ptinput);
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      sql.text:='update cut_lbjh1 set mjstatus=:mjstatus where prjno=:prjno and wl=:wl and xh=:xh';
      parameters[0].value:='';
      parameters[1].value:=lbjh1.fieldbyname('prjno').value;
      parameters[2].value:=lbjh1.fieldbyname('wl').value;
      parameters[3].value:=lbjh1.fieldbyname('xh').value;
      execsql;
    end;
    showmessage('OK!');
  end;
end;

procedure Tfrmlbjh.N5Click(Sender: TObject);
var
  prjno,wl:string;
  xh:integer;
begin
  screen.cursor:=crHourglass;
  if lbjh1.active=true then begin
    prjno:=lbjh1.fieldbyname('prjno').value;
    wl:=lbjh1.fieldbyname('wl').value;
    xh:=lbjh1.fieldbyname('xh').value;
    with aquery1 do begin
      close;
      sql.text:='exec cut_lbaddcm :prjno,:wl,:xh';
      parameters[0].value:=prjno;
      parameters[1].value:=wl;
      parameters[2].value:=xh;
      execsql;
    end;
    with lbjh1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbjh1 where prjno=:prjno';
      parameters[0].value:=prjno;
      open;
      locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[]);
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.N6Click(Sender: TObject);
begin
  if lbjh1.active=true then begin
    with query1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      //params.createparam(ftstring,'wl',ptinput);
      //params.createparam(ftinteger,'xh',ptinput);
      sql.text:='delete from cut_lbjh2 where prjno=:prjno and wl=:wl and xh=:xh and mjs=0';
      parameters[0].value:=lbjh1.fieldbyname('prjno').value;
      parameters[1].value:=lbjh1.fieldbyname('wl').value;
      parameters[2].value:=lbjh1.fieldbyname('xh').value;
      execsql;
    end;
    showmessage('OK!');
  end;
end;

procedure Tfrmlbjh.SpeedButton16Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if dbedit1.text<>'' then
 begin
  //frmxtdl.SocketConnection1.AppServer.printplaningmj(dbedit1.text);
  with aquery1 do begin
    close;
    sql.text:='exec cut_plbfx :prjno';
    parameters[0].value:=dbedit1.text;
    execsql;
  end;
  if frmjhmjfx=nil then frmjhmjfx:=tfrmjhmjfx.create(self);
  with frmjhmjfx.query1 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    commandtext:='select * from cut_lbwl21 where prjno='''+dbedit1.text+'''';//:prjno';
    //params[0].asstring:=dbedit1.text;
    open;
  end;
  if pos('PU',lbjh1.fieldbyname('prjno').value)>0 then frmjhmjfx.bitbtn6.visible:=true
  else frmjhmjfx.bitbtn6.visible:=false;
  frmjhmjfx.show;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dbgrideh1.setfocus;
end;

procedure Tfrmlbjh.lbjh1AfterOpen(DataSet: TDataSet);
begin
  lbjh1.fieldbyname('lbzs').onchange:=lbjh1zshdchange;
  lbjh1.fieldbyname('hd_dz').onchange:=lbjh1zshdchange;
  (lbjh1.fieldbyname('jhcgzsj') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('jhdzlbzc') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('jhscsh') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('pbl') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('ybl') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('jhwlzc') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('bcd') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('mjzcd') as tfloatfield).displayformat:='#0.000';
  (lbjh1.fieldbyname('bfd') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('bzl') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('lbhd') as tfloatfield).displayformat:='#0.00';
  (lbjh1.fieldbyname('hd_dz') as tfloatfield).displayformat:='#0.000';
  (lbjh1.fieldbyname('hd_limit') as tfloatfield).displayformat:='#0.00';
end;

procedure Tfrmlbjh.DBGridEh1Enter(Sender: TObject);
begin
  if lbjh1.state=dsedit then lbjh1.post;
end;

procedure Tfrmlbjh.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then dbedit20.setfocus;
end;

procedure Tfrmlbjh.SpeedButton17Click(Sender: TObject);
var
  prjno,wl:string;
  seq,xh,xh1:integer;
begin
  screen.cursor:=crHourglass;
  try
    if lbjh1.active=true then begin
      if application.MessageBox('要加模杯損耗嗎?','提示',mb_iconquestion+mb_okcancel)=idok then begin
        prjno:=lbjh1.fieldbyname('prjno').value;
        wl:=lbjh1.fieldbyname('wl').value;
        seq:=lbjh1.fieldbyname('seq').value;
        xh1:=lbjh1.fieldbyname('xh').value;
        with query1 do begin
          close;
          //params.clear;
          //params.createparam(ftstring,'prjno',ptinput);
          //params.createparam(ftstring,'wl',ptinput);
          sql.text:='select max(xh) as xh1 from cut_lbjh1 where prjno=:prjno and wl=:wl';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          open;
          xh:=fieldbyname('xh1').value+1;
        end;
        with aquery1 do begin
          close;
          sql.text:='exec cut_mbsh :prjno,:wl,:xh,:xh1';
          parameters[0].value:=prjno;
          parameters[1].value:=wl;
          parameters[2].value:=xh1;
          parameters[3].value:=xh;
          execsql;
        end;
        with lbjh1 do begin
          close;
          //params.clear;
          //params.createparam(ftstring,'prjno',ptinput);
          commandtext:='select * from cut_lbjh1 where prjno=:prjno';
          parameters[0].value:=prjno;
          open;
          locate('prjno;wl;xh',vararrayof([prjno,wl,xh]),[]);
        end;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmlbjh.lbjh2NewRecord(DataSet: TDataSet);
begin
  lbjh2.fieldbyname('prjno').value:=lbjh1.fieldbyname('prjno').value;
  lbjh2.fieldbyname('wl').value:=lbjh1.fieldbyname('wl').value;
  lbjh2.fieldbyname('xh').value:=lbjh1.fieldbyname('xh').value;
end;

procedure Tfrmlbjh.BitBtn4Click(Sender: TObject);
begin
  if LBJH1.active=true then begin
    if frmxgwl1=nil then frmxgwl1:=tfrmxgwl1.create(self);
    frmxgwl1.edit2.text:=dbedit1.text;
    frmxgwl1.combobox2.text:=dbedit17.text;
    FRMXGWL1.LABEL4.CAPTION:='LBJH';
    frmxgwl1.show;
  end;
end;

procedure Tfrmlbjh.BitBtn2Click(Sender: TObject);
var
  oprjno,nprjno:string;
  wl:string;
  xh:integer;
begin
 if lbjh1.active=true then begin
  screen.cursor:=crHourglass;
  oprjno:=lbjh1.fieldbyname('prjno').value;
  wl:=lbjh1.fieldbyname('wl').value;
  xh:=lbjh1.fieldbyname('xh').value;
  nprjno:=inputbox('提示','請輸入新的工程號:','');
  if nprjno>'' then begin
    with aquery1 do begin
      close;
      {
      params.clear;
      params.createparam(ftstring,'oprjno',ptinput);
      params.createparam(ftstring,'nprjno',ptinput);
      }
      sql.text:='exec cut_xgprj :oprjno,:nprjno';
      parameters[0].value:=oprjno;
      parameters[1].value:=uppercase(nprjno);
      execsql;
    end;
    with lbjh1 do begin
      close;
      //params.clear;
      //params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select * from cut_lbjh1 where prjno=:prjno';
      parameters[0].value:=nprjno;
      open;
      locate('prjno;wl;xh',vararrayof([nprjno,wl,xh]),[]);
    end;
  end;
  screen.cursor:=crDefault;
 end;
end;

procedure Tfrmlbjh.BitBtn5Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  query1.close;
  //query1.params.clear;
  //query1.params.createparam(ftstring,'prjno',ptinput);
  //query1.params.createparam(ftstring,'wl',ptinput);
  //query1.params.createparam(ftinteger,'xh',ptinput);
  //query1.params.createparam(ftstring,'kh',ptinput);
  query1.sql.text:='select tm from cut_lbtz where prjno=:prjno and wl=:wl and xh=:xh and kh=:kh';
  query1.parameters[0].value:=lbjh1.fieldbyname('prjno').value;
  query1.parameters[1].value:=lbjh1.fieldbyname('wl').value;
  query1.parameters[2].value:=lbjh1.fieldbyname('xh').value;
  query1.parameters[3].value:=lbjh2.fieldbyname('kh').value;
  query1.open;
  if query1.recordcount>0 then begin
   if query1.fieldbyname('tm').value=false then begin
    if frmxgtm=nil then frmxgtm:=tfrmxgtm.create(self);
    frmxgtm.label2.caption:='lbjh1';
    frmxgtm.show;
   end
   else begin
    application.messagebox('此款已為通碼!','提示信息',mb_iconinformation+mb_ok);
   end;
  end
  else begin
    if frmxgtm=nil then frmxgtm:=tfrmxgtm.create(self);
    frmxgtm.label2.caption:='lbjh1';
    frmxgtm.show;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton18Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmmmyz=nil then frmmmyz:=tfrmmmyz.create(self);
  frmmmyz.label1.caption:='lbjh2';
  frmmmyz.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton19Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmmmyz=nil then frmmmyz:=tfrmmmyz.create(self);
  frmmmyz.label1.caption:='lbjh3';
  frmmmyz.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.lbjh3BeforePost(DataSet: TDataSet);
begin
  with query1 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'prjno',ptinput);
    //params.createparam(ftstring,'wl',ptinput);
    //params.createparam(ftinteger,'xh',ptinput);
    //params.createparam(ftstring,'mjh',ptinput);
    //params.createparam(ftinteger,'seq',ptinput);
    sql.text:='select distinct mjh from cut_lbjh3 where prjno=:prjno and wl=:wl and xh=:xh and mjh=:mjh and seq<>:seq';
    parameters[0].value:=lbjh1.fieldbyname('prjno').value;
    parameters[1].value:=lbjh1.fieldbyname('wl').value;
    parameters[2].value:=lbjh1.fieldbyname('xh').value;
    parameters[3].value:=lbjh3.fieldbyname('mjh').value;
    parameters[4].value:=lbjh3.fieldbyname('seq').value;
    open;
    if not fieldbyname('mjh').isnull then abort;
  end;
end;

procedure Tfrmlbjh.lbjh3MjhChange(Sender: TField);
Var
  hDll: THandle;
  arRst: array of Variant;
  i: Integer;
begin
  if not lbjh3.fieldbyname('mjh').isnull then begin
  //hDll := LoadLibrary(pchar(extractfilepath(application.exename)+'csv2cplib.dll'));

  //GetCutFromCsv := GetProcAddress(hDll, 'GetCutFromCsv');

  {
  lbjh1.Edit;
  lbjh1.FieldByName('rq').Value:=now;
  lbjh1.Post;
  }

  SetLength(arRst, 4);
  for i := 0 to 3 do begin
    arRst[i] := 0;
  end;

  //if not GetCutFromCsv(lbjh3.fieldbyname('mjh').value, arRst) then begin
  if frmcsv=nil then frmcsv:=tfrmcsv.create(nil);
  //frmcsv.edit1.text:=lbjh3.fieldbyname('mjh').value;
  //frmcsv.show;
  //{
  if not frmcsv.new1(lbjh3.fieldbyname('mjh').value, arRst) then begin
    MessageBox(self.Handle, 'Get data fail.', 'Get from csv', MB_OK or MB_ICONEXCLAMATION);

  end;

  if frmcsv.Query1.active=true then begin
  if not frmcsv.Query1.fieldbyname('Width').isnull then begin
    arRst[0]:=frmcsv.Query1.fieldbyname('Width').value;
    arRst[1]:=frmcsv.Query1.fieldbyname('Length').value;
    arRst[2]:=frmcsv.Query1.fieldbyname('Util').value;
    arRst[3]:=frmcsv.Query1.fieldbyname('P_Per').value;
    //arRst[4]:=frmcsv.Query1.fieldbyname('Placed').value;
  end;
  end;
  //FreeLibrary(hDll);

  lbjh3.fieldbyname('mjfd').value:=arRst[0]*10;
  lbjh3.fieldbyname('mjcd').value:=arRst[1]/100;
  lbjh3.fieldbyname('ybl').value:=arRst[2];
  lbjh3.fieldbyname('mjypzbc').value:=arRst[3];
  //}

  //{
  with query1 do begin
    close;
    sql.text:='update cut_lbjh1 set rq=getdate() where prjno='''+lbjh1.fieldbyname('prjno').value+''' and wl='''+lbjh1.fieldbyname('wl').value+''' and xh='+lbjh1.fieldbyname('xh').asstring;
    execsql;
  end;
  //}

  //lbjh1.edit;
  //lbjh1.fieldbyname('dzmjps').value:=arRst[4];
  //lbjh1.fieldbyname('rq').value:=now;

  end;
end;

procedure Tfrmlbjh.lbjh3MjhSetText(Sender: TField; const Text: String);
begin
  lbjh3.fieldbyname('mjh').value:=uppercase(text);
end;

procedure Tfrmlbjh.lbjh3lb_outChange(Sender: TField);
var
  lb_out,tw_out,wt_g:double;
  mjfd,mjcd:double;
  ybl:double;
  mjmj,bmj:double;
  jhlbzs:integer;
begin
  lb_out:=0; tw_out:=0; wt_g:=0; mjfd:=0; mjcd:=0; ybl:=0; jhlbzs:=0;
  if not lbjh3.fieldbyname('lb_out').isnull then lb_out:=lbjh3.fieldbyname('lb_out').value;
  if not lbjh3.fieldbyname('tw_out').isnull then tw_out:=lbjh3.fieldbyname('tw_out').value;
  if not lbjh3.fieldbyname('wt_g').isnull then wt_g:=lbjh3.fieldbyname('wt_g').value/1000.00;
  if not lbjh3.fieldbyname('mjfd').isnull then mjfd:=lbjh3.fieldbyname('mjfd').value/1000.00;
  if not lbjh3.fieldbyname('mjcd').isnull then mjcd:=lbjh3.fieldbyname('mjcd').value;
  if not lbjh3.fieldbyname('ybl').isnull then ybl:=lbjh3.fieldbyname('ybl').value;
  if not lbjh3.fieldbyname('jhlbzs').isnull then jhlbzs:=lbjh3.fieldbyname('jhlbzs').value;
  mjmj:=mjfd*mjcd;
  bmj:=(lb_out+mjfd)*(tw_out+mjcd);
  if bmj>0 then begin
    lbjh3.fieldbyname('sh_in').value:=(100.00-ybl)*mjmj/bmj;
    lbjh3.fieldbyname('sh_out').value:=(bmj-mjmj)*100.00/bmj;
    lbjh3.fieldbyname('sh_ttl').value:=(100.00-ybl)*mjmj/bmj+(bmj-mjmj)*100.00/bmj;
    lbjh3.fieldbyname('wt_ttlsh').value:=wt_g*((100.00-ybl)*mjmj+(bmj-mjmj)*100.00)/100.00*jhlbzs;
  end else begin
    lbjh3.fieldbyname('sh_in').value:=0;
    lbjh3.fieldbyname('sh_out').value:=0;
    lbjh3.fieldbyname('sh_ttl').value:=0;
    lbjh3.fieldbyname('wt_ttlsh').value:=0;
  end;
end;

procedure Tfrmlbjh.SpeedButton20Click(Sender: TObject);
begin
 screen.cursor:=crHourglass;
 if dbedit1.text<>'' then
 begin
  if frmlbyldy=nil then frmlbyldy:=tfrmlbyldy.create(self);
  with frmlbyldy.lbwlm do begin
    Close;
    params.Clear;
    params.createparam(ftstring,'prjno',ptinput);
    commandtext:='exec cut_lbfx_scrap :prjno';
    params[0].asstring:=dbedit1.text;
    open;
  end;
  frmlbyldy.ppreport1.print;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmlbjh.SpeedButton21Click(Sender: TObject);
begin
  if Copy(ComboBox1.Text,13,2)='PD' then begin
    if frmpu2cu_elements=nil then frmpu2cu_elements:=Tfrmpu2cu_elements.Create(nil);
    frmpu2cu_elements.Label4.Caption:='lb';
    frmpu2cu_elements.DBText1.DataSource:=dslbjh1;
    frmpu2cu_elements.DBText2.DataSource:=dslbjh1;
    frmpu2cu_elements.Show;
  end;
end;

procedure Tfrmlbjh.lbjh2AfterOpen(DataSet: TDataSet);
begin
  (lbjh2.fieldbyname('mjs') as tfloatfield).displayformat:='0.0';
  lbjh2.fieldbyname('mjs').onchange:=lbjh2mjschange;
  with query1 do begin
    close;
    //params.clear;
    //params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    //params.createparam(ftinteger,'x3',ptinput);
    sql.text:='select count(distinct gch) as s0,count(distinct zdh) as s1,count(distinct kh) as s2,count(distinct sh) as s3,count(distinct cm) as s4 from cut_lbjh2 where prjno=:x1 and wl=:x2 and xh=:x3';
    parameters[0].value:=lbjh1.fieldbyname('prjno').value;
    parameters[1].value:=lbjh1.fieldbyname('wl').value;
    parameters[2].value:=lbjh1.fieldbyname('xh').value;
    open;
    //if not fieldbyname('s0').isnull then dbgrideh2.columns[0].footer.value:=fieldbyname('s0').AsString;
    //if not fieldbyname('s1').isnull then dbgrideh2.columns[1].footer.value:=fieldbyname('s1').AsString;
    if not fieldbyname('s2').isnull then dbgrideh2.columns[2].footer.value:=fieldbyname('s2').AsString;
    if not fieldbyname('s3').isnull then dbgrideh2.columns[3].footer.value:=fieldbyname('s3').AsString;
    if not fieldbyname('s4').isnull then dbgrideh2.columns[4].footer.value:=fieldbyname('s4').AsString; 
  end;
  dbgrideh2.Columns[0].Footer.value:=lbjh1.fieldbyname('ttl_gch').AsString;
  dbgrideh2.Columns[1].Footer.value:=lbjh1.fieldbyname('ttl_wo').AsString;
end;

procedure Tfrmlbjh.lbjh1zshdChange(Sender: TField);
var
  i1:integer;
  f1:Double;
begin
  if not lbjh1.fieldbyname('lbzs').isnull then i1:=lbjh1.fieldbyname('lbzs').value else i1:=0;
  if not lbjh1.fieldbyname('hd_dz').isnull then f1:=lbjh1.fieldbyname('hd_dz').value else f1:=0.00;
  lbjh1.FieldByName('lbhd').value:=i1*f1;
end;

end.
