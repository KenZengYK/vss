unit pdnsampleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, GridsEh, DBGridEh;

type
  Tfrmpdnsample = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label3: TLabel;
    DBText3: TDBText;
    DBGridEh3: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnsample: Tfrmpdnsample;

implementation

uses mainformu, pdnformu;

{$R *.dfm}

end.
