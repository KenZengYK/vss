unit summary5formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppStrtch, ppRichTx, ppCtrls, jpeg, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  DB, DBClient, ppViewr, ppMemo, ppParameter;

type
  Tfrmsummary5 = class(TForm)
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
    subject01: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    subtitle001: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
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
    subject001: TppLabel;
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
    ppDBText7: TppDBText;
    ppShape4: TppShape;
    ppLabel15: TppLabel;
    dt001: TppLabel;
    ppLabel17: TppLabel;
    dt002: TppLabel;
    week001: TppLabel;
    ppLine6: TppLine;
    ppLabel2: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel6: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine11: TppLine;
    ppLine20: TppLine;
    subject002: TppLabel;
    subject003: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine27: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText11: TppDBText;
    ppLabel27: TppLabel;
    ppLabel35: TppLabel;
    ppLine33: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel36: TppLabel;
    ppLine44: TppLine;
    ppLabel37: TppLabel;
    ppLine45: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    rep001: TppLabel;
    hld001: TppLabel;
    rep002: TppLabel;
    hld002: TppLabel;
    rep003: TppLabel;
    hld003: TppLabel;
    ppLabel48: TppLabel;
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsummary5: Tfrmsummary5;

implementation

uses aqlmainformu, summaryformu;

{$R *.dfm}

procedure Tfrmsummary5.ppSummaryBand1BeforePrint(Sender: TObject);
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
    //params.createparam(ftboolean,'x4',ptinput);
    //params.createparam(ftboolean,'x5',ptinput);
    //params.createparam(ftboolean,'x6',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a,tbl_aql_s0 b '
                +'where a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';// and b.hun_check=:x4 and b.endline=:x5 and dailyaql=:x6';
    if frmsummary.checkbox3.checked then commandtext:=commandtext+' and b.hun_check=1';
    if frmsummary.checkbox4.checked then commandtext:=commandtext+' and b.endline=1';
    if frmsummary.checkbox2.checked then commandtext:=commandtext+' and b.dailyaql=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    if frmsummary.combobox5.Visible then commandtext:=commandtext+' and b.loc='''+frmsummary.combobox5.Text+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    //params.ParamByName('x4').AsBoolean:=frmsummary.CheckBox3.Checked;
    //params.ParamByName('x5').AsBoolean:=frmsummary.CheckBox4.Checked;
    //params.parambyname('x6').asboolean:=frmsummary.checkbox2.checked;
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

  dft:=0;dft1:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    //params.createparam(ftboolean,'x4',ptinput);
    //params.createparam(ftboolean,'x5',ptinput);
    //params.createparam(ftboolean,'x6',ptinput);
    commandtext:='select distinct a.seq,b.sqty1,b.audit1,b.audit2,b.audit3,sum(a.rqty) as q1,sum(a.hqty) as q2 from tbl_aql_s1 a,tbl_aql_s0 b '
                +'where a.seq=b.seq and b.wk>=:x1 and b.wk<=:x2 and f_year(b.dt)=:x3';// and b.hun_check=:x4 and b.endline=:x5 and dailyaql=:x6';
    if frmsummary.checkbox3.checked then commandtext:=commandtext+' and b.hun_check=1';
    if frmsummary.checkbox4.checked then commandtext:=commandtext+' and b.endline=1';
    if frmsummary.checkbox2.checked then commandtext:=commandtext+' and b.dailyaql=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and b.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and b.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(b.fty)='''+frmsummary.combobox2.text+'''';
    if frmsummary.combobox5.Visible then commandtext:=commandtext+' and b.loc='''+frmsummary.combobox5.Text+'''';
    commandtext:=commandtext+' group by a.seq,b.sqty1,b.audit1,b.audit2,b.audit3';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    //params.ParamByName('x4').AsBoolean:=frmsummary.CheckBox3.Checked;
    //params.ParamByName('x5').AsBoolean:=frmsummary.CheckBox4.Checked;
    //params.parambyname('x6').asboolean:=frmsummary.checkbox2.checked;
    open;
    first;
    while not eof do begin
      dft:=dft+fieldbyname('q1').value;
      dft1:=dft1+fieldbyname('q2').value;
      application.ProcessMessages;
      next;
    end;
  end;
  rep003.Caption:=inttostr(dft);
  hld003.Caption:=inttostr(dft1);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    //params.createparam(ftboolean,'x4',ptinput);
    //params.createparam(ftboolean,'x5',ptinput);
    //params.createparam(ftboolean,'x6',ptinput);
    commandtext:='select count(distinct wk) as q1,count(distinct cstyle) as q2,count(distinct pono) as q3,count(distinct aud) as q4,max(col1) as q5,max(size1) as q6 from tbl_aql_s0 '
                +'where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3';// and hun_check=:x4 and endline=:x5 and dailyaql=:x6';
    if frmsummary.checkbox3.checked then commandtext:=commandtext+' and hun_check=1';
    if frmsummary.checkbox4.checked then commandtext:=commandtext+' and endline=1';
    if frmsummary.checkbox2.checked then commandtext:=commandtext+' and dailyaql=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(fty)='''+frmsummary.combobox2.text+'''';
    if frmsummary.combobox5.Visible then commandtext:=commandtext+' and loc='''+frmsummary.combobox5.Text+'''';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    //params.ParamByName('x4').AsBoolean:=frmsummary.CheckBox3.Checked;
    //params.ParamByName('x5').AsBoolean:=frmsummary.CheckBox4.Checked;
    //params.parambyname('x6').asboolean:=frmsummary.checkbox2.checked;
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
    //params.createparam(ftboolean,'x4',ptinput);
    //params.createparam(ftboolean,'x5',ptinput);
    //params.createparam(ftboolean,'x6',ptinput);
    commandtext:='select count(*) as q1 from tbl_aql_s0 a where wk>=:x1 and wk<=:x2 and f_year(dt)=:x3 and not exists (select seq from tbl_aql_s4 b where a.seq=b.seq)';
    if frmsummary.checkbox3.checked then commandtext:=commandtext+' and hun_check=1';
    if frmsummary.checkbox4.checked then commandtext:=commandtext+' and endline=1';
    if frmsummary.checkbox2.checked then commandtext:=commandtext+' and dailyaql=1';
    if frmsummary.combobox1.text>'' then commandtext:=commandtext+' and a.cust='''+frmsummary.combobox1.text+''''
    else commandtext:=commandtext+' and a.cust=''SALL''';
    if frmsummary.combobox2.text>'' then commandtext:=commandtext+' and upper(a.fty)='''+frmsummary.combobox2.text+'''';
    if frmsummary.combobox5.Visible then commandtext:=commandtext+' and a.loc='''+frmsummary.combobox5.Text+'''';
    params.ParamByName('x1').Asinteger:=frmsummary.spinedit2.value;
    params.ParamByName('x2').Asinteger:=frmsummary.spinedit3.value;
    params.ParamByName('x3').AsInteger:=frmsummary.spinedit1.Value;
    //params.ParamByName('x4').AsBoolean:=frmsummary.CheckBox3.Checked;
    //params.ParamByName('x5').AsBoolean:=frmsummary.CheckBox4.Checked;
    //params.parambyname('x6').asboolean:=frmsummary.checkbox2.checked;
    open;
    x1:=x1+fieldbyname('q1').value;
    x2:=x2+fieldbyname('q1').value;
    i:=i+fieldbyname('q1').value;
  end;
end;

procedure Tfrmsummary5.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmsummary5.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(a.major) as q1,sum(a.minor) as q2 from tbl_aql_s4 a where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then def001.Caption:=fieldbyname('q1').asstring
    else def001.Caption:='0';
    if not fieldbyname('q2').isnull then def003.Caption:=fieldbyname('q2').asstring
    else def003.caption:='0';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(a.rqty) as q1,sum(a.hqty) as q2 from tbl_aql_s1 a where seq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then rep001.Caption:=fieldbyname('q1').asstring
    else rep001.Caption:='0';
    if not fieldbyname('q2').isnull then hld001.Caption:=fieldbyname('q2').asstring
    else hld001.caption:='0';
  end;
end;

end.
