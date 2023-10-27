unit shopformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  ppVar, ppBands, ppCtrls, ppPrnabl, ppCache, ppParameter;

type
  Tfrmtshop = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Label4: TLabel;
    Edit1: TEdit;
    title01: TppLabel;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtshop: Tfrmtshop;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmtshop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmtshop:=nil;
end;

procedure Tfrmtshop.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmtshop.BitBtn1Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct a.tshop,a.pline,a.j_no,a.j2_job,a.rwo,a.cstyle,a.acol,a.scqty,b.date1,b.shjs,b.zktd '
                +'from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq '
                +'and b.date1>=:x1 and b.date1<=:x2';
    if edit1.text>'' then commandtext:=commandtext+' and tplant='''+edit1.text+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and tshop='''+combobox1.text+'''';
    commandtext:=commandtext+' order by a.tshop,a.pline,a.j_no,a.j2_job,a.rwo';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('tshop').isnull then begin
      if edit1.text>'' then title01.Caption:='廠: '+edit1.text;
      if combobox1.text>'' then begin
        if title01.caption>'' then title01.Caption:=title01.Caption+'    車間: '+combobox1.text
        else title01.Caption:='車間: '+combobox1.text;
      end;
      ppReport1.Print;
    end;
  end;
end;

procedure Tfrmtshop.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date+2;
end;

procedure Tfrmtshop.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop>''''';
    if edit1.text>'' then commandtext:=commandtext+' and tplant='''+edit1.text+'''';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
