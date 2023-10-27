unit exftyformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Mask, rxToolEdit, ppCtrls, ppPrnabl,
  ppClass, ppBands, ppCache, ppParameter, ppComm, ppRelatv, ppProd, ppReport,
  DB, DBClient, ppBarCode2D, ppBarCod;

type
  TfrmExfty = class(TForm)
    Label1: TLabel;
    edt1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edt2: TEdit;
    Label4: TLabel;
    edt3: TEdit;
    Label5: TLabel;
    edt4: TEdit;
    Label6: TLabel;
    edt5: TEdit;
    Label7: TLabel;
    edt6: TEdit;
    Label8: TLabel;
    edt7: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    _edt2: TDateEdit;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    r0008: TppLabel;
    r0001: TppLabel;
    r0002: TppLabel;
    r0003: TppLabel;
    r0004: TppLabel;
    r0005: TppLabel;
    r0006: TppLabel;
    r0007: TppLabel;
    Query4: TClientDataSet;
    ppBarCode1: TppBarCode;
    btn1: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Edt8: TEdit;
    Edt9: TEdit;
    nw01: TppLabel;
    mz01: TppLabel;
    mz02: TppLabel;
    nw02: TppLabel;
    chk1: TCheckBox;
    Label11: TLabel;
    Edt10: TEdit;
    Label12: TLabel;
    DtEdit1: TDateEdit;
    ppLabel11: TppLabel;
    sign_d001: TppLabel;
    ppLabel13: TppLabel;
    sign_d_dt001: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExfty: TfrmExfty;

implementation

uses mainformu, shpadvice2formu, Exfty_EnqueryFormu;

{$R *.dfm}

procedure TfrmExfty.BitBtn1Click(Sender: TObject);
var
  str1:string;
begin
  if edt1.text>'' then begin

    str1:='update tbl_pdn_exit set ';
    if _edt2.date>0 then
    str1:=str1+'ex_dt='''+formatdatetime('yyyy/mm/dd',_edt2.date)+''','
    else str1:=str1+'ex_dt=null,';
    str1:=str1+'ex_truck='''+edt2.text+''',';
    str1:=str1+'ex_box='''+edt3.text+''',';
    str1:=str1+'ex_box1='''+edt4.text+''',';
    str1:=str1+'ex_count='''+edt5.text+''',';
    str1:=str1+'ex_sign='''+edt6.text+''',';
    str1:=str1+'ex_mz='''+edt8.text+''',';
    str1:=str1+'ex_nw='''+edt9.text+''',';
    str1:=str1+'ex_sign_d='''+edt10.text+''',';
    if dtedit1.date>0 then
    str1:=str1+'ex_sign_d_dt='''+formatdatetime('yyyy/mm/dd',DtEdit1.date)+''',';
    str1:=str1+'ex_secu='''+edt7.text+''' ';
    str1:=str1+'where ex_no='''+edt1.text+'''';
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    r0001.caption:=edt1.text;
    ppbarcode1.data:=edt1.text;
    if _edt2.date>0 then
    r0002.caption:=_edt2.text
    else r0002.caption:='';
    r0003.caption:=edt2.text;
    r0004.caption:=edt3.text;
    r0005.caption:=edt4.text;
    r0006.caption:=edt5.text;
    r0007.caption:=edt6.text;
    r0008.caption:=edt7.text;
    mz02.caption:=edt8.text;
    nw02.caption:=edt9.text;
    if chk1.checked then begin
      mz01.visible:=true;
      mz02.visible:=true;
      nw01.visible:=true;
      nw02.visible:=true;
    end else begin
      mz01.visible:=false;
      mz02.visible:=false;
      nw01.visible:=false;
      nw02.visible:=false;
    end;
    ppReport1.print;
  end;
end;

procedure TfrmExfty.btn1Click(Sender: TObject);
begin
  if frmexfty_enquery=nil then frmexfty_enquery:=tfrmexfty_enquery.create(nil);
  frmexfty_enquery.show;
end;

procedure TfrmExfty.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  frmexfty:=nil;
end;

end.
