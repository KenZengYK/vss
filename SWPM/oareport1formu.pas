unit oareport1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, Db, DateUtils;

type
  Tfrmoareport1 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    DateEdit2: TDateEdit;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoareport1: Tfrmoareport1;

implementation

uses achievingformu, oamoduleformu, qnsumformu;

{$R *.dfm}

procedure Tfrmoareport1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmoareport1:=nil;
end;

procedure Tfrmoareport1.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  cfm:boolean;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
  if frmoareport1.Caption='WIP Style Image && Color Plate Illustration - Workshop' then begin
      if frmachieving=nil then frmachieving:=tfrmachieving.Create(nil);
      frmachieving.FormStyle:=fsNormal;
      frmachieving.Hide;
      frmachieving.ComboBox1.text:=combobox1.text;
      frmachieving.ComboBox2.Text:=combobox2.Text;
      frmachieving.Edit2.Text:=frmoamodule.combobox3.Text;
      frmachieving.DateEdit1.date:=dateedit1.Date;
      frmachieving.DateEdit2.Date:=dateedit1.Date;
      //frmachieving.WIPStylesImageIllustration1Click(self);
      frmachieving.BitBtn5Click(self);
  end else begin
      if frmqnsum=nil then frmqnsum:=tfrmqnsum.create(nil);
      frmqnsum.ComboBox1.text:=combobox1.text;
      frmqnsum.ComboBox2.text:=combobox2.text;
      frmqnsum.ComboBox3.Text:=combobox3.text;
      frmqnsum.Edit1.text:=edit1.text;
      frmqnsum.Edit2.Text:=edit2.text;
      frmqnsum.DateEdit1.Date:=dateedit1.date;
      frmqnsum.DateEdit2.Date:=dateedit1.date;
      with frmqnsum.Query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select cfm from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null) and cfm=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
        if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
      end;
      with frmqnsum.query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        params.createparam(ftstring,'x8',ptinput);
        commandtext:='execute procedure sp_pdn_deldashboard_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox1.text;
        params[2].asstring:=combobox2.text;
        params[3].asdate:=dateedit1.date;
        params[4].asdate:=dateedit1.date;
        params[5].asstring:=combobox3.text;
        params[6].asstring:=edit1.text;
        params[7].asstring:=edit2.text;
        execute;
      end;
      with frmqnsum.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_deldashboard where tm=:x1 order by j_no,cstyle,j2_job,rwo,pline,seq';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmqnsum.Query6 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct substr(j_no,1,4) as j_no,flag6,cstyle,sum(diff) as qty from line_shjs where dt1>=:x1 and dt1<=:x2 and flag=''0''';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
        if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        commandtext:=commandtext+' group by j_no,flag6,cstyle order by j_no,flag6,cstyle';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
      end;
      with frmqnsum.Query7 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct flag6,cstyle,sum(diff) as qty from line_shjs where dt1>=:x1 and dt1<=:x2 and flag=''0''';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
        if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        commandtext:=commandtext+' group by flag6,cstyle order by flag6,cstyle';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
      end;
      with frmqnsum.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select * from line_shjs where dt1>=:x1 and dt1<=:x2 and flag=''0''';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox3.text>'' then commandtext:=commandtext+' and j_no like '''+combobox3.text+'%''';
        if edit1.text>'' then commandtext:=commandtext+' and cstyle='''+edit1.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and acol='''+edit2.text+'''';
        if combobox2.text>'' then
        commandtext:=commandtext+' order by tplant,pline,seq'
        else if combobox3.text>'' then
        commandtext:=commandtext+' order by tplant,j_no,cstyle,j2_job,acol,rwo,pline,seq';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit1.date;
        open;
        if combobox2.text>'' then
        frmqnsum.rpttitle.Caption:='LWPM - Workshop Delivery Dashboard (On-time / Lock Diff)'
        else if combobox3.text>'' then
        frmqnsum.rpttitle.Caption:='LWPM - Project Delivery Dashboard (On-time / Lock Diff)';
        if cfm=false then frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmation - incomplete *'
        else frmqnsum.rpttitle.Caption:=frmqnsum.rpttitle.Caption+'   * Confirmed *';
        frmqnsum.date001.caption:=dateedit1.Text;
        frmqnsum.wk01.Caption:=inttostr(weekof(dateedit1.date));
        if combobox3.text>'' then begin
          frmqnsum.wks001.Caption:='Customer '+combobox3.text;
          frmqnsum.ppSubReport2.Visible:=true;
        end else if combobox2.text>'' then begin
          frmqnsum.wks001.Caption:='Workshop '+combobox2.text;
          frmqnsum.ppSubReport2.Visible:=false;
        end;
        frmqnsum.ppReport1.Print;
      end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
