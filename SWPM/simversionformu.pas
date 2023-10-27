unit simversionformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBClient, StdCtrls, Buttons;

type
  Tfrmsimversion = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsimversion: Tfrmsimversion;

implementation

uses mainformu, simfactoryformu;

{$R *.dfm}

procedure Tfrmsimversion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsimversion:=nil;
end;

procedure Tfrmsimversion.BitBtn1Click(Sender: TObject);
var
  tplant,pgrp,flag6:string;
  dt1,dt2:tdate;
  yr1,wk1,yr2,wk2:integer;
begin
  if not query4.fieldbyname('tm').isnull then begin
    frmsimfactory.DateTimePicker1.DateTime:=query4.fieldbyname('tm').value;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tplant,pgrp,flag6,refdt1,refdt2,min(yr1) as yr1,min(wk1) as wk1,max(yr2) as yr2,max(wk2) as wk2,xh1,xh2 '
                  +'from tbl_simline where tm=:x1 group by tplant,pgrp,flag6,refdt1,refdt2,xh1,xh2';
      params[0].asdatetime:=query4.fieldbyname('tm').value;
      open;
      frmsimfactory.ComboBox1.Text:=fieldbyname('tplant').value;
      frmsimfactory.ComboBox2.Text:=fieldbyname('pgrp').value;
      frmsimfactory.ComboBox3.text:=fieldbyname('flag6').value;
      frmsimfactory.DateEdit1.Date:=fieldbyname('refdt1').value;
      frmsimfactory.DateEdit2.date:=fieldbyname('refdt2').value;
      frmsimfactory.SpinEdit1.Value:=fieldbyname('yr1').value;
      frmsimfactory.SpinEdit2.Value:=fieldbyname('wk1').value;
      frmsimfactory.SpinEdit3.Value:=fieldbyname('yr2').value;
      frmsimfactory.SpinEdit4.Value:=fieldbyname('wk2').value;
      frmsimfactory.xh1.ItemIndex:=fieldbyname('xh1').value;
      frmsimfactory.xh2.ItemIndex:=fieldbyname('xh2').value;
    end;
    with frmsimfactory.query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tblline_tmp where tm=:x1';
      params[0].asdatetime:=query4.fieldbyname('tm').value;
      open;
    end;
    with frmsimfactory.Query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_simline where tm=:x1';
      params[0].asdatetime:=query4.fieldbyname('tm').value;
      open;
    end;
    frmsimversion.Close;
  end;
end;

end.
