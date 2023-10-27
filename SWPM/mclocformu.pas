unit mclocformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Db;

type
  Tfrmmcloc = class(TForm)
    Label1: TLabel;
    xh1: TRadioButton;
    xh2: TRadioButton;
    Bevel1: TBevel;
    Label2: TLabel;
    xh3: TRadioButton;
    Bevel2: TBevel;
    Label3: TLabel;
    xh4: TRadioButton;
    Bevel3: TBevel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    xh5: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh6: TRadioButton;
    xh7: TRadioButton;
    xh8: TRadioButton;
    xh9: TRadioButton;
    Bevel4: TBevel;
    Bevel5: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmcloc: Tfrmmcloc;

implementation

uses allmcformu;

{$R *.dfm}

procedure Tfrmmcloc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmmcloc:=nil;
end;

procedure Tfrmmcloc.BitBtn1Click(Sender: TObject);
var
  seq:integer;
begin
  if (frmallmc.Query1.state=dsedit) or (frmallmc.Query1.state=dsinsert) then frmallmc.Query1.Post;
  seq:=frmallmc.Query1.fieldbyname('seq').value;
  if xh1.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''Reserve'',msta=''1'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if xh8.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''Open'',msta=''1'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if xh2.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''On Repairing'',msta=''1'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if xh9.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''BN Support'',msta=''1'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if xh3.Checked then begin
   if combobox1.text>'' then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt='''+combobox1.text+''',msta=''2'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
   end;
  end;
  if xh4.Checked then begin
   if combobox2.text>'' then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt='''+combobox2.text+''',msta=''3'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
   end;
  end;
  if xh5.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''Dead'',msta=''4'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if xh6.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''Training Class'',msta=''5'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if xh7.Checked then begin
    with frmallmc.query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update tbl_mcpool set mstt=''Sample Room'',msta=''6'' where seq=:x1';
      params[0].asinteger:=frmallmc.Query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  frmallmc.ComboBox1Change(self);
  frmallmc.Query1.Locate('seq',seq,[]);
  frmmcloc.Close;
end;

end.
