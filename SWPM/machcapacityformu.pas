unit machcapacityformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, ExtCtrls, Db, DBTables, TeeProcs, TeEngine,
  Chart, DBChart, Grids, DBGridEh, Buttons, DBClient,filectrl, Series, GridsEh;

type
  Tfrmmachcapacity = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    DBGridEh1: TDBGridEh;
    ClientDataSet1: TClientDataSet;
    Query3: TQuery;
    DataSource1: TDataSource;
    Query3cz: TStringField;
    Query3scsj: TFloatField;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1DropDown(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmachcapacity: Tfrmmachcapacity;

implementation

uses mainformu, machcapacityformchartu;

{$R *.DFM}

procedure Tfrmmachcapacity.BitBtn1Click(Sender: TObject);
var
  scsj: double;
  strsql:string;
begin
  Screen.Cursor:=crHourglass;
  strsql:='';
  query3.close;
  query3.SQL.Clear;
  if fileexists('c:\temp\machcapacity.db') then deletefile('c:\temp\machcapacity.db');
  with query3 do begin
    close;
    sql.clear;
    sql.add('create table machcapacity(cz char(10),scsj numeric(10,2))');
    execsql;
  end;
  scsj:=0.00;
  if trim(comboBox1.text)<>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'yczl',ptinput);
      commandtext:='select distinct kh,sum(sj)/sum(scjs) as scjs1 from ie_zygx1 where yczl=:yczl group by kh';
      params[0].asstring:=comBoBox1.Text;
      open;
      while not eof do begin
        //strsql:='select sum(scqty) as scqty from tblshedule where substring(artno from 1 for 5)=:artno and yzh=false ';
        strsql:='select sum(scqty) as scqty1 from tblshedule where f_mid(artno,0,5)=:artno and yzh=0 ';
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'artno',ptinput);
          if DateEdit1.date>0 then begin
            params.createparam(ftdate,'cfksrq',ptinput);
            strsql:=strsql+' and cfksrq>=:cfksrq ';
          end;
          if DateEdit2.date>0 then begin
            params.createparam(ftdate,'cfwcrq',ptinput);
            strsql:=strsql+' and cfwcrq<=:cfwcrq';
          end;
          commandtext:=strsql;
          params[0].asstring:=copy(clientdataset1.fieldbyname('kh').asstring,1,5);
          if DateEdit1.date>0 then begin
            params[1].asdate:=DateEdit1.Date;
            if DateEdit2.date>0 then begin
              params[2].AsDate:=DateEdit2.Date;
            end;
          end else begin
            if DateEdit2.date>0 then begin
              params[1].AsDate:=DateEdit2.Date;
            end;
          end;
          open;
          if RecordCount>0 then begin
            scsj:=scsj+clientdataset1.fieldbyname('scjs1').asfloat*fieldbyname('scqty1').asinteger;
          end;
        end;
        next;
      end;
    end;
    with query3 do begin
      close;
      sql.clear;
      sql.add('insert into machcapacity(cz,scsj) values(:cz,:scsj)');
      prepare;
      params[0].asstring:=combobox1.text;
      params[1].asfloat:=scsj;
      execsql;
    end;
  end
  else begin
    with clientdataset3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'yczl',ptinput);
      commandtext:='select distinct yczl as cz from ie_zygx1 where yczl<>:yczl and (yczl is not null)';
      params[0].asstring:='人手';
      open;
      while not eof do begin
        scsj:=0.00;
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'yczl',ptinput);
          commandtext:='select distinct kh,sum(sj)/sum(scjs) as scjs1 from ie_zygx1 where yczl=:yczl group by kh';
          params[0].asstring:=clientdataset3.fieldbyname('cz').asstring;
          open;
          while not eof do begin
            //strsql:='select sum(scqty) as scqty from tblshedule where substring(artno from 1 for 5)=:artno and yzh=false ';
            strsql:='select sum(scqty) as scqty1 from tblshedule where f_mid(artno,0,5)=:artno and yzh=0 ';
            with clientdataset2 do begin
              close;
              params.clear;
              params.createparam(ftstring,'artno',ptinput);
              //params[0].asstring:=copy(clientdataset1.fieldbyname('kh').asstring,1,5);
              if DateEdit1.date>0 then begin
                params.createparam(ftdate,'cfksrq',ptinput);
                //params.parambyname('cfksrq').asdate:=DateEdit1.Date;
                strsql:=strsql+' and cfksrq>=:cfksrq ';
              end;
              if DateEdit2.date>0 then begin
                params.createparam(ftdate,'cfwcrq',ptinput);
                //params.parambyname('cfwcrq').AsDate:=DateEdit2.Date;
                strsql:=strsql+' and cfwcrq<=:cfwcrq';
              end;
              commandtext:=strsql;
              params[0].asstring:=copy(clientdataset1.fieldbyname('kh').asstring,1,5);
              if DateEdit1.date>0 then begin
                params[1].asdate:=DateEdit1.Date;
                if DateEdit2.date>0 then begin
                  params[2].AsDate:=DateEdit2.Date;
                end;
              end else begin
                if DateEdit2.date>0 then begin
                  params[1].AsDate:=DateEdit2.Date;
                end;
              end;
              open;
              if RecordCount>0 then begin
                scsj:=scsj+clientdataset1.fieldbyname('scjs1').asfloat*fieldbyname('scqty1').asinteger;
              end;
            end;
            next;
          end;
        end;
        with query3 do begin
          close;
          sql.clear;
          sql.add('insert into machcapacity(cz,scsj) values(:cz,:scsj)');
          prepare;
          params[0].asstring:=clientdataset3.fieldbyname('cz').value;
          params[1].asfloat:=scsj;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  Screen.Cursor:=crdefault;
end;

procedure Tfrmmachcapacity.FormCreate(Sender: TObject);
begin
  if not DirectoryExists('c:\temp') then
    if not CreateDir('C:\temp') then
    raise Exception.Create('Cannot create c:\temp');
end;

procedure Tfrmmachcapacity.BitBtn2Click(Sender: TObject);
begin
  if query3.active=true then begin
    if query3.recordcount>0 then begin
      if FrmMachCapacity_chart=nil then frmmachcapacity_chart:=Tfrmmachcapacity_chart.create(self);
      frmmachcapacity_chart.show;
    end;
  end;
end;

procedure Tfrmmachcapacity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmmachcapacity:=nil;
end;

procedure Tfrmmachcapacity.ComboBox1DropDown(Sender: TObject);
begin
  if combobox1.Items.Count>0 then exit;
  screen.Cursor:=crHourglass;
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'yczl',ptinput);
    commandtext:='select distinct yczl from ie_zygx1 where yczl<>:yczl and (yczl is not null)';
    params[0].asstring:='人手';
    open;
    while not eof do begin
      comboBox1.Items.Add(fieldbyname('yczl').asstring);
      next;
    end;
  end;
  screen.Cursor:=crdefault;
end;

procedure Tfrmmachcapacity.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date;
end;

end.
