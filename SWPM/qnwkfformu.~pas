unit qnwkfformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmqnwkf = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqnwkf: Tfrmqnwkf;

implementation

uses zktdformu, achievingformu, wf_offformu, wf_on1formu, wf_on2formu;

{$R *.dfm}

procedure Tfrmqnwkf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmqnwkf:=nil;
end;

procedure Tfrmqnwkf.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmqnwkf.BitBtn1Click(Sender: TObject);
begin
  if frmwf_off=nil then frmwf_off:=tfrmwf_off.create(nil);
  if label1.Caption='ZKTD' then begin
    frmwf_off.DBText1.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText2.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText3.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText4.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText5.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText6.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText7.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText8.DataSource:=frmzktd.DataSource1;
    frmwf_off.DBText9.DataSource:=frmzktd.DataSource1;
  end else if label1.Caption='ACHIEVING' then begin
    frmwf_off.DBText1.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText2.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText3.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText4.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText5.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText6.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText7.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText8.DataSource:=frmachieving.DataSource1;
    frmwf_off.DBText9.DataSource:=frmachieving.DataSource1;
  end;
  frmwf_off.show;
end;

procedure Tfrmqnwkf.BitBtn2Click(Sender: TObject);
begin
  if frmwf_on1=nil then frmwf_on1:=tfrmwf_on1.create(nil);
  if label1.Caption='ZKTD' then begin
    frmwf_on1.DBText1.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText2.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText3.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText4.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText5.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText6.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText7.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText8.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText9.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText10.DataSource:=frmzktd.DataSource1;
    frmwf_on1.DBText11.DataSource:=frmzktd.DataSource1;
  end else if label1.Caption='ACHIEVING' then begin
    frmwf_on1.DBText1.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText2.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText3.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText4.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText5.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText6.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText7.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText8.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText9.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText10.DataSource:=frmachieving.DataSource1;
    frmwf_on1.DBText11.DataSource:=frmachieving.DataSource1;
  end;
  frmwf_on1.show;
end;

procedure Tfrmqnwkf.BitBtn3Click(Sender: TObject);
begin
  if frmwf_on2=nil then frmwf_on2:=tfrmwf_on2.create(nil);
  if label1.Caption='ZKTD' then begin
    frmwf_on2.DBText1.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText2.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText3.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText4.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText5.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText6.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText7.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText8.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText9.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText10.DataSource:=frmzktd.DataSource1;
    frmwf_on2.DBText11.DataSource:=frmzktd.DataSource1;
  end else if label1.Caption='ACHIEVING' then begin
    frmwf_on2.DBText1.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText2.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText3.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText4.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText5.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText6.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText7.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText8.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText9.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText10.DataSource:=frmachieving.DataSource1;
    frmwf_on2.DBText11.DataSource:=frmachieving.DataSource1;
  end;
  frmwf_on2.show;
end;

end.
