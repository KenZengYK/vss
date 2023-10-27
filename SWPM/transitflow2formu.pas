unit transitflow2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, GridsEh, DBGridEh, DBCtrls,
  ExtCtrls;

type
  Tfrmtransitflow2 = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
    DBText8: TDBText;
    Label9: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    DBText9: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransitflow2: Tfrmtransitflow2;

implementation

uses mainformu, lwoformu, transitflow1formu;

{$R *.dfm}

{ Tfrmtransitflow2 }

procedure Tfrmtransitflow2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmtransitflow2:=nil;
end;

procedure Tfrmtransitflow2.BitBtn1Click(Sender: TObject);
begin
  if caption='Flow 2' then frmlwo.previewT_2AQL
  else frmlwo.previewT_4_AQL;
end;

procedure Tfrmtransitflow2.DBGridEh1TitleClick(Column: TColumnEh);
var
  dt:tdate;
  s1:string;
  y1,m1,d1:word;
begin
  try
  if (column.Index>=3) and (column.Index<=54) then begin
    s1:=copy(column.title.caption,1,8);
    y1:=2000+strtoint(copy(s1,1,2));
    m1:=strtoint(copy(s1,4,2));
    d1:=strtoint(copy(s1,7,2));
    dt:=encodedate(y1,m1,d1);
  end;
  if dt>encodedate(2005,12,31) then begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftdatetime,'x4',ptinput);
    params.createparam(ftdate,'x5',ptinput);
    commandtext:='execute procedure sp_calc_trans_dtl(:x1,:x2,:x3,:x4,:x5)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:='2';
    params[3].asdatetime:=query1.fieldbyname('tm').value;
    params[4].asdate:=dt;
    execute;
  end;
  if frmtransitflow1=nil then frmtransitflow1:=tfrmtransitflow1.create(nil);
  with frmtransitflow1.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftdatetime,'x4',ptinput);
    commandtext:='select * from tbl_trans_qty_01 where pline=:x1 and seq=:x2 and typ=:x3 and tm=:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:='2';
    params[3].asdatetime:=query1.fieldbyname('tm').value;
    open;
  end;
  frmtransitflow1.show;
  end;
  except
    abort;
  end;
end;

procedure Tfrmtransitflow2.FormShow(Sender: TObject);
var
  s1,s2,s3:string;
begin
  dbtext1.DataSource:=frmlwo.DBText1.DataSource;
  dbtext2.DataSource:=frmlwo.DBText2.DataSource;
  dbtext3.DataSource:=frmlwo.DBText3.DataSource;
  dbtext4.DataSource:=frmlwo.DBText4.DataSource;
  dbtext5.DataSource:=frmlwo.DBText5.DataSource;
  dbtext6.DataSource:=frmlwo.DBText6.DataSource;
  dbtext7.DataSource:=frmlwo.DBText7.DataSource;
  dbtext8.DataSource:=frmlwo.DBText8.DataSource;
  dbtext9.DataSource:=frmlwo.DBText9.DataSource;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and typ=:x4';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    params[3].asstring:=query1.fieldbyname('typ').value;
    open;
  end;
  if frmtransitflow2.Caption='Transit Flow 2' then begin
    s1:='Sewn';s2:='AQL';s3:='T2';
    dbgrideh1.Columns[2].Visible:=true;
    dbgrideh1.Columns[2].Title.Caption:='T1 Qty';
    dbgrideh1.Columns[81].Title.caption:='Total|Sewn';
    dbgrideh1.Columns[82].Title.caption:='Total|AQL';
    dbgrideh1.Columns[83].Title.Caption:='Total|T2';
    dbgrideh1.columns[84].Title.Caption:='Flow Diff|T1   Sewn';
    dbgrideh1.Columns[85].Title.caption:='Flow Diff|Sewn   AQL';
    dbgrideh1.Columns[86].Title.Caption:='Flow Diff|AQL   T2';
    if frmlwo.DBGridEh1.visible=true then begin
      //dbgrideh1.Columns[87].Footer.value:=frmlwo.DBGridEh1.Columns[23].Footers[1].Value;
      //dbgrideh1.Columns[89].Footer.value:=frmlwo.DBGridEh1.Columns[24].Footers[1].Value;
    end else begin
      dbgrideh1.Columns[87].Footer.value:=frmlwo.DBGridEh2.Columns[23].Footers[1].Value;
      dbgrideh1.Columns[89].Footer.value:=frmlwo.DBGridEh2.Columns[24].Footers[1].Value;
    end;
  end else begin
  if frmtransitflow2.Caption='Transit Flow 4' then begin
    s1:='AQL';s2:='Ex-fty';s3:='Invd';
    dbgrideh1.Columns[2].Visible:=true;
    dbgrideh1.Columns[2].Title.Caption:='T3 Qty';
    dbgrideh1.Columns[81].Title.caption:='Total|AQL';
    dbgrideh1.Columns[82].Title.caption:='Total|Ex-fty';
    dbgrideh1.Columns[83].Title.Caption:='Total|Invd';
    dbgrideh1.columns[84].Title.Caption:='Flow Diff|T3   AQL';
    dbgrideh1.Columns[85].Title.caption:='Flow Diff|AQL   Ex-fty';
    dbgrideh1.Columns[86].Title.Caption:='Flow Diff|Ex-fty   Invd';
    if frmlwo.DBGridEh1.visible=true then begin
      //dbgrideh1.Columns[87].Footer.value:=frmlwo.DBGridEh1.Columns[23].Footers[1].Value;
      //dbgrideh1.Columns[89].Footer.value:=frmlwo.DBGridEh1.Columns[24].Footers[1].Value;
    end else begin
      dbgrideh1.Columns[87].Footer.value:=frmlwo.DBGridEh2.Columns[23].Footers[1].Value;
      dbgrideh1.Columns[89].Footer.value:=frmlwo.DBGridEh2.Columns[24].Footers[1].Value;
    end;
  end;
  end;
  if not query2.fieldbyname('dt01').isnull then begin
    dbgrideh1.Columns[3].Visible:=true;
    dbgrideh1.Columns[4].Visible:=true;
    dbgrideh1.Columns[5].Visible:=true;
    dbgrideh1.Columns[3].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt01').value)+'|'+query2.fieldbyname('ct01').asstring+'|'+s1;
    dbgrideh1.Columns[4].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt01').value)+'|'+query2.fieldbyname('ct01').asstring+'|'+s2;
    dbgrideh1.Columns[5].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt01').value)+'|'+query2.fieldbyname('ct01').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[3].Visible:=false;
    dbgrideh1.Columns[4].Visible:=false;
    dbgrideh1.Columns[5].Visible:=false;
  end;
  if not query2.fieldbyname('dt02').isnull then begin
    dbgrideh1.Columns[6].Visible:=true;
    dbgrideh1.Columns[7].Visible:=true;
    dbgrideh1.Columns[8].Visible:=true;
    dbgrideh1.Columns[6].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt02').value)+'|'+query2.fieldbyname('ct02').asstring+'|'+s1;
    dbgrideh1.Columns[7].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt02').value)+'|'+query2.fieldbyname('ct02').asstring+'|'+s2;
    dbgrideh1.Columns[8].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt02').value)+'|'+query2.fieldbyname('ct02').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[6].Visible:=false;
    dbgrideh1.Columns[7].Visible:=false;
    dbgrideh1.Columns[8].Visible:=false;
  end;
  if not query2.fieldbyname('dt03').isnull then begin
    dbgrideh1.Columns[9].Visible:=true;
    dbgrideh1.Columns[10].Visible:=true;
    dbgrideh1.Columns[11].Visible:=true;
    dbgrideh1.Columns[9].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt03').value)+'|'+query2.fieldbyname('ct03').asstring+'|'+s1;
    dbgrideh1.Columns[10].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt03').value)+'|'+query2.fieldbyname('ct03').asstring+'|'+s2;
    dbgrideh1.Columns[11].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt03').value)+'|'+query2.fieldbyname('ct03').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[9].Visible:=false;
    dbgrideh1.Columns[10].Visible:=false;
    dbgrideh1.Columns[11].Visible:=false;
  end;
  if not query2.fieldbyname('dt04').isnull then begin
    dbgrideh1.Columns[12].Visible:=true;
    dbgrideh1.Columns[13].Visible:=true;
    dbgrideh1.Columns[14].Visible:=true;
    dbgrideh1.Columns[12].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt04').value)+'|'+query2.fieldbyname('ct04').asstring+'|'+s1;
    dbgrideh1.Columns[13].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt04').value)+'|'+query2.fieldbyname('ct04').asstring+'|'+s2;
    dbgrideh1.Columns[14].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt04').value)+'|'+query2.fieldbyname('ct04').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[12].Visible:=false;
    dbgrideh1.Columns[13].Visible:=false;
    dbgrideh1.Columns[14].Visible:=false;
  end;
  if not query2.fieldbyname('dt05').isnull then begin
    dbgrideh1.Columns[15].Visible:=true;
    dbgrideh1.Columns[16].Visible:=true;
    dbgrideh1.Columns[17].Visible:=true;
    dbgrideh1.Columns[15].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt05').value)+'|'+query2.fieldbyname('ct05').asstring+'|'+s1;
    dbgrideh1.Columns[16].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt05').value)+'|'+query2.fieldbyname('ct05').asstring+'|'+s2;
    dbgrideh1.Columns[17].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt05').value)+'|'+query2.fieldbyname('ct05').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[15].Visible:=false;
    dbgrideh1.Columns[16].Visible:=false;
    dbgrideh1.Columns[17].Visible:=false;
  end;
  if not query2.fieldbyname('dt06').isnull then begin
    dbgrideh1.Columns[18].Visible:=true;
    dbgrideh1.Columns[19].Visible:=true;
    dbgrideh1.Columns[20].Visible:=true;
    dbgrideh1.Columns[18].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt06').value)+'|'+query2.fieldbyname('ct06').asstring+'|'+s1;
    dbgrideh1.Columns[19].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt06').value)+'|'+query2.fieldbyname('ct06').asstring+'|'+s2;
    dbgrideh1.Columns[20].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt06').value)+'|'+query2.fieldbyname('ct06').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[18].Visible:=false;
    dbgrideh1.Columns[19].Visible:=false;
    dbgrideh1.Columns[20].Visible:=false;
  end;
  if not query2.fieldbyname('dt07').isnull then begin
    dbgrideh1.Columns[21].Visible:=true;
    dbgrideh1.Columns[22].Visible:=true;
    dbgrideh1.Columns[23].Visible:=true;
    dbgrideh1.Columns[21].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt07').value)+'|'+query2.fieldbyname('ct07').asstring+'|'+s1;
    dbgrideh1.Columns[22].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt07').value)+'|'+query2.fieldbyname('ct07').asstring+'|'+s2;
    dbgrideh1.Columns[23].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt07').value)+'|'+query2.fieldbyname('ct07').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[21].Visible:=false;
    dbgrideh1.Columns[22].Visible:=false;
    dbgrideh1.Columns[23].Visible:=false;
  end;
  if not query2.fieldbyname('dt08').isnull then begin
    dbgrideh1.Columns[24].Visible:=true;
    dbgrideh1.Columns[25].Visible:=true;
    dbgrideh1.Columns[26].Visible:=true;
    dbgrideh1.Columns[24].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt08').value)+'|'+query2.fieldbyname('ct08').asstring+'|'+s1;
    dbgrideh1.Columns[25].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt08').value)+'|'+query2.fieldbyname('ct08').asstring+'|'+s2;
    dbgrideh1.Columns[26].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt08').value)+'|'+query2.fieldbyname('ct08').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[24].Visible:=false;
    dbgrideh1.Columns[25].Visible:=false;
    dbgrideh1.Columns[26].Visible:=false;
  end;
  if not query2.fieldbyname('dt09').isnull then begin
    dbgrideh1.Columns[27].Visible:=true;
    dbgrideh1.Columns[28].Visible:=true;
    dbgrideh1.Columns[29].Visible:=true;
    dbgrideh1.Columns[27].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt09').value)+'|'+query2.fieldbyname('ct09').asstring+'|'+s1;
    dbgrideh1.Columns[28].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt09').value)+'|'+query2.fieldbyname('ct09').asstring+'|'+s2;
    dbgrideh1.Columns[29].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt09').value)+'|'+query2.fieldbyname('ct09').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[27].Visible:=false;
    dbgrideh1.Columns[28].Visible:=false;
    dbgrideh1.Columns[29].Visible:=false;
  end;
  if not query2.fieldbyname('dt10').isnull then begin
    dbgrideh1.Columns[30].Visible:=true;
    dbgrideh1.Columns[31].Visible:=true;
    dbgrideh1.Columns[32].Visible:=true;
    dbgrideh1.Columns[30].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt10').value)+'|'+query2.fieldbyname('ct10').asstring+'|'+s1;
    dbgrideh1.Columns[31].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt10').value)+'|'+query2.fieldbyname('ct10').asstring+'|'+s2;
    dbgrideh1.Columns[32].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt10').value)+'|'+query2.fieldbyname('ct10').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[30].Visible:=false;
    dbgrideh1.Columns[31].Visible:=false;
    dbgrideh1.Columns[32].Visible:=false;
  end;
  if not query2.fieldbyname('dt11').isnull then begin
    dbgrideh1.Columns[33].Visible:=true;
    dbgrideh1.Columns[34].Visible:=true;
    dbgrideh1.Columns[35].Visible:=true;
    dbgrideh1.Columns[33].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt11').value)+'|'+query2.fieldbyname('ct11').asstring+'|'+s1;
    dbgrideh1.Columns[34].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt11').value)+'|'+query2.fieldbyname('ct11').asstring+'|'+s2;
    dbgrideh1.Columns[35].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt11').value)+'|'+query2.fieldbyname('ct11').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[33].Visible:=false;
    dbgrideh1.Columns[34].Visible:=false;
    dbgrideh1.Columns[35].Visible:=false;
  end;
  if not query2.fieldbyname('dt12').isnull then begin
    dbgrideh1.Columns[36].Visible:=true;
    dbgrideh1.Columns[37].Visible:=true;
    dbgrideh1.Columns[38].Visible:=true;
    dbgrideh1.Columns[36].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt12').value)+'|'+query2.fieldbyname('ct12').asstring+'|'+s1;
    dbgrideh1.Columns[37].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt12').value)+'|'+query2.fieldbyname('ct12').asstring+'|'+s2;
    dbgrideh1.Columns[38].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt12').value)+'|'+query2.fieldbyname('ct12').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[36].Visible:=false;
    dbgrideh1.Columns[37].Visible:=false;
    dbgrideh1.Columns[38].Visible:=false;
  end;
  if not query2.fieldbyname('dt13').isnull then begin
    dbgrideh1.Columns[39].Visible:=true;
    dbgrideh1.Columns[40].Visible:=true;
    dbgrideh1.Columns[41].Visible:=true;
    dbgrideh1.Columns[39].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt13').value)+'|'+query2.fieldbyname('ct13').asstring+'|'+s1;
    dbgrideh1.Columns[40].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt13').value)+'|'+query2.fieldbyname('ct13').asstring+'|'+s2;
    dbgrideh1.Columns[41].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt13').value)+'|'+query2.fieldbyname('ct13').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[39].Visible:=false;
    dbgrideh1.Columns[40].Visible:=false;
    dbgrideh1.Columns[41].Visible:=false;
  end;
  if not query2.fieldbyname('dt14').isnull then begin
    dbgrideh1.Columns[42].Visible:=true;
    dbgrideh1.Columns[43].Visible:=true;
    dbgrideh1.Columns[44].Visible:=true;
    dbgrideh1.Columns[42].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt14').value)+'|'+query2.fieldbyname('ct14').asstring+'|'+s1;
    dbgrideh1.Columns[43].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt14').value)+'|'+query2.fieldbyname('ct14').asstring+'|'+s2;
    dbgrideh1.Columns[44].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt14').value)+'|'+query2.fieldbyname('ct14').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[42].Visible:=false;
    dbgrideh1.Columns[43].Visible:=false;
    dbgrideh1.Columns[44].Visible:=false;
  end;
  if not query2.fieldbyname('dt15').isnull then begin
    dbgrideh1.Columns[45].Visible:=true;
    dbgrideh1.Columns[46].Visible:=true;
    dbgrideh1.Columns[47].Visible:=true;
    dbgrideh1.Columns[45].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt15').value)+'|'+query2.fieldbyname('ct15').asstring+'|'+s1;
    dbgrideh1.Columns[46].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt15').value)+'|'+query2.fieldbyname('ct15').asstring+'|'+s2;
    dbgrideh1.Columns[47].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt15').value)+'|'+query2.fieldbyname('ct15').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[45].Visible:=false;
    dbgrideh1.Columns[46].Visible:=false;
    dbgrideh1.Columns[47].Visible:=false;
  end;
  if not query2.fieldbyname('dt16').isnull then begin
    dbgrideh1.Columns[48].Visible:=true;
    dbgrideh1.Columns[49].Visible:=true;
    dbgrideh1.Columns[50].Visible:=true;
    dbgrideh1.Columns[48].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt16').value)+'|'+query2.fieldbyname('ct16').asstring+'|'+s1;
    dbgrideh1.Columns[49].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt16').value)+'|'+query2.fieldbyname('ct16').asstring+'|'+s2;
    dbgrideh1.Columns[50].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt16').value)+'|'+query2.fieldbyname('ct16').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[48].Visible:=false;
    dbgrideh1.Columns[49].Visible:=false;
    dbgrideh1.Columns[50].Visible:=false;
  end;
  if not query2.fieldbyname('dt17').isnull then begin
    dbgrideh1.Columns[51].Visible:=true;
    dbgrideh1.Columns[52].Visible:=true;
    dbgrideh1.Columns[53].Visible:=true;
    dbgrideh1.Columns[51].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt17').value)+'|'+query2.fieldbyname('ct17').asstring+'|'+s1;
    dbgrideh1.Columns[52].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt17').value)+'|'+query2.fieldbyname('ct17').asstring+'|'+s2;
    dbgrideh1.Columns[53].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt17').value)+'|'+query2.fieldbyname('ct17').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[51].Visible:=false;
    dbgrideh1.Columns[52].Visible:=false;
    dbgrideh1.Columns[53].Visible:=false;
  end;
  if not query2.fieldbyname('dt18').isnull then begin
    dbgrideh1.Columns[54].Visible:=true;
    dbgrideh1.Columns[55].Visible:=true;
    dbgrideh1.Columns[56].Visible:=true;
    dbgrideh1.Columns[54].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt18').value)+'|'+query2.fieldbyname('ct18').asstring+'|'+s1;
    dbgrideh1.Columns[55].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt18').value)+'|'+query2.fieldbyname('ct18').asstring+'|'+s2;
    dbgrideh1.Columns[56].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt18').value)+'|'+query2.fieldbyname('ct18').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[54].Visible:=false;
    dbgrideh1.Columns[55].Visible:=false;
    dbgrideh1.Columns[56].Visible:=false;
  end;
  if not query2.fieldbyname('dt19').isnull then begin
    dbgrideh1.Columns[57].Visible:=true;
    dbgrideh1.Columns[58].Visible:=true;
    dbgrideh1.Columns[59].Visible:=true;
    dbgrideh1.Columns[57].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt19').value)+'|'+query2.fieldbyname('ct19').asstring+'|'+s1;
    dbgrideh1.Columns[58].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt19').value)+'|'+query2.fieldbyname('ct19').asstring+'|'+s2;
    dbgrideh1.Columns[59].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt19').value)+'|'+query2.fieldbyname('ct19').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[57].Visible:=false;
    dbgrideh1.Columns[58].Visible:=false;
    dbgrideh1.Columns[59].Visible:=false;
  end;
  if not query2.fieldbyname('dt20').isnull then begin
    dbgrideh1.Columns[60].Visible:=true;
    dbgrideh1.Columns[61].Visible:=true;
    dbgrideh1.Columns[62].Visible:=true;
    dbgrideh1.Columns[60].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt20').value)+'|'+query2.fieldbyname('ct20').asstring+'|'+s1;
    dbgrideh1.Columns[61].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt20').value)+'|'+query2.fieldbyname('ct20').asstring+'|'+s2;
    dbgrideh1.Columns[62].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt20').value)+'|'+query2.fieldbyname('ct20').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[60].Visible:=false;
    dbgrideh1.Columns[61].Visible:=false;
    dbgrideh1.Columns[62].Visible:=false;
  end;
  if not query2.fieldbyname('dt21').isnull then begin
    dbgrideh1.Columns[63].Visible:=true;
    dbgrideh1.Columns[64].Visible:=true;
    dbgrideh1.Columns[65].Visible:=true;
    dbgrideh1.Columns[63].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt21').value)+'|'+query2.fieldbyname('ct21').asstring+'|'+s1;
    dbgrideh1.Columns[64].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt21').value)+'|'+query2.fieldbyname('ct21').asstring+'|'+s2;
    dbgrideh1.Columns[65].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt21').value)+'|'+query2.fieldbyname('ct21').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[63].Visible:=false;
    dbgrideh1.Columns[64].Visible:=false;
    dbgrideh1.Columns[65].Visible:=false;
  end;
  if not query2.fieldbyname('dt22').isnull then begin
    dbgrideh1.Columns[66].Visible:=true;
    dbgrideh1.Columns[67].Visible:=true;
    dbgrideh1.Columns[68].Visible:=true;
    dbgrideh1.Columns[66].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt22').value)+'|'+query2.fieldbyname('ct22').asstring+'|'+s1;
    dbgrideh1.Columns[67].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt22').value)+'|'+query2.fieldbyname('ct22').asstring+'|'+s2;
    dbgrideh1.Columns[68].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt22').value)+'|'+query2.fieldbyname('ct22').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[66].Visible:=false;
    dbgrideh1.Columns[67].Visible:=false;
    dbgrideh1.Columns[68].Visible:=false;
  end;
  if not query2.fieldbyname('dt23').isnull then begin
    dbgrideh1.Columns[69].Visible:=true;
    dbgrideh1.Columns[70].Visible:=true;
    dbgrideh1.Columns[71].Visible:=true;
    dbgrideh1.Columns[69].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt23').value)+'|'+query2.fieldbyname('ct23').asstring+'|'+s1;
    dbgrideh1.Columns[70].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt23').value)+'|'+query2.fieldbyname('ct23').asstring+'|'+s2;
    dbgrideh1.Columns[71].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt23').value)+'|'+query2.fieldbyname('ct23').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[69].Visible:=false;
    dbgrideh1.Columns[70].Visible:=false;
    dbgrideh1.Columns[71].Visible:=false;
  end;
  if not query2.fieldbyname('dt24').isnull then begin
    dbgrideh1.Columns[72].Visible:=true;
    dbgrideh1.Columns[73].Visible:=true;
    dbgrideh1.Columns[74].Visible:=true;
    dbgrideh1.Columns[72].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt24').value)+'|'+query2.fieldbyname('ct24').asstring+'|'+s1;
    dbgrideh1.Columns[73].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt24').value)+'|'+query2.fieldbyname('ct24').asstring+'|'+s2;
    dbgrideh1.Columns[74].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt24').value)+'|'+query2.fieldbyname('ct24').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[72].Visible:=false;
    dbgrideh1.Columns[73].Visible:=false;
    dbgrideh1.Columns[74].Visible:=false;
  end;
  if not query2.fieldbyname('dt25').isnull then begin
    dbgrideh1.Columns[75].Visible:=true;
    dbgrideh1.Columns[76].Visible:=true;
    dbgrideh1.Columns[77].Visible:=true;
    dbgrideh1.Columns[75].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt25').value)+'|'+query2.fieldbyname('ct25').asstring+'|'+s1;
    dbgrideh1.Columns[76].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt25').value)+'|'+query2.fieldbyname('ct25').asstring+'|'+s2;
    dbgrideh1.Columns[77].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt25').value)+'|'+query2.fieldbyname('ct25').asstring+'|'+s3;
  end else begin
    dbgrideh1.Columns[75].Visible:=false;
    dbgrideh1.Columns[76].Visible:=false;
    dbgrideh1.Columns[77].Visible:=false;
  end;
  if not query2.fieldbyname('dt26').isnull then begin
    dbgrideh1.Columns[78].Visible:=true;
    dbgrideh1.Columns[79].Visible:=true;
    dbgrideh1.Columns[80].Visible:=true;
    dbgrideh1.Columns[78].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt26').value)+'|'+query2.fieldbyname('ct26').asstring+'|'+s1;
    dbgrideh1.Columns[79].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt26').value)+'|'+query2.fieldbyname('ct26').asstring+'|'+s2;
    dbgrideh1.Columns[80].Title.caption:=formatdatetime('yy/MM/dd',query2.fieldbyname('dt26').value)+'|'+query2.fieldbyname('ct26').asstring+'|'+s2;
  end else begin
    dbgrideh1.Columns[78].Visible:=false;
    dbgrideh1.Columns[79].Visible:=false;
    dbgrideh1.Columns[80].Visible:=false;
  end;
end;

end.
 