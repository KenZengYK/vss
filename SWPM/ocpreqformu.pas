unit ocpreqformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  GridsEh, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppViewr, ppParameter;

type
  Tfrmocpreq = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmocpreq: Tfrmocpreq;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmocpreq.ComboBox1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tmp_tplantcap';
    if combobox1.Text>'' then commandtext:=commandtext+' where tplant='''+combobox1.text+'''';
    open;
  end;
end;

procedure Tfrmocpreq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmocpreq:=nil;
end;

procedure Tfrmocpreq.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.append;
end;

procedure Tfrmocpreq.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as s1 from tmp_tplantcap';
    open;
    if not fieldbyname('s1').isnull then seq:=fieldbyname('s1').value+1
    else seq:=1;
  end;
  query1.FieldByName('seq').value:=seq;
  query1.fieldbyname('tplant').value:=combobox1.Text;
end;

procedure Tfrmocpreq.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.Post;
end;

procedure Tfrmocpreq.BitBtn2Click(Sender: TObject);
begin
  if query1.Active then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tmp_tplantcap where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.Delete;
    end;
  end;
end;

procedure Tfrmocpreq.Query1AfterPost(DataSet: TDataSet);
var
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tmp_tplantcap where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='update tmp_tplantcap set tplant=:x1,ny=:x2,wk=:x3,f6=:x4,qty3=:x5 where seq=:x6';
          if not query1.fieldbyname('tplant').isnull then
          params[0].asstring:=query1.fieldbyname('tplant').value
          else params[0].asstring:='SL';
          if not query1.fieldbyname('ny').isnull then
          params[1].asstring:=query1.fieldbyname('ny').value
          else params[1].asstring:=inttostr(y)+'-'+copy('0'+inttostr(m),length('0'+inttostr(m))-1,2);
          if not query1.fieldbyname('wk').isnull then
          params[2].asinteger:=query1.fieldbyname('wk').value
          else params[2].asinteger:=0;
          if not query1.fieldbyname('f6').isnull then
          params[3].asstring:=query1.fieldbyname('f6').value
          else params[3].asstring:='B';
          if not query1.fieldbyname('qty3').isnull then
          params[4].asfloat:=query1.fieldbyname('qty3').value
          else params[4].asfloat:=0;
          params[5].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tmp_tplantcap(tplant,ny,wk,f6,qty3,seq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          if not query1.fieldbyname('tplant').isnull then
          params[0].asstring:=query1.fieldbyname('tplant').value
          else params[0].asstring:='SL';
          if not query1.fieldbyname('ny').isnull then
          params[1].asstring:=query1.fieldbyname('ny').value
          else params[1].asstring:=inttostr(y)+'-'+copy('0'+inttostr(m),length('0'+inttostr(m))-1,2);
          if not query1.fieldbyname('wk').isnull then
          params[2].asinteger:=query1.fieldbyname('wk').value
          else params[2].asinteger:=0;
          if not query1.fieldbyname('f6').isnull then
          params[3].asstring:=query1.fieldbyname('f6').value
          else params[3].asstring:='B';
          if not query1.fieldbyname('qty3').isnull then
          params[4].asfloat:=query1.fieldbyname('qty3').value
          else params[4].asfloat:=0;
          params[5].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmocpreq.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmocpreq.BitBtn4Click(Sender: TObject);
begin
  if query1.Active then begin
    fty001.Caption:=combobox1.Text;
    ppReport1.Print;
  end;
end;

end.
