unit wfprocessformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DB, DBClient;

type
  Tfrmwfprocess = class(TForm)
    DBMemo1: TDBMemo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwfprocess: Tfrmwfprocess;

implementation

uses mainformu, swfpoolformu, swf_profileformu, mwfformu;

{$R *.dfm}

procedure Tfrmwfprocess.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmwfprocess:=nil;
end;

procedure Tfrmwfprocess.BitBtn1Click(Sender: TObject);
begin
  if label2.Caption='SWF1' then begin
    if frmwfprocess.Caption='Resign' then begin
      with frmswfpool.Query1 do begin
        edit;
        fieldbyname('swfstt').value:='1';
      end;
    end;
    frmswfpool.BitBtn3click(self);
    frmswfpool.ComboBox1change(self);
  end else if label2.Caption='SWF2' then begin
    if frmwfprocess.Caption='Resign' then begin
      with frmswf_profile.Query1 do begin
        edit;
        fieldbyname('swfstt').value:='1';
      end;
    end;
    frmswf_profile.BitBtn3click(self);
  end else if label2.Caption='MWF' then begin
    if frmwfprocess.Caption='Resign' then begin
      with frmmwf.Query2 do begin
        edit;
        fieldbyname('mwfstt').value:='1';
      end;
    end;
    frmmwf.BitBtn5click(self);
  end;
  frmwfprocess.close;
end;

procedure Tfrmwfprocess.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where pline>'''' and tshop>'''' and tplant>''''';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
    combobox1.items.add('MWF Pool: SL');
    combobox1.items.add('MWF Pool: KB');
  end;
end;

procedure Tfrmwfprocess.ComboBox1Change(Sender: TObject);
begin
  if (combobox1.text>'') and (pos('MWF',combobox1.text)<=0) then begin
    if combobox1.Visible=true then begin
      if label2.Caption='SWF1' then begin
        with frmswfpool.Query1 do begin
          edit;
          fieldbyname('pline').value:=combobox1.text;
        end;
      end else if label2.Caption='SWF2' then begin
        with frmswf_profile.Query1 do begin
          edit;
          fieldbyname('pline').value:=combobox1.text;
        end;
      end;
    end;
  end;
end;

end.
