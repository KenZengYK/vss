unit transitflow1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls,
  ExtCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppStrtch, ppMemo, myChkBox, ppVar, ppPrnabl, ppCache,
  ppViewr, GridsEh, ppParameter;

type
  Tfrmtransitflow1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    title001: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    fty002: TppLabel;
    ppLabel41: TppLabel;
    line002: TppLabel;
    jno002: TppLabel;
    ppLabel44: TppLabel;
    job002: TppLabel;
    rwo002: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    cstyle002: TppLabel;
    ppLabel50: TppLabel;
    acol002: TppLabel;
    ppLabel52: TppLabel;
    scqty002: TppLabel;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel55: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    fccs002: TppLabel;
    ppLabel57: TppLabel;
    ppShape9: TppShape;
    ppLabel58: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine37: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel61: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    seq01: TppLabel;
    seq02: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape10: TppShape;
    ppDBText5: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppDBText9: TppDBText;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine62: TppLine;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape16: TppShape;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel86: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine60: TppLine;
    ppLine79: TppLine;
    b02: TppLabel;
    e02: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    p001: TppLabel;
    p002: TppLabel;
    p003: TppLabel;
    p004: TppLabel;
    p005: TppLabel;
    t001: TppLabel;
    t002: TppLabel;
    t003: TppLabel;
    t004: TppLabel;
    t005: TppLabel;
    sp01: TppDBCalc;
    sp02: TppDBCalc;
    sp03: TppDBCalc;
    sp04: TppDBCalc;
    sp05: TppDBCalc;
    st01: TppDBCalc;
    st02: TppDBCalc;
    st03: TppDBCalc;
    st04: TppDBCalc;
    st05: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransitflow1: Tfrmtransitflow1;

implementation

uses mainformu, lwoformu, transitflowformu;

{$R *.dfm}

procedure Tfrmtransitflow1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmtransitflow1:=nil;
end;

procedure Tfrmtransitflow1.FormShow(Sender: TObject);
var
  s1,s2:string;
begin
  frmtransitflow1.Caption:=frmtransitflow.Caption+' - Breakdown';
  dbgrideh1.Columns[15].Footer.value:=frmtransitflow.DBGridEh1.Columns[59].Footer.value;
  dbgrideh1.Columns[16].Footer.value:=frmtransitflow.DBGridEh1.Columns[60].Footer.value;
  dbtext1.DataSource:=frmtransitflow.DBText1.DataSource;
  dbtext2.DataSource:=frmtransitflow.DBText2.DataSource;
  dbtext3.DataSource:=frmtransitflow.DBText3.DataSource;
  dbtext4.DataSource:=frmtransitflow.DBText4.DataSource;
  dbtext5.DataSource:=frmtransitflow.DBText5.DataSource;
  dbtext6.DataSource:=frmtransitflow.DBText6.DataSource;
  dbtext7.DataSource:=frmtransitflow.DBText7.DataSource;
  if frmtransitflow1.Caption='Transit Flow 1 - Breakdown' then begin
    s1:='Picked';s2:='T1';
    dbgrideh1.Columns[2].Visible:=false;
    dbgrideh1.Columns[13].Title.caption:='Total|Picked';
    dbgrideh1.Columns[14].Title.Caption:='Total|T1';
  end else if frmtransitflow1.Caption='Transit Flow 2 - Breakdown' then begin
    s1:='Sewn';s2:='T2';
    dbgrideh1.Columns[2].Visible:=true;
    dbgrideh1.Columns[2].Title.Caption:='T1 Qty';
    dbgrideh1.Columns[13].Title.caption:='Total|Sewn';
    dbgrideh1.Columns[14].Title.Caption:='Total|T2';
  end else if frmtransitflow1.Caption='Transit Flow 3 - Breakdown' then begin
    s1:='Packed';s2:='T3';
    dbgrideh1.Columns[2].Visible:=true;
    dbgrideh1.Columns[2].Title.Caption:='T2 Qty';
    dbgrideh1.Columns[13].Title.caption:='Total|Packed';
    dbgrideh1.Columns[14].Title.Caption:='Total|T3';
  end else if frmtransitflow1.Caption='Transit Flow 4 - Breakdown' then begin
    s1:='Ex-fty';s2:='Invd';
    dbgrideh1.Columns[2].Visible:=true;
    dbgrideh1.Columns[2].Title.Caption:='T3 Qty';
    dbgrideh1.Columns[13].Title.caption:='Total|Ex-fty';
    dbgrideh1.Columns[14].Title.Caption:='Total|Invd';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from tbl_trans_dt_01 where tm=:x1 and pline=:x2 and seq=:x3 and typ=:x4';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asstring:=query1.fieldbyname('typ').value;
    open;
  end;
  if not query2.fieldbyname('dt01').isnull then begin
    dbgrideh1.Columns[3].Visible:=true;
    dbgrideh1.Columns[3].Title.caption:=s1+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('dt01').value);
  end else begin
    dbgrideh1.Columns[3].Visible:=false;
  end;
  if not query2.fieldbyname('dt02').isnull then begin
    dbgrideh1.Columns[4].Visible:=true;
    dbgrideh1.Columns[4].Title.caption:=s1+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('dt02').value);
  end else begin
    dbgrideh1.Columns[4].Visible:=false;
  end;
  if not query2.fieldbyname('dt03').isnull then begin
    dbgrideh1.Columns[5].Visible:=true;
    dbgrideh1.Columns[5].Title.caption:=s1+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('dt03').value);
  end else begin
    dbgrideh1.Columns[5].Visible:=false;
  end;
  if not query2.fieldbyname('dt04').isnull then begin
    dbgrideh1.Columns[6].Visible:=true;
    dbgrideh1.Columns[6].Title.caption:=s1+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('dt04').value);
  end else begin
    dbgrideh1.Columns[6].Visible:=false;
  end;
  if not query2.fieldbyname('dt05').isnull then begin
    dbgrideh1.Columns[7].Visible:=true;
    dbgrideh1.Columns[7].Title.caption:=s1+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('dt05').value);
  end else begin
    dbgrideh1.Columns[7].Visible:=false;
  end;
  if not query2.fieldbyname('cdt01').isnull then begin
    dbgrideh1.Columns[8].Visible:=true;
    dbgrideh1.Columns[8].Title.caption:=s2+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('cdt01').value);
  end else begin
    dbgrideh1.Columns[8].Visible:=false;
  end;
  if not query2.fieldbyname('cdt02').isnull then begin
    dbgrideh1.Columns[9].Visible:=true;
    dbgrideh1.Columns[9].Title.caption:=s2+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('cdt02').value);
  end else begin
    dbgrideh1.Columns[9].Visible:=false;
  end;
  if not query2.fieldbyname('cdt03').isnull then begin
    dbgrideh1.Columns[10].Visible:=true;
    dbgrideh1.Columns[10].Title.caption:=s2+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('cdt03').value);
  end else begin
    dbgrideh1.Columns[10].Visible:=false;
  end;
  if not query2.fieldbyname('cdt04').isnull then begin
    dbgrideh1.Columns[11].Visible:=true;
    dbgrideh1.Columns[11].Title.caption:=s2+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('cdt04').value);
  end else begin
    dbgrideh1.Columns[11].Visible:=false;
  end;
  if not query2.fieldbyname('cdt05').isnull then begin
    dbgrideh1.Columns[12].Visible:=true;
    dbgrideh1.Columns[12].Title.caption:=s2+'|'+formatdatetime('yy/MM/dd',query2.fieldbyname('cdt05').value);
  end else begin
    dbgrideh1.Columns[12].Visible:=false;
  end;
end;

procedure Tfrmtransitflow1.BitBtn1Click(Sender: TObject);
begin
  if query1.Active then ppReport2.print;
end;

procedure Tfrmtransitflow1.ppHeaderBand2BeforePrint(Sender: TObject);
var
  s1,s2:string;
begin
  if frmtransitflow1.Caption='Transit Flow 1 - Breakdown' then begin
    s1:='Picked';
    s2:='T2';
  end else if frmtransitflow1.Caption='Transit Flow 2 - Breakdown' then begin
    s1:='Sewn';
    s2:='T2';
  end else if frmtransitflow1.Caption='Transit Flow 3 - Breakdown' then begin
    s1:='Packed';
    s2:='T3';
  end else if frmtransitflow1.Caption='Transit Flow 4 - Breakdown' then begin
    s1:='Ex-fty';
    s2:='Invd';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from tbl_trans_dt_01 where tm=:x1 and pline=:x2 and seq=:x3 and typ=:x4';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asstring:=query1.fieldbyname('typ').value;
    open;
    seq01.Caption:=s1+' / '+formatdatetime('yyyy-MM-dd',fieldbyname('dt01').value);
    seq02.Caption:=s1+' / '+formatdatetime('yyyy-MM-dd',fieldbyname('cdt01').value);
  end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    fty002.Caption:=query3.fieldbyname('tplant').value;
    line002.Caption:=query3.fieldbyname('pline').value;
    jno002.Caption:=query3.fieldbyname('j_no').value;
    cstyle002.Caption:=query3.fieldbyname('cstyle').value;
    job002.Caption:=query3.fieldbyname('j2_job').value;
    rwo002.Caption:=query3.fieldbyname('rwo').value;
    fccs002.Caption:=query3.fieldbyname('fccs').value;
    acol002.Caption:=query3.fieldbyname('acol').value;
    scqty002.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
end;

procedure Tfrmtransitflow1.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if dbgrideh1.Columns[3].Visible then p001.Caption:=query1.fieldbyname('tq01').value else p001.Caption:='';
  if dbgrideh1.Columns[4].Visible then p002.Caption:=query1.fieldbyname('tq02').value else p002.Caption:='';
  if dbgrideh1.Columns[5].Visible then p003.Caption:=query1.fieldbyname('tq03').value else p003.Caption:='';
  if dbgrideh1.Columns[6].Visible then p004.Caption:=query1.fieldbyname('tq04').value else p004.Caption:='';
  if dbgrideh1.Columns[7].Visible then p005.Caption:=query1.fieldbyname('tq05').value else p005.Caption:='';
  if dbgrideh1.Columns[8].Visible then t001.Caption:=query1.fieldbyname('ttq01').value else t001.Caption:='';
  if dbgrideh1.Columns[9].Visible then t002.Caption:=query1.fieldbyname('ttq02').value else t002.Caption:='';
  if dbgrideh1.Columns[10].Visible then t003.Caption:=query1.fieldbyname('ttq03').value else t003.Caption:='';
  if dbgrideh1.Columns[11].Visible then t004.Caption:=query1.fieldbyname('ttq04').value else t004.Caption:='';
  if dbgrideh1.Columns[12].Visible then t005.Caption:=query1.fieldbyname('ttq05').value else t005.Caption:='';
end;

procedure Tfrmtransitflow1.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  if dbgrideh1.Columns[3].Visible then sp01.visible:=true else sp01.visible:=false;
  if dbgrideh1.Columns[4].Visible then sp02.visible:=true else sp02.visible:=false;
  if dbgrideh1.Columns[5].Visible then sp03.visible:=true else sp03.visible:=false;
  if dbgrideh1.Columns[6].Visible then sp04.visible:=true else sp04.visible:=false;
  if dbgrideh1.Columns[7].Visible then sp05.visible:=true else sp05.visible:=false;
  if dbgrideh1.Columns[8].Visible then st01.visible:=true else st01.visible:=false;
  if dbgrideh1.Columns[9].Visible then st02.visible:=true else st02.visible:=false;
  if dbgrideh1.Columns[10].Visible then st03.visible:=true else st03.visible:=false;
  if dbgrideh1.Columns[11].Visible then st04.visible:=true else st04.visible:=false;
  if dbgrideh1.Columns[12].Visible then st05.visible:=true else st05.visible:=false;
  b02.Caption:=dbgrideh1.Columns[15].Footer.value;
  e02.Caption:=dbgrideh1.columns[16].Footer.value;
end;

procedure Tfrmtransitflow1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 