unit capformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, ADODB;

type
  Tfrmcap = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcap: Tfrmcap;
  logseq:integer;

implementation

uses mainformu, cpreportformu, cpreport1formu, ocprepformu, custenqformu,
  ocpreqformu, cpreqformu, linecapformu, simfactoryformu;

{$R *.dfm}

procedure Tfrmcap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcap:=nil;
end;

procedure Tfrmcap.BitBtn1Click(Sender: TObject);
begin
  if frmcustenq=nil then frmcustenq:=tfrmcustenq.create(nil);
  frmcustenq.Show;
end;

procedure Tfrmcap.BitBtn2Click(Sender: TObject);
begin
  if frmcpreport=nil then frmcpreport:=tfrmcpreport.create(nil);
  frmcpreport.show;
end;

procedure Tfrmcap.BitBtn3Click(Sender: TObject);
begin
  if frmocprep=nil then frmocprep:=tfrmocprep.create(nil);
  frmocprep.show;
end;

procedure Tfrmcap.BitBtn4Click(Sender: TObject);
begin
  if frmcpreport1=nil then frmcpreport1:=tfrmcpreport1.create(nil);
  frmcpreport1.show;
end;

procedure Tfrmcap.BitBtn5Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcap.BitBtn6Click(Sender: TObject);
begin
  if frmocpreq=nil then frmocpreq:=tfrmocpreq.create(nil);
  frmocpreq.show;
end;

procedure Tfrmcap.BitBtn7Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmcpreq=nil then frmcpreq:=tfrmcpreq.Create(nil);
  frmcpreq.Show;
  screen.cursor:=crDefault;
end;

procedure Tfrmcap.BitBtn8Click(Sender: TObject);
begin
  if frmlinecap=nil then frmlinecap:=tfrmlinecap.create(nil);
  frmlinecap.Show;
end;

procedure Tfrmcap.BitBtn9Click(Sender: TObject);
begin
  if frmsimfactory=nil then frmsimfactory:=tfrmsimfactory.Create(nil);
  frmsimfactory.ComboBox1.text:='SL';
  frmsimfactory.show;
end;

procedure Tfrmcap.FormCreate(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='Capacity Planning';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Capacity Planning';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmcap.FormDestroy(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
end;

end.
