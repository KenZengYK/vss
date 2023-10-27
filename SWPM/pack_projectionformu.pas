unit pack_projectionformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Spin, Mask, Buttons, DB, DBClient;

type
  Tfrmpack_projection = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    SpinEdit1: TSpinEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh1: TRadioButton;
    xh2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpack_projection: Tfrmpack_projection;

implementation

uses mainformu, packplanformu;

{$R *.dfm}

procedure Tfrmpack_projection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpack_projection:=nil;
end;

procedure Tfrmpack_projection.BitBtn1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    with frmpackplan.Query2 do begin
      edit;
      fieldbyname('t2_p').value:=spinedit1.Value;
      fieldbyname('ip1_p').value:=spinedit1.Value;
      fieldbyname('ip2_p').value:=spinedit1.value;
      fieldbyname('cp1_p').value:=spinedit1.Value;
      fieldbyname('cp2_p').value:=spinedit1.value;
      fieldbyname('t3_p').value:=spinedit1.Value;
      post;
    end;
  end else if xh2.Checked  then begin
    if frmpackplan.query2.state=dsedit then frmpackplan.Query2.Post;
  end;
end;

end.
