unit kgxzgx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, Buttons, ADODB, DBClient;

type
  Tfrmkgxzgx = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmkgxzgx: Tfrmkgxzgx;

implementation
uses xzgxu, scgxu, cbgxu, ndxzu, plxzu, dlu;
{$R *.DFM}

procedure Tfrmkgxzgx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmkgxzgx.BitBtn1Click(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if (label3.caption='') and (label5.caption='') then
    begin
     if frmscgx<>nil then begin
       if frmxzgx.dbedit1.DataSource=frmscgx.DataSource2 then begin
         frmscgx.zygx1.edit;
         frmscgx.zygx1.fieldbyname('gxdh').value:=query1.fieldbyname('dh').value;
         //frmxzgx.DBEdit21.text:=dbgrid1.fields[1].value;
         //frmxzgx.DBComboBox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('czms').isnull then
         frmscgx.zygx1.fieldbyname('yczl').value:=query1.fieldbyname('czms').value;
         frmscgx.zygx1.FieldByName('gxm').value:=query1.fieldbyname('mc').value;
         if not query1.fieldbyname('emc').isnull then
         frmscgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmscgx.zygx1.fieldbyname('egxm').value:='';
         if not query1.fieldbyname('ycsd').isnull then
         frmscgx.zygx1.fieldbyname('ycsd').value:=query1.fieldbyname('ycsd').value
         else frmscgx.zygx1.fieldbyname('ycsd').value:='';
         if not query1.FieldByName('ycfj').isnull then
         frmscgx.zygx1.fieldbyname('ycfj').value:=query1.fieldbyname('ycfj').value
         else frmscgx.zygx1.fieldbyname('ycfj').value:='';
         if not query1.fieldbyname('cfzkcc').isnull then
         frmscgx.zygx1.fieldbyname('zkcc').value:=query1.fieldbyname('cfzkcc').value
         else frmscgx.zygx1.FieldByName('zkcc').Value:='';
         if not query1.fieldbyname('parts_d').isnull then
         frmscgx.zygx1.fieldbyname('parts_d').value:=query1.fieldbyname('parts_d').value
         else frmscgx.zygx1.fieldbyname('parts_d').value:='';
         if not query1.fieldbyname('czbh').isnull then begin
           frmscgx.zygx1.fieldbyname('eyczl').value:=query1.fieldbyname('czbh').value;
           frmscgx.zygx1.fieldbyname('ycdm').value:=query1.fieldbyname('czbh').value;
         end else frmscgx.zygx1.fieldbyname('eyczl').value:='';
         if not query1.fieldbyname('guid_plate').isnull then
         frmscgx.zygx1.fieldbyname('guid_plate').value:=query1.fieldbyname('guid_plate').value
         else frmscgx.zygx1.fieldbyname('guid_plate').value:='';
         if not query1.fieldbyname('tps_q').isnull then
         frmscgx.zygx1.fieldbyname('tps_q').value:=query1.fieldbyname('tps_q').value
         else frmscgx.zygx1.fieldbyname('tps_q').value:='';
         if not query1.fieldbyname('tps_c').isnull then
         frmscgx.zygx1.fieldbyname('tps_c').value:=query1.fieldbyname('tps_c').value
         else frmscgx.zygx1.fieldbyname('tps_c').value:='';
         if not query1.fieldbyname('fryd').isnull then
         frmscgx.zygx1.fieldbyname('cfyq').value:=query1.fieldbyname('fryd').value
         else frmscgx.zygx1.fieldbyname('cfyq').value:='';
         if not query1.fieldbyname('efryd').isnull then
         frmscgx.zygx1.fieldbyname('ecfyq').value:=query1.fieldbyname('efryd').value
         else frmscgx.zygx1.fieldbyname('ecfyq').value:='';
         //showmessage('1');
         frmscgx.zygx1_gxmchange(nil);
         //showmessage('2');
         if (frmscgx.zygx1.state=dsedit) or (frmscgx.zygx1.state=dsinsert) then frmscgx.zygx1.post;
       end
       else begin
         frmcbgx.zygx1.edit;
         frmxzgx.DBEdit21.text:=dbgrid1.fields[1].value;
         frmxzgx.DBComboBox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('emc').isnull then
         frmcbgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmcbgx.zygx1.fieldbyname('egxm').value:='';
         frmcbgx.zygx1gxmchange(nil);
         frmcbgx.zygx1.post;
       end;
     end
     else begin
       frmcbgx.zygx1.edit;
       frmxzgx.DBEdit21.text:=dbgrid1.fields[1].value;
       frmxzgx.DBComboBox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
       if not query1.fieldbyname('emc').isnull then
       frmcbgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
       else frmcbgx.zygx1.fieldbyname('egxm').value:='';
       frmcbgx.zygx1gxmchange(nil);
       frmcbgx.zygx1.post;
     end;
    end
    else
    begin
     if (label3.caption<>'') and (label5.caption='') then
     begin
      if frmscgx<>nil then begin
        if frmxzgx.DBEdit1.datasource=frmscgx.DataSource2 then begin
         frmscgx.zygx1.edit;
         frmxzgx.dbedit21.text:=copy(dbgrid1.fields[1].value,1,4)+label3.caption+'0';
         if not query1.fieldbyname('czms').isnull then
         frmscgx.zygx1.fieldbyname('yczl').value:=query1.fieldbyname('czms').value;
         frmxzgx.dbcombobox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('emc').isnull then
         frmscgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmscgx.zygx1.fieldbyname('egxm').value:='';
         if not query1.fieldbyname('ycsd').isnull then
         frmscgx.zygx1.fieldbyname('ycsd').value:=query1.fieldbyname('ycsd').value
         else frmscgx.zygx1.fieldbyname('ycsd').value:='';
         if not query1.FieldByName('ycfj').isnull then
         frmscgx.zygx1.fieldbyname('ycfj').value:=query1.fieldbyname('ycfj').value
         else frmscgx.zygx1.fieldbyname('ycfj').value:='';
         if not query1.fieldbyname('cfzkcc').isnull then
         frmscgx.zygx1.fieldbyname('zkcc').value:=query1.fieldbyname('cfzkcc').value
         else frmscgx.zygx1.FieldByName('zkcc').Value:='';
         if not query1.fieldbyname('parts_d').isnull then
         frmscgx.zygx1.fieldbyname('parts_d').value:=query1.fieldbyname('parts_d').value
         else frmscgx.zygx1.fieldbyname('parts_d').value:='';
         if not query1.fieldbyname('czbh').isnull then begin
           frmscgx.zygx1.fieldbyname('eyczl').value:=query1.fieldbyname('czbh').value;
           frmscgx.zygx1.fieldbyname('ycdm').value:=query1.fieldbyname('czbh').value;
         end else frmscgx.zygx1.fieldbyname('eyczl').value:='';
         if not query1.fieldbyname('guid_plate').isnull then
         frmscgx.zygx1.fieldbyname('guid_plate').value:=query1.fieldbyname('guid_plate').value
         else frmscgx.zygx1.fieldbyname('guid_plate').value:='';
         if not query1.fieldbyname('tps_q').isnull then
         frmscgx.zygx1.fieldbyname('tps_q').value:=query1.fieldbyname('tps_q').value
         else frmscgx.zygx1.fieldbyname('tps_q').value:='';
         if not query1.fieldbyname('tps_c').isnull then
         frmscgx.zygx1.fieldbyname('tps_c').value:=query1.fieldbyname('tps_c').value
         else frmscgx.zygx1.fieldbyname('tps_c').value:='';
         if not query1.fieldbyname('fryd').isnull then
         frmscgx.zygx1.fieldbyname('cfyq').value:=query1.fieldbyname('fryd').value
         else frmscgx.zygx1.fieldbyname('cfyq').value:='';
         if not query1.fieldbyname('efryd').isnull then
         frmscgx.zygx1.fieldbyname('ecfyq').value:=query1.fieldbyname('efryd').value
         else frmscgx.zygx1.fieldbyname('ecfyq').value:='';
         frmscgx.zygx1_gxmchange(nil);
         if (frmscgx.zygx1.state=dsedit) or (frmscgx.zygx1.state=dsinsert) then frmscgx.zygx1.post;
        end
        else begin
         frmcbgx.zygx1.edit;
         frmxzgx.dbedit21.text:=copy(dbgrid1.fields[1].value,1,4)+label3.caption+'0';
         frmxzgx.dbcombobox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('emc').isnull then
         frmcbgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmcbgx.zygx1.fieldbyname('egxm').value:='';
         frmcbgx.zygx1gxmchange(nil);
         frmcbgx.zygx1.post;
        end;
      end
      else begin
       frmcbgx.zygx1.edit;
       frmxzgx.dbedit21.text:=copy(dbgrid1.fields[1].value,1,4)+label3.caption+'0';
       frmxzgx.dbcombobox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
       if not query1.fieldbyname('emc').isnull then
       frmcbgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
       else frmcbgx.zygx1.fieldbyname('egxm').value:='';
       frmcbgx.zygx1gxmchange(nil);
       frmcbgx.zygx1.post;
      end;
     end
     else
     begin
      if (label3.caption<>'') and (label5.caption<>'') then
      begin
       if frmscgx<>nil then begin
        if frmxzgx.DBEdit1.datasource=frmscgx.DataSource2 then begin
         //showmessage(copy(dbgrid1.fields[1].value,1,4)+label3.caption+label5.caption);
         frmscgx.zygx1.edit;
         frmxzgx.dbedit21.text:=copy(dbgrid1.fields[1].value,1,4)+label3.caption+label5.caption;
         if not query1.fieldbyname('czms').isnull then
         frmscgx.zygx1.fieldbyname('yczl').value:=query1.fieldbyname('czms').value;
         frmxzgx.dbcombobox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('emc').isnull then
         frmscgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmscgx.zygx1.fieldbyname('egxm').value:='';
         if not query1.fieldbyname('ycsd').isnull then
         frmscgx.zygx1.fieldbyname('ycsd').value:=query1.fieldbyname('ycsd').value
         else frmscgx.zygx1.fieldbyname('ycsd').value:='';
         if not query1.FieldByName('ycfj').isnull then
         frmscgx.zygx1.fieldbyname('ycfj').value:=query1.fieldbyname('ycfj').value
         else frmscgx.zygx1.fieldbyname('ycfj').value:='';
         if not query1.fieldbyname('cfzkcc').isnull then
         frmscgx.zygx1.fieldbyname('zkcc').value:=query1.fieldbyname('cfzkcc').value
         else frmscgx.zygx1.FieldByName('zkcc').Value:='';
         if not query1.fieldbyname('parts_d').isnull then
         frmscgx.zygx1.fieldbyname('parts_d').value:=query1.fieldbyname('parts_d').value
         else frmscgx.zygx1.fieldbyname('parts_d').value:='';
         if not query1.fieldbyname('czbh').isnull then begin
           frmscgx.zygx1.fieldbyname('eyczl').value:=query1.fieldbyname('czbh').value;
           frmscgx.zygx1.fieldbyname('ycdm').value:=query1.fieldbyname('czbh').value;
         end else frmscgx.zygx1.fieldbyname('eyczl').value:='';
         if not query1.fieldbyname('guid_plate').isnull then
         frmscgx.zygx1.fieldbyname('guid_plate').value:=query1.fieldbyname('guid_plate').value
         else frmscgx.zygx1.fieldbyname('guid_plate').value:='';
         if not query1.fieldbyname('tps_q').isnull then
         frmscgx.zygx1.fieldbyname('tps_q').value:=query1.fieldbyname('tps_q').value
         else frmscgx.zygx1.fieldbyname('tps_q').value:='';
         if not query1.fieldbyname('tps_c').isnull then
         frmscgx.zygx1.fieldbyname('tps_c').value:=query1.fieldbyname('tps_c').value
         else frmscgx.zygx1.fieldbyname('tps_c').value:='';
         if not query1.fieldbyname('fryd').isnull then
         frmscgx.zygx1.fieldbyname('cfyq').value:=query1.fieldbyname('fryd').value
         else frmscgx.zygx1.fieldbyname('cfyq').value:='';
         if not query1.fieldbyname('efryd').isnull then
         frmscgx.zygx1.fieldbyname('ecfyq').value:=query1.fieldbyname('efryd').value
         else frmscgx.zygx1.fieldbyname('ecfyq').value:='';
         frmscgx.zygx1_gxmchange(nil);
         if (frmscgx.zygx1.state=dsedit) or (frmscgx.zygx1.state=dsinsert) then frmscgx.zygx1.post;
        end
        else begin
         frmcbgx.zygx1.edit;
         frmxzgx.dbedit21.text:=copy(dbgrid1.fields[1].value,1,4)+label3.caption+label5.caption;
         frmxzgx.dbcombobox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('emc').isnull then
         frmcbgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmcbgx.zygx1.fieldbyname('egxm').value:='';
         frmcbgx.zygx1gxmchange(nil);
         frmcbgx.zygx1.post;
        end;
       end
       else begin
         frmcbgx.zygx1.edit;
         frmxzgx.dbedit21.text:=copy(dbgrid1.fields[1].value,1,4)+label3.caption+label5.caption;
         frmxzgx.dbcombobox1.text:=query1.fieldbyname('mc').value;//dbgrid1.fields[2].value;
         if not query1.fieldbyname('emc').isnull then
         frmcbgx.zygx1.FieldByName('egxm').value:=Query1.fieldbyname('emc').value
         else frmcbgx.zygx1.fieldbyname('egxm').value:='';
         frmcbgx.zygx1gxmchange(nil);
         frmcbgx.zygx1.Post;
       end;
      end;
     end;
    end;
    frmkgxzgx.close;
  end;
end;

procedure Tfrmkgxzgx.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  label3.caption:='';
  label4.caption:='';
  label5.caption:='';
  label6.caption:='';
  combobox1.text:='';
  combobox2.text:='';
  if label2.caption='車種' then
  begin
    query2.close;
    query2.params.clear;
    query2.commandtext:='select * from IE_cz';
    query2.open;
    if query2.recordcount>0 then
    begin
     query2.first;
     while not query2.eof do
     begin
      combobox1.items.add(query2.fieldbyname('cz').value);
      query2.next;
     end;
    end;
  end
  else
  begin
   if label2.caption='縫合方法' then
   begin
    query2.close;
    query2.params.clear;
    query2.commandtext:='select * from IE_fh';
    query2.open;
    if query2.recordcount>0 then
    begin
     query2.first;
     while not query2.eof do
     begin
      combobox1.items.add(query2.fieldbyname('cz').value);
      query2.next;
     end;
    end;
   end;
  end;
end;

procedure Tfrmkgxzgx.ComboBox1Change(Sender: TObject);
begin
  combobox2.items.clear;
  if label2.caption='車種' then
  begin
   if combobox1.text<>'' then
   begin
     combobox2.text:='';
     query1.close;
     query1.params.clear;
     Query1.params.createparam(ftstring,'cz',ptinput);
     query1.commandtext:='select * from IE_bzgx where cz like :cz';
//     query1.prepare;
     query1.params[0].value:=combobox1.text+'%';
     query1.open;
     query3.close;
     query3.params.clear;
     Query3.params.createparam(ftstring,'cz',ptinput);     
     query3.commandtext:='select mc from IE_bzgx where cz=:cz';
//     query3.prepare;
     query3.params[0].value:=combobox1.text;
     query3.open;
     if query3.recordcount>0 then
     begin
      query3.first;
      while not query3.eof do
      begin
        combobox2.items.add(query3.fieldbyname('mc').value);
        query3.next;
      end;
     end;
   end
   else
   begin
     combobox2.text:='';
     query1.close;
     query1.params.clear;
     query1.commandtext:='select * from IE_bzgx';
     query1.open;
     query3.close;
     query3.params.clear;
     query3.commandtext:='select mc from IE_bzgx';
     query3.open;
     if query3.recordcount>0 then
     begin
       query3.first;
       while not query3.eof do
       begin
         combobox2.items.add(query3.fieldbyname('mc').value);
         query3.next;
       end;
     end;
   end;
  end
  else
  begin
   if label2.caption='縫合方法' then
   begin
    if combobox1.text<>'' then
    begin
     combobox2.text:='';
     query1.close;
     query1.params.clear;
     Query1.params.createparam(ftstring,'cz',ptinput);     
     query1.commandtext:='select * from IE_bzgx1 where cz like :cz order by cz,mc';
//     query1.prepare;
     query1.params[0].value:=combobox1.text+'%';
     query1.open;
     query3.close;
     query3.params.clear;
     Query3.params.createparam(ftstring,'cz',ptinput);     
     query3.commandtext:='select mc from IE_bzgx1 where cz=:cz order by mc';
//     query3.prepare;
     query3.params[0].value:=combobox1.text;
     query3.open;
     if query3.recordcount>0 then
     begin
      query3.first;
      while not query3.eof do
      begin
        combobox2.items.add(query3.fieldbyname('mc').value);
        query3.next;
      end;
     end;
    end
    else
    begin
      combobox2.text:='';
      query1.close;
      query1.params.clear;
      query1.commandtext:='select * from IE_bzgx1 order by cz,mc';
      query1.open;
      query3.close;
      query3.params.clear;
      query3.commandtext:='select mc from IE_bzgx1';
      query3.open;
      if query3.recordcount>0 then
      begin
        query3.first;
        while not query3.eof do
        begin
          combobox2.items.add(query3.fieldbyname('mc').value);
          query3.next;
        end;
      end;
    end;
   end;
  end;
end;

procedure Tfrmkgxzgx.ComboBox2Change(Sender: TObject);
begin
  {
  if label2.caption='車種' then
  begin
    if combobox1.text<>'' then
    begin
      if combobox2.text<>'' then
      begin
        query1.close;
        query1.params.clear;
        Query1.params.createparam(ftstring,'cz',ptinput);
        Query1.params.createparam(ftstring,'mc',ptinput);
        query1.commandtext:='select * from IE_bzgx where cz=:cz and mc like :mc';
//        query1.prepare;
        query1.params[0].value:=combobox1.text;
        query1.params[1].value:=combobox2.text;
        query1.open;
      end
      else
      begin
        query1.close;
        query1.params.clear;
        query1.commandtext:='select * from IE_bzgx where cz like :mc';
//        query1.prepare;
        query1.params[0].value:=combobox1.text;
        query1.open;
      end;
    end
    else
    begin
      if combobox2.text<>'' then
      begin
        query1.close;
        query1.params.clear;
        query1.commandtext:='select * from IE_bzgx where mc like :mc';
//        query1.prepare;
        query1.params[0].value:=combobox2.text;
        query1.open;
      end
      else
      begin
        query1.close;
        query1.params.clear;
        query1.commandtext:='select * from IE_bzgx';
        query1.open;
      end;
    end;
  end
  else
  begin
   if label2.caption='縫合方法' then
   begin
    if combobox1.text<>'' then
    begin
      if combobox2.text<>'' then
      begin
        query1.close;
        query1.params.clear;
        query1.commandtext:='select * from IE_bzgx1 where cz=:cz and mc like :mc order by cz,mc';
//        query1.prepare;
        query1.params[0].value:=combobox1.text;
        query1.params[1].value:=combobox2.text;
        query1.open;
      end
      else
      begin
        query1.close;
        query1.params.clear;
        Query1.params.createparam(ftstring,'mc',ptinput);
        query1.commandtext:='select * from IE_bzgx1 where cz like :mc order by cz,mc';
//        query1.prepare;
        query1.params[0].value:=combobox1.text;
        query1.open;
      end;
    end
    else
    begin
      if combobox2.text<>'' then
      begin
        query1.close;
        query1.params.clear;
        Query1.params.createparam(ftstring,'mc',ptinput);
        query1.commandtext:='select * from IE_bzgx1 where mc like :mc order by cz,mc';
//        query1.prepare;
        query1.params[0].value:=combobox2.text;
        query1.open;
      end
      else
      begin
        query1.close;
        query1.params.clear;
        query1.commandtext:='select * from IE_bzgx1 order by cz,mc';
        query1.open;
      end;
    end;
   end;
  end;
  }
  query1.locate('mc',combobox2.text,[lopartialkey]);;
end;

procedure Tfrmkgxzgx.DBGrid1DblClick(Sender: TObject);
begin
  if not dbgrid1.Fields[2].isnull then
  begin
   if dbgrid1.selectedindex=4 then
   begin
    if frmndxz=nil then frmndxz:=tfrmndxz.create(self);
    frmndxz.show;
   end
   else
   begin
    if dbgrid1.selectedindex=5 then
    begin
     if frmplxz=nil then frmplxz:=tfrmplxz.create(self);
     frmplxz.show;
    end;
   end;
  end;
end;

procedure Tfrmkgxzgx.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('sj') as tfloatfield).displayformat:='0.00000';
  (query1.fieldbyname('sj2') as tfloatfield).displayformat:='0.00000';
end;

procedure Tfrmkgxzgx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //action:=cafree;
  //frmkgxzgx:=nil;
end;

end.
