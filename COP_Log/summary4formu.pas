unit summary4formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppStrtch, ppRichTx, ppCtrls, jpeg, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  DB, DBClient, ppViewr, ppParameter;

type
  Tfrmsummary4 = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel15: TppLabel;
    dt001: TppLabel;
    ppLabel17: TppLabel;
    dt002: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine12: TppLine;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel23: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText13: TppDBText;
    ppLabel18: TppLabel;
    ppLabel26: TppLabel;
    ppLine2: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine47: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine52: TppLine;
    ppLabel43: TppLabel;
    ppLine62: TppLine;
    ppLabel46: TppLabel;
    ppLine5: TppLine;
    ppLine65: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine69: TppLine;
    ppImage7: TppImage;
    ppLabel60: TppLabel;
    yr001: TppLabel;
    ppLabel62: TppLabel;
    ppLabel65: TppLabel;
    ppLine53: TppLine;
    ppLabel34: TppLabel;
    ppImage4: TppImage;
    ppImage5: TppImage;
    ppImage6: TppImage;
    ap01: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppDBText4: TppDBText;
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText5: TppDBText;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine21: TppLine;
    def001: TppLabel;
    ppDBText6: TppDBText;
    ppLine15: TppLine;
    ppLine48: TppLine;
    ppLine71: TppLine;
    def003: TppLabel;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppLabel5: TppLabel;
    ppLine26: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    def002: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine25: TppLine;
    ppLine46: TppLine;
    ppLine72: TppLine;
    def004: TppLabel;
    style001: TppLabel;
    po001: TppLabel;
    wk001: TppLabel;
    adt001: TppLabel;
    max001: TppLabel;
    max002: TppLabel;
    ppShape22: TppShape;
    ppLabel59: TppLabel;
    ppRichText1: TppRichText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape5: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    maj001: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLine81: TppLine;
    ppLine83: TppLine;
    ppLine89: TppLine;
    min001: TppLabel;
    s001: TppLabel;
    p001: TppLabel;
    a001: TppLabel;
    col001: TppLabel;
    siz001: TppLabel;
    ppDBText1: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsummary4: Tfrmsummary4;

implementation

uses aqlmainformu, summaryformu;

{$R *.dfm}

procedure Tfrmsummary4.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2,i:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b '
                +'where a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and b.ws='''+query1.fieldbyname('ws').value+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      dft:=dft+fieldbyname('q1').value;
      dft1:=dft1+fieldbyname('q2').value;
      if fieldbyname('q1').value<=fieldbyname('sqty1').value then begin
        x1:=x1+1;
        if fieldbyname('audit1').value=true then x2:=x2+1;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  maj001.Caption:=inttostr(dft);
  min001.Caption:=inttostr(dft1);


  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(distinct cstyle) as q2,count(distinct pono) as q3,count(distinct aud) as q4,max(col1) as q5,max(size1) as q6 from tbl_aql_s0 '
                +'where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and ws='''+query1.fieldbyname('ws').value+'''';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    if not fieldbyname('q2').isnull then s001.Caption:=fieldbyname('q2').AsString;
    if not fieldbyname('q3').isnull then p001.Caption:=fieldbyname('q3').AsString;
    if not fieldbyname('q4').isnull then a001.Caption:=fieldbyname('q4').asstring;
    if not fieldbyname('q5').IsNull then col001.Caption:=fieldbyname('q5').asstring;
    if not fieldbyname('q6').isnull then siz001.Caption:=fieldbyname('q6').asstring;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(*) as q1 from tbl_aql_s0 a where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and a.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' and a.ws='''+query1.fieldbyname('ws').value+'''';
    params.ParamByName('x1').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x2').Asinteger:=query1.fieldbyname('wk').value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    x1:=x1+fieldbyname('q1').value;
    x2:=x2+fieldbyname('q1').value;
    i:=i+fieldbyname('q1').value;
  end;
end;

procedure Tfrmsummary4.ppSummaryBand1BeforePrint(Sender: TObject);
var
  dft,dft1,x1,x2,i:integer;
begin
  dft:=0;dft1:=0;x1:=0;x2:=0;i:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b '
                +'where a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    first;
    while not eof do begin
      i:=i+1;
      dft:=dft+fieldbyname('q1').value;
      dft1:=dft1+fieldbyname('q2').value;
      if fieldbyname('q1').value<=fieldbyname('sqty1').value then begin
        x1:=x1+1;
        if fieldbyname('audit1').value=true then x2:=x2+1;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  def002.Caption:=inttostr(dft);
  def004.Caption:=inttostr(dft1);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(distinct wk) as q1,count(distinct cstyle) as q2,count(distinct pono) as q3,count(distinct aud) as q4,max(col1) as q5,max(size1) as q6 from tbl_aql_s0 '
                +'where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+frmsummary.combobox2.text+'''';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    if not fieldbyname('q1').isnull then wk001.Caption:=fieldbyname('q1').asstring;
    if not fieldbyname('q2').isnull then style001.Caption:=fieldbyname('q2').AsString;
    if not fieldbyname('q3').isnull then po001.Caption:=fieldbyname('q3').AsString;
    if not fieldbyname('q4').isnull then adt001.Caption:=fieldbyname('q4').asstring;
    if not fieldbyname('q5').IsNull then max001.Caption:=fieldbyname('q5').asstring;
    if not fieldbyname('q6').isnull then max002.Caption:=fieldbyname('q6').asstring;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(*) as q1 from tbl_aql_s0 a where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and a.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    open;
    x1:=x1+fieldbyname('q1').value;
    x2:=x2+fieldbyname('q1').value;
    i:=i+fieldbyname('q1').value;
  end;
end;

procedure Tfrmsummary4.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 