unit dlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Menus, DBClient, MConnect, SConnect,filectrl,
  siComp, ADODB;

type
  Tfrmxtdl = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    ComboBox2: TComboBox;
    siLang1: TsiLang;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxtdl: Tfrmxtdl;

implementation

uses mainu, dmfcu;

{$R *.DFM}

procedure Tfrmxtdl.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit1.setfocus;
end;

procedure Tfrmxtdl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then button1click(self);
end;

procedure Tfrmxtdl.Button1Click(Sender: TObject);
begin
  if combobox1.text<>'' then begin
      with adoquery1 do begin
        close;
        sql.text:='select passwrd,r5 from tkt_yh where upper(nam)=:nam';
        parameters[0].value:=uppercase(combobox1.text);
        open;
      end;
        if (not adoquery1.fieldbyname('passwrd').isnull) and (uppercase(adoquery1.fieldbyname('passwrd').value)=edit1.text) then
        begin
          frmmain.mt1.visible:=true;
          frmmain.frn1.visible:=true;
          frmmain.Yield1.visible:=true;
          frmmain.cg_fxbg.visible:=true;
          frmmain.toolbutton8.visible:=true;

          frmmain.n1.visible:=true;
          frmmain.n2.visible:=true;
          frmmain.N33.Visible:=true;
          frmmain.ToolBar1.visible:=true;
          if adoquery1.fieldbyname('r5').value=true then
          frmmain.Label1.Caption:='PAUL'
          else frmmain.label1.caption:=combobox1.text;
          frmmain.Label2.Caption:=datetimetostr(now);
          frmxtdl.close;
        end else begin
          application.messagebox('Wrong User!','Confirmation',mb_ok+mb_iconinformation);
          combobox1.setfocus;
        end;
  end;
end;

procedure Tfrmxtdl.Button2Click(Sender: TObject);
begin
  //application.Terminate;
  frmmain.Close;
end;

procedure Tfrmxtdl.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with adoquery1 do begin
    close;
    sql.text:='select distinct upper(nam) as name from tkt_yh';
    open;
    first;
    while not eof do begin
      combobox1.items.add(trim(fieldbyname('name').value));
      next;
    end;
  end;
end;

procedure Tfrmxtdl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxtdl:=nil;
end;

procedure Tfrmxtdl.ComboBox2Change(Sender: TObject);
begin
  if combobox2.itemindex=0 then begin
    frmmain.n34.checked:=true;
  end else if combobox2.itemindex=1 then begin
    frmmain.n35.checked:=true;
  //end else if combobox2.itemindex=2 then begin
  //  frmmain.n36.checked:=true;
  end;
  frmmain.SpinEdit1.Value:=combobox2.ItemIndex+1;
  silang1.ActiveLanguage:=combobox2.ItemIndex+1;
end;

procedure Tfrmxtdl.FormCreate(Sender: TObject);
begin
  siLang1.LoadAllFromFile('cutplan.sil',false);
end;

procedure Tfrmxtdl.FormShow(Sender: TObject);
begin
  //frmxtdl.Left:=screen.Width div 2;
  //frmxtdl.Top:=Screen.Height div 2;
end;

end.
