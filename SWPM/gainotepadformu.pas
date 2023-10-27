unit gainotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, Buttons, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, ppVar, ppCtrls, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppBands, ppCache, ppProd, ppReport, ppViewr, ppParameter;

type
  Tfrmgainotepad = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel4: TppLabel;
    ws001: TppLabel;
    ppLabel6: TppLabel;
    line001: TppLabel;
    ppShape1: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel13: TppLabel;
    ppDBText6: TppDBText;
    ppLabel14: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    dt001: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgainotepad: Tfrmgainotepad;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmgainotepad.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    combobox2.items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+combobox1.text+''' and tshop>'''' and pline>'''' order by tshop';
      open;
      first;
      while not eof do begin
        combobox2.items.add(fieldbyname('tshop').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if combobox1.text='SL' then begin
      combobox2.text:='4B';
      combobox3.Text:='T002U';
    end else if combobox1.Text='KB' then begin
      combobox2.text:='KB2';
      combobox3.Text:='T098';
    end;
  end;
end;

procedure Tfrmgainotepad.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text>'' then begin
    combobox3.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      combobox3.Text:=fieldbyname('pline').value;
      first;
      while not eof do begin
        combobox3.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmgainotepad.ComboBox3Enter(Sender: TObject);
begin
  if combobox2.text>'' then begin
    combobox3.Items.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+combobox2.text+''' and pline>'''' order by pline';
      open;
      combobox3.Text:=fieldbyname('pline').value;
      first;
      while not eof do begin
        combobox3.Items.add(fieldbyname('pline').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmgainotepad.FormShow(Sender: TObject);
begin
  dateedit1.date:=date-1;
  dateedit2.date:=date-1;
end;

procedure Tfrmgainotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmgainotepad:=nil;
end;

procedure Tfrmgainotepad.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmgainotepad.BitBtn1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct tplant,tshop,pline,j_no,cstyle,acol,dt1,marks,eff1,eff2 from line_shjs where flag=''0'' and marks>'''' and dt1>=:x1 and dt1<=:x2';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.Text>'' then commandtext:=commandtext+' and pline='''+combobox3.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,pline,dt1,j_no,cstyle,acol';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      open;
      if not fieldbyname('tplant').isnull then begin
        fty001.Caption:=combobox1.text;
        ws001.Caption:=combobox2.text;
        line001.Caption:=combobox3.text;
        dt001.Caption:=' From '+dateedit1.Text+'   To '+dateedit2.Text;
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
