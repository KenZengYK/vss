unit xzgchu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGridEh, StdCtrls, Buttons;

type
  Tfrmxzgch = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxzgch: Tfrmxzgch;

implementation
uses mainformu;

{$R *.DFM}

procedure Tfrmxzgch.BitBtn1Click(Sender: TObject);
begin
  if query1.recordcount>0 then begin
    frmmain.edit1.text:=query1.fieldbyname('j_no').value;
  end;
  close;
end;

procedure Tfrmxzgch.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
