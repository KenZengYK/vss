unit failurereasonformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, Buttons, DBClient, GridsEh, DBGridEh;

type
  Tfrmfailurereason = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query1SEQ: TIntegerField;
    Query1PONO: TStringField;
    Query1CSTYLE: TStringField;
    Query1DT: TDateField;
    Query1AUD: TStringField;
    Query1FTY: TStringField;
    Query1ACOL1: TStringField;
    Query1ACOL2: TStringField;
    Query1ACOL3: TStringField;
    Query1ACOL4: TStringField;
    Query1ACOL5: TStringField;
    Query1ACOL6: TStringField;
    Query1ACOL7: TStringField;
    Query1QTY1: TIntegerField;
    Query1COL1: TIntegerField;
    Query1CASE1: TIntegerField;
    Query1SIZE1: TIntegerField;
    Query1QTY: TIntegerField;
    Query1BRAND: TStringField;
    Query1SQTY1: TIntegerField;
    Query1RQTY1: TIntegerField;
    Query1AUDIT1: TBooleanField;
    Query1AUDIT2: TBooleanField;
    Query1AUDIT3: TBooleanField;
    Query1ACL1: TStringField;
    Query1ACL2: TStringField;
    Query1ACL3: TStringField;
    Query1ACL4: TStringField;
    Query1ACL5: TStringField;
    Query1ACL6: TStringField;
    Query1ACL7: TStringField;
    Query1FLAG6: TStringField;
    Query1CUST: TStringField;
    Query1WK: TIntegerField;
    Query1RPT: TStringField;
    Query1ACOL8: TStringField;
    Query1ACOL9: TStringField;
    Query1ACOL10: TStringField;
    Query1ACOL11: TStringField;
    Query1ACOL12: TStringField;
    Query1ACL8: TStringField;
    Query1ACL9: TStringField;
    Query1ACL10: TStringField;
    Query1ACL11: TStringField;
    Query1ACL12: TStringField;
    Query1CASE2: TIntegerField;
    Query1CQTY: TIntegerField;
    Query1J2_JOB: TStringField;
    Query1RWO: TStringField;
    Query1PLINE: TStringField;
    Query1HUN_CHECK: TBooleanField;
    Query1RANGE: TStringField;
    Query1VER: TStringField;
    Query1FLAG60: TStringField;
    Query1ENDLINE: TBooleanField;
    Query1QR: TIntegerField;
    Query1QR1: TIntegerField;
    Query1SCQTY: TIntegerField;
    Query1J_NO: TStringField;
    Query1WS: TStringField;
    Query1DAILYAQL: TBooleanField;
    Query1AUDIT4: TBooleanField;
    Query1AUDIT5: TBooleanField;
    Query1AUDITR: TStringField;
    Query1DAILYAQL1: TBooleanField;
    Query1ACC: TBooleanField;
    Query1CUR: TBooleanField;
    Query1PST: TBooleanField;
    Query1DELLOT: TIntegerField;
    Query1MAJR: TIntegerField;
    Query1MINR: TIntegerField;
    Query1AQL_LEVEL: TStringField;
    Query1LOC: TStringField;
    Query1MACC: TBooleanField;
    DBGridEh1: TDBGridEh;
    Query1REMARKS: TStringField;
    Query1REMARKS1: TStringField;
    Query1MEMO1: TStringField;
    Query1ZTP: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure DBGridEh1Columns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfailurereason: Tfrmfailurereason;

implementation

uses aqlmainformu, failreasonformu, aql_notepadformu;

{$R *.dfm}

procedure Tfrmfailurereason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmfailurereason:=nil;
end;

procedure Tfrmfailurereason.Query1AfterPost(DataSet: TDataSet);
begin
  datasetafterpost(dataset,0);
end;

procedure Tfrmfailurereason.DBGridEh1Columns12EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if frmfailreason=nil then frmfailreason:=tfrmfailreason.create(nil);
  frmfailreason.show;
end;

procedure Tfrmfailurereason.BitBtn1Click(Sender: TObject);
var
  i:integer;
  s1:string;
begin
  if dbgrideh1.SelectedRows.Count>0 then begin
    with dbgrideh1.DataSource.DataSet do begin
      for i:=0 to dbgrideh1.SelectedRows.Count-1 do begin
        gotobookmark(pointer(dbgrideh1.SelectedRows.Items[i]));
        s1:='';
        s1:=fieldbyname('pline').value+'�� '+fieldbyname('j_no').value+'/'+fieldbyname('j2_job').value+'/'+fieldbyname('cstyle').value;
        if fieldbyname('audit1').value=true then s1:=s1+' [1st Audit]';
        if fieldbyname('audit2').value=true then s1:=s1+' [2nd Audit (';
        if fieldbyname('audit3').value=true then s1:=s1+' [3rd Audit (';
        if fieldbyname('cur').value=true then s1:=s1+'Curr)]';
        if fieldbyname('pst').value=true then s1:=s1+'Past)]';
        if not fieldbyname('memo1').isnull then
        s1:=s1+' QA Fail'+fieldbyname('memo1').value;
        if fieldbyname('macc').value=true then s1:=s1+' GM approved to release packing';
        if s1>'' then begin
          if frmaql_notepad.query1.state=dsbrowse then frmaql_notepad.Query1.edit;
          frmaql_notepad.dbmemo2.Lines.add(s1);
        end;
      end;
    end;
    close;
  end;
end;

end.
 