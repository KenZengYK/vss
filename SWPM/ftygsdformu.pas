unit ftygsdformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, ImgList,
  DBClient, GridsEh, DBGridEh, ComCtrls, StdCtrls, Spin, Buttons, ExtCtrls;

type
  Tfrmftygsd = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    TreeView1: TTreeView;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ImageList1: TImageList;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    fty001: TppLabel;
    ppLabel14: TppLabel;
    yr001: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine3: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel13: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    wk001: TppLabel;
    ppLabel36: TppLabel;
    wk002: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel65: TppLabel;
    ws001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape2: TppShape;
    ppLabel28: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    cust003: TppLabel;
    ppLabel63: TppLabel;
    ppLabel60: TppLabel;
    ppLabel64: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    xsah1: TppLabel;
    xsah2: TppLabel;
    xsah3: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    eff001: TppLabel;
    cu001: TppLabel;
    b001: TppLabel;
    k001: TppLabel;
    u001: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape3: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    wks001: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    eff002: TppLabel;
    cu002: TppLabel;
    b002: TppLabel;
    k002: TppLabel;
    u002: TppLabel;
    sah001: TppLabel;
    sah002: TppLabel;
    sah003: TppLabel;
    ppDBCalc12: TppDBCalc;
    sah0001: TppLabel;
    cu0001: TppLabel;
    eff0001: TppLabel;
    ppLabel66: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    rwf001: TppLabel;
    rsah001: TppLabel;
    rsah002: TppLabel;
    rlst001: TppLabel;
    reff001: TppLabel;
    wf001: TppLabel;
    query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure show_data;
  end;

var
  frmftygsd: Tfrmftygsd;

implementation

uses mainformu, newcapformu;

{$R *.dfm}

procedure Tfrmftygsd.ComboBox1Change(Sender: TObject);
var
  tn1,tn2,tn3:TTreeNode;
begin
  if combobox1.text>'' then begin
    treeview1.Items.clear;
    tn1:=treeview1.Items.Add(nil,combobox1.text);
    tn1.ImageIndex:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct tshop from tblline where tplant='''+combobox1.text+''' and tshop>'''' and lactive=1';
      open;
      first;
      while not eof do begin
        tn2:=treeview1.Items.AddChild(tn1,fieldbyname('tshop').value);
        tn2.ImageIndex:=1;
        with query3 do begin
          close;
          params.clear;
          commandtext:='select distinct pline from tblline where tplant='''+combobox1.text+''' and tshop='''+query2.fieldbyname('tshop').value+''' and lactive=1';
          open;
          first;
          while not eof do begin
            tn3:=treeview1.Items.addchild(tn2,fieldbyname('pline').value);
            tn3.ImageIndex:=2;
            application.ProcessMessages;
            next;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.Items.GetFirstNode;
  end;
end;

procedure Tfrmftygsd.FormShow(Sender: TObject);
begin
  combobox1.OnChange(self);
end;

procedure Tfrmftygsd.show_data;
begin
  screen.Cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='execute procedure sp_cap_updgsd(:x1)';
    params[0].AsInteger:=spinedit1.Value;
    execute;
  end;
  if treeview1.Selected<>nil then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_fty where tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
      if treeview1.Selected.Level=1 then commandtext:=commandtext+' and tshop='''+treeview1.Selected.Text+'''';
      if treeview1.Selected.Level=2 then commandtext:=commandtext+' and pline='''+treeview1.Selected.Text+'''';
      commandtext:=commandtext+' and wk>='+inttostr(spinedit2.Value)+' and wk<='+inttostr(spinedit3.Value);
      open;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmftygsd.SpinEdit1Change(Sender: TObject);
begin
  show_data;
end;

procedure Tfrmftygsd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmftygsd:=nil;
end;

procedure Tfrmftygsd.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  show_data;
end;

end.
