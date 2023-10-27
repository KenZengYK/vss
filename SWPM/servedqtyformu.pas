unit servedqtyformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, GridsEh,
  DBGridEh, StdCtrls, Buttons, ComCtrls, Mask, rxToolEdit, DBCtrls, ExtCtrls;

type
  Tfrmservedqty = class(TForm)
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
    lblcs: TLabel;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    DateTimePicker1: TDateTimePicker;
    Panel2: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure QueryFieldChange(Sender: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmservedqty: Tfrmservedqty;

implementation

uses mainformu, lwoformu, worksheet, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmservedqty.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
    frmservedqty:=nil;
  end;
end;

procedure Tfrmservedqty.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x01',ptinput);
      params.createparam(ftinteger,'x02',ptinput);
      params.createparam(ftinteger,'x03',ptinput);
      params.createparam(ftinteger,'x04',ptinput);
      params.createparam(ftinteger,'x05',ptinput);
      params.createparam(ftinteger,'x06',ptinput);
      params.createparam(ftinteger,'x07',ptinput);
      params.createparam(ftinteger,'x08',ptinput);
      params.createparam(ftinteger,'x09',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      params.createparam(ftinteger,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      params.createparam(ftinteger,'x15',ptinput);
      params.createparam(ftinteger,'x16',ptinput);
      params.createparam(ftinteger,'x17',ptinput);
      params.createparam(ftinteger,'x18',ptinput);
      params.createparam(ftinteger,'x19',ptinput);
      params.createparam(ftinteger,'x20',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      commandtext:='update tbl_lwo_t1bqty set t1b=:x2,q01=:x01,q02=:x02,q03=:x03,q04=:x04,q05=:x05,q06=:x06,q07=:x07,'
                  +'q08=:x08,q09=:x09,q10=:x10,q11=:x11,q12=:x12,q13=:x13,q14=:x14,q15=:x15,q16=:x16,q17=:x17,q18=:x18,'
                  +'q19=:x19,q20=:x20 where pline=:x3 and seq=:x4 and j_no=:x6 and j2_job=:x7 and rwo=:x8 and did=:x9';
      if not query1.fieldbyname('t1b').isnull then
      params[0].asinteger:=query1.fieldbyname('t1b').value
      else params[0].asinteger:=0;
      if not query1.fieldbyname('q01').isnull then
      params[1].asinteger:=query1.fieldbyname('q01').value
      else params[1].asinteger:=0;
      if not query1.fieldbyname('q02').isnull then
      params[2].asinteger:=query1.fieldbyname('q02').value
      else params[2].asinteger:=0;
      if not query1.fieldbyname('q03').isnull then
      params[3].asinteger:=query1.fieldbyname('q03').value
      else params[3].asinteger:=0;
      if not query1.fieldbyname('q04').isnull then
      params[4].asinteger:=query1.fieldbyname('q04').value
      else params[4].asinteger:=0;
      if not query1.fieldbyname('q05').isnull then
      params[5].asinteger:=query1.fieldbyname('q05').value
      else params[5].asinteger:=0;
      if not query1.fieldbyname('q06').isnull then
      params[6].asinteger:=query1.fieldbyname('q06').value
      else params[6].asinteger:=0;
      if not query1.fieldbyname('q07').isnull then
      params[7].asinteger:=query1.fieldbyname('q07').value
      else params[7].asinteger:=0;
      if not query1.fieldbyname('q08').isnull then
      params[8].asinteger:=query1.fieldbyname('q08').value
      else params[8].asinteger:=0;
      if not query1.fieldbyname('q09').isnull then
      params[9].asinteger:=query1.fieldbyname('q09').value
      else params[9].asinteger:=0;
      if not query1.fieldbyname('q10').isnull then
      params[10].asinteger:=query1.fieldbyname('q10').value
      else params[10].asinteger:=0;
      if not query1.fieldbyname('q11').isnull then
      params[11].asinteger:=query1.fieldbyname('q11').value
      else params[11].asinteger:=0;
      if not query1.fieldbyname('q12').isnull then
      params[12].asinteger:=query1.fieldbyname('q12').value
      else params[12].asinteger:=0;
      if not query1.fieldbyname('q13').isnull then
      params[13].asinteger:=query1.fieldbyname('q13').value
      else params[13].asinteger:=0;
      if not query1.fieldbyname('q14').isnull then
      params[14].asinteger:=query1.fieldbyname('q14').value
      else params[14].asinteger:=0;
      if not query1.fieldbyname('q15').isnull then
      params[15].asinteger:=query1.fieldbyname('q15').value
      else params[15].asinteger:=0;
      if not query1.fieldbyname('q16').isnull then
      params[16].asinteger:=query1.fieldbyname('q16').value
      else params[16].asinteger:=0;
      if not query1.fieldbyname('q17').isnull then
      params[17].asinteger:=query1.fieldbyname('q17').value
      else params[17].asinteger:=0;
      if not query1.fieldbyname('q18').isnull then
      params[18].asinteger:=query1.fieldbyname('q18').value
      else params[18].asinteger:=0;
      if not query1.fieldbyname('q19').isnull then
      params[19].asinteger:=query1.fieldbyname('q19').value
      else params[19].asinteger:=0;
      if not query1.fieldbyname('q20').isnull then
      params[20].asinteger:=query1.fieldbyname('q20').value
      else params[20].asinteger:=0;
      params[21].asstring:=query1.fieldbyname('pline').value;
      params[22].asinteger:=query1.fieldbyname('seq').value;
      params[23].asstring:=query1.fieldbyname('j_no').value;
      params[24].asstring:=query1.fieldbyname('j2_job').value;
      params[25].asstring:=query1.fieldbyname('rwo').value;
      params[26].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      commandtext:='update tbl_lwo set t1b=:x1 where pline=:x3 and seq=:x4 and j_no=:x6 and j2_job=:x7 and rwo=:x8 and did=:x9';
      if not query1.fieldbyname('t1b').isnull then
      params[0].asinteger:=query1.fieldbyname('t1b').value
      else params[0].asinteger:=0;
      params[1].asstring:=query1.fieldbyname('pline').value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      params[3].asstring:=query1.fieldbyname('j_no').value;
      params[4].asstring:=query1.fieldbyname('j2_job').value;
      params[5].asstring:=query1.fieldbyname('rwo').value;
      params[6].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;
end;

procedure Tfrmservedqty.QueryFieldChange(Sender: TField);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20:integer;
begin
  if not query1.fieldbyname('q01').isnull then q1:=query1.fieldbyname('q01').value else q1:=0;
  if not query1.fieldbyname('q02').isnull then q2:=query1.fieldbyname('q02').value else q2:=0;
  if not query1.fieldbyname('q03').isnull then q3:=query1.fieldbyname('q03').value else q3:=0;
  if not query1.fieldbyname('q04').isnull then q4:=query1.fieldbyname('q04').value else q4:=0;
  if not query1.fieldbyname('q05').isnull then q5:=query1.fieldbyname('q05').value else q5:=0;
  if not query1.fieldbyname('q06').isnull then q6:=query1.fieldbyname('q06').value else q6:=0;
  if not query1.fieldbyname('q07').isnull then q7:=query1.fieldbyname('q07').value else q7:=0;
  if not query1.fieldbyname('q08').isnull then q8:=query1.fieldbyname('q08').value else q8:=0;
  if not query1.fieldbyname('q09').isnull then q9:=query1.fieldbyname('q09').value else q9:=0;
  if not query1.fieldbyname('q10').isnull then q10:=query1.fieldbyname('q10').value else q10:=0;
  if not query1.fieldbyname('q11').isnull then q11:=query1.fieldbyname('q11').value else q11:=0;
  if not query1.fieldbyname('q12').isnull then q12:=query1.fieldbyname('q12').value else q12:=0;
  if not query1.fieldbyname('q13').isnull then q13:=query1.fieldbyname('q13').value else q13:=0;
  if not query1.fieldbyname('q14').isnull then q14:=query1.fieldbyname('q14').value else q14:=0;
  if not query1.fieldbyname('q15').isnull then q15:=query1.fieldbyname('q15').value else q15:=0;
  if not query1.fieldbyname('q16').isnull then q16:=query1.fieldbyname('q16').value else q16:=0;
  if not query1.fieldbyname('q17').isnull then q17:=query1.fieldbyname('q17').value else q17:=0;
  if not query1.fieldbyname('q18').isnull then q18:=query1.fieldbyname('q18').value else q18:=0;
  if not query1.fieldbyname('q19').isnull then q19:=query1.fieldbyname('q19').value else q19:=0;
  if not query1.fieldbyname('q20').isnull then q20:=query1.fieldbyname('q20').value else q20:=0;
  query1.fieldbyname('t1b').value:=q1+q2+q3+q4+q5+q6+q7+q8+q9+q10+q11+q12+q13+q14+q15+q16+q17+q18+q19+q20;
end;

procedure Tfrmservedqty.BitBtn1Click(Sender: TObject);
var
  dt:tdate;
begin
  //bitbtn3click(self);
  bitbtn2.Enabled:=true;
  if lblcs.Caption='The twentyth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt19) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q19');
    lblcs.Caption:='The nineteenth time';
  end else if lblcs.Caption='The nineteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt18) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q18');
    lblcs.Caption:='The eighteenth time';
  end else if lblcs.Caption='The eighteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt17) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q17');
    lblcs.Caption:='The seventeenth time';
  end else if lblcs.Caption='The seventeenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt16) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q16');
    lblcs.Caption:='The sixteenth time';
  end else if lblcs.Caption='The sixteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt15) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q15');
    lblcs.Caption:='The fifteenth time';
  end else if lblcs.Caption='The fifteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt14) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q14');
    lblcs.Caption:='The forteenth time';
  end else if lblcs.Caption='The forteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt13) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q13');
    lblcs.Caption:='The thirteenth time';
  end else if lblcs.Caption='The thirteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt12) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q12');
    lblcs.Caption:='The twelveth time';
  end else if lblcs.Caption='The twelveth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt11) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q11');
    lblcs.Caption:='The eleventh time';
  end else if lblcs.Caption='The eleventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt10) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q10');
    lblcs.Caption:='The tenth time';
  end else if lblcs.Caption='The tenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt09) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q09');
    lblcs.Caption:='The ninth time';
  end else if lblcs.Caption='The ninth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt08) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q08');
    lblcs.Caption:='The eighth time';
  end else if lblcs.Caption='The eighth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt07) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q07');
    lblcs.Caption:='The seventh time';
  end else if lblcs.Caption='The seventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt06) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q06');
    lblcs.Caption:='The sixth time';
  end else if lblcs.Caption='The sixth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt05) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q05');
    lblcs.Caption:='The fifth time';
  end else if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt04) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q04');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt03) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q03');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt02) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q02');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt01) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q01');
    lblcs.Caption:='The first time';
    bitbtn1.Enabled:=false;
  end;
end;

procedure Tfrmservedqty.BitBtn2Click(Sender: TObject);
var
  dt:tdate;
begin
  //bitbtn3click(self);
  bitbtn1.Enabled:=true;
  if lblcs.Caption='The first time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt02) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q02');
    lblcs.Caption:='The second time';
  end else if lblcs.Caption='The second time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt03) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q03');
    lblcs.Caption:='The third time';
  end else if lblcs.Caption='The third time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt04) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q04');
    lblcs.Caption:='The forth time';
  end else if lblcs.Caption='The forth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt05) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q05');
    lblcs.Caption:='The fifth time';
  end else if lblcs.Caption='The fifth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt06) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q06');
    lblcs.Caption:='The sixth time';
  end else if lblcs.Caption='The sixth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt07) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q07');
    lblcs.Caption:='The seventh time';
  end else if lblcs.Caption='The seventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt08) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q08');
    lblcs.Caption:='The eighth time';
  end else if lblcs.Caption='The eighth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt09) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q09');
    lblcs.Caption:='The ninth time';
  end else if lblcs.Caption='The ninth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt10) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q10');
    lblcs.Caption:='The tenth time';
  end else if lblcs.Caption='The tenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt11) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q11');
    lblcs.Caption:='The eleventh time';
  end else if lblcs.Caption='The eleventh time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt12) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q12');
    lblcs.Caption:='The twelveth time';
  end else if lblcs.Caption='The twelveth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt13) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q13');
    lblcs.Caption:='The thirteenth time';
  end else if lblcs.Caption='The thirteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt14) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q14');
    lblcs.Caption:='The forteenth time';
  end else if lblcs.Caption='The forteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt15) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q15');
    lblcs.Caption:='The fifteenth time';
  end else if lblcs.Caption='The fifteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt16) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q16');
    lblcs.Caption:='The sixteenth time';
  end else if lblcs.Caption='The sixteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt17) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q17');
    lblcs.Caption:='The seventeenth time';
  end else if lblcs.Caption='The seventeenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt18) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q18');
    lblcs.Caption:='The eighteenth time';
  end else if lblcs.Caption='The eighteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt19) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q19');
    lblcs.Caption:='The nineteenth time';
  end else if lblcs.Caption='The nineteenth time' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(dt20) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
      params[0].asstring:=frmlwo.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmlwo.query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    end;
    dateedit1.Date:=dt;
    dbgrideh1.Columns[6].Field:=query1.fieldbyname('q20');
    lblcs.Caption:='The twentyth time';
  end;
end;

procedure Tfrmservedqty.BitBtn3Click(Sender: TObject);
var
  s1:string;
begin
  if query1.state=dsedit then query1.Post;
  if pos('first',lblcs.Caption)>0 then s1:='01'
  else if pos('second',lblcs.Caption)>0 then s1:='02'
  else if pos('third',lblcs.Caption)>0 then s1:='03'
  else if pos('forth',lblcs.Caption)>0 then s1:='04'
  else if pos('fifth',lblcs.Caption)>0 then s1:='05'
  else if pos('sixth',lblcs.Caption)>0 then s1:='06'
  else if pos('seventh',lblcs.Caption)>0 then s1:='07'
  else if pos('eighth',lblcs.Caption)>0 then s1:='08'
  else if pos('ninth',lblcs.Caption)>0 then s1:='09'
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
    commandtext:='update tbl_lwo_t1bqty set dt'+s1+'=:x1 where pline=:x2 and seq=:x3';
    params[0].asdate:=dateedit1.date;
    params[1].asstring:=frmlwo.Query1.fieldbyname('pline').value;
    params[2].asinteger:=frmlwo.Query1.fieldbyname('seq').value;
    execute;
  end;
  label8.Caption:='Save';
end;

procedure Tfrmservedqty.FormShow(Sender: TObject);
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

procedure Tfrmservedqty.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Query1.state=dsedit then label8.Caption:='Edit';
end;

procedure Tfrmservedqty.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.FieldByName('q01').onchange:=queryfieldchange;
  query1.FieldByName('q02').onchange:=queryfieldchange;
  query1.FieldByName('q03').onchange:=queryfieldchange;
  query1.FieldByName('q04').onchange:=queryfieldchange;
  query1.FieldByName('q05').onchange:=queryfieldchange;
  query1.FieldByName('q06').onchange:=queryfieldchange;
  query1.FieldByName('q07').onchange:=queryfieldchange;
  query1.FieldByName('q08').onchange:=queryfieldchange;
  query1.FieldByName('q09').onchange:=queryfieldchange;
  query1.FieldByName('q10').onchange:=queryfieldchange;
  query1.FieldByName('q11').onchange:=queryfieldchange;
  query1.FieldByName('q12').onchange:=queryfieldchange;
  query1.FieldByName('q13').onchange:=queryfieldchange;
  query1.FieldByName('q14').onchange:=queryfieldchange;
  query1.FieldByName('q15').onchange:=queryfieldchange;
  query1.FieldByName('q16').onchange:=queryfieldchange;
  query1.FieldByName('q17').onchange:=queryfieldchange;
  query1.FieldByName('q18').onchange:=queryfieldchange;
  query1.FieldByName('q19').onchange:=queryfieldchange;
  query1.FieldByName('q20').onchange:=queryfieldchange;
end;

end.
