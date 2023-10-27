unit xgwlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBClient;

type
  Tfrmxgwl = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    query1: TClientDataSet;
    query2: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxgwl: Tfrmxgwl;

implementation
uses dlu;
{$R *.DFM}

procedure Tfrmxgwl.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxgwl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmxgwl:=nil;
end;

procedure Tfrmxgwl.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  edit1.text:='';
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct prjno from fcjy1';
    open;
    first;
    while not eof do begin
      if not fieldbyname('prjno').isnull then
        combobox1.items.add(fieldbyname('prjno').value);
      next;
    end;
  end;
end;

procedure Tfrmxgwl.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  if combobox1.text<>'' then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      commandtext:='select distinct wl from fcjy3 where prjno=:prjno';
      params[0].asstring:=combobox1.text;
      open;
      first;
      while not eof do begin
        if not fieldbyname('wl').isnull then
          combobox2.items.add(fieldbyname('wl').value);
        next;
      end;
    end;
  end;
end;

procedure Tfrmxgwl.BitBtn1Click(Sender: TObject);
begin
  screen.Cursor:=crhourglass;
  if (combobox1.text<>'') and (combobox2.text<>'') and (edit1.text<>'') then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'prjno',ptinput);
      params.createparam(ftstring,'wl',ptinput);
      commandtext:='select wl from fcjy1 where prjno=:prjno and wl=:wl';
      params[0].asstring:=combobox1.text;
      params[1].asstring:=edit1.text;
      open;
      if recordcount=0 then begin
        //frmxtdl.SocketConnection1.AppServer.amendwl(combobox1.text,combobox2.text,edit1.text);
      end;
    end;
  end;
  screen.cursor:=crdefault;
  close;
end;

end.
