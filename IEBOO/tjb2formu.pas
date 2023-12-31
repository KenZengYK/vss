unit tjb2formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppVar, myChkBox, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppViewr, Txcomp;

type
  Tfrmtjb2 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    fty001: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Label2: TLabel;
    ComboBox2: TComboBox;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    prdcode001: TppLabel;
    sx001: TppLabel;
    sx002: TppLabel;
    sx003: TppLabel;
    sx004: TppLabel;
    tx001: TppLabel;
    tx003: TppLabel;
    tx004: TppLabel;
    tx005: TppLabel;
    tx002: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtjb2: Tfrmtjb2;

implementation

uses dlu, mainu;

{$R *.dfm}

procedure Tfrmtjb2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmtjb2:=nil;
end;

procedure Tfrmtjb2.BitBtn1Click(Sender: TObject);
begin
  screen.Cursor:=crHourglass;
  try
  if combobox1.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute sp_genie_tjb2 :x1';
      params[0].asstring:=combobox1.text;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from ie_tjb2';
      if combobox2.text>'' then commandtext:=commandtext+' where flag6='''+combobox2.text+'''';
      commandtext:=commandtext+' order by yczl,cnt desc,gxdh,gxm';
      open;
      if not fieldbyname('locd').isnull then begin
        fty001.Caption:=combobox1.text;
        if combobox2.text>'' then prdcode001.Caption:=combobox2.text
        else prdcode001.Caption:='ALL';
        ppReport1.Print;
      end;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmtjb2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmtjb2.FormShow(Sender: TObject);
begin
  if frmxtdl.ComboBox2.text='中文' then begin
    frmtjb2.Caption:='工序統計表 - 產品類別';
    label1.Caption:='工廠';
    label2.Caption:='產品類別';
  end else begin
    frmtjb2.Caption:='OPT Summary - Product Code';
    label1.Caption:='Factory';
    label2.Caption:='Product Code';
  end;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct flag6 from ie_tjb2';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('flag6').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmtjb2.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as s1,count(distinct flag6) as s2 from ie_tjb2 where yczl='''+query1.fieldbyname('yczl').value+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6='''+combobox2.text+'''';
      open;
      if not fieldbyname('s1').isnull then sx001.Caption:=fieldbyname('s1').asstring else sx001.Caption:='0';
      if not fieldbyname('s2').isnull then sx002.Caption:=fieldbyname('s2').asstring else sx002.Caption:='0';
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as s1 from ie_tjb2 where chk1=1 and yczl='''+query1.fieldbyname('yczl').value+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6='''+combobox2.text+'''';
      open;
      if not fieldbyname('s1').isnull then sx003.Caption:=fieldbyname('s1').asstring else sx003.Caption:='0';
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as s1 from ie_tjb2 where chk2=1 and yczl='''+query1.fieldbyname('yczl').value+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6='''+combobox2.text+'''';
      open;
      if not fieldbyname('s1').isnull then sx004.Caption:=fieldbyname('s1').asstring else sx004.Caption:='0';
    end;
end;

procedure Tfrmtjb2.ppSummaryBand1BeforePrint(Sender: TObject);
begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as s1,count(distinct flag6) as s3,count(distinct yczl) as s2 from ie_tjb2 where 0=0';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6='''+combobox2.text+'''';
      open;
      if not fieldbyname('s1').isnull then tx001.Caption:=fieldbyname('s1').asstring else tx001.Caption:='0';
      if not fieldbyname('s2').isnull then tx002.Caption:=fieldbyname('s2').asstring else tx002.Caption:='0';
      if not fieldbyname('s3').isnull then tx003.Caption:=fieldbyname('s3').asstring else tx003.Caption:='0';
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as s1 from ie_tjb2 where chk1=1';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6='''+combobox2.text+'''';
      open;
      if not fieldbyname('s1').isnull then tx004.Caption:=fieldbyname('s1').asstring else tx004.Caption:='0';
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as s1 from ie_tjb2 where chk2=1';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6='''+combobox2.text+'''';
      open;
      if not fieldbyname('s1').isnull then tx005.Caption:=fieldbyname('s1').asstring else tx005.Caption:='0';
    end;
end;

end.
