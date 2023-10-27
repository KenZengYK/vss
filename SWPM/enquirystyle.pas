unit enquirystyle;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Grids, DBGridEh, Buttons, DBClient;

type
  Tfrmstyleenquiry = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    ClientDataSet1: TClientDataSet;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmstyleenquiry: Tfrmstyleenquiry;

implementation
uses loginu;
{$R *.DFM}

procedure Tfrmstyleenquiry.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if edit1.text<>'' then begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'artno',ptinput);
        commandtext:='select distinct pline,j_no,j2_job,acol from tblshedule where artno like :artno';
        params[0].asstring:=copy(edit1.text,1,5)+'%';
        open;
      end;
    end;
  end;
end;

procedure Tfrmstyleenquiry.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmstyleenquiry.FormShow(Sender: TObject);
begin
  edit1.text:='';
  clientdataset1.active:=false;
end;

end.
