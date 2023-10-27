unit projeff_custformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons;

type
  Tfrmprojeff_cust = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprojeff_cust: Tfrmprojeff_cust;

implementation

uses mainformu, custformu;

{$R *.dfm}

procedure Tfrmprojeff_cust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmprojeff_cust:=nil;
end;

procedure Tfrmprojeff_cust.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='update cust_projeff set lb63=:x1 where tplant=:x2 and cusn40=:x3 and sdiv35=:x4 and flag6=:x5';
      if not query1.fieldbyname('lb63').isnull then
      params[0].asfloat:=query1.fieldbyname('lb63').value
      else params[0].asfloat:=0;
      params[1].asstring:=query1.fieldbyname('tplant').value;
      params[2].asstring:=query1.fieldbyname('cusn40').value;
      params[3].asstring:=query1.fieldbyname('sdiv35').value;
      params[4].asstring:=query1.fieldbyname('flag6').value;
      execute;
    end;
  end;
end;

procedure Tfrmprojeff_cust.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

end.
