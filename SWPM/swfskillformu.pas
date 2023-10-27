unit swfskillformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls, ExtCtrls, Db,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl,
  ppCtrls, ppBands, ppCache, ppViewr, ppVar, GridsEh, ppParameter;

type
  Tfrmswfskill = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    line001: TppLabel;
    ppLabel3: TppLabel;
    swfid001: TppLabel;
    ppLabel4: TppLabel;
    swfn001: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmswfskill: Tfrmswfskill;

implementation

uses mainformu, swf_profileformu, swfpoolformu;

{$R *.dfm}

procedure Tfrmswfskill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmswfskill:=nil;
end;

procedure Tfrmswfskill.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  if label4.Caption='SWF' then
   frmswfpool.Query5.Append
  else frmswf_profile.Query5.Append;
end;

procedure Tfrmswfskill.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    if label4.Caption='SWF' then begin
      with frmswfpool.Query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='delete from tblswfop where swfseq=:x1 and seq=:x2';
        params[0].asinteger:=frmswfpool.query5.fieldbyname('swfseq').value;
        params[1].asinteger:=frmswfpool.query5.fieldbyname('seq').value;
        execute;
      end;
      frmswfpool.Query5.Delete;
    end else begin
      with frmswf_profile.Query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='delete from tblswfop where swfseq=:x1 and seq=:x2';
        params[0].asinteger:=frmswf_profile.query5.fieldbyname('swfseq').value;
        params[1].asinteger:=frmswf_profile.query5.fieldbyname('seq').value;
        execute;
      end;
      frmswf_profile.Query5.Delete;
    end;
  end;
end;

procedure Tfrmswfskill.BitBtn3Click(Sender: TObject);
begin
  if label4.Caption='SWF' then begin
    if (frmswfpool.Query5.state=dsedit) or (frmswfpool.Query5.state=dsinsert) then frmswfpool.query5.Post;
  end else begin
    if (frmswf_profile.Query5.state=dsedit) or (frmswf_profile.Query5.state=dsinsert) then frmswf_profile.query5.Post;
  end;
end;

procedure Tfrmswfskill.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmswfskill.BitBtn4Click(Sender: TObject);
begin
  ppDBPipeline1.DataSource:=dbgrideh1.DataSource;
  line001.Caption:=dbtext1.Field.Value;
  swfid001.Caption:=dbtext2.Field.value;
  swfn001.Caption:=dbtext3.Field.Value;
  ppReport1.Print;
end;

procedure Tfrmswfskill.FormShow(Sender: TObject);
begin
  dbgrideh1.Columns[0].PickList.clear;
  dbgrideh1.Columns[1].PickList.clear;
  with frmswfpool.Query2 do begin
    close;
    params.clear;
    commandtext:='select distinct swfmc from tblswfop where swfmc>''''';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[0].PickList.add(fieldbyname('swfmc').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with frmswfpool.Query2 do begin
    close;
    params.clear;
    commandtext:='select distinct swfop from tblswfop where swfop>''''';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[1].PickList.add(fieldbyname('swfop').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
 