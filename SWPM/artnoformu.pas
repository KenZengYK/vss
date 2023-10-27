unit artnoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGridEh, DBClient;

type
  Tfrmartno = class(TForm)
    query1: TClientDataSet;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmartno: Tfrmartno;

implementation

uses mainformu, gsdtmuformu;

{$R *.dfm}

end.
 