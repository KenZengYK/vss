unit mwfskillformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, StdCtrls, DBCtrls, Buttons, DB, ppDB,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppViewr, GridsEh, ppParameter;

type
  Tfrmmwfskill = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
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
    line001: TppLabel;
    ppLabel3: TppLabel;
    swfid001: TppLabel;
    ppLabel4: TppLabel;
    swfn001: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmwfskill: Tfrmmwfskill;

implementation

uses mainformu, mwfformu;

{$R *.dfm}

procedure Tfrmmwfskill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmmwfskill:=nil;
end;

procedure Tfrmmwfskill.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  frmmwf.Query3.Append;
end;

procedure Tfrmmwfskill.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with frmmwf.Query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='delete from tblmwfop where pline=:x1 and mwfid=:x2 and seq=:x3';
      params[0].asstring:=frmmwf.query3.fieldbyname('pline').value;
      params[1].asstring:=frmmwf.query3.fieldbyname('mwfid').value;
      params[2].asinteger:=frmmwf.query3.fieldbyname('seq').value;
      execute;
    end;
    frmmwf.Query3.Delete;
  end;
end;

procedure Tfrmmwfskill.BitBtn3Click(Sender: TObject);
begin
  if (frmmwf.Query3.state=dsedit) or (frmmwf.Query3.state=dsinsert) then frmmwf.query3.Post;
end;

procedure Tfrmmwfskill.BitBtn4Click(Sender: TObject);
begin
  ppDBPipeline1.DataSource:=dbgrideh1.DataSource;
  line001.Caption:=dbtext1.Field.Value;
  swfid001.Caption:=dbtext2.Field.value;
  swfn001.Caption:=dbtext3.Field.Value;
  ppReport1.Print;
end;

procedure Tfrmmwfskill.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
