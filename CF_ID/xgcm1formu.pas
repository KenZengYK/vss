unit xgcm1formu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, Variants, ADODB;

type
  Tfrmxgcm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgcm1: Tfrmxgcm1;

implementation
uses mainu, fcu;
{$R *.DFM}

procedure Tfrmxgcm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgcm1:=nil;
end;

procedure Tfrmxgcm1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgcm1.BitBtn1Click(Sender: TObject);
var
  gch,zdh,kh,sh:string;
begin
  screen.cursor:=crHourglass;
  if edit2.text>'' then begin
    gch:=frmfc.adodataset1.fieldbyname('gch').value;
    zdh:=frmfc.adodataset1.fieldbyname('zdh').value;
    kh:=frmfc.adodataset1.fieldbyname('kh').value;
    sh:=frmfc.adodataset1.fieldbyname('sh').value;
    with adoquery1 do begin
      close;
      sql.text:='execute cut_xgcm1 :zdh,:ocm,:ncm';
      parameters[0].value:=zdh;
      parameters[1].value:=edit1.text;
      parameters[2].value:=edit2.text;
      execsql;
    end;
  end;
  with frmfc.adodataset1 do begin
    close;
    commandtext:='select * from cut_fczd1 where gch='''+gch+'''';
    open;
    //locate('gch;zdh;kh;sh',vararrayof([gch,zdh,kh,sh]),[]);
  end;
  frmxgcm1.close;
  screen.cursor:=crDefault;
end;

end.
