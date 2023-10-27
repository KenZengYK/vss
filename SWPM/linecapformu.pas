unit linecapformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls,
  Spin, Mask, rxToolEdit, DateUtils, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppViewr, ppParameter;

type
  Tfrmlinecap = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    SpinEdit2: TSpinEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    DateEdit1: TDateEdit;
    Label9: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    Query4: TClientDataSet;
    DBGridEh3: TDBGridEh;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    tittle001: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel4: TppLabel;
    cust001: TppLabel;
    ppLabel6: TppLabel;
    prod001: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    wk001: TppLabel;
    ppLabel9: TppLabel;
    wk002: TppLabel;
    ppLabel8: TppLabel;
    ver001: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel40: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine17: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine18: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    s001: TppDBText;
    w001: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel39: TppLabel;
    s002: TppDBCalc;
    w002: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine9: TppLine;
    ppDBCalc4: TppDBCalc;
    tittle002: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure DBGridEh1Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure querychange(Sender: TField);
    procedure querychange1(Sender: TField);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure showdata;
  public
    { Public declarations }
  end;

var
  frmlinecap: Tfrmlinecap;

implementation

uses mainformu, projsahformu, linecap_printformu;

{$R *.dfm}

procedure Tfrmlinecap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlinecap:=nil;
end;

procedure Tfrmlinecap.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      commandtext:='update line_capacity set sah2=:x1,cap=:x2,cap1=:x3,eff1=:x7,cust=:x8,ptyp=:x9 where pline=:x4 and ny=:x5 and wk=:x6';
      if not query1.fieldbyname('sah2').isnull then
      params[0].asfloat:=query1.fieldbyname('sah2').value
      else params[0].asfloat:=0;
      params[1].asfloat:=query1.fieldbyname('cap').value;
      params[2].asfloat:=query1.fieldbyname('cap1').value;
      if not query1.fieldbyname('eff1').isnull then
      params[3].asfloat:=query1.fieldbyname('eff1').value
      else params[3].asfloat:=100;
      if not query1.fieldbyname('cust').isnull then
      params[4].asstring:=query1.fieldbyname('cust').value
      else params[4].asstring:='';
      if not query1.fieldbyname('ptyp').isnull then
      params[5].asstring:=query1.fieldbyname('ptyp').value
      else params[5].asstring:='';
      params[6].asstring:=query1.fieldbyname('pline').value;
      params[7].asstring:=query1.fieldbyname('ny').value;
      params[8].asinteger:=query1.fieldbyname('wk').value;
      execute;
    end;
  end;
end;

procedure Tfrmlinecap.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.Post;
end;

procedure Tfrmlinecap.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    combobox2.items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+combobox1.text+''' and tshop>'''' and pline>'''' order by tshop';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('tshop').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if combobox1.text='SL' then begin
      combobox2.text:='4B';
      combobox3.Text:='T002U';
    end else if combobox1.Text='KB' then begin
      combobox2.text:='KB2';
      combobox3.Text:='T098';
    end;
  end;
  showdata;
end;

procedure Tfrmlinecap.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text>'' then begin
    combobox3.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      combobox3.Text:=fieldbyname('pline').value;
      first;
      while not eof do begin
        combobox3.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  showdata;
end;

procedure Tfrmlinecap.ComboBox3Enter(Sender: TObject);
begin
  if combobox2.text>'' then begin
    combobox3.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      combobox3.Text:=fieldbyname('pline').value;
      first;
      while not eof do begin
        combobox3.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  showdata;
end;

procedure Tfrmlinecap.showdata;
begin

end;

procedure Tfrmlinecap.DBGridEh1Columns10EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmprojsah=nil then frmprojsah:=tfrmprojsah.create(nil);
  frmprojsah.combobox1.items.clear;
  frmprojsah.combobox1.Items.Add(query1.fieldbyname('pline').value);
  frmprojsah.combobox1.Text:=query1.fieldbyname('pline').value;
  frmprojsah.show;
end;

procedure Tfrmlinecap.FormShow(Sender: TObject);
begin
  spinedit1.Value:=yearof(date);
  spinedit2.Value:=weekof(date);
  spinedit3.Value:=yearof(date);
  spinedit4.Value:=weekof(date);
  dateedit1.Date:=encodedate(2007,7,1);
  dateedit2.Date:=encodedate(2007,12,31);
end;

procedure Tfrmlinecap.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_updsim_line_test';
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      if (spinedit1.value=spinedit3.Value) then begin
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      commandtext:='select * from tbl_simline_test where yr1>=:x1 and yr1<=:x2 and ((yr1=:x3 and wk1>=:x4) and (yr1=:x5 and wk1<=:x6)) and cap>0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and pline='''+combobox3.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,pline,yr1,wk1';
      params[0].asinteger:=spinedit1.Value;
      params[1].asinteger:=spinedit3.Value;
      params[2].asinteger:=spinedit1.Value;
      params[3].asinteger:=spinedit2.Value;
      params[4].asinteger:=spinedit3.Value;
      params[5].asinteger:=spinedit4.Value;
      end else begin
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from tbl_simline_test where ((yr1=:x1 and wk1>=:x2) or(yr1=:x3 and wk1<=:x4)) and cap>0';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and pline='''+combobox3.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,pline,yr1,wk1';
      params[0].asinteger:=spinedit1.Value;
      params[1].asinteger:=spinedit2.Value;
      params[2].asinteger:=spinedit3.Value;
      params[3].asinteger:=spinedit4.Value;
      end;
      open;
    end;
  {
  if combobox3.text>'' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      params.createparam(ftdate,'x7',ptinput);
      commandtext:='execute procedure sp_gen_linecap(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asstring:=combobox3.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=spinedit2.value;
      params[3].asinteger:=spinedit3.value;
      params[4].asinteger:=spinedit4.value;
      params[5].asdate:=dateedit1.date;
      params[6].asdate:=dateedit2.date;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from line_capacity where pline='''+combobox3.text+''' and substr(ny,1,4)>=:x1 and substr(ny,1,4)<=:x2 and wk>=:x3 and wk<=:x4';
      params[0].asstring:=inttostr(spinedit1.value);
      params[1].asstring:=inttostr(spinedit3.Value);
      params[2].asinteger:=spinedit2.Value;
      params[3].asinteger:=spinedit4.value;
      open;
    end;

    dbgrideh1.Columns[5].PickList.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct cust from tbl_linelearn where pline='''+combobox3.text+'''';
      open;
      first;
      while not eof do begin
        dbgrideh1.Columns[5].PickList.add(fieldbyname('cust').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end else showmessage('Please select production line!');
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmlinecap.BitBtn4Click(Sender: TObject);
begin
  //if frmlinecap_print=nil then frmlinecap_print:=tfrmlinecap_print.Create(nil);
  //frmlinecap_print.Show;
  if not query1.FieldByName('tplant').isnull then begin
    if combobox3.text>'' then begin
      tittle001.Caption:='Line Capacity  -  ';
      tittle002.Caption:=combobox3.text;
    end else if combobox2.Text>'' then begin
      tittle001.Caption:='Workshop Capacity  -  ';
      tittle002.Caption:=combobox2.text;
    end else begin
      tittle001.Caption:='Factory Capacity  -  ';
      tittle002.Caption:=combobox1.text;
    end;
    fty001.Caption:=combobox1.text;
    cust001.Caption:=combobox2.Text;
    prod001.Caption:=combobox3.Text;
    //dt001.Caption:=dateedit1.Text;
    //dt002.Caption:=dateedit2.Text;
    wk001.Caption:=inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value);
    wk002.Caption:=inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
    //ver001.Caption:=query5.fieldbyname('ver').asstring;
    //if xh1.ItemIndex=0 then begin
      s001.DataField:='SECT1';
      s002.DataField:='SECT1';
    //end else begin
    //  s001.DataField:='SECT2';
    //  s002.DataField:='SECT2';
    //end;
    //if xh2.ItemIndex=0 then begin
      w001.DataField:='WF1';
      w002.DataField:='WF1';
    //end else begin
    //  w001.DataField:='WF2';
    //  w002.DataField:='WF2';
    //end;
    ppReport1.Print;
  end;
end;

procedure Tfrmlinecap.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('cust').onchange:=querychange1;
  query1.fieldbyname('ptyp').onchange:=querychange1;
  query1.fieldbyname('sah2').onchange:=querychange;
  query1.fieldbyname('eff1').onchange:=querychange;
end;

procedure Tfrmlinecap.querychange(Sender: TField);
var
  sah2,sect,wf,eff1:double;
begin
  if not query1.fieldbyname('sah2').isnull then sah2:=query1.fieldbyname('sah2').value;
  if not query1.fieldbyname('eff1').isnull then eff1:=query1.fieldbyname('eff1').value/100.0 else eff1:=1.0;
  sect:=query1.fieldbyname('sect').value;
  wf:=query1.fieldbyname('wf').value;
  if sah2>0 then begin
    query1.fieldbyname('cap1').value:=sect*0.5*wf*eff1/sah2;
    query1.fieldbyname('cap').value:=sect*0.5*wf*eff1/sah2/12.0;
  end else begin
    query1.fieldbyname('cap1').value:=0;
    query1.fieldbyname('cap').value:=0;
  end;
end;

procedure Tfrmlinecap.querychange1(Sender: TField);
var
  cust,ptyp:string;
begin
  if not query1.fieldbyname('cust').isnull then cust:=query1.fieldbyname('cust').value else cust:='';
  if not query1.fieldbyname('ptyp').isnull then ptyp:=query1.fieldbyname('ptyp').value else ptyp:='B';
  if cust>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select adpt,lae from tbl_linelearn where pline='''+query1.fieldbyname('pline').value+''' and cust='''+cust+''' and ptyp='''+ptyp+'''';
      open;
      if not fieldbyname('adpt').isnull then query1.fieldbyname('adpt').value:=fieldbyname('adpt').value;
      if not fieldbyname('lae').isnull then query1.fieldbyname('eff').value:=fieldbyname('lae').value;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select sum(sah1*qty)/sum(qty) as s1,sum(eff*qty)/sum(qty) as s2 from line_capacity1 where pline='''+query1.fieldbyname('pline').value+''' and cust='''+cust+''' and ptyp='''+ptyp+'''';
      open;
      if not fieldbyname('s1').isnull then query1.fieldbyname('sah1').value:=fieldbyname('s1').value;
      if not fieldbyname('s2').isnull then query1.fieldbyname('peff1').Value:=fieldbyname('s2').value;
    end;
    query1.fieldbyname('pcap1').value:=query1.fieldbyname('sect').value*0.5*query1.fieldbyname('wf').value*query1.fieldbyname('peff1').value/query1.fieldbyname('sah1').value;
    query1.fieldbyname('pcap').value:=query1.fieldbyname('sect').value*0.5*query1.fieldbyname('wf').value*query1.fieldbyname('peff1').value/query1.fieldbyname('sah1').value/12.0;
  end;
end;

procedure Tfrmlinecap.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
