unit lwo_ipformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, GridsEh,
  DBGridEh, StdCtrls, Buttons, Mask, rxToolEdit, DBCtrls, ExtCtrls;

type
  Tfrmlwo_ip = class(TForm)
    Panel1: TPanel;
    lblcs: TLabel;
    Label9: TLabel;
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
    DateEdit1: TDateEdit;
    Panel2: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    fty001: TppLabel;
    ppLabel7: TppLabel;
    line001: TppLabel;
    jno001: TppLabel;
    ppLabel2: TppLabel;
    job001: TppLabel;
    rwo001: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    cstyle001: TppLabel;
    ppLabel12: TppLabel;
    acol001: TppLabel;
    ppLabel13: TppLabel;
    scqty001: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    fccs001: TppLabel;
    ppLabel22: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppLabel16: TppLabel;
    fdt001: TppLabel;
    ppLabel17: TppLabel;
    cfksrq001: TppLabel;
    ppLabel18: TppLabel;
    tzlcrq001: TppLabel;
    ppLabel20: TppLabel;
    yqlcrq001: TppLabel;
    ppLabel19: TppLabel;
    xc3001: TppLabel;
    ppParameterList1: TppParameterList;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QueryFieldChange(Sender: TField);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlwo_ip: Tfrmlwo_ip;

implementation

uses mainformu, worksheet, achievingformu, lwoformu;

{$R *.dfm}

procedure Tfrmlwo_ip.BitBtn1Click(Sender: TObject);
var
  dt:tdate;
begin
  bitbtn2.Enabled:=true;
  if lblcs.Caption='The twentyth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt19) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq19');
    lblcs.Caption:='The nineteenth time';
  end else if lblcs.Caption='The nineteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt18) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq18');
    lblcs.Caption:='The eighteenth time';
  end else if lblcs.Caption='The eighteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt17) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq17');
    lblcs.Caption:='The seventeenth time';
  end else if lblcs.Caption='The seventeenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt16) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq16');
    lblcs.Caption:='The sixteenth time';
  end else if lblcs.Caption='The sixteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt15) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq15');
    lblcs.Caption:='The fifteenth time';
  end else if lblcs.Caption='The fifteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt14) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq14');
    lblcs.Caption:='The forteenth time';
  end else if lblcs.Caption='The forteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt13) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq13');
    lblcs.Caption:='The thirteenth time';
  end else if lblcs.Caption='The thirteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt12) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq12');
    lblcs.Caption:='The twelveth time';
  end else if lblcs.Caption='The twelveth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt11) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq11');
    lblcs.Caption:='The eleventh time';
  end else if lblcs.Caption='The eleventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt10) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq10');
    lblcs.Caption:='The tenth time';
  end else if lblcs.Caption='The tenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt9) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq9');
    lblcs.Caption:='The ninth time';
  end else if lblcs.Caption='The ninth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt8) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq8');
    lblcs.Caption:='The eighth time';
  end else if lblcs.Caption='The eighth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt7) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq7');
    lblcs.Caption:='The seventh time';
  end else if lblcs.Caption='The seventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt6) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq6');
    lblcs.Caption:='The sixth time';
  end else if lblcs.Caption='The sixth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt5) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq5');
    lblcs.Caption:='The fifth time';
  end else if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt4) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq4');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt3) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq3');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt2) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq2');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt1) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq1');
    lblcs.Caption:='The first time';
    bitbtn1.Enabled:=false;
  end;
end;

procedure Tfrmlwo_ip.BitBtn2Click(Sender: TObject);
var
  dt:tdate;
begin
  bitbtn1.Enabled:=true;
  if lblcs.Caption='The first time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt2) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq2');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt3) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq3');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt4) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq4');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt5) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq5');
    lblcs.Caption:='The fifth time';
  end else if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt6) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq6');
    lblcs.Caption:='The sixth time';
  end else if lblcs.Caption='The sixth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt7) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq7');
    lblcs.Caption:='The seventh time';
  end else if lblcs.Caption='The seventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt8) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq8');
    lblcs.Caption:='The eighth time';
  end else if lblcs.Caption='The eighth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt9) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq9');
    lblcs.Caption:='The ninth time';
  end else if lblcs.Caption='The ninth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt10) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq10');
    lblcs.Caption:='The tenth time';
  end else if lblcs.Caption='The tenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt11) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq11');
    lblcs.Caption:='The eleventh time';
  end else if lblcs.Caption='The eleventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt12) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq12');
    lblcs.Caption:='The twelveth time';
  end else if lblcs.Caption='The twelveth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt13) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq13');
    lblcs.Caption:='The thirteenth time';
  end else if lblcs.Caption='The thirteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt14) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq14');
    lblcs.Caption:='The forteenth time';
  end else if lblcs.Caption='The forteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt15) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq15');
    lblcs.Caption:='The fifteenth time';
  end else if lblcs.Caption='The fifteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt16) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq16');
    lblcs.Caption:='The sixteenth time';
  end else if lblcs.Caption='The sixteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt17) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq17');
    lblcs.Caption:='The seventeenth time';
  end else if lblcs.Caption='The seventeenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt18) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq18');
    lblcs.Caption:='The eighteenth time';
  end else if lblcs.Caption='The eighteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt19) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq19');
    lblcs.Caption:='The nineteenth time';
  end else if lblcs.Caption='The nineteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(adt20) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp='''+label10.caption+'''';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('aq20');
    lblcs.Caption:='The twentyth time';
  end;
end;

procedure Tfrmlwo_ip.BitBtn3Click(Sender: TObject);
var
  s1:string;
begin
  if query1.state=dsedit then query1.Post;
  if pos('first',lblcs.Caption)>0 then s1:='1'
  else if pos('second',lblcs.Caption)>0 then s1:='2'
  else if pos('third',lblcs.Caption)>0 then s1:='3'
  else if pos('forth',lblcs.Caption)>0 then s1:='4'
  else if pos('fifth',lblcs.Caption)>0 then s1:='5'
  else if pos('sixth',lblcs.Caption)>0 then s1:='6'
  else if pos('seventh',lblcs.Caption)>0 then s1:='7'
  else if pos('eighth',lblcs.Caption)>0 then s1:='8'
  else if pos('ninth',lblcs.Caption)>0 then s1:='9'
  else if pos('tenth',lblcs.Caption)>0 then s1:='10'
  else if pos('eleventh',lblcs.Caption)>0 then s1:='11'
  else if pos('twelveth',lblcs.Caption)>0 then s1:='12'
  else if pos('thirteenth',lblcs.Caption)>0 then s1:='13'
  else if pos('forteenth',lblcs.Caption)>0 then s1:='14'
  else if pos('fifteenth',lblcs.Caption)>0 then s1:='15'
  else if pos('sixteenth',lblcs.Caption)>0 then s1:='16'
  else if pos('seventeenth',lblcs.Caption)>0 then s1:='17'
  else if pos('eighteenth',lblcs.Caption)>0 then s1:='18'
  else if pos('nineteenth',lblcs.Caption)>0 then s1:='19'
  else if pos('twentyth',lblcs.Caption)>0 then s1:='20';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='update tbl_lwo_ip set adt'+s1+'=:x1 where pline=:x2 and seq=:x3 and styp=:x4';
    params[0].asdate:=dateedit1.date;
    params[1].asstring:=frmlwo.Query1.fieldbyname('pline').value;
    params[2].asinteger:=frmlwo.Query1.fieldbyname('seq').value;
    params[3].asstring:=label10.caption;
    execute;
  end;
  label8.Caption:='Save';
end;

procedure Tfrmlwo_ip.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Query1.state=dsedit then label8.Caption:='Edit';
end;

procedure Tfrmlwo_ip.FormClose(Sender: TObject; var Action: TCloseAction);
var
  pline,seq:string;
begin
  if label8.Caption='Edit' then begin
    showmessage('Please save data!');
    action:=canone;
  end else begin
    pline:=frmlwo.Query1.fieldbyname('pline').value;
    seq:=frmlwo.Query1.fieldbyname('seq').asstring;
    with frmlwo.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_lwo where pline='''+pline+''' and seq='+seq;
      open;
    end;
    action:=cafree;
    frmlwo_ip:=nil;
  end;
end;

procedure Tfrmlwo_ip.FormShow(Sender: TObject);
begin
  if frmlwo.label8.caption='GAI' then begin
    dbtext1.DataSource:=frmachieving.DataSource1;
    dbtext2.DataSource:=frmachieving.DataSource1;
    dbtext3.DataSource:=frmachieving.DataSource1;
    dbtext4.DataSource:=frmachieving.DataSource1;
    dbtext5.DataSource:=frmachieving.DataSource1;
    dbtext6.DataSource:=frmachieving.DataSource1;
    dbtext7.DataSource:=frmachieving.DataSource1;
  end else begin
    dbtext1.DataSource:=worksheet1.DataSource1;
    dbtext2.DataSource:=worksheet1.DataSource1;
    dbtext3.DataSource:=worksheet1.DataSource1;
    dbtext4.DataSource:=worksheet1.DataSource1;
    dbtext5.DataSource:=worksheet1.DataSource1;
    dbtext6.DataSource:=worksheet1.DataSource1;
    dbtext7.DataSource:=worksheet1.DataSource1;
  end;
end;

procedure Tfrmlwo_ip.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.FieldByName('aq1').onchange:=queryfieldchange;
  query1.FieldByName('aq2').onchange:=queryfieldchange;
  query1.FieldByName('aq3').onchange:=queryfieldchange;
  query1.FieldByName('aq4').onchange:=queryfieldchange;
  query1.FieldByName('aq5').onchange:=queryfieldchange;
  query1.FieldByName('aq6').onchange:=queryfieldchange;
  query1.FieldByName('aq7').onchange:=queryfieldchange;
  query1.FieldByName('aq8').onchange:=queryfieldchange;
  query1.FieldByName('aq9').onchange:=queryfieldchange;
  query1.FieldByName('aq10').onchange:=queryfieldchange;
  query1.FieldByName('aq11').onchange:=queryfieldchange;
  query1.FieldByName('aq12').onchange:=queryfieldchange;
  query1.FieldByName('aq13').onchange:=queryfieldchange;
  query1.FieldByName('aq14').onchange:=queryfieldchange;
  query1.FieldByName('aq15').onchange:=queryfieldchange;
  query1.FieldByName('aq16').onchange:=queryfieldchange;
  query1.FieldByName('aq17').onchange:=queryfieldchange;
  query1.FieldByName('aq18').onchange:=queryfieldchange;
  query1.FieldByName('aq19').onchange:=queryfieldchange;
  query1.FieldByName('aq20').onchange:=queryfieldchange;
end;

procedure Tfrmlwo_ip.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
  tsqty,tspqty:Integer;
begin
  tsqty:=0;
  tspqty:=0;

  if label10.caption='SP' then begin
    //tsqty:=frmlwo.query1.fieldbyname('tsqty').value;
    //{
    with query2 do begin
      close;
      params.clear;
      commandtext:='select tsqty from tbl_lwo ';
      commandtext:=commandtext+'where pline='''+query1.fieldbyname('pline').value+''' ';
      commandtext:=commandtext+'and seq='+query1.fieldbyname('seq').asstring+' ';
      commandtext:=commandtext+'and did='+query1.fieldbyname('did').asstring+' ';
      //commandtext:=commandtext+'and styp='''+query1.fieldbyname('styp').value+'''';
      open;
      if not fieldbyname('tsqty').isnull then tsqty:=fieldbyname('tsqty').value;
    end;
    //}
    tspqty:=query1.fieldbyname('taqty').value;
  end;

  if tspqty>tsqty then begin
    showmessage('GX sP Qty > Sewn Qty');
    abort;
  end else begin
    str1:='update tbl_lwo_ip set ';
    if not query1.fieldbyname('cmpi').isnull then begin
      if query1.fieldbyname('cmpi').value=true then
        str1:=str1+'cmpi=1,'
      else str1:=str1+'cmpi=0,';
    end else str1:=str1+'cmpi=0,';
    if not query1.fieldbyname('aq1').isnull then
    str1:=str1+'aq1='+query1.fieldbyname('aq1').asstring+','
    else str1:=str1+'aq1=0,';
    if not query1.fieldbyname('aq2').isnull then
    str1:=str1+'aq2='+query1.fieldbyname('aq2').asstring+','
    else str1:=str1+'aq2=0,';
    if not query1.fieldbyname('aq3').isnull then
    str1:=str1+'aq3='+query1.fieldbyname('aq3').asstring+','
    else str1:=str1+'aq3=0,';
    if not query1.fieldbyname('aq4').isnull then
    str1:=str1+'aq4='+query1.fieldbyname('aq4').asstring+','
    else str1:=str1+'aq4=0,';
    if not query1.fieldbyname('aq5').isnull then
    str1:=str1+'aq5='+query1.fieldbyname('aq5').asstring+','
    else str1:=str1+'aq5=0,';
    if not query1.fieldbyname('aq6').isnull then
    str1:=str1+'aq6='+query1.fieldbyname('aq6').asstring+','
    else str1:=str1+'aq6=0,';
    if not query1.fieldbyname('aq7').isnull then
    str1:=str1+'aq7='+query1.fieldbyname('aq7').asstring+','
    else str1:=str1+'aq7=0,';
    if not query1.fieldbyname('aq8').isnull then
    str1:=str1+'aq8='+query1.fieldbyname('aq8').asstring+','
    else str1:=str1+'aq8=0,';
    if not query1.fieldbyname('aq9').isnull then
    str1:=str1+'aq9='+query1.fieldbyname('aq9').asstring+','
    else str1:=str1+'aq9=0,';
    if not query1.fieldbyname('aq10').isnull then
    str1:=str1+'aq10='+query1.fieldbyname('aq10').asstring+','
    else str1:=str1+'aq10=0,';
    if not query1.fieldbyname('aq11').isnull then
    str1:=str1+'aq11='+query1.fieldbyname('aq11').asstring+','
    else str1:=str1+'aq11=0,';
    if not query1.fieldbyname('aq12').isnull then
    str1:=str1+'aq12='+query1.fieldbyname('aq12').asstring+','
    else str1:=str1+'aq12=0,';
    if not query1.fieldbyname('aq13').isnull then
    str1:=str1+'aq13='+query1.fieldbyname('aq13').asstring+','
    else str1:=str1+'aq13=0,';
    if not query1.fieldbyname('aq14').isnull then
    str1:=str1+'aq14='+query1.fieldbyname('aq14').asstring+','
    else str1:=str1+'aq14=0,';
    if not query1.fieldbyname('aq15').isnull then
    str1:=str1+'aq15='+query1.fieldbyname('aq15').asstring+','
    else str1:=str1+'aq15=0,';
    if not query1.fieldbyname('aq16').isnull then
    str1:=str1+'aq16='+query1.fieldbyname('aq16').asstring+','
    else str1:=str1+'aq16=0,';
    if not query1.fieldbyname('aq17').isnull then
    str1:=str1+'aq17='+query1.fieldbyname('aq17').asstring+','
    else str1:=str1+'aq17=0,';
    if not query1.fieldbyname('aq18').isnull then
    str1:=str1+'aq18='+query1.fieldbyname('aq18').asstring+','
    else str1:=str1+'aq18=0,';
    if not query1.fieldbyname('aq19').isnull then
    str1:=str1+'aq19='+query1.fieldbyname('aq19').asstring+','
    else str1:=str1+'aq19=0,';
    if not query1.fieldbyname('aq20').isnull then
    str1:=str1+'aq20='+query1.fieldbyname('aq20').asstring+','
    else str1:=str1+'aq20=0,';
    if not query1.fieldbyname('taqty').isnull then
    str1:=str1+'taqty='+query1.fieldbyname('taqty').asstring+' '
    else str1:=str1+'taqty=0 ';
    str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
    str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
    str1:=str1+'and did='+query1.fieldbyname('did').asstring+' ';
    str1:=str1+'and styp='''+query1.fieldbyname('styp').value+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    str1:='update tbl_lwo set ';
    if not query1.fieldbyname('cmpi').isnull then begin
      if query1.fieldbyname('cmpi').value=true then begin
        if label10.caption='PF' then
          str1:=str1+'cmpt1b=1,'
        else if label10.caption='BN' then
          str1:=str1+'cmpb=1,'
        else if label10.caption='AQ' then
          str1:=str1+'cmp_aq=1,'
        else if label10.caption='SP' then
          str1:=str1+'cmpip=1,';
      end else begin
        if label10.caption='PF' then
          str1:=str1+'cmpt1b=0,'
        else if label10.caption='BN' then
          str1:=str1+'cmpb=0,'
        else if label10.caption='AQ' then
          str1:=str1+'cmp_aq=0,'
        else if label10.caption='SP' then
          str1:=str1+'cmpip=0,';
      end;
    end else begin
      if label10.caption='PF' then
        str1:=str1+'cmpt1b=0,'
      else if label10.caption='BN' then
        str1:=str1+'cmpb=0,'
      else if label10.caption='AQ' then
        str1:=str1+'cmp_aq=0,'
      else if label10.caption='SP' then
        str1:=str1+'cmpip=0,';
    end;
    if not query1.fieldbyname('taqty').isnull then begin
      if label10.caption='PF' then
        str1:=str1+'t1b='+query1.fieldbyname('taqty').asstring+' '
      else if label10.caption='BN' then
        str1:=str1+'b_qty='+query1.fieldbyname('taqty').asstring+' '
      else if label10.caption='AQ' then
        str1:=str1+'aq_qty='+query1.fieldbyname('taqty').asstring+' '
      else if label10.caption='SP' then
        str1:=str1+'tip='+query1.fieldbyname('taqty').asstring+' ';
    end else begin
      if label10.caption='PF' then
        str1:=str1+'t1b=0 '
      else if label10.caption='BN' then
        str1:=str1+'b_qty=0 '
      else if label10.caption='AQ' then
        str1:=str1+'aq_qty=0 '
      else if label10.caption='SP' then
        str1:=str1+'tip=0 ';
    end;
    str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
    str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
    str1:=str1+'and did='+query1.fieldbyname('did').asstring;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  end;
end;

procedure Tfrmlwo_ip.QueryFieldChange(Sender: TField);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20:integer;
begin
  if not query1.fieldbyname('aq1').isnull then q1:=query1.fieldbyname('aq1').value else q1:=0;
  if not query1.fieldbyname('aq2').isnull then q2:=query1.fieldbyname('aq2').value else q2:=0;
  if not query1.fieldbyname('aq3').isnull then q3:=query1.fieldbyname('aq3').value else q3:=0;
  if not query1.fieldbyname('aq4').isnull then q4:=query1.fieldbyname('aq4').value else q4:=0;
  if not query1.fieldbyname('aq5').isnull then q5:=query1.fieldbyname('aq5').value else q5:=0;
  if not query1.fieldbyname('aq6').isnull then q6:=query1.fieldbyname('aq6').value else q6:=0;
  if not query1.fieldbyname('aq7').isnull then q7:=query1.fieldbyname('aq7').value else q7:=0;
  if not query1.fieldbyname('aq8').isnull then q8:=query1.fieldbyname('aq8').value else q8:=0;
  if not query1.fieldbyname('aq9').isnull then q9:=query1.fieldbyname('aq9').value else q9:=0;
  if not query1.fieldbyname('aq10').isnull then q10:=query1.fieldbyname('aq10').value else q10:=0;
  if not query1.fieldbyname('aq11').isnull then q11:=query1.fieldbyname('aq11').value else q11:=0;
  if not query1.fieldbyname('aq12').isnull then q12:=query1.fieldbyname('aq12').value else q12:=0;
  if not query1.fieldbyname('aq13').isnull then q13:=query1.fieldbyname('aq13').value else q13:=0;
  if not query1.fieldbyname('aq14').isnull then q14:=query1.fieldbyname('aq14').value else q14:=0;
  if not query1.fieldbyname('aq15').isnull then q15:=query1.fieldbyname('aq15').value else q15:=0;
  if not query1.fieldbyname('aq16').isnull then q16:=query1.fieldbyname('aq16').value else q16:=0;
  if not query1.fieldbyname('aq17').isnull then q17:=query1.fieldbyname('aq17').value else q17:=0;
  if not query1.fieldbyname('aq18').isnull then q18:=query1.fieldbyname('aq18').value else q18:=0;
  if not query1.fieldbyname('aq19').isnull then q19:=query1.fieldbyname('aq19').value else q19:=0;
  if not query1.fieldbyname('aq20').isnull then q20:=query1.fieldbyname('aq20').value else q20:=0;
  query1.fieldbyname('taqty').value:=q1+q2+q3+q4+q5+q6+q7+q8+q9+q10+q11+q12+q13+q14+q15+q16+q17+q18+q19+q20;
end;

end.
