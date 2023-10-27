unit zdlru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGridEh, Buttons, DBClient,
  Provider, Db, DBTables, Variants, GridsEh, ADODB;

type
  Tfrmzdlr = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGridEh1: TDBGridEh;
    tc: TSpeedButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    Label4: TLabel;
    ClientDataSet3: TClientDataSet;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure tcClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzdlr: Tfrmzdlr;

implementation
uses mainu, fcu, zmzyu, xsjlbu;//, newzdu;
{$R *.DFM}

procedure Tfrmzdlr.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmzdlr.SpeedButton1Click(Sender: TObject);
var
  zlc,zlt,xj:string;
  zds:integer;
  gch,zdh,kh,sh:string;
begin
 if label4.caption<>'find1' then begin
  if label4.caption='find' then begin
    {
    if clientdataset1.recordcount>0 then
    begin
      with frmfc.fczd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select * from cut_fczd1 where gch=:gch';
        params[0].asstring:=clientdataset1.fieldbyname('gch').value;
        open;
      end;
      frmfc.fczd1.locate('gch;zdh;kh;sh',vararrayof([clientdataset1.fieldbyname('gch').value,clientdataset1.fieldbyname('zdh').value,clientdataset1.fieldbyname('kh').value,clientdataset1.fieldbyname('sh').value]),[lopartialkey]);
    end;
    }
    if not adoquery1.FieldByName('gch').isnull then begin
      frmfc.edit1.text:=adoquery1.fieldbyname('gch').value;
      with frmfc.ADODataSet1 do begin
        close;
        commandtext:='select * from cut_fczd1 where gch='''+adoquery1.fieldbyname('gch').value+'''';
        open;
      end;
    end;
  end
  else begin
   if label4.caption='zmzy' then begin
    if clientdataset1.recordcount>0 then
    begin
      frmzmzy.edit1.text:=clientdataset1.fieldbyname('zdh').value;
      frmzmzy.edit2.text:=clientdataset1.fieldbyname('sh').value;
    end;
   end
   else begin
    if label4.caption='xsb' then begin
      if clientdataset1.recordcount>0 then
      begin
        frmxsjlb.edit1.text:=clientdataset1.fieldbyname('zdh').value;
        frmxsjlb.edit2.text:=clientdataset1.fieldbyname('sh').value;
        with clientdataset3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'zdh',ptinput);
          params.createparam(ftstring,'sh',ptinput);
          commandtext:='select * from mxsb where zdh=:zdh and sh=:sh';
          params[0].asstring:=clientdataset1.fieldbyname('zdh').value;
          params[1].asstring:=clientdataset1.fieldbyname('sh').value;
          open;
          if recordcount>0 then begin
            with frmxsjlb.mxsb do begin
              close;
              params.clear;
              params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              commandtext:='select * from mxsb where zdh=:zdh and sh=:sh';
              params[0].asstring:=clientdataset1.fieldbyname('zdh').value;
              params[1].asstring:=clientdataset1.fieldbyname('sh').value;
              open;
            end;
            frmxsjlb.edit3.text:=frmxsjlb.mxsb.fieldbyname('xjs').asstring;
            with clientdataset2 do begin
              close;
              params.clear;
              {params.createparam(ftstring,'zdh',ptinput);
              params.createparam(ftstring,'sh',ptinput);
              commandtext:='select min(fh) as fh1 from xsb where zdh=:zdh and sh=:sh';
              params[0].asstring:=clientdataset1.fieldbyname('zdh').value;
              params[1].asstring:=clientdataset1.fieldbyname('sh').value;}
              COMMANDTEXT:='SELECT MAXFH AS FH1 FROM MAXFH';
              open;
              if not fieldbyname('fh1').isnull then
              frmxsjlb.edit4.text:=fieldbyname('fh1').asstring
              else frmxsjlb.edit4.text:='';
            end;
            //if not frmxsjlb.mxsb.fieldbyname('fh').isnull then
            //frmxsjlb.edit4.text:=frmxsjlb.mxsb.fieldbyname('fh').asstring
            //else frmxsjlb.edit4.text:='';
          end
          else begin
            frmxsjlb.mxsb.close;
            frmxsjlb.edit3.text:='';
            frmxsjlb.edit4.text:='';
          end;
        end;
      end;
    end;
   end;
  end;
 end
 else begin
    if clientdataset1.recordcount>0 then
    begin
      {
      with frmnewzd.fczd1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'gch',ptinput);
        commandtext:='select * from cut_fczd01 where gch=:gch';
        params[0].asstring:=clientdataset1.fieldbyname('gch').value;
        open;
      end;
      frmnewzd.fczd1.locate('gch;zdh;kh;sh',vararrayof([clientdataset1.fieldbyname('gch').value,clientdataset1.fieldbyname('zdh').value,clientdataset1.fieldbyname('kh').value,clientdataset1.fieldbyname('sh').value]),[lopartialkey]);
      }
    end;
 end;
 close;
end;

procedure Tfrmzdlr.FormShow(Sender: TObject);
begin
  combobox1.text:='';combobox2.text:='';combobox3.text:='';
  combobox1.items.clear;
  combobox2.items.clear;
  combobox3.items.clear;
 if label4.caption='find1' then begin
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct gch from cut_fczd01 where not gch is null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('gch').value);
      next;
    end;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct zdh from cut_fczd01 where not gch is null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('zdh').value);
      next;
    end;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='select distinct kh from cut_fczd01 where not gch is null';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('kh').value);
      next;
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct gch,zdh,kh,sh from cut_fczd01';
    open;
  end;
 end
 else begin
  with adoquery2 do begin
    close;
    sql.text:='select distinct gch from cut_fczd1 where not gch is null';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('gch').value);
      next;
    end;
    close;
    sql.text:='select distinct zdh from cut_fczd1 where not gch is null';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('zdh').value);
      next;
    end;
    close;
    sql.text:='select distinct kh from cut_fczd1 where not gch is null';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('kh').value);
      next;
    end;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select distinct gch,zdh,kh,sh from cut_fczd1';
    open;
  end;
 end;
  COMBOBOX1.SetFocus;
end;

procedure Tfrmzdlr.ComboBox1Change(Sender: TObject);
begin
 if label4.caption='find1' then begin
  if combobox1.text<>'' then
  begin
    combobox2.text:='';combobox3.text:='';
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      commandtext:='select distinct gch,zdh,kh,sh from cut_fczd01 where gch like :gch';
      params[0].asstring:=combobox1.text+'%';
      open;
    end;
  end;
 end
 else begin
  if combobox1.text<>'' then
  begin
    combobox2.text:='';combobox3.text:='';
    with adoquery1 do begin
      close;
      sql.text:='select distinct gch,zdh,kh,sh from cut_fczd1 where gch like '''+combobox1.text+'%''';
      open;
    end;
  end;
 end;
end;

procedure Tfrmzdlr.ComboBox2Change(Sender: TObject);
begin
 if label4.caption='find1' then begin
  if combobox2.text<>'' then
  begin
    combobox1.text:='';combobox3.text:='';
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      commandtext:='select distinct gch,zdh,kh,sh from cut_fczd01 where zdh like :gch';
      params[0].asstring:=combobox2.text+'%';
      open;
    end;
  end;
 end
 else begin
  if combobox2.text<>'' then
  begin
    combobox1.text:='';combobox3.text:='';
    with adoquery1 do begin
      close;
      sql.text:='select distinct gch,zdh,kh,sh from cut_fczd1 where zdh like '''+combobox2.text+'%''';
      open;
    end;
  end;
 end;
end;

procedure Tfrmzdlr.ComboBox3Change(Sender: TObject);
begin
 if label4.caption='find1' then begin
  if combobox3.text<>'' then
  begin
    combobox2.text:='';combobox1.text:='';
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'gch',ptinput);
      commandtext:='select distinct gch,zdh,kh,sh from cut_fczd01 where kh like :gch';
      params[0].asstring:=combobox3.text+'%';
      open;
    end;
  end;
 end
 else begin
  if combobox3.text<>'' then
  begin
    combobox2.text:='';combobox1.text:='';
    with adoquery1 do begin
      close;
      sql.text:='select distinct gch,zdh,kh,sh from cut_fczd1 where kh like '''+combobox3.text+'%''';
      open;
    end;
  end;
 end;
end;

procedure Tfrmzdlr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmzdlr:=nil;
end;

end.
