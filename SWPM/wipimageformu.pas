unit wipimageformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;

type
  TfrmwipImage = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwipImage: TfrmwipImage;

implementation

uses mainformu, analysisformu, wipimgformu;

{$R *.dfm}

procedure TfrmwipImage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmwipimg<>nil then frmwipimg:=nil;
  action:=cafree;
  frmwipimage:=nil;
end;

procedure TfrmwipImage.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  cust:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  cust:=edit1.text;
  if cust>'' then begin
  try
    if ((combobox1.text>'') or (combobox2.text>'')) then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_genftystyleimg_01(:x1,:x2,:x3,:x4)';
        params[0].asstring:=combobox1.text;
        params[1].asstring:=combobox2.text;
        params[2].asdatetime:=tm;
        params[3].asstring:=uppercase(cust);
        execute;
      end;
      if frmwipimg=nil then frmwipimg:=tfrmwipimg.Create(nil);
      with frmwipimg.query7 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_op_styleimg where tm=:x1 order by cstyle,pline,seq';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('pline').isnull then begin
          if combobox2.text>'' then begin
            frmwipimg.title001.Caption:='Workshop WIP - Styles Image Illustration  - ('+uppercase(cust)+')';
            frmwipimg.y01.Visible:=true;
            frmwipimg.y001.Visible:=false;
            frmwipimg.y002.Visible:=false;
          end else if combobox1.text>'' then begin
            frmwipimg.title001.Caption:='Factory WIP - Styles Image Illustration  - ('+uppercase(cust)+')';
            frmwipimg.y01.Visible:=false;
            frmwipimg.y001.Visible:=true;
            frmwipimg.y002.Visible:=true;
          end;
          frmwipimg.tplant002.Caption:=combobox1.text;
          frmwipimg.tshop002.Caption:=combobox2.text;
          frmwipimg.ppReport2.Print;
        end;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
  end;
end;

procedure TfrmwipImage.FormShow(Sender: TObject);
begin
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop is not null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
