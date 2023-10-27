unit aqlnotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, DBCtrls, StdCtrls, Buttons;

type
  Tfrmaqlnotepad = class(TForm)
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query1CUST: TStringField;
    Query1YR: TIntegerField;
    Query1WK: TIntegerField;
    Query1HUN_CHECK: TBooleanField;
    Query1ENDLINE: TBooleanField;
    Query3: TClientDataSet;
    Query1TPLANT: TStringField;
    Query1DT: TDateField;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Query1WS: TStringField;
    Query1DAILYAQL: TBooleanField;
    Query1REMARKS: TStringField;
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaqlnotepad: Tfrmaqlnotepad;

implementation

uses aqlmainformu, summaryformu;

{$R *.dfm}

procedure Tfrmaqlnotepad.Query1AfterPost(DataSet: TDataSet);
begin
  //DataSetAfterPost(DataSet,4);
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      //params.createparam(ftboolean,'x1',ptinput);
      //params.createparam(ftboolean,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      //params.createparam(ftboolean,'x8',ptinput);
      if frmsummary.checkbox3.checked then
      commandtext:='select * from tbl_aql_marks_wk where hun_check<>0 and cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7'
      else if frmsummary.checkbox4.checked then
      commandtext:='select * from tbl_aql_marks_wk where endline<>0 and cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7'
      else if frmsummary.checkbox2.checked then
      commandtext:='select * from tbl_aql_marks_wk where cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7 and dailyaql<>0';
      //params[0].asboolean:=query1.fieldbyname('hun_check').value;
      //params[1].asboolean:=query1.fieldbyname('endline').value;
      params[0].asstring:=query1.fieldbyname('cust').value;
      params[1].asinteger:=query1.fieldbyname('yr').value;
      params[2].asinteger:=query1.fieldbyname('wk').value;
      params[3].asstring:=query1.fieldbyname('tplant').value;
      params[4].asstring:=query1.fieldbyname('ws').value;
      //params[7].asboolean:=query1.fieldbyname('dailyaql').value;
      open;
      if not fieldbyname('wk').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          //params.createparam(ftboolean,'x1',ptinput);
          //params.createparam(ftboolean,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          //params.createparam(ftboolean,'x8',ptinput);
          if frmsummary.checkbox3.checked then
          commandtext:='update tbl_aql_marks_wk set remarks=:x0 where hun_check<>0 and cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7'
          else if frmsummary.checkbox4.checked then
          commandtext:='update tbl_aql_marks_wk set remarks=:x0 where endline<>0 and cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7'
          else if frmsummary.checkbox2.checked then
          commandtext:='update tbl_aql_marks_wk set remarks=:x0 where cust=:x3 and yr=:x4 and wk=:x5 and tplant=:x6 and ws=:x7 and dailyaql<>0';
          if not query1.fieldbyname('remarks').isnull then
          params[0].asstring:=query1.fieldbyname('remarks').value
          else params[0].asstring:='';
          //params[1].asboolean:=query1.fieldbyname('hun_check').value;
          //params[2].asboolean:=query1.fieldbyname('endline').value;
          params[1].asstring:=query1.fieldbyname('cust').value;
          params[2].asinteger:=query1.fieldbyname('yr').value;
          params[3].asinteger:=query1.fieldbyname('wk').value;
          params[4].asstring:=query1.fieldbyname('tplant').value;
          params[5].asstring:=query1.fieldbyname('ws').value;
          //params[8].asboolean:=query1.fieldbyname('dailyaql').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          //params.createparam(ftboolean,'x1',ptinput);
          //params.createparam(ftboolean,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftdate,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          //params.createparam(ftboolean,'x9',ptinput);
          if frmsummary.checkbox3.checked then
          commandtext:='insert into tbl_aql_marks_wk(remarks,hun_check,endline,cust,yr,wk,tplant,dt,ws,dailyaql) values(:x0,1,0,:x3,:x4,:x5,:x6,:x7,:x8,0)'
          else if frmsummary.checkbox4.checked then
          commandtext:='insert into tbl_aql_marks_wk(remarks,hun_check,endline,cust,yr,wk,tplant,dt,ws,dailyaql) values(:x0,0,1,:x3,:x4,:x5,:x6,:x7,:x8,0)'
          else if frmsummary.checkbox2.checked then
          commandtext:='insert into tbl_aql_marks_wk(remarks,hun_check,endline,cust,yr,wk,tplant,dt,ws,dailyaql) values(:x0,0,0,:x3,:x4,:x5,:x6,:x7,:x8,1)';
          if not query1.fieldbyname('remarks').isnull then
          params[0].asstring:=query1.fieldbyname('remarks').value
          else params[0].asstring:='';
          //params[1].asboolean:=query1.fieldbyname('hun_check').value;
          //params[2].asboolean:=query1.fieldbyname('endline').value;
          params[1].asstring:=query1.fieldbyname('cust').value;
          params[2].asinteger:=query1.fieldbyname('yr').value;
          params[3].asinteger:=query1.fieldbyname('wk').value;
          params[4].asstring:=query1.fieldbyname('tplant').value;
          params[5].asdate:=date;
          params[6].asstring:=query1.fieldbyname('ws').value;
          //params[9].asboolean:=query1.fieldbyname('dailyaql').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmaqlnotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmaqlnotepad:=nil;
end;

procedure Tfrmaqlnotepad.BitBtn1Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

end.
