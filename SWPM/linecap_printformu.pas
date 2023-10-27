unit linecap_printformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, DateUtils, DB, DBClient, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppProd, ppClass, ppReport, ppViewr,
  ppPrnabl, ppCtrls, ppBands, ppCache, ppVar, ppParameter;

type
  Tfrmlinecap_print = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query1: TClientDataSet;
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
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    fty001: TppLabel;
    ppLabel27: TppLabel;
    wks001: TppLabel;
    ppLabel28: TppLabel;
    line001: TppLabel;
    ppLabel29: TppLabel;
    from001: TppLabel;
    ppLabel30: TppLabel;
    to001: TppLabel;
    ppLabel31: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel32: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel33: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel12: TppLabel;
    ppLabel34: TppLabel;
    ppDBText10: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlinecap_print: Tfrmlinecap_print;

implementation

uses mainformu, linecapformu;

{$R *.dfm}

procedure Tfrmlinecap_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmlinecap_print:=nil;
end;

procedure Tfrmlinecap_print.FormShow(Sender: TObject);
begin
  spinedit1.Value:=frmlinecap.spinedit1.value;//yearof(date);
  spinedit2.Value:=frmlinecap.spinedit2.value;//weekof(date);
  spinedit3.Value:=frmlinecap.spinedit3.value;//yearof(date);
  spinedit4.Value:=frmlinecap.spinedit4.value;//weekof(date);
end;

procedure Tfrmlinecap_print.ComboBox1Change(Sender: TObject);
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

procedure Tfrmlinecap_print.ComboBox2Change(Sender: TObject);
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

procedure Tfrmlinecap_print.ComboBox3Enter(Sender: TObject);
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

procedure Tfrmlinecap_print.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlinecap_print.BitBtn1Click(Sender: TObject);
begin
  if (combobox1.text>'') or (combobox2.text>'') or (combobox3.text>'') then begin
    with query1 do begin
      close;
      params.clear;
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from line_capacity where substr(ny,1,4)>=:x1 and substr(ny,1,4)<=:x2 and wk>=:x3 and wk<=:x4';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and pline='''+combobox3.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,pline,ny,wk';
      params[0].asstring:=inttostr(spinedit1.value);
      params[1].asstring:=inttostr(spinedit3.Value);
      params[2].asinteger:=spinedit2.Value;
      params[3].asinteger:=spinedit4.value;
      open;
      if not fieldbyname('tplant').isnull then begin
        fty001.Caption:=combobox1.text;
        wks001.Caption:=combobox2.text;
        line001.Caption:=combobox3.text;
        from001.Caption:=inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value);
        to001.Caption:=inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
        ppreport1.Print;
      end;
    end;
  end;
end;

end.
