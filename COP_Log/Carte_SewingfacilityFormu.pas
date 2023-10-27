unit Carte_SewingfacilityFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DBCtrls, StdCtrls, RzBckgnd, ADODB, DB,
  Buttons, Mask;

type
  TfrmCarte_Sewingfacility = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    RzBackground1: TRzBackground;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    RzBackground2: TRzBackground;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure QTYChange(Sender: TField);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure SECT1Change(Sender: TField);
    procedure SECT2Change(Sender: TField);
    procedure SECT3Change(Sender: TField);
    procedure SECT4Change(Sender: TField);
    procedure SECT5Change(Sender: TField);
    procedure SECT6Change(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Sewingfacility: TfrmCarte_Sewingfacility;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu;

{$R *.dfm}

procedure TfrmCarte_Sewingfacility.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  adodataset1.fieldbyname('q1_qty').onchange:=qtychange;
  adodataset1.fieldbyname('q2_qty').onchange:=qtychange;
  adodataset1.fieldbyname('q3_qty').onchange:=qtychange;
  adodataset1.fieldbyname('q4_qty').onchange:=qtychange;
  adodataset1.fieldbyname('q5_qty').onchange:=qtychange;
  adodataset1.fieldbyname('q6_qty').onchange:=qtychange;
  adodataset1.fieldbyname('q1_f').onchange:=sect1change;
  adodataset1.fieldbyname('q1_a').onchange:=sect1change;
  adodataset1.fieldbyname('q1_e').onchange:=sect1change;
  adodataset1.fieldbyname('q2_f').onchange:=sect2change;
  adodataset1.fieldbyname('q2_a').onchange:=sect2change;
  adodataset1.fieldbyname('q2_e').onchange:=sect2change;
  adodataset1.fieldbyname('q3_f').onchange:=sect3change;
  adodataset1.fieldbyname('q3_a').onchange:=sect3change;
  adodataset1.fieldbyname('q3_e').onchange:=sect3change;
  adodataset1.fieldbyname('q4_f').onchange:=sect4change;
  adodataset1.fieldbyname('q4_a').onchange:=sect4change;
  adodataset1.fieldbyname('q4_e').onchange:=sect4change;
  adodataset1.fieldbyname('q5_f').onchange:=sect5change;
  adodataset1.fieldbyname('q5_a').onchange:=sect5change;
  adodataset1.fieldbyname('q5_e').onchange:=sect5change;
  adodataset1.fieldbyname('q6_f').onchange:=sect6change;
  adodataset1.fieldbyname('q6_a').onchange:=sect6change;
  adodataset1.fieldbyname('q6_e').onchange:=sect6change;
end;

procedure TfrmCarte_Sewingfacility.BitBtn3Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing.adodataset1.state=dsedit then frmCarte_Ordprocessing.adodataset1.post;
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmCarte_Sewingfacility.DBEdit2Change(Sender: TObject);
var
  i,qn_no:integer;
begin
  screen.cursor:=crSQLWait;
  try
  for i:=13 to 62 do begin
    dbgrideh1.columns[i].visible:=true;
  end;
  //
  //qn_no:=frmCarte_Ordprocessing.adodataset1.fieldbyname('qn_no').value+frmCarte_Ordprocessing.adodataset1.fieldbyname('qn_no1').value;
  //showmessage('qn_no equal to '+inttostr(qn_no));
  qn_no:=0;
  if dbedit2.EditText>'' then qn_no:=qn_no+strtoint(dbedit2.EditText);
  if dbedit3.EditText>'' then qn_no:=qn_no+strtoint(dbedit3.EditText);
  if qn_no<=1 then begin
    for i:=13 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=2 then begin
    for i:=23 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=3 then begin
    for i:=33 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=4 then begin
    for i:=43 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=5 then begin
    for i:=53 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end;
  for i:=5 to 8 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=15 to 18 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=25 to 28 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=35 to 38 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=45 to 48 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=55 to 58 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Sewingfacility.DBGridEh1Enter(Sender: TObject);
begin
  if frmCarte_Ordprocessing.adodataset1.state=dsedit then frmCarte_Ordprocessing.adodataset1.post;
end;

procedure TfrmCarte_Sewingfacility.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Sewingfacility:=nil;
end;

procedure TfrmCarte_Sewingfacility.FormShow(Sender: TObject);
var
  i,qn_no:integer;
begin
  screen.cursor:=crSQLWait;
  try
  for i:=13 to 62 do begin
    dbgrideh1.columns[i].visible:=true;
  end;
  with adoquery1 do begin
    close;
    sql.text:='exec sp_carte_gensewingfacility :x1';
    parameters[0].value:=frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').value;
    execsql;
  end;
  with adodataset1 do begin
    close;
    commandtext:='select * from tbl_carte_sopc4 where seq=:x1';
    parameters[0].value:=frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').value;
    open;
  end;
  qn_no:=frmCarte_Ordprocessing.adodataset1.fieldbyname('qn_no').value+frmCarte_Ordprocessing.adodataset1.fieldbyname('qn_no1').value;
  if qn_no<=1 then begin
    for i:=13 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=2 then begin
    for i:=23 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=3 then begin
    for i:=33 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=4 then begin
    for i:=43 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end else if qn_no=5 then begin
    for i:=53 to 62 do begin
      dbgrideh1.columns[i].visible:=false;
    end;
  end;
  for i:=5 to 8 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=15 to 18 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=25 to 28 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=35 to 38 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=45 to 48 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  for i:=55 to 58 do begin
    dbgrideh1.columns[i].visible:=false;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Sewingfacility.QTYChange(Sender: TField);
var
  q1,q2,q3,q4,q5,q6:integer;
begin
  q1:=0; q2:=0; q3:=0; q4:=0; q5:=0; q6:=0;
  if not adodataset1.fieldbyname('q1_qty').isnull then q1:=adodataset1.fieldbyname('q1_qty').value;
  if not adodataset1.fieldbyname('q2_qty').isnull then q2:=adodataset1.fieldbyname('q2_qty').value;
  if not adodataset1.fieldbyname('q3_qty').isnull then q3:=adodataset1.fieldbyname('q3_qty').value;
  if not adodataset1.fieldbyname('q4_qty').isnull then q4:=adodataset1.fieldbyname('q4_qty').value;
  if not adodataset1.fieldbyname('q5_qty').isnull then q5:=adodataset1.fieldbyname('q5_qty').value;
  if not adodataset1.fieldbyname('q6_qty').isnull then q6:=adodataset1.fieldbyname('q6_qty').value;
  adodataset1.fieldbyname('q_tqty').value:=q1+q2+q3+q4+q5+q6;
  adodataset1.fieldbyname('bqty').value:=adodataset1.fieldbyname('qty').value-(q1+q2+q3+q4+q5+q6);
end;

procedure TfrmCarte_Sewingfacility.SECT1Change(Sender: TField);
var
  f,a,e:double;
begin
  f:=0; a:=0; e:=0;
  if not adodataset1.fieldbyname('q1_f').isnull then f:=adodataset1.fieldbyname('q1_f').value;
  if not adodataset1.fieldbyname('q1_a').isnull then a:=adodataset1.fieldbyname('q1_a').value;
  if not adodataset1.fieldbyname('q1_e').isnull then e:=adodataset1.fieldbyname('q1_e').value;
  adodataset1.fieldbyname('q1_sect').value:=f+a+e;
end;

procedure TfrmCarte_Sewingfacility.SECT2Change(Sender: TField);
var
  f,a,e:double;
begin
  f:=0; a:=0; e:=0;
  if not adodataset1.fieldbyname('q2_f').isnull then f:=adodataset1.fieldbyname('q2_f').value;
  if not adodataset1.fieldbyname('q2_a').isnull then a:=adodataset1.fieldbyname('q2_a').value;
  if not adodataset1.fieldbyname('q2_e').isnull then e:=adodataset1.fieldbyname('q2_e').value;
  adodataset1.fieldbyname('q2_sect').value:=f+a+e;
end;

procedure TfrmCarte_Sewingfacility.SECT3Change(Sender: TField);
var
  f,a,e:double;
begin
  f:=0; a:=0; e:=0;
  if not adodataset1.fieldbyname('q3_f').isnull then f:=adodataset1.fieldbyname('q3_f').value;
  if not adodataset1.fieldbyname('q3_a').isnull then a:=adodataset1.fieldbyname('q3_a').value;
  if not adodataset1.fieldbyname('q3_e').isnull then e:=adodataset1.fieldbyname('q3_e').value;
  adodataset1.fieldbyname('q3_sect').value:=f+a+e;
end;

procedure TfrmCarte_Sewingfacility.SECT4Change(Sender: TField);
var
  f,a,e:double;
begin
  f:=0; a:=0; e:=0;
  if not adodataset1.fieldbyname('q4_f').isnull then f:=adodataset1.fieldbyname('q4_f').value;
  if not adodataset1.fieldbyname('q4_a').isnull then a:=adodataset1.fieldbyname('q4_a').value;
  if not adodataset1.fieldbyname('q4_e').isnull then e:=adodataset1.fieldbyname('q4_e').value;
  adodataset1.fieldbyname('q4_sect').value:=f+a+e;
end;

procedure TfrmCarte_Sewingfacility.SECT5Change(Sender: TField);
var
  f,a,e:double;
begin
  f:=0; a:=0; e:=0;
  if not adodataset1.fieldbyname('q5_f').isnull then f:=adodataset1.fieldbyname('q5_f').value;
  if not adodataset1.fieldbyname('q5_a').isnull then a:=adodataset1.fieldbyname('q5_a').value;
  if not adodataset1.fieldbyname('q5_e').isnull then e:=adodataset1.fieldbyname('q5_e').value;
  adodataset1.fieldbyname('q5_sect').value:=f+a+e;
end;

procedure TfrmCarte_Sewingfacility.SECT6Change(Sender: TField);
var
  f,a,e:double;
begin
  f:=0; a:=0; e:=0;
  if not adodataset1.fieldbyname('q6_f').isnull then f:=adodataset1.fieldbyname('q6_f').value;
  if not adodataset1.fieldbyname('q6_a').isnull then a:=adodataset1.fieldbyname('q6_a').value;
  if not adodataset1.fieldbyname('q6_e').isnull then e:=adodataset1.fieldbyname('q6_e').value;
  adodataset1.fieldbyname('q6_sect').value:=f+a+e;
end;

end.
