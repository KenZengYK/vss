unit allmcformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh, ExtCtrls,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppVar,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppViewr, Menus, GridsEh,
  ppStrtch, ppMemo, ppParameter;

type
  Tfrmallmc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppShape1: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    Label2: TLabel;
    ComboBox2: TComboBox;
    ppLabel14: TppLabel;
    mtyp001: TppLabel;
    Label3: TLabel;
    ComboBox3: TComboBox;
    ppLabel15: TppLabel;
    mstt001: TppLabel;
    PopupMenu1: TPopupMenu;
    ShowRes1: TMenuItem;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    m01: TppLabel;
    m05: TppLabel;
    m09: TppLabel;
    m13: TppLabel;
    m17: TppLabel;
    m02: TppLabel;
    m06: TppLabel;
    m10: TppLabel;
    m14: TppLabel;
    m18: TppLabel;
    m03: TppLabel;
    m07: TppLabel;
    m11: TppLabel;
    m15: TppLabel;
    m19: TppLabel;
    m04: TppLabel;
    m08: TppLabel;
    m12: TppLabel;
    m16: TppLabel;
    m20: TppLabel;
    ppLine8: TppLine;
    BitBtn6: TBitBtn;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDBPipeline2: TppDBPipeline;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLine9: TppLine;
    m001: TppLabel;
    m101: TppLabel;
    m002: TppLabel;
    m102: TppLabel;
    m103: TppLabel;
    m104: TppLabel;
    m105: TppLabel;
    m106: TppLabel;
    m107: TppLabel;
    m109: TppLabel;
    m108: TppLabel;
    m110: TppLabel;
    m111: TppLabel;
    m112: TppLabel;
    m113: TppLabel;
    m114: TppLabel;
    m115: TppLabel;
    m116: TppLabel;
    m117: TppLabel;
    m118: TppLabel;
    m119: TppLabel;
    m003: TppLabel;
    m004: TppLabel;
    m005: TppLabel;
    m006: TppLabel;
    m007: TppLabel;
    m008: TppLabel;
    m009: TppLabel;
    m010: TppLabel;
    m011: TppLabel;
    m012: TppLabel;
    m013: TppLabel;
    m014: TppLabel;
    m015: TppLabel;
    m016: TppLabel;
    m017: TppLabel;
    m018: TppLabel;
    m019: TppLabel;
    ppLine10: TppLine;
    ppLabel56: TppLabel;
    ppLine11: TppLine;
    ppLabel57: TppLabel;
    ppDBText10: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    fty001: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand2: TppSummaryBand;
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
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppShape4: TppShape;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
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
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ratio001: TppLabel;
    ppLabel23: TppLabel;
    ppLine12: TppLine;
    ppDBText32: TppDBText;
    ppDBCalc22: TppDBCalc;
    Label4: TLabel;
    Edit1: TEdit;
    BitBtn7: TBitBtn;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel31: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel32: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppDBText41: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppImage1: TppImage;
    ppLine13: TppLine;
    ppLabel25: TppLabel;
    x001: TppLabel;
    ppLabel29: TppLabel;
    x002: TppLabel;
    ppLabel34: TppLabel;
    x003: TppLabel;
    ppLabel36: TppLabel;
    x005: TppLabel;
    ppLabel38: TppLabel;
    x004: TppLabel;
    ppLabel40: TppLabel;
    x006: TppLabel;
    ppLabel42: TppLabel;
    x007: TppLabel;
    ppLabel44: TppLabel;
    x008: TppLabel;
    ppLabel46: TppLabel;
    x009: TppLabel;
    ppLabel48: TppLabel;
    x010: TppLabel;
    ppLabel50: TppLabel;
    x011: TppLabel;
    ppLabel52: TppLabel;
    x012: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    x013: TppLabel;
    ppLabel59: TppLabel;
    x014: TppLabel;
    ppLabel61: TppLabel;
    x015: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    x016: TppLabel;
    ppLabel66: TppLabel;
    x017: TppLabel;
    ppLabel28: TppLabel;
    x018: TppLabel;
    ppLabel33: TppLabel;
    ppDBText33: TppDBText;
    ppDBText36: TppDBText;
    ppLabel35: TppLabel;
    ppLine14: TppLine;
    m21: TppLabel;
    m22: TppLabel;
    m23: TppLabel;
    m24: TppLabel;
    ppImage2: TppImage;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppDBText37: TppDBText;
    ppDBText39: TppDBText;
    ppImage3: TppImage;
    memo01: TppMemo;
    memo02: TppMemo;
    ppLabel10: TppLabel;
    x019: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure querychange(Sender: TField);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ComboBox2Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ShowRes1Click(Sender: TObject);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmallmc: Tfrmallmc;

implementation

uses mainformu, mclocformu, mbrandformu, mtypeformu, mcimgformu;

{$R *.dfm}

procedure Tfrmallmc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmallmc:=nil;
end;

procedure Tfrmallmc.ComboBox1Change(Sender: TObject);
begin
  //if combobox2.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_mcpool where 0=0';
      if combobox2.text>'' then commandtext:=commandtext+' and mtyp='''+copy(combobox2.text,1,pos('  ',combobox2.text)-1)+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and mstt='''+combobox3.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and mid='''+edit1.text+'''';
      open;
    end;
  //end;
end;

procedure Tfrmallmc.BitBtn1Click(Sender: TObject);
begin
  if query1.Active then begin
    dbgrideh1.SetFocus;
    dbgrideh1.SelectedIndex:=0;
    query1.Append;
  end;
end;

procedure Tfrmallmc.BitBtn2Click(Sender: TObject);
begin
  if query1.Active then begin
    if application.MessageBox('Want to delete this Mc?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_mcpool where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.delete;
    end;
  end;
end;

procedure Tfrmallmc.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmallmc.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tbl_mcpool';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('tplant').value:=combobox1.text;
  //query1.fieldbyname('msta').value:='1';
  query1.fieldbyname('seq').value:=seq;
end;

procedure Tfrmallmc.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_mcpool where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').IsNull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftstring,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='update tbl_mcpool set mid=:x1,mname=:x2,tplant=:x3,mstt=:x4,msta=:x5,marks=:x6,mtyp=:x8,res=:x9,tra=:x10,'
                      +'vndr=:x11,bdt=:x12,uyear=:x13,mtyp1=:x14,buyer=:x15,img=:x16,mgrp=:x17,mtyp2=:x18,mtyp3=:x19 where seq=:x7';
          if not query1.fieldbyname('mid').isnull then
          params[0].asstring:=query1.fieldbyname('mid').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mname').isnull then
          params[1].asstring:=query1.fieldbyname('mname').value
          else params[1].asstring:='';
          if not query1.fieldbyname('tplant').isnull then
          params[2].asstring:=query1.fieldbyname('tplant').value
          else params[2].asstring:='';
          if not query1.fieldbyname('mstt').isnull then
          params[3].asstring:=query1.fieldbyname('mstt').value
          else params[3].asstring:='';
          if not query1.fieldbyname('msta').isnull then
          params[4].asstring:=query1.fieldbyname('msta').value
          else params[4].asstring:='';
          if not query1.fieldbyname('marks').isnull then
          params[5].asstring:=query1.fieldbyname('marks').value
          else params[5].asstring:='';
          if not query1.fieldbyname('mtyp').isnull then
          params[6].asstring:=query1.fieldbyname('mtyp').Value
          else params[6].asstring:='';
          if not query1.fieldbyname('res').isnull then
          params[7].asstring:=query1.fieldbyname('res').Value
          else params[7].asstring:='';
          if not query1.fieldbyname('tra').isnull then
          params[8].asstring:=query1.fieldbyname('tra').Value
          else params[8].asstring:='';
          if not query1.fieldbyname('vndr').isnull then
          params[9].asstring:=query1.fieldbyname('vndr').value
          else params[9].asstring:='';
          if not query1.fieldbyname('bdt').isnull then
          params[10].asdate:=query1.fieldbyname('bdt').value;
          if not query1.fieldbyname('uyear').isnull then
          params[11].asfloat:=query1.fieldbyname('uyear').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('mtyp1').isnull then
          params[12].asstring:=query1.fieldbyname('mtyp1').value
          else params[12].asstring:='';
          if not query1.fieldbyname('buyer').isnull then
          params[13].asstring:=query1.fieldbyname('buyer').value
          else params[13].asstring:='';
          if not query1.fieldbyname('img').isnull then
          params[14].asstring:=query1.fieldbyname('img').value
          else params[14].asstring:='';
          if not query1.fieldbyname('mgrp').isnull then
          params[15].asstring:=query1.fieldbyname('mgrp').value
          else params[15].asstring:='';
          if not query1.fieldbyname('mtyp2').isnull then
          params[16].asstring:=query1.fieldbyname('mtyp2').value
          else params[16].asstring:='';
          if not query1.fieldbyname('mtyp3').isnull then
          params[17].asstring:=query1.fieldbyname('mtyp3').value
          else params[17].asstring:='';
          params[18].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftdate,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftstring,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          commandtext:='insert into tbl_mcpool(mid,mname,tplant,mstt,msta,marks,seq,mtyp,res,tra,vndr,bdt,uyear,mtyp1,buyer,img,mgrp,mtyp2,mtyp3) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19)';
          if not query1.fieldbyname('mid').isnull then
          params[0].asstring:=query1.fieldbyname('mid').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mname').isnull then
          params[1].asstring:=query1.fieldbyname('mname').value
          else params[1].asstring:='';
          if not query1.fieldbyname('tplant').isnull then
          params[2].asstring:=query1.fieldbyname('tplant').value
          else params[2].asstring:='';
          if not query1.fieldbyname('mstt').isnull then
          params[3].asstring:=query1.fieldbyname('mstt').value
          else params[3].asstring:='';
          if not query1.fieldbyname('msta').isnull then
          params[4].asstring:=query1.fieldbyname('msta').value
          else params[4].asstring:='';
          if not query1.fieldbyname('marks').isnull then
          params[5].asstring:=query1.fieldbyname('marks').value
          else params[5].asstring:='';
          params[6].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('mtyp').isnull then
          params[7].asstring:=query1.fieldbyname('mtyp').Value
          else params[7].asstring:='';
          if not query1.fieldbyname('res').isnull then
          params[8].asstring:=query1.fieldbyname('res').Value
          else params[8].asstring:='';
          if not query1.fieldbyname('tra').isnull then
          params[9].asstring:=query1.fieldbyname('tra').Value
          else params[9].asstring:='';
          if not query1.fieldbyname('vndr').isnull then
          params[10].asstring:=query1.fieldbyname('vndr').value
          else params[10].asstring:='';
          if not query1.fieldbyname('bdt').isnull then
          params[11].asdate:=query1.fieldbyname('bdt').value;
          if not query1.fieldbyname('uyear').isnull then
          params[12].asfloat:=query1.fieldbyname('uyear').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('mtyp1').isnull then
          params[13].asstring:=query1.fieldbyname('mtyp1').value
          else params[13].asstring:='';
          if not query1.fieldbyname('buyer').isnull then
          params[14].asstring:=query1.fieldbyname('buyer').value
          else params[14].asstring:='';
          if not query1.fieldbyname('img').isnull then
          params[15].asstring:=query1.fieldbyname('img').value
          else params[15].asstring:='';
          if not query1.fieldbyname('mgrp').isnull then
          params[16].asstring:=query1.fieldbyname('mgrp').value
          else params[16].asstring:='';
          if not query1.fieldbyname('mtyp2').isnull then
          params[17].asstring:=query1.fieldbyname('mtyp2').value
          else params[17].asstring:='';
          if not query1.fieldbyname('mtyp3').isnull then
          params[18].asstring:=query1.fieldbyname('mtyp3').value
          else params[18].asstring:='';
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmallmc.DBGridEh1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmmcloc=nil then frmmcloc:=tfrmmcloc.create(nil);
  frmmcloc.ComboBox1.Items.clear;
  frmmcloc.ComboBox2.items.Clear;
  if not query1.fieldbyname('tplant').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+query1.fieldbyname('tplant').value+''' and tshop>'''' and pline>''''';
      open;
      first;
      while not eof do begin
        frmmcloc.ComboBox1.Items.add(fieldbyname('tshop').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if combobox1.text='SL' then begin
      frmmcloc.ComboBox1.Items.add('3E');
      frmmcloc.ComboBox1.items.add('3K');
      frmmcloc.ComboBox1.Items.Add('4K');
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+query1.fieldbyname('tplant').value+''' and tshop>'''' and pline>''''';
      open;
      first;
      while not eof do begin
        frmmcloc.ComboBox2.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if combobox1.text='SL' then begin
      frmmcloc.ComboBox2.items.add('ESSE');
      frmmcloc.ComboBox2.items.add('M&S Pilot');
    end;
  end;
  if not query1.fieldbyname('msta').isnull then begin
    if query1.fieldbyname('msta').value='1' then begin
      if query1.fieldbyname('mstt').value='Reserve' then frmmcloc.xh1.Checked:=true
      else if query1.fieldbyname('mstt').value='On Repairing' then frmmcloc.xh2.Checked:=true
      else if query1.fieldbyname('mstt').value='Open' then frmmcloc.xh8.Checked:=true
      else if query1.FieldByName('mstt').value='BN Support' then frmmcloc.xh9.Checked:=true;
    end else if query1.fieldbyname('msta').value='2' then begin
      frmmcloc.xh3.Checked:=true;
      frmmcloc.ComboBox1.Text:=query1.fieldbyname('mstt').value;
    end else if query1.fieldbyname('msta').value='3' then begin
      frmmcloc.xh4.Checked:=true;
      frmmcloc.ComboBox2.Text:=query1.fieldbyname('mstt').value;
    end else if query1.fieldbyname('msta').value='4' then begin
      frmmcloc.xh5.Checked:=true;
    end else if query1.fieldbyname('msta').value='5' then begin
      frmmcloc.xh6.Checked:=true;
    end else if query1.fieldbyname('msta').value='6' then begin
      frmmcloc.xh7.Checked:=true;
    end;
  end;
  frmmcloc.show;
end;

procedure Tfrmallmc.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmallmc.BitBtn4Click(Sender: TObject);
begin
  if query1.RecordCount>0 then begin
    mtyp001.Caption:=combobox2.text;
    mstt001.Caption:=combobox3.Text;
    ppReport1.Print;
  end;
end;

procedure Tfrmallmc.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('bdt').onchange:=querychange;
end;

procedure Tfrmallmc.querychange(Sender: TField);
var
  y1,m1,d1,y2,m2,d2:word;
begin
  if not query1.fieldbyname('bdt').isnull then begin
    decodedate(date,y1,m1,d1);
    decodedate(query1.fieldbyname('bdt').value,y2,m2,d2);
    query1.fieldbyname('uyear').value:=y1-y2+(m1-m2)/12.0;
  end else query1.fieldbyname('uyear').value:=0;
end;

procedure Tfrmallmc.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmmbrand=nil then frmmbrand:=tfrmmbrand.create(nil);
  with frmmbrand.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_mcbrand where tplant='''+query1.fieldbyname('tplant').value+'''';
    open;
    locate('mbrand',query1.fieldbyname('mname').value,[lopartialkey]);
  end;
  frmmbrand.Show;
end;

procedure Tfrmallmc.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct mtyp||''  ''||mtyp1 as mtype from tbl_mcpool where mtyp>''''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('mtype').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmallmc.FormShow(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r46 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if fieldbyname('r46').value=true then begin
      frmallmc.DBGridEh1.ReadOnly:=false;
      frmallmc.BitBtn1.Enabled:=true;
      frmallmc.BitBtn2.Enabled:=true;
      frmallmc.BitBtn3.Enabled:=true;
    end else begin
      frmallmc.DBGridEh1.ReadOnly:=true;
      frmallmc.BitBtn1.Enabled:=false;
      frmallmc.BitBtn2.Enabled:=false;
      frmallmc.BitBtn3.Enabled:=false;
    end;
  end;
end;

procedure Tfrmallmc.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct mstt from tbl_mcpool where mstt>''''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('mstt').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmallmc.ShowRes1Click(Sender: TObject);
begin
  dbgrideh1.Columns[10].Visible:=not dbgrideh1.Columns[10].Visible;
end;

procedure Tfrmallmc.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmmtype=nil then frmmtype:=tfrmmtype.create(nil);
  with frmmtype.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_mctype where tplant='''+query1.fieldbyname('tplant').value+'''';
    open;
    locate('mtyp1',query1.fieldbyname('mtyp1').value,[lopartialkey]);
  end;
  frmmtype.show;
end;

procedure Tfrmallmc.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  i:integer;
  cnt:integer;
begin
  m01.Caption:='';m02.Caption:='';m03.Caption:='';m04.Caption:='';m05.Caption:='';
  m06.Caption:='';m07.Caption:='';m08.Caption:='';m09.Caption:='';m10.Caption:='';
  m11.Caption:='';m12.Caption:='';m13.Caption:='';m14.Caption:='';m15.Caption:='';
  m16.Caption:='';m17.Caption:='';m18.Caption:='';m19.Caption:='';m20.Caption:='';
  m21.Caption:='';m22.Caption:='';m23.Caption:='';m24.Caption:='';
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(*) as cnt from tbl_mcpool where 0=0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and mtyp='''+copy(combobox2.text,1,pos('  ',combobox2.text)-1)+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and mstt='''+combobox3.text+'''';
    open;
    cnt:=fieldbyname('cnt').value;
  end;
  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct mtyp,mtyp1,count(*) as cnt from tbl_mcpool where 0=0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and mtyp='''+copy(combobox2.text,1,pos('  ',combobox2.text)-1)+'''';
    if combobox3.text>'' then commandtext:=commandtext+' and mstt='''+combobox3.text+'''';
    commandtext:=commandtext+' group by mtyp,mtyp1 order by mtyp,mtyp1';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then begin
        m01.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=2 then begin
        m02.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=3 then begin
        m03.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=4 then begin
        m04.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=5 then begin
        m05.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=6 then begin
        m06.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=7 then begin
        m07.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=8 then begin
        m08.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=9 then begin
        m09.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=10 then begin
        m10.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=11 then begin
        m11.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=12 then begin
        m12.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=13 then begin
        m13.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=14 then begin
        m14.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=15 then begin
        m15.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=16 then begin
        m16.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=17 then begin
        m17.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=18 then begin
        m18.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=19 then begin
        m19.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=20 then begin
        m20.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=21 then begin
        m21.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=22 then begin
        m22.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=23 then begin
        m23.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end else if i=24 then begin
        m24.Caption:=fieldbyname('mtyp1').value+' / '+fieldbyname('mtyp').value+':  '+fieldbyname('cnt').asstring+' ('+formatfloat('0.00%',fieldbyname('cnt').value*100.0/cnt)+')';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmallmc.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmmcimg=nil then frmmcimg:=tfrmmcimg.create(nil);
  frmmcimg.Label1.Caption:='mcpool';
  try
    if not query1.fieldbyname('img').isnull then
    frmmcimg.WebBrowser1.Navigate(query1.fieldbyname('img').value);
  except
  end;
  frmmcimg.show;
end;

procedure Tfrmallmc.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmallmc.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_mc_ratio_h where tm=:x1';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    if not fieldbyname('me01').isnull then m001.Caption:=fieldbyname('me01').value else m001.caption:='';
    if not fieldbyname('me02').isnull then m002.Caption:=fieldbyname('me02').value else m002.caption:='';
    if not fieldbyname('me03').isnull then m003.Caption:=fieldbyname('me03').value else m003.caption:='';
    if not fieldbyname('me04').isnull then m004.Caption:=fieldbyname('me04').value else m004.caption:='';
    if not fieldbyname('me05').isnull then m005.Caption:=fieldbyname('me05').value else m005.caption:='';
    if not fieldbyname('me06').isnull then m006.Caption:=fieldbyname('me06').value else m006.caption:='';
    if not fieldbyname('me07').isnull then m007.Caption:=fieldbyname('me07').value else m007.caption:='';
    if not fieldbyname('me08').isnull then m008.Caption:=fieldbyname('me08').value else m008.caption:='';
    if not fieldbyname('me09').isnull then m009.Caption:=fieldbyname('me09').value else m009.caption:='';
    if not fieldbyname('me10').isnull then m010.Caption:=fieldbyname('me10').value else m010.caption:='';
    if not fieldbyname('me11').isnull then m011.Caption:=fieldbyname('me11').value else m011.caption:='';
    if not fieldbyname('me12').isnull then m012.Caption:=fieldbyname('me12').value else m012.caption:='';
    if not fieldbyname('me13').isnull then m013.Caption:=fieldbyname('me13').value else m013.caption:='';
    if not fieldbyname('me14').isnull then m014.Caption:=fieldbyname('me14').value else m014.caption:='';
    if not fieldbyname('me15').isnull then m015.Caption:=fieldbyname('me15').value else m015.caption:='';
    if not fieldbyname('me16').isnull then m016.Caption:=fieldbyname('me16').value else m016.caption:='';
    if not fieldbyname('me17').isnull then m017.Caption:=fieldbyname('me17').value else m017.caption:='';
    if not fieldbyname('me18').isnull then m018.Caption:=fieldbyname('me18').value else m018.caption:='';
    if not fieldbyname('me19').isnull then m019.Caption:=fieldbyname('me19').value else m019.caption:='';
    if not fieldbyname('mc01').isnull then m101.Caption:=fieldbyname('mc01').value else m101.caption:='';
    if not fieldbyname('mc02').isnull then m102.Caption:=fieldbyname('mc02').value else m102.caption:='';
    if not fieldbyname('mc03').isnull then m103.Caption:=fieldbyname('mc03').value else m103.caption:='';
    if not fieldbyname('mc04').isnull then m104.Caption:=fieldbyname('mc04').value else m104.caption:='';
    if not fieldbyname('mc05').isnull then m105.Caption:=fieldbyname('mc05').value else m105.caption:='';
    if not fieldbyname('mc06').isnull then m106.Caption:=fieldbyname('mc06').value else m106.caption:='';
    if not fieldbyname('mc07').isnull then m107.Caption:=fieldbyname('mc07').value else m107.caption:='';
    if not fieldbyname('mc08').isnull then m108.Caption:=fieldbyname('mc08').value else m108.caption:='';
    if not fieldbyname('mc09').isnull then m109.Caption:=fieldbyname('mc09').value else m109.caption:='';
    if not fieldbyname('mc10').isnull then m110.Caption:=fieldbyname('mc10').value else m110.caption:='';
    if not fieldbyname('mc11').isnull then m111.Caption:=fieldbyname('mc11').value else m111.caption:='';
    if not fieldbyname('mc12').isnull then m112.Caption:=fieldbyname('mc12').value else m112.caption:='';
    if not fieldbyname('mc13').isnull then m113.Caption:=fieldbyname('mc13').value else m113.caption:='';
    if not fieldbyname('mc14').isnull then m114.Caption:=fieldbyname('mc14').value else m114.caption:='';
    if not fieldbyname('mc15').isnull then m115.Caption:=fieldbyname('mc15').value else m115.caption:='';
    if not fieldbyname('mc16').isnull then m116.Caption:=fieldbyname('mc16').value else m116.caption:='';
    if not fieldbyname('mc17').isnull then m117.Caption:=fieldbyname('mc17').value else m117.caption:='';
    if not fieldbyname('mc18').isnull then m118.Caption:=fieldbyname('mc18').value else m118.caption:='';
    if not fieldbyname('mc19').isnull then m119.Caption:=fieldbyname('mc19').value else m119.caption:='';
  end;
end;

procedure Tfrmallmc.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(mt) as q1,sum(wf) as q2 from tbl_mc_ratio_d where tm=:x1';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    if not fieldbyname('q1').isnull then ratio001.Caption:='1:'+formatfloat('0.00',fieldbyname('q2').value/fieldbyname('q1').value)
    else ratio001.Caption:='';
  end;
end;

procedure Tfrmallmc.BitBtn5Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='execute procedure sp_gen_mcratio(:x1,:x2)';
    params[0].asdatetime:=tm;
    params[1].asstring:=combobox1.text;
    execute;
  end;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_mc_ratio_d where tm=:x1 order by tshop';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('tm').isnull then begin
      fty001.Caption:=combobox1.text;
      ppReport2.Print;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmallmc.BitBtn6Click(Sender: TObject);
begin
  if query1.Active then begin
    if query1.RecordCount>0 then ppReport3.Print;
  end;
end;

procedure Tfrmallmc.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  x001.Caption:='';x002.Caption:='';x003.Caption:='';x004.Caption:='';x005.Caption:='';x006.Caption:='';
  x007.Caption:='';x008.Caption:='';x009.Caption:='';x010.Caption:='';x011.Caption:='';x012.Caption:='';
  x013.Caption:='';x014.Caption:='';x015.Caption:='';x016.Caption:='';x017.Caption:='';x018.Caption:='';
  x019.Caption:='';
  try
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_mcbrand where mbrand='''+query1.fieldbyname('mname').value+''' and tplant='''+query1.fieldbyname('tplant').value+'''';
      open;
      if not fieldbyname('maxspeed').isnull then x001.Caption:=fieldbyname('maxspeed').value
      else x001.Caption:=''; 
      if not fieldbyname('aspeed').isnull then x002.Caption:=fieldbyname('aspeed').value
      else x002.Caption:='';
      if not fieldbyname('maxneedle').isnull then x003.Caption:=fieldbyname('maxneedle').value
      else x003.Caption:='';
      if not fieldbyname('maxfeed').isnull then x005.Caption:=fieldbyname('maxfeed').value
      else x005.Caption:='';
      if not fieldbyname('thrtimer').isnull then x004.Caption:=fieldbyname('thrtimer').value
      else x004.Caption:='';
      if not fieldbyname('stitch').isnull then x006.Caption:=fieldbyname('stitch').value
      else x006.Caption:='';
      if not fieldbyname('luboil').isnull then x007.Caption:=fieldbyname('luboil').value
      else x007.Caption:='';
      if not fieldbyname('bneedle').isnull then x008.Caption:=fieldbyname('bneedle').value
      else x008.Caption:='';
      if not fieldbyname('tneedle').isnull then x009.Caption:=fieldbyname('tneedle').value
      else x009.Caption:='';
      if not fieldbyname('gneedle').isnull then x010.Caption:=fieldbyname('gneedle').value
      else x010.Caption:='';
      if not fieldbyname('overedge').isnull then x011.Caption:=fieldbyname('overedge').value
      else x011.Caption:='';
      if not fieldbyname('pflift').isnull then x012.Caption:=fieldbyname('pflift').value
      else x012.Caption:='';
      if not fieldbyname('diffratio').isnull then x013.Caption:=fieldbyname('diffratio').value
      else x013.Caption:='';
      if not fieldbyname('diffratio1').isnull then x014.Caption:=fieldbyname('diffratio1').value
      else x014.Caption:='';
      if not fieldbyname('thread').isnull then x015.Caption:=fieldbyname('thread').value
      else x015.Caption:='';
      if not fieldbyname('sewarea').isnull then x016.Caption:=fieldbyname('sewarea').value
      else x016.Caption:='';
      if not fieldbyname('sewarea1').isnull then x017.Caption:=fieldbyname('sewarea1').value
      else x017.Caption:='';
      if not fieldbyname('wflift').isnull then x018.Caption:=fieldbyname('wflift').value
      else x018.Caption:='';
      if not fieldbyname('nlift').isnull then x019.Caption:=fieldbyname('nlift').value
      else x019.Caption:='';
      if not fieldbyname('memo1').isnull then memo01.Text:=fieldbyname('memo1').value else memo01.Lines.clear;
      if not fieldbyname('memo2').isnull then memo02.Text:=fieldbyname('memo2').value else memo02.Lines.Clear;
      if not fieldbyname('mcimg').isnull then ppimage2.Picture.LoadFromFile(fieldbyname('mcimg').value)
      else ppimage2.Picture:=nil;
    end;
    if not query1.fieldbyname('img').isnull then ppimage1.Picture.LoadFromFile(query1.fieldbyname('img').value)
    else ppimage1.Picture:=nil;
  //except
  finally
    //abort;
  end;
end;

procedure Tfrmallmc.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 