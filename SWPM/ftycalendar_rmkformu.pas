unit ftycalendar_rmkformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, DateUtils;

type
  Tfrmftycalendar_rmk = class(TForm)
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmftycalendar_rmk: Tfrmftycalendar_rmk;

implementation

uses mainformu, ftycalendarformu;

{$R *.dfm}

procedure Tfrmftycalendar_rmk.BitBtn1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tplant_wk52 set rmk='''+memo1.text+''' where tplant='''+frmftycalendar.week52.fieldbyname('tplant').value+''' '
       +'and opt_c='+frmftycalendar.week52.fieldbyname('opt_c').asstring+' and m1='+frmftycalendar.week52.fieldbyname('m1').asstring+' and f_year(date1)='+inttostr(yearof(frmftycalendar.week52.fieldbyname('date1').value));
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmftycalendar_rmk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmftycalendar_rmk:=nil;
end;

end.
