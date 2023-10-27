unit swfleaveformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, DBCtrls,
  Buttons, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, ppParameter;

type
  Tfrmswfleave = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    wid01: TppLabel;
    ppLabel3: TppLabel;
    wid02: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmswfleave: Tfrmswfleave;

implementation

uses mainformu, swfpoolformu;

{$R *.dfm}

procedure Tfrmswfleave.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tblswf_log1';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('swfid').value:=frmswfpool.query1.fieldbyname('swfid').value;
  query1.fieldbyname('swfna').value:=frmswfpool.query1.fieldbyname('swfna').value;
end;

procedure Tfrmswfleave.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tblswf_log1 where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          commandtext:='update tblswf_log1 set toline=:x1,dt=:x2,sect=:x3,typ=:x4 where seq=:x5';
          if not query1.fieldbyname('toline').isnull then
          params[0].asstring:=query1.fieldbyname('toline').value
          else params[0].asstring:='';
          if not query1.fieldbyname('dt').isnull then
          params[1].asdate:=query1.fieldbyname('dt').value;
          if not query1.fieldbyname('sect').isnull then
          params[2].asfloat:=query1.fieldbyname('sect').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('typ').isnull then
          params[3].asstring:=query1.fieldbyname('typ').Value
          else params[3].asstring:='';
          params[4].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.CreateParam(ftstring,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          commandtext:='insert into tblswf_log1(toline,dt,sect,typ,seq,swfid,swfna) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
          if not query1.fieldbyname('toline').isnull then
          params[0].asstring:=query1.fieldbyname('toline').value
          else params[0].asstring:='';
          if not query1.fieldbyname('dt').isnull then
          params[1].asdate:=query1.fieldbyname('dt').value;
          if not query1.fieldbyname('sect').isnull then
          params[2].asfloat:=query1.fieldbyname('sect').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('typ').isnull then
          params[3].asstring:=query1.fieldbyname('typ').Value
          else params[3].asstring:='';
          params[4].asinteger:=query1.fieldbyname('seq').value;
          params[5].asstring:=query1.fieldbyname('swfid').value;
          params[6].asstring:=query1.fieldbyname('swfna').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmswfleave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmswfleave:=nil;
end;

procedure Tfrmswfleave.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmswfleave.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmswfleave.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tblswf_log1 where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmswfleave.BitBtn4Click(Sender: TObject);
begin
  bitbtn3click(self);
  if query1.RecordCount>0 then begin
    wid01.Caption:=dbtext1.Field.Value;
    wid02.Caption:=dbtext2.Field.Value;
    ppReport1.Print;
  end;
end;

procedure Tfrmswfleave.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
