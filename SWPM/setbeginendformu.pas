unit setbeginendformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  StdCtrls, Buttons, Mask, rxToolEdit, DB, DBClient, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters;

type
  Tfrmsetbeginend = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxEdit1: TcxCurrencyEdit;
    cxEdit2: TcxCurrencyEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsetbeginend: Tfrmsetbeginend;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmsetbeginend.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date;
  cxEdit1.Value:=0;
  cxEdit2.Value:=0;
end;

procedure Tfrmsetbeginend.BitBtn1Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftfloat,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftfloat,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    commandtext:='update tblshedule set cfksrq=:x1,cfksjs=:x2,cfwcrq=:x3,cfwcjs=:x4 where pline=:x5 and seq=:x6';
    params[0].asdate:=dateedit1.date;
    params[1].asfloat:=cxEdit1.Value;
    params[2].asdate:=dateedit2.Date;
    params[3].asfloat:=cxEdit2.Value;
    params[4].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
    params[5].AsInteger:=worksheet1.tblshedule.fieldbyname('seq').value;
    execute;
  end;
  frmsetbeginend.Close;
end;

end.
