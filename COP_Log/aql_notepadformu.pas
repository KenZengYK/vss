unit aql_notepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, DBCtrls;

type
  Tfrmaql_notepad = class(TForm)
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
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label3: TLabel;
    DBMemo2: TDBMemo;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaql_notepad: Tfrmaql_notepad;

implementation

uses aqlmainformu, defectsummaryformu, failurereasonformu;

{$R *.dfm}

procedure Tfrmaql_notepad.Query1AfterPost(DataSet: TDataSet);
begin
  //datasetafterpost(dataset,0,1,2,3,4);
  //{
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      commandtext:='select * from tbl_aql_dailyaqlnotepad where cust=:x1 and tplant=:x2 and ws=:x3 and aql_type=:x4 and dt=:x5';
      params[0].asstring:=query1.fieldbyname('cust').value;
      params[1].asstring:=query1.fieldbyname('tplant').value;
      params[2].asstring:=query1.fieldbyname('ws').value;
      params[3].asstring:=query1.fieldbyname('aql_type').value;
      params[4].asdate:=query1.fieldbyname('dt').value;
      open;
      if not fieldbyname('tplant').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          params.createparam(ftstring,'x01',ptinput);
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          commandtext:='update tbl_aql_dailyaqlnotepad set remarks=:x0,failreason=:x01 where cust=:x1 and tplant=:x2 and ws=:x3 and aql_type=:x4 and dt=:x5';
          if not query1.fieldbyname('remarks').isnull then
          params[0].asstring:=query1.fieldbyname('remarks').value
          else params[0].asstring:='';
          if not query1.fieldbyname('failreason').isnull then
          params[1].asstring:=query1.fieldbyname('failreason').value
          else params[1].asstring:='';
          params[2].asstring:=query1.fieldbyname('cust').value;
          params[3].asstring:=query1.fieldbyname('tplant').value;
          params[4].asstring:=query1.fieldbyname('ws').value;
          params[5].asstring:=query1.fieldbyname('aql_type').value;
          params[6].asdate:=query1.fieldbyname('dt').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          params.createparam(ftstring,'x01',ptinput);
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          commandtext:='insert into tbl_aql_dailyaqlnotepad(remarks,failreason,cust,tplant,ws,aql_type,dt) values(:x0,:x01,:x1,:x2,:x3,:x4,:x5)';
          if not query1.fieldbyname('remarks').isnull then
          params[0].asstring:=query1.fieldbyname('remarks').value
          else params[0].asstring:='';
          if not query1.fieldbyname('failreason').isnull then
          params[1].asstring:=query1.fieldbyname('failreason').value
          else params[1].asstring:='';
          params[2].asstring:=query1.fieldbyname('cust').value;
          params[3].asstring:=query1.fieldbyname('tplant').value;
          params[4].asstring:=query1.fieldbyname('ws').value;
          params[5].asstring:=query1.fieldbyname('aql_type').value;
          params[6].asdate:=query1.fieldbyname('dt').value;
          execute;
        end;
      end;
    end;
  end;
  //}
end;

procedure Tfrmaql_notepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmaql_notepad:=nil;
end;

procedure Tfrmaql_notepad.BitBtn1Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmaql_notepad.SpeedButton1Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_aql_acc(:x1,:x2)';
    params[0].asdate:=query1.fieldbyname('dt').value;
    params[1].asdate:=query1.fieldbyname('dt').value;
    execute;
  end;
  if frmfailurereason=nil then frmfailurereason:=tfrmfailurereason.create(nil);
  with frmfailurereason.query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select * from tbl_aql_s0 where dt=:x1 and acc=0';
    if query1.fieldbyname('aql_type').value='Off-line AQL' then commandtext:=commandtext+' and dailyaql=1'
    else if query1.fieldbyname('aql_type').value='In-line AQL' then commandtext:=commandtext+' and dailyaql1=1';
    params[0].asdate:=query1.fieldbyname('dt').value;
    open;
  end;
  frmfailurereason.show;
end;

end.
 