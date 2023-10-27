unit zdsu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, DBTables, Grids, DBGridEh, ExtCtrls, DBCtrls,
  Buttons, StdCtrls, Mask, math, GridsEh, ADODB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCalendar, cxGridExportLink, cxCurrencyEdit, Menus,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  Tfrmzds = class(TForm)
    DBGridEh1: TDBGridEh;
    tc: TSpeedButton;
    Label1: TLabel;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    clientdataset2: TADOQuery;
    ClientDataSet1: TClientDataSet;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    ComboBox3: TComboBox;
    cxView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxView1prjno: TcxGridDBColumn;
    cxView1fcrq: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    SpeedButton2: TSpeedButton;
    SaveDialog1: TSaveDialog;
    cxView1dued: TcxGridDBColumn;
    cxView1gch: TcxGridDBColumn;
    cxView1rq: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Reviewhistory1: TMenuItem;
    Label6: TLabel;
    cxView1mjh_ttl: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure tcClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Reviewhistory1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmzds: Tfrmzds;

implementation
uses mainu, fcjyu, lbjhu, cgdu, cgbgu, fllru, eOrderFormu;
{$R *.DFM}

procedure Tfrmzds.FormShow(Sender: TObject);
begin
  label6.caption:='';
  combobox1.text:='ALL';
  combobox2.text:='ALL';
  combobox1change(self);
  edit1.text:='';
  edit1.setfocus;
  {
  with clientdataset1 do begin
    close;
    //params.clear;
    if (label2.caption='fcjy') or (label2.caption='fcjy1') then begin
      commandtext:='select distinct a.prjno from cut_fcjy1 a,cut_fcjy3 b where a.prjno=b.prjno and a.wl=b.wl and b.wc=0';
    end
    else begin
      if label2.caption='lbjh' then begin
        commandtext:='select distinct a.prjno from cut_fcjy1 a,cut_fcjy3 b where a.prjno=b.prjno and a.wl=b.wl and b.wc=0';
      end
      else begin
        if label2.caption='cgd' then begin
          commandtext:='select distinct prjno from cut_lbjh1 where not prjno is null';
        end
        else begin
          if label2.caption='cgbg' then begin
            commandtext:='select distinct prjno from cut_cgd1 where not prjno is null';
          end
          else begin
            if label2.caption='fljy' then begin
              commandtext:='select distinct prjno from cut_fljy3 where not prjno is null';
            end;
          end;
        end;
      end;
    end;
    commandtext:=commandtext+' order by prjno';
    open;
  end;
  }
end;

procedure Tfrmzds.Reviewhistory1Click(Sender: TObject);
begin
  if label6.caption='' then label6.caption:='F10'
  else label6.caption:='';
  combobox1change(self);
end;

procedure Tfrmzds.tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmzds.SpeedButton1Click(Sender: TObject);
var
  sprjno,tprjno:string;
begin
  screen.cursor:=crHourglass;
  if clientdataset1.recordcount>0 then begin
    if label2.caption='eOrder' then begin
      frmeOrder.Edit1.Text:=dbgrideh1.Fields[0].Value;
    end else if label2.caption='fcjy' then begin
      with frmfcjy.AQuery1 do begin
        close;
        parameters.clear;
        sql.text:='exec phgdb..cut_jsttlch :x1';
        parameters[0].value:=dbgrideh1.fields[0].value;
        execsql;
      end;
      with frmfcjy.AQuery1 do begin
        close;
        parameters.clear;
        sql.text:='exec phgdb..cut_fcjy2post :x1';
        parameters[0].value:=dbgrideh1.fields[0].value;
        execsql;
      end;
      with frmfcjy.fcjy1 do begin
        close;
        commandtext:='select * from cut_fcjy1 where prjno=:prjno';
        parameters[0].value:=dbgrideh1.fields[0].value;
        open;
      end;
    end else begin
      if label2.caption='lbjh' then begin
        frmlbjh.combobox1.text:=dbgrideh1.fields[0].value;
        frmlbjh.combobox1change(self);
      end else begin
        if label2.caption='cgd' then begin
          frmcgd.combobox1.text:=dbgrideh1.fields[0].value;
          frmcgd.combobox1change(self);
        end else begin
          if label2.caption='cgbg' then begin
            frmcgbg.combobox1.text:=dbgrideh1.fields[0].value;
            frmcgbg.combobox1change(self);
          end else begin
            if label2.caption='fcjy1' then begin
              sprjno:=dbgrideh1.fields[0].value;
              tprjno:=frmfcjy.fcjy1.fieldbyname('prjno').value;
              //showmessage(sprjno+':'+tprjno);
              //{
              with clientdataset2 do begin
                close;
                sql.text:='exec cut_cpyprj :sprjno,:tprjno';
                parameters[0].value:=sprjno;
                parameters[1].value:=tprjno;
                execsql;
              end;
              //}
              with frmfcjy.fcjy1 do begin
                close;
                commandtext:='select * from cut_fcjy1 where prjno=:prjno';
                parameters[0].value:=tprjno;
                open;
              end;
              //showmessage('ok');
            end else begin
              frmfllr.edit1.text:=dbgrideh1.fields[0].value;
              with frmfllr.query1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'prjno',ptinput);
                commandtext:='select * from cut_fljy1 where prjno=:prjno';
                params[0].asstring:=dbgrideh1.fields[0].value;
                open;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  screen.cursor:=crDefault;
  close;
end;

procedure Tfrmzds.Edit1Change(Sender: TObject);
begin
  if edit1.text<>'' then begin
    clientdataset1.FindNearest([edit1.text]);
  end;
end;

procedure Tfrmzds.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton1click(self);
end;

procedure Tfrmzds.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmzds:=nil;
end;

procedure Tfrmzds.ComboBox1Change(Sender: TObject);
var
  fty,mt,qmt:string;
begin
  fty:='ALL';
  if combobox1.text>'' then fty:=combobox1.text;
  mt:='ALL';
  if combobox2.text>'' then mt:=combobox2.text;
  qmt:='ALL';
  if ComboBox3.Text>'' then qmt:=ComboBox3.Text;
  with clientdataset1 do begin
    close;
    //params.clear;
    if (label2.caption='fcjy') or (label2.caption='fcjy1') or (label2.caption='lbjh') or (label2.caption='eOrder') then begin
      //commandtext:='select distinct a.prjno,a.fcrq from cut_fcjy1 a,cut_fcjy3 b where a.prjno=b.prjno and a.wl=b.wl and b.wc=0';
      if Label6.Caption='' then begin
        commandtext:='select distinct a.prjno,max(d.prjno) as gch,max(a.fcrq) as fcrq,case min(isnull(c.rq,'''')) when ''1900-01-01'' then null else Max(c.rq) end as rq,'
                    +'case when case min(isnull(c.rq,'''')) when ''1900-01-01'' then null else Max(c.rq) end '
                    +'is not null then cast(getdate()-case min(isnull(c.rq,'''')) when ''1900-01-01'' then null else Max(c.rq) end as int) else null end as dued '
                    +'from cut_fcjy1 a left join cut_lbjh1 c on (a.prjno=c.prjno and a.wl=c.wl and a.xh=c.xh),cut_fcjy3 b,cut_frn_master d '
                    +'where a.prjno=b.prjno and a.wl=b.wl and substring(a.prjno,1,7)=d.frn_no ';
        commandtext:=commandtext+'and b.wc=0 and a.fcrq>=''2023-03-01''';
      end else if Label6.Caption='F10' then begin
        commandtext:='select distinct a.prjno,max(b.gch) as gch,max(a.fcrq) as fcrq,case min(isnull(c.rq,'''')) when ''1900-01-01'' then null else Max(c.rq) end as rq,'
                    +'case when case min(isnull(c.rq,'''')) when ''1900-01-01'' then null else Max(c.rq) end '
                    +'is not null then cast(getdate()-case min(isnull(c.rq,'''')) when ''1900-01-01'' then null else Max(c.rq) end as int) else null end as dued '
                    +'from cut_fcjy1 a left join cut_lbjh1 c on (a.prjno=c.prjno and a.wl=c.wl and a.xh=c.xh),cut_fcjy3 b '
                    +'where a.prjno=b.prjno and a.wl=b.wl ';
        commandtext:=commandtext+'and a.fcrq>=''2023-01-01''';
      end;
      {
      if label6.caption='' then begin
        commandtext:=commandtext+'and b.wc=0 and a.fcrq>=''2023-03-01''';
      end else if label6.caption='F10' then begin
        commandtext:=commandtext+'and a.fcrq>=''2023-01-01''';
      end;
      }
      if fty<>'ALL' then begin
        commandtext:=commandtext+' and a.fty='''+fty+'''';
      end;
      if mt<>'ALL' then begin
        if mt='PU' then commandtext:=commandtext+' and ((charindex(''PU'',a.prjno)>0) or (charindex(''PL'',a.prjno)>0))'
        //else if mt='PP' then commandtext:=commandtext+' and charindex(''PP'',a.prjno)>0'
        //else if mt='TP' then commandtext:=commandtext+' and ((charindex(''TOP'',a.prjno)>0) or (charindex(''TP'',a.prjno)>0))'
        else if mt='PD' then commandtext:=commandtext+' and charindex(''PU'',a.prjno)=0 and charindex(''PL'',a.prjno)=0 /*and charindex(''PP'',a.prjno)=0 and charindex(''TP'',a.prjno)=0 and charindex(''TOP'',a.prjno)=0*/';
      end;
      if qmt<>'ALL' then begin
        if qmt='1 = CU or PU' then commandtext:=commandtext+' and (charindex(''PU1'',a.prjno)>0 or charindex(''PD1'',a.prjno)>0 or charindex(''PU0'',a.prjno)>0)'
        else if qmt='2 = CU + TP' then commandtext:=commandtext+' and charindex(''PD2'',a.prjno)>0'
        else if qmt='3 = CU + PP' then commandtext:=commandtext+' and charindex(''PD3'',a.prjno)>0'
        else if qmt='4 = CU + TP + PP' then commandtext:=commandtext+' and charindex(''PD4'',a.prjno)>0';

      end;
    end;
    {
    else begin
      if label2.caption='lbjh' then begin
        commandtext:='select distinct a.prjno from cut_fcjy1 a,cut_fcjy3 b where a.prjno=b.prjno and a.wl=b.wl and b.wc=0';
      end
      else begin
        if label2.caption='cgd' then begin
          commandtext:='select distinct prjno from cut_lbjh1 where not prjno is null';
        end
        else begin
          if label2.caption='cgbg' then begin
            commandtext:='select distinct prjno from cut_cgd1 where not prjno is null';
          end
          else begin
            if label2.caption='fljy' then begin
              commandtext:='select distinct prjno from cut_fljy3 where not prjno is null';
            end;
          end;
        end;
      end;
    end;
    }
    commandtext:=commandtext+' group by a.prjno order by prjno';
    open;
  end;
end;

procedure Tfrmzds.ComboBox3Enter(Sender: TObject);
begin
  //ComboBox3.items.clear;
  //ComboBox3.items.Add('ALL');
  {
  if ComboBox2.text='ALL' then begin
    ComboBox3.items.Add('1 = CU');
    ComboBox3.items.Add('2');
    ComboBox3.items.Add('3');
  end else if ComboBox2.text='PU' then begin
    ComboBox3.items.Add('1 = PU');
  end else if ComboBox2.text='PD' then begin
    ComboBox3.items.Add('1');
    ComboBox3.items.Add('2');
    ComboBox3.items.Add('3');
  end;
  }
end;

procedure Tfrmzds.SpeedButton2Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    exportGridToExcel(savedialog1.filename,cxgrid1,false,true,false,'xls');
  end;
end;

end.
