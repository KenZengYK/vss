unit dailyaqlnotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, DBCtrls;

type
  Tfrmdailyaqlnotepad = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query1CUST: TStringField;
    Query1TPLANT: TStringField;
    Query1REMARKS: TMemoField;
    Query1DT: TDateField;
    Query1WS: TStringField;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1DAILYAQL: TBooleanField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailyaqlnotepad: Tfrmdailyaqlnotepad;

implementation

uses aqlmainformu, defectsummaryformu;

{$R *.dfm}

procedure Tfrmdailyaqlnotepad.BitBtn1Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmdailyaqlnotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmdailyaqlnotepad:=nil;
end;

procedure Tfrmdailyaqlnotepad.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,4);
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftboolean,'x8',ptinput);
      commandtext:='select * from tbl_aql_dailyaqlnotepad where hun_check=:x1 and endline=:x2 and cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7 and dailyaql=:x8';
      params[0].asboolean:=query1.fieldbyname('hun_check').value;
      params[1].asboolean:=query1.fieldbyname('endline').value;
      params[2].asstring:=query1.fieldbyname('cust').value;
      params[3].asinteger:=query1.fieldbyname('yr').value;
      params[4].asinteger:=query1.fieldbyname('wk').value;
      params[5].asstring:=query1.fieldbyname('tplant').value;
      params[6].asstring:=query1.fieldbyname('ws').value;
      params[7].asboolean:=query1.fieldbyname('dailyaql').value;
      open;
      if not fieldbyname('wk').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          params.createparam(ftboolean,'x1',ptinput);
          params.createparam(ftboolean,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftboolean,'x8',ptinput);
          commandtext:='update tbl_aql_marks_wk set remarks=:x0 where hun_check=:x1 and endline=:x2 and cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7 and dailyaql=:x8';
          if not query1.fieldbyname('remarks').isnull then
          params[0].asstring:=query1.fieldbyname('remarks').value
          else params[0].asstring:='';
          params[1].asboolean:=query1.fieldbyname('hun_check').value;
          params[2].asboolean:=query1.fieldbyname('endline').value;
          params[3].asstring:=query1.fieldbyname('cust').value;
          params[4].asinteger:=query1.fieldbyname('yr').value;
          params[5].asinteger:=query1.fieldbyname('wk').value;
          params[6].asstring:=query1.fieldbyname('tplant').value;
          params[7].asstring:=query1.fieldbyname('ws').value;
          params[8].asboolean:=query1.fieldbyname('dailyaql').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          params.createparam(ftboolean,'x1',ptinput);
          params.createparam(ftboolean,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftboolean,'x9',ptinput);
          commandtext:='insert into tbl_aql_marks_wk(remarks,hun_check,endline,cust,yr,wk,tplant,dt,ws,dailyaql) values(:x0,:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
          if not query1.fieldbyname('remarks').isnull then
          params[0].asstring:=query1.fieldbyname('remarks').value
          else params[0].asstring:='';
          params[1].asboolean:=query1.fieldbyname('hun_check').value;
          params[2].asboolean:=query1.fieldbyname('endline').value;
          params[3].asstring:=query1.fieldbyname('cust').value;
          params[4].asinteger:=query1.fieldbyname('yr').value;
          params[5].asinteger:=query1.fieldbyname('wk').value;
          params[6].asstring:=query1.fieldbyname('tplant').value;
          params[7].asdate:=date;
          params[8].asstring:=query1.fieldbyname('ws').value;
          params[9].asboolean:=query1.fieldbyname('dailyaql').value;
          execute;
        end;
      end;
    end;
  end;
  }
end;

end.
