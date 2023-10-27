unit selectioninfou;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, rxToolEdit, Db, DBClient;

type
  Tfrmselection = class(TForm)
    GroupBox1: TGroupBox;
    opt1: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    opt2: TRadioButton;
    opt3: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselection: Tfrmselection;

implementation
uses mainformu;
{$R *.DFM}

procedure Tfrmselection.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'yqlcrq',ptinput);
    params.createparam(ftdate,'yqlcrq1',ptinput);
    if opt1.checked=true then begin
      commandtext:='select sum(scqty) as qty from tblshedule where yzh=true and yqlcrq>=:yqlcrq and yqlcrq<=:yqlcrq1';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
    end
    else begin
     if opt2.checked=true then begin
      commandtext:='select sum(scqty) as qty from tblshedule where yzh=false and yqlcrq>=:yqlcrq and yqlcrq<=:yqlcrq1';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
     end
     else begin
      commandtext:='select sum(scqty) as qty from tblshedule where yqlcrq>=:yqlcrq and yqlcrq<=:yqlcrq1';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
     end;
    end;
    open;
    showmessage(fieldbyname('qty').asstring);
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmselection.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmselection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmselection:=nil;
end;

end.
