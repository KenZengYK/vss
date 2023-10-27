unit zmzyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBClient, ppViewr, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache,
  ppCtrls, ppPrnabl, ppVar, ppParameter;

type
  Tfrmzmzy = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    zds: TppDBText;
    ppShape1: TppShape;
    lbl1: TppLabel;
    lbl2: TppLabel;
    lbl3: TppLabel;
    lbl4: TppLabel;
    ppLabel5: TppLabel;
    wl1: TppLabel;
    wl2: TppLabel;
    wl3: TppLabel;
    wl4: TppLabel;
    wl5: TppLabel;
    wl6: TppLabel;
    wl7: TppLabel;
    wl8: TppLabel;
    wl9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    SpeedButton1: TSpeedButton;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    wl10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLine27: TppLine;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ClientDataSet2: TClientDataSet;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    zjs: TppLabel;
    zxs: TppLabel;
    Label3: TLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzmzy: Tfrmzmzy;

implementation
uses dlu, zdlru, zmdu;
{$R *.DFM}

procedure Tfrmzmzy.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmzmzy.BitBtn1Click(Sender: TObject);
var
  i,j:integer;
  wl:array[1..10] of string;
begin
 screen.cursor:=crHourglass;
 if label3.caption>'0' then begin
  if edit1.text<>'' then begin
    if edit2.text<>'' then begin
      for i:=1 to 10 do begin
        wl[i]:='';
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select distinct wl from fcwl where zdh=:zdh and sh=:sh and (not wl is null)';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        open;
        last;
        j:=recordcount;
        first;
        for i:=1 to j do begin
          wl[i]:=fieldbyname('wl').value;
          next;
        end;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        params.createparam(ftinteger,'cs',ptinput);
        commandtext:='select * from xsb where zdh=:zdh and sh=:sh and yzm=false and cs=:cs';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        params[2].asinteger:=strtoint(label3.caption);
        open;
        if recordcount>0 then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            params.createparam(ftinteger,'cs',ptinput);
            commandtext:='select sum(xs) as zxs,sum(bxjs) as zjs from xsb where zdh=:zdh and sh=:sh and yzm=false and cs=:cs';
            params[0].asstring:=edit1.text;
            params[1].asstring:=edit2.text;
            params[2].asinteger:=strtoint(label3.caption);
            open;
            zjs.Caption:=fieldbyname('zjs').asstring;
            zxs.caption:=fieldbyname('zxs').asstring;
          end;
          wl1.caption:=wl[1];wl2.caption:=wl[2];wl3.caption:=wl[3];wl4.caption:=wl[4];wl5.caption:=wl[5];
          wl6.caption:=wl[6];wl7.caption:=wl[7];wl8.caption:=wl[8];wl9.caption:=wl[9];wl10.caption:=wl[10];
          pplabel1.caption:='第'+label3.caption+'次執碼指引';
          ppreport1.print;
        end;
      end;
    end;
  end;
 end
 else begin
  if edit1.text<>'' then begin
    if edit2.text<>'' then begin
      for i:=1 to 10 do begin
        wl[i]:='';
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select distinct wl from fcwl where zdh=:zdh and sh=:sh and (not wl is null)';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        open;
        last;
        j:=recordcount;
        first;
        for i:=1 to j do begin
          wl[i]:=fieldbyname('wl').value;
          next;
        end;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'zdh',ptinput);
        params.createparam(ftstring,'sh',ptinput);
        commandtext:='select * from xsb where zdh=:zdh and sh=:sh and yzm=false';
        params[0].asstring:=edit1.text;
        params[1].asstring:=edit2.text;
        open;
        if recordcount>0 then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'zdh',ptinput);
            params.createparam(ftstring,'sh',ptinput);
            commandtext:='select sum(xs) as zxs,sum(bxjs) as zjs from xsb where zdh=:zdh and sh=:sh and yzm=false';
            params[0].asstring:=edit1.text;
            params[1].asstring:=edit2.text;
            open;
            zjs.Caption:=fieldbyname('zjs').asstring;
            zxs.caption:=fieldbyname('zxs').asstring;
          end;
          wl1.caption:=wl[1];wl2.caption:=wl[2];wl3.caption:=wl[3];wl4.caption:=wl[4];wl5.caption:=wl[5];
          wl6.caption:=wl[6];wl7.caption:=wl[7];wl8.caption:=wl[8];wl9.caption:=wl[9];wl10.caption:=wl[10];
          pplabel1.caption:='總執碼指引';
          ppreport1.print;
        end;
      end;
    end;
  end;
 end;
 screen.cursor:=crDefault;
end;

procedure Tfrmzmzy.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmzmzy.SpeedButton1Click(Sender: TObject);
begin
  if frmzdlr=nil then frmzdlr:=tfrmzdlr.create(self);
  frmzdlr.label4.caption:='zmzy';
  frmzdlr.show;
end;

procedure Tfrmzmzy.BitBtn3Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmzmd=nil then frmzmd:=tfrmzmd.create(self);
  frmzmd.edit1.text:='';
  frmzmd.edit2.text:='';
  frmzmd.edit3.text:='';
  frmzmd.edit4.text:='';
  frmzmd.dateedit1.date:=0;
  frmzmd.dateedit2.date:=0;
  frmzmd.maskedit1.text:='  :  :  ';
  frmzmd.maskedit2.text:='  :  :  ';
  frmzmd.opt1.checked:=true;
  frmzmd.show;
  screen.cursor:=crDefault;
end;

end.
