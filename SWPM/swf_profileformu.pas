unit swf_profileformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, StdCtrls, DBCtrls, DB, DBClient,
  Buttons, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppViewr, ppVar, GridsEh, ppParameter;

type
  Tfrmswf_profile = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    Query4: TClientDataSet;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    line001: TppLabel;
    ppLabel9: TppLabel;
    line002: TppLabel;
    ppLabel10: TppLabel;
    swf001: TppLabel;
    ppLabel12: TppLabel;
    cwf001: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Query5: TClientDataSet;
    DataSource2: TDataSource;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query5NewRecord(DataSet: TDataSet);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query5AfterPost(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmswf_profile: Tfrmswf_profile;

implementation

uses mainformu, lineinfou, swfskillformu, wfprocessformu;

{$R *.dfm}

procedure Tfrmswf_profile.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tblswfid';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('tplant').value:=frmlineinfo.tblline.fieldbyname('tplant').value;
  query1.fieldbyname('tshop').value:=frmlineinfo.tblline.fieldbyname('tshop').value;
  query1.fieldbyname('pline').value:=frmlineinfo.tblline.fieldbyname('pline').value;
  //query1.fieldbyname('swfid').value:='';
  query1.fieldbyname('swfdt').value:=date;
  query1.fieldbyname('swfdt1').value:=date;
end;

procedure Tfrmswf_profile.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tblswfid where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='update tblswfid set swfna=:x1,swfdt=:x2,swfdt1=:x3,swfarea=:x4,swfcp=:x5,swfid=:x6,pline=:x8,swfsta=:x9,swfstt=:x10,tshop=:x11 where seq=:x7';
          if not query1.fieldbyname('swfna').isnull then
          params[0].asstring:=query1.fieldbyname('swfna').value
          else params[0].asstring:='';
          if not query1.fieldbyname('swfdt').isnull then
          params[1].asdate:=query1.fieldbyname('swfdt').value;
          if not query1.fieldbyname('swfdt1').isnull then
          params[2].asdate:=query1.fieldbyname('swfdt1').value;
          if not query1.fieldbyname('swfarea').isnull then
          params[3].asstring:=query1.fieldbyname('swfarea').value
          else params[3].asstring:='';
          if not query1.fieldbyname('swfcp').isnull then
          params[4].asstring:=query1.fieldbyname('swfcp').value
          else params[4].asstring:='';
          if not query1.fieldbyname('swfid').isnull then
          params[5].asstring:=query1.fieldbyname('swfid').value
          else params[5].asstring:='';
          if not query1.fieldbyname('pline').isnull then
          params[6].asstring:=query1.fieldbyname('pline').value
          else params[6].asstring:='';
          if not query1.fieldbyname('swfsta').isnull then
          params[7].asstring:=query1.fieldbyname('swfsta').value
          else params[7].asstring:='';
          if not query1.fieldbyname('swfstt').isnull then
          params[8].asstring:=query1.fieldbyname('swfstt').value
          else params[8].asstring:='';
          if not query1.fieldbyname('tshop').isnull then
          params[9].asstring:=query1.fieldbyname('tshop').value
          else params[9].asstring:='';
          params[10].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftboolean,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.CreateParam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          commandtext:='insert into tblswfid(swfna,swfdt,swfdt1,swfarea,swfcp,swfid,pline,lend,seq,tplant,swfsta,swfstt,tshop) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13)';
          if not query1.fieldbyname('swfna').isnull then
          params[0].asstring:=query1.fieldbyname('swfna').value
          else params[0].asstring:='';
          if not query1.fieldbyname('swfdt').isnull then
          params[1].asdate:=query1.fieldbyname('swfdt').value;
          if not query1.fieldbyname('swfdt1').isnull then
          params[2].asdate:=query1.fieldbyname('swfdt1').value;
          if not query1.fieldbyname('swfarea').isnull then
          params[3].asstring:=query1.fieldbyname('swfarea').value
          else params[3].asstring:='';
          if not query1.fieldbyname('swfcp').isnull then
          params[4].asstring:=query1.fieldbyname('swfcp').value
          else params[4].asstring:='';
          if not query1.fieldbyname('swfid').isnull then
          params[5].asstring:=query1.fieldbyname('swfid').value
          else params[5].asstring:='';
          if not query1.fieldbyname('pline').isnull then
          params[6].asstring:=query1.fieldbyname('pline').value
          else params[6].asstring:='';
          params[7].asboolean:=false;
          params[8].asinteger:=query1.fieldbyname('seq').value;
          params[9].asstring:=query1.fieldbyname('tplant').value;
          if not query1.fieldbyname('swfsta').isnull then
          params[10].asstring:=query1.fieldbyname('swfsta').value
          else params[10].asstring:='';
          if not query1.fieldbyname('swfstt').isnull then
          params[11].asstring:=query1.fieldbyname('swfstt').value
          else params[11].asstring:='';
          if not query1.fieldbyname('tshop').isnull then
          params[12].asstring:=query1.fieldbyname('tshop').value
          else params[12].asstring:='';
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmswf_profile.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmswf_profile:=nil;
end;

procedure Tfrmswf_profile.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmswf_profile.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this workforce?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tblswfid where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmswf_profile.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmswf_profile.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tblswfid where pline='''+dbtext1.Field.Value+'''';
    open;
  end;
end;

procedure Tfrmswf_profile.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then sendmessage(dbgrideh1.Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmswf_profile.BitBtn5Click(Sender: TObject);
begin
  if frmwfprocess=nil then frmwfprocess:=tfrmwfprocess.create(nil);
  frmwfprocess.Label2.Caption:='SWF2';
  //frmwfprocess.Caption:='Resign';
  frmwfprocess.Label1.Visible:=false;
  frmwfprocess.ComboBox1.Visible:=false;
  frmwfprocess.DBMemo1.DataSource:=datasource1;
  frmwfprocess.DBText1.DataSource:=datasource1;
  frmwfprocess.DBText2.DataSource:=datasource1;
  frmwfprocess.DBMemo1.DataField:='SWFSTA';
  frmwfprocess.DBText1.DataField:='SWFID';
  frmwfprocess.DBText2.DataField:='SWFNA';
  frmwfprocess.show;
end;

procedure Tfrmswf_profile.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmswf_profile.BitBtn4Click(Sender: TObject);
begin
  if query1.Active then begin
    line001.Caption:=dbtext1.Field.Value;
    if dbtext2.Field.isnull then line002.Caption:=''
    else line002.Caption:=dbtext2.Field.Value;
    swf001.Caption:=formatfloat('#0',dbtext3.Field.value);
    cwf001.Caption:=formatfloat('#0',dbtext4.Field.value);
    ppReport1.Print;
  end;
end;

procedure Tfrmswf_profile.Query5NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as s1 from tblswfop';
    open;
    if not fieldbyname('s1').isnull then seq:=fieldbyname('s1').value+1 else seq:=1;
  end;
  query5.fieldbyname('swfseq').value:=query1.fieldbyname('seq').value;
  query5.fieldbyname('pline').value:=query1.fieldbyname('pline').value;
  query5.fieldbyname('swfid').value:=query1.fieldbyname('swfid').value;
  query5.fieldbyname('seq').value:=seq;
end;

procedure Tfrmswf_profile.DBGridEh1Columns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmswfskill=nil then frmswfskill:=tfrmswfskill.Create(nil);
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tblswfop where swfseq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmswfskill.Label4.Caption:='SWF_P';
  frmswfskill.DBText1.DataSource:=datasource1;
  frmswfskill.DBText2.DataSource:=datasource1;
  frmswfskill.DBText3.DataSource:=datasource1;
  frmswfskill.DBGridEh1.DataSource:=datasource2;
  frmswfskill.Show;
end;

procedure Tfrmswf_profile.Query5AfterPost(DataSet: TDataSet);
begin
  if query5.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tblswfop where seq=:x1';
      params[0].asinteger:=query5.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').IsNull then begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='update tblswfop set swfmc=:x1,swfop=:x2,swfmtm=:x3 where seq=:x4';
          if not query5.fieldbyname('swfmc').isnull then
          params[0].AsString:=query5.fieldbyname('swfmc').value
          else params[0].asstring:='';
          if not query5.fieldbyname('swfop').isnull then
          params[1].asstring:=query5.fieldbyname('swfop').value
          else params[1].asstring:='';
          if not query5.fieldbyname('swfmtm').isnull then
          params[2].asfloat:=query5.fieldbyname('swfmtm').value
          else params[2].asfloat:=0;
          params[3].asinteger:=query5.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='insert into tblswfop(swfmc,swfop,swfmtm,seq,pline,swfid,swfseq) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
          if not query5.fieldbyname('swfmc').isnull then
          params[0].AsString:=query5.fieldbyname('swfmc').value
          else params[0].asstring:='';
          if not query5.fieldbyname('swfop').isnull then
          params[1].asstring:=query5.fieldbyname('swfop').value
          else params[1].asstring:='';
          if not query5.fieldbyname('swfmtm').isnull then
          params[2].asfloat:=query5.fieldbyname('swfmtm').value
          else params[2].asfloat:=0;
          params[3].asinteger:=query5.fieldbyname('seq').value;
          params[4].asstring:=query5.fieldbyname('pline').value;
          params[5].asstring:=query5.fieldbyname('swfid').value;
          params[6].asinteger:=query5.fieldbyname('swfseq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmswf_profile.BitBtn6Click(Sender: TObject);
begin
  if frmwfprocess=nil then frmwfprocess:=tfrmwfprocess.create(nil);
  frmwfprocess.Label2.Caption:='SWF2';
  frmwfprocess.Caption:='Transfer';
  frmwfprocess.Label1.Visible:=true;
  frmwfprocess.ComboBox1.Visible:=true;
  frmwfprocess.DBMemo1.DataSource:=datasource1;
  frmwfprocess.DBText1.DataSource:=datasource1;
  frmwfprocess.DBText2.DataSource:=datasource1;
  frmwfprocess.DBMemo1.DataField:='SWFSTA';
  frmwfprocess.DBText1.DataField:='SWFID';
  frmwfprocess.DBText2.DataField:='SWFNA';
  frmwfprocess.show;
end;

procedure Tfrmswf_profile.BitBtn7Click(Sender: TObject);
begin
  if frmwfprocess=nil then frmwfprocess:=tfrmwfprocess.create(nil);
  frmwfprocess.Label2.Caption:='SWF2';
  frmwfprocess.Caption:='Promotion';
  frmwfprocess.Label1.Visible:=false;
  frmwfprocess.ComboBox1.Visible:=false;
  frmwfprocess.DBMemo1.DataSource:=datasource1;
  frmwfprocess.DBText1.DataSource:=datasource1;
  frmwfprocess.DBText2.DataSource:=datasource1;
  frmwfprocess.DBMemo1.DataField:='SWFSTA';
  frmwfprocess.DBText1.DataField:='SWFID';
  frmwfprocess.DBText2.DataField:='SWFNA';
  frmwfprocess.show;
end;

end.
