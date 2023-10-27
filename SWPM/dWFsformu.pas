unit dWFsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  TfrmdWFs = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdWFs: TfrmdWFs;

implementation

uses mainformu, lineinfou;

{$R *.dfm}

procedure TfrmdWFs.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from wf_structrue';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.FieldByName('seq').value:=seq;
end;

procedure TfrmdWFs.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from wf_structrue where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='update wf_structrue set code=:x1,swf=:x2,mwf1=:x3,mwf2=:x4,fwf=:x5,twf=:x6 where seq=:x7';
          if not query1.fieldbyname('code').isnull then
          params[0].asstring:=query1.fieldbyname('code').value
          else params[0].asstring:='';
          open;
        end;
      end else begin
      end;
    end;
  end;
end;

procedure TfrmdWFs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmdWFs:=nil;
end;

procedure TfrmdWFs.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.append;
end;

procedure TfrmdWFs.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure TfrmdWFs.BitBtn4Click(Sender: TObject);
begin
  //
end;

procedure TfrmdWFs.BitBtn2Click(Sender: TObject);
begin
  //
end;

end.
