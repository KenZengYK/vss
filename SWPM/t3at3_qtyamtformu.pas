unit t3at3_qtyamtformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons, DB, DBClient, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, ppParameter;

type
  Tfrmt3at3_qtyamt = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmt3at3_qtyamt: Tfrmt3at3_qtyamt;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmt3at3_qtyamt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmt3at3_qtyamt:=nil;
end;

procedure Tfrmt3at3_qtyamt.FormShow(Sender: TObject);
var
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  spinedit1.value:=y;
  spinedit2.Value:=m;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty where act=1';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmt3at3_qtyamt.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='execute procedure sp_t3at3_outstanding(:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asstring:=combobox2.text;
      params[3].asinteger:=spinedit1.value;
      params[4].asinteger:=spinedit2.value;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_t3at3_qtyamount_1 where tm=:x1 order by cust';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then ppReport1.print;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmt3at3_qtyamt.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

end.
