unit ieclassformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, DB, DBClient, ComCtrls;

type
  Tfrmieclass = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource2: TDataSource;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmieclass: Tfrmieclass;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmieclass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmieclass:=nil;
end;

procedure Tfrmieclass.BitBtn1Click(Sender: TObject);
begin
  frmieclass.Close;
end;

procedure Tfrmieclass.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    with ClientDataSet1 do begin
      close;
      params.clear;
      commandtext:='select distinct cls,acol as psiz from ppc_zygx_clr where cstyle='''+worksheet1.tblshedule.fieldbyname('cstyle').value+'''';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    with ClientDataSet1 do begin
      close;
      params.clear;
      commandtext:='select distinct cls,psiz from ppc_zygx_sz where cstyle='''+worksheet1.tblshedule.fieldbyname('cstyle').value+'''';
      open;
    end;
  end;
end;

end.
 