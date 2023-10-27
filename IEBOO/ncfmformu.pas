unit ncfmformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DB, DBClient;

type
  Tfrmncfm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmncfm: Tfrmncfm;

implementation

uses dlu, mainu;

{$R *.dfm}

procedure Tfrmncfm.SpeedButton2Click(Sender: TObject);
begin
  //
end;

procedure Tfrmncfm.SpeedButton3Click(Sender: TObject);
begin
  //
end;

procedure Tfrmncfm.SpeedButton1Click(Sender: TObject);
begin
  //
end;

procedure Tfrmncfm.Edit1Change(Sender: TObject);
begin
  //
end;

procedure Tfrmncfm.BitBtn1Click(Sender: TObject);
begin
  if query2.active then begin
    with query3 do begin
      close;
      params.clear;
      commandtext:='select a.zd,b.* from ie_zygx a,ie_zygx1 b where a.seq=b.seq and b.cfm=0';
      open;
      if not fieldbyname('zd').isnull then begin
        //

      end;
    end;
  end;
end;

procedure Tfrmncfm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmncfm:=nil;
end;

end.
