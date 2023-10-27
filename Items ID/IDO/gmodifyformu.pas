unit gmodifyformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient;

type
  Tfrmgmodify = class(TForm)
    opt1: TRadioButton;
    opt2: TRadioButton;
    opt3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgmodify: Tfrmgmodify;

implementation
uses loginformu, mainformu;
{$R *.DFM}

procedure Tfrmgmodify.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgmodify.BitBtn1Click(Sender: TObject);
var
  i:integer;
begin
  screen.cursor:=crHourglass;
  if opt1.checked=true then begin
    if edit1.text>'' then begin
      for i:=0 to frmmain.dbgrideh1.selectedrows.count-1 do begin
        frmmain.clientdataset1.gotobookmark(pointer(frmmain.dbgrideh1.selectedrows.items[i]));
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'new_mat',ptinput);
          params.createparam(ftstring,'erp_id',ptinput);
          commandtext:='update tranferfail set new_mat=:new_mat where erp_id=:erp_id';
          params[0].asstring:=edit1.text;
          params[1].asstring:=frmmain.clientdataset1.fieldbyname('erp_id').value;
          execute;
        end;
      end;
    end;
  end
  else begin
    if opt2.checked=true then begin
      if edit2.text>'' then begin
        for i:=0 to frmmain.dbgrideh1.selectedrows.count-1 do begin
          frmmain.clientdataset1.gotobookmark(pointer(frmmain.dbgrideh1.selectedrows.items[i]));
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'new_col',ptinput);
            params.createparam(ftstring,'erp_id',ptinput);
            commandtext:='update tranferfail set new_col=:new_col where erp_id=:erp_id';
            params[0].asstring:=edit2.text;
            params[1].asstring:=frmmain.clientdataset1.fieldbyname('erp_id').value;
            execute;
          end;
        end;
      end;
    end
    else begin
      if opt3.checked=true then begin
        if edit3.text>'' then begin
          for i:=0 to frmmain.dbgrideh1.selectedrows.count-1 do begin
            frmmain.clientdataset1.gotobookmark(pointer(frmmain.dbgrideh1.selectedrows.items[i]));
            with clientdataset2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'new_siz',ptinput);
              params.createparam(ftstring,'erp_id',ptinput);
              commandtext:='update tranferfail set new_siz=:new_siz where erp_id=:erp_id';
              params[0].asstring:=edit3.text;
              params[1].asstring:=frmmain.clientdataset1.fieldbyname('erp_id').value;
              execute;
            end;
          end;
        end;
      end;
    end;
  end;
  with frmmain.clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tranferfail';
    open;
  end;
  close;
  screen.cursor:=crDefault;
end;

end.
