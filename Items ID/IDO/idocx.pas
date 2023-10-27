unit idocx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, DBGridEh, StdCtrls, Mask, ToolEdit, Buttons;

type
  Tfrmidocx = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    //DateEdit1: TDateEdit;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateEdit1: TDateEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure DateEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmidocx: Tfrmidocx;

implementation
uses idoform, loginform;
{$R *.DFM}

procedure Tfrmidocx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmidocx.ComboBox1Enter(Sender: TObject);
begin
  combobox1.items.clear;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct bm1 from ido1 where not (bm1 is null)';
    open;
    first;
    while not eof do begin
      if not fieldbyname('bm1').isnull then
      combobox1.items.add(fieldbyname('bm1').value);
      next;
    end;
  end;
end;

procedure Tfrmidocx.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct site from ido1 where not (site is null)';
    open;
    first;
    while not eof do begin
      if not fieldbyname('site').isnull then
      combobox2.items.add(fieldbyname('site').value);
      next;
    end;
  end;
end;

procedure Tfrmidocx.DateEdit1Change(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if dateedit1.date>0 then begin
    if combobox1.text<>'' then begin
      if combobox2.text<>'' then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'rq',ptinput);
          params.createparam(ftstring,'bm1',ptinput);
          params.createparam(ftstring,'site',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where rq=:rq and bm1=:bm1 and site=:site';
          params[0].asdatetime:=dateedit1.date;
          params[1].asstring:=combobox1.text;
          params[2].asstring:=combobox2.text;
          open;
        end;
      end
      else begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'rq',ptinput);
          params.createparam(ftstring,'bm1',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where rq=:rq and bm1=:bm1';
          params[0].asdatetime:=dateedit1.date;
          params[1].asstring:=combobox1.text;
          open;
        end;
      end;
    end
    else begin
      if combobox2.text<>'' then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'rq',ptinput);
          params.createparam(ftstring,'site',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where rq=:rq and site=:site';
          params[0].asdatetime:=dateedit1.date;
          params[1].asstring:=combobox2.text;
          open;
        end;
      end
      else begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'rq',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where rq=:rq';
          params[0].asdatetime:=dateedit1.date;
          open;
        end;
      end;
    end;
  end
  else begin
    if combobox1.text<>'' then begin
      if combobox2.text<>'' then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'bm1',ptinput);
          params.createparam(ftstring,'site',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where bm1=:bm1 and site=:site';
          params[0].asstring:=combobox1.text;
          params[1].asstring:=combobox2.text;
          open;
        end;
      end
      else begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'bm1',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where bm1=:bm1';
          params[0].asstring:=combobox1.text;
          open;
        end;
      end;
    end
    else begin
      if combobox2.text<>'' then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'site',ptinput);
          commandtext:='select bh,rq,sj,bm1,site from ido1 where site=:site';
          params[0].asstring:=combobox2.text;
          open;
        end;
      end
      else begin
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select bh,rq,sj,bm1,site from ido1';
          open;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmidocx.BitBtn1Click(Sender: TObject);
begin
  if clientdataset1.Active then begin
    if not dbgrideh1.fields[0].isnull then begin
      frmido.edit1.text:=dbgrideh1.fields[0].value;
      frmido.clientdataset1.findnearest([dbgrideh1.fields[0].value]);
      frmidocx.close;
    end;
  end;
end;

procedure Tfrmidocx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmidocx:=nil;
end;

end.
