unit tp4scformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, QExport4, QExport4XLS, DB,
  DBClient;

type
  Tfrmtp4sc = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    SaveDialog1: TSaveDialog;
    xls1: TQExport4XLS;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtp4sc: Tfrmtp4sc;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmtp4sc.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      commandtext:='execute procedure sp_sc_lwotp(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=edit1.text;
      params[2].asdate:=dateedit1.date;
      params[3].asdate:=dateedit2.date;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct pline as "Line #",j_no as "Project #",j2_job as "WO #",flag6 as "Prod Code",'
                  +'cstyle as "Cust Style",acol as "Color Code",rwo as "RWO #",fccs as "QN #",scqty as "QN Qty",'
                  +'sum(tpqty) as "TP Qty",tmu as SAH,sum(tsah) as "TP SAH" from tbl_lwo_sc_tmp where tm=:x1 '
                  +'group by pline,j_no,j2_job,flag6,cstyle,acol,rwo,fccs,scqty,tmu order by pline,j_no,j2_job';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('sah').isnull then begin
        if savedialog1.Execute then begin
          xls1.FileName:=savedialog1.FileName;
          xls1.Execute;
        end;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmtp4sc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmtp4sc:=nil;
end;

end.
