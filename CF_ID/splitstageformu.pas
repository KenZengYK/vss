unit splitstageformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxToolEdit, rxCurrEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Buttons, DB, ADODB;

type
  Tfrmsplitstage = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TCurrencyEdit;
    Edit2: TCurrencyEdit;
    Label3: TLabel;
    Edit3: TcxSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplitstage: Tfrmsplitstage;

implementation

uses mainu, cmpl_actionlogformu;

{$R *.dfm}

procedure Tfrmsplitstage.BitBtn1Click(Sender: TObject);
var
  prjno:string;
  stage_i:integer;
begin
  if (edit2.Value>0.00) and (edit2.Value<Edit1.Value) then begin
    if Application.MessageBox('Split stage?','Confirmation',mb_iconquestion+mb_yesno)=IDYes then begin
      prjno:=frmcmpl_actionlog.al_dashboard.FieldByName('prjno').Value;
      stage_i:=frmcmpl_actionlog.al_dashboard.FieldByName('stage_i').Value;
      with frmcmpl_actionlog.AQuery1 do begin
        close;
        SQL.Text:='exec cut_al_splitstage :x1,:x2,:x3,:x4';
        Parameters[0].Value:=prjno;
        Parameters[1].Value:=stage_i;
        Parameters[2].Value:=edit2.Value;
        Parameters[3].Value:=Edit3.Value;
        ExecSQL;
      end;
      frmcmpl_actionlog.combobox1change(self);
      frmcmpl_actionlog.al_dashboard.Locate('prjno;stage_i',VarArrayOf([prjno,stage_i]),[loPartialKey]);
    end;
    Close;
  end else begin
    ShowMessage('Split % is wrong!');
  end;
end;

procedure Tfrmsplitstage.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmsplitstage.Edit2Change(Sender: TObject);
begin
  if (edit2.Value>=edit1.value) then begin
    ShowMessage('Split % must be less than the current %!');
    edit2.Value:=0;
  end;
end;

procedure Tfrmsplitstage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
  frmsplitstage:=nil;
end;

end.
