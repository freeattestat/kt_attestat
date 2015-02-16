unit studentunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, StdCtrls, JvExStdCtrls, JvCombobox,
  JvEdit, ExtCtrls, Grids, JvgStringGrid, Buttons, ActnList,
  XPStyleActnCtrls, ActnMan,sharedtypes, ActnColorMaps, ImgList, ToolWin,
  ActnCtrls, TB2Item, TBX, TB2Dock, TB2Toolbar, TBXGraphics,DataTypesUnit;
Const
kl:array[0..3] of string=('K','N','S','O');  
type
  TStudentsForm = class(TForm)
    AllTab: TPageControl;
    StudentTab: TTabSheet;
    Label1: TLabel;
    edtbirth_date: TJvDatePickerEdit;
    Label4: TLabel;
    edtFIO: TJvEdit;
    edtdiplom_sn: TJvEdit;
    Label6: TLabel;
    Label2: TLabel;
    edtdat_FIO: TJvEdit;
    edtdiplom_dublikat: TCheckBox;
    UzInYear: TJvEdit;
    Label27: TLabel;
    edtvid_date: TJvDatePickerEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    ActionManager1: TActionManager;
    AddItem: TAction;
    DeleteItem: TAction;
    UpItem: TAction;
    DownItem: TAction;
    DiscTab: TTabSheet;
    DiscGrid: TStringGrid;
    SprShow: TAction;
    Timer1: TTimer;
    Panel6: TPanel;
    TemplNameEdit: TEdit;
    Label30: TLabel;
    Button8: TButton;
    Shape4: TShape;
    MarkTab: TTabSheet;
    TBImageList1: TTBImageList;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem8: TTBXItem;
    MarkListGrid: TStringGrid;
    Shape7: TShape;
    Label32: TLabel;
    Button10: TButton;
    Button11: TButton;
    TBXImageList1: TTBXImageList;
    OKAction: TAction;
    DopSvTab: TTabSheet;
    DopSvMemo: TMemo;
    Label33: TLabel;
    edtSex: TComboBox;
    Label34: TLabel;
    Panel2: TPanel;
    StaticText1: TMemo;
    edtdiplom_otl: TCheckBox;
    lbl1: TLabel;
    procedure VKRMemoEnter(Sender: TObject);
    procedure VKRMemoExit(Sender: TObject);
    procedure edtFIOExit(Sender: TObject);
    procedure edtFIOChange(Sender: TObject);
    procedure DYearEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AddItemExecute(Sender: TObject);
    procedure DeleteItemExecute(Sender: TObject);
    procedure DiscTabShow(Sender: TObject);
    procedure KursGridSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure KursGridKeyPress(Sender: TObject; var Key: Char);
    procedure DiscGridKeyPress(Sender: TObject; var Key: Char);
    procedure DiscGridGetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure DiscGridSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure UpItemExecute(Sender: TObject);
    procedure DownItemExecute(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StudentTabShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StudentTabHide(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure KursGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure AllTabDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure UzInYearExit(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure OKActionExecute(Sender: TObject);
    procedure edtSexChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   discheaderaliases:TStringList;






    discadapt:TDPLStringGridAdapter;


    notesadapt:TDPLMemoAdapter;

    marksadapt:TDPLStringGridAdapter;
 

    stud:TStudent;
    studad:TDPLControlAdapter;
    currentmode:integer;
    kurrentgrid:tstringgrid;
    oldvalue:string;
     currentadapt:TDPLStringGridAdapter;
    procedure clearvalues;
    procedure getvalues(st:tsettings);
    procedure setvalues(st:tsettings;auto:boolean);
    procedure setmarkval(st:tsettings);
    procedure getmarkval(st:tsettings);
    procedure setmode(mode:integer;progmode:integer);
    procedure setdefaultmarks;
    procedure setdefaultvsti;
    procedure ApplyTemplate(overridemarks:boolean);
    procedure showhelphint(sender:TObject);
//    procedure setcurrenttmarks;
//    procedure setdefaultvsti;
   procedure buildlink(sg: TStringGrid;
  var sa: TDPLStringGridAdapter; ol: TDPLObjectList; ha: TStringList);
  procedure gaActivate(sender: TObject);
  end;

var
  StudentsForm: TStudentsForm;
Function GetSex(pFIO: PChar):Integer; stdcall; external
                         'padeg.dll' Name 'GetSex';

implementation

uses  mainunit, FilePropUnit,  menus, CHMUnit;

{$R *.dfm}

    procedure TStudentsForm.showhelphint(sender:TObject);
    begin
    if self.currentmode=stfStudent then
 self.StaticText1.Text:=copy(TTabSheet(sender).Hint,1,pos('|',TTabSheet(sender).Hint)-1) else self.StaticText1.Text:=copy(TTabSheet(sender).Hint,pos('|',TTabSheet(sender).Hint)+1,length(TTabSheet(sender).Hint)-pos('|',TTabSheet(sender).Hint));
    end;

procedure TStudentsForm.buildlink(sg: TStringGrid;
  var sa: TDPLStringGridAdapter; ol: TDPLObjectList; ha: TStringList);
begin
 
  sa:=TDPLStringGridAdapter.create(ol);
  sa.applyheaderaliases(ha);
  sa.bindgrid(sg);
  sa.OnActivate:=self.gaActivate;
end;
procedure TStudentsForm.gaActivate(sender: TObject);
begin
if sender is TDPLStringGridAdapter then
begin
  self.currentadapt:=TDPLStringGridAdapter(sender);
end;
end;

procedure TStudentsForm.setdefaultmarks;
var i:integer;
s:string;
begin
for i:=1 to 8 do
begin
self.MarkListGrid.Cells[0,i]:=inttostr(i+1)+'.';
s:=mainform.DefMarksList[i-1];
self.MarkListGrid.Cells[1,i]:=trim(copy(s,pos(' ',s)+1,length(s)-pos(' ',s)));

end;


end;
   procedure TStudentsForm.ApplyTemplate(overridemarks:boolean);
   var st,curst:tsettings;
   i,t:integer;
   begin
   st:=tsettings.Create;
st.LoadFromFile(mainform.MainSettings.Settings.Values[templatepath]+'\'+mainform.FileSettings.Settings.Values['templ']+'.dtmpl','student');
curst:=TSettings.Create;
self.getvalues(curst);
try
if not overridemarks then
begin
for t:=1 to strtoint(st.Settings.values['DiscCount']) do
begin
for i:=1 to strtoint(curst.Settings.Values['DiscCount']) do
begin
if st.Settings.Values['Disc_'+inttostr(t)+'_1']=curst.Settings.Values['Disc_'+inttostr(i)+'_1'] then
st.Settings.Values['Disc_'+inttostr(t)+'_4']:=curst.Settings.Values['Disc_'+inttostr(i)+'_4'];
end;
end;
end;

except
end;
studentsform.setvalues(st,false);

curst.Free;

st.Free;
   end;

procedure TStudentsForm.setdefaultvsti;
begin


end;
procedure TStudentsForm.setmarkval(st:tsettings);
var i:integer;
s:string;
begin
self.MarkListGrid.RowCount:=9;
for i:=1 to 8 do
begin
self.MarkListGrid.Cells[0,i]:=inttostr(i+1)+'.';
s:=st.Settings.Values['m'+inttostr(i+1)];
self.MarkListGrid.Cells[1,i]:=trim(copy(s,pos(' ',s)+1,length(s)-pos(' ',s)));

end;




//if self.MarkListGrid.Cells[1,1]='' then self.setdefaultmarks;
end;

procedure TStudentsForm.getmarkval(st:tsettings);
var i:integer;
begin
//self.MarkListGrid.RowCount:=9;
for i:=1 to 8 do
begin
st.Settings.Values['m'+inttostr(i+1)]:=self.MarkListGrid.Cells[0,i]+' '+self.MarkListGrid.Cells[1,i];
end;

//self.InIspGrid.RowCount:=4;


end;

procedure TStudentsForm.setmode(mode:integer;progmode:integer);
var i:integer;
begin

//self.PrimTab.Caption:='Дополнительные сведения';
self.StudentTab.Caption:='Выпускник';

self.discgrid.ColWidths[1]:=270;
self.discgrid.ColWidths[2]:=75;
self.discgrid.ColWidths[3]:=115;
self.discgrid.ColWidths[4]:=115;

self.currentmode:=mode;

case mode of
stfStudent:begin
self.Button8.Visible:=true;
if mainform.currentmode=1 then
begin
self.caption:='Карточка учащегося';
//self.PrimTab.Caption:='Дополнительные сведения';
//self.PrimGrid.
//self.primgrid.Cells[1,0]:='Сведения';
end else
begin
self.caption:='Карточка студента';
//self.PrimTab.Caption:='Примечания';
end;
self.MarkTab.TabVisible:=false;
self.Panel6.Hide;
for i:=1 to self.StudentTab.ControlCount do
begin
//if (self.StudentTab.Controls[i-1].Tag=1) and not ((self.StudentTab.Controls[i-1].Tag and (progmode*2))<>0) then self.StudentTab.Controls[i-1].Enabled:=true;
self.StudentTab.Controls[i-1].Enabled:=true;
self.StudentTab.Controls[i-1].visible:=true;
if ((self.StudentTab.Controls[i-1].Tag and (1 shl progmode))<>0) then
begin
self.StudentTab.Controls[i-1].Enabled:=false;
self.StudentTab.Controls[i-1].visible:=false;

end;
end;
if self.edtFIO.Text<>'' then self.Caption:=self.Caption+' - '+self.edtFIO.Text;
end;
stfTemplate:begin
self.MarkTab.TabVisible:=True;
self.Panel6.Show;
self.caption:='Редактирование шаблона';
self.Button8.Visible:=false;



for i:=1 to self.StudentTab.ControlCount do
begin
self.StudentTab.Controls[i-1].Enabled:=true;

if (self.StudentTab.Controls[i-1].Tag=1) then
begin
self.StudentTab.Controls[i-1].Enabled:=false;
//self.StudentTab.Controls[i-1].visible:=false;

end;
if ((self.StudentTab.Controls[i-1].Tag and (1 shl progmode))<>0) then
begin
self.StudentTab.Controls[i-1].Enabled:=false;
self.StudentTab.Controls[i-1].visible:=false;

end;

end;


end;

end;

//self.SexBox.Enabled:=false;

end;

procedure TStudentsForm.clearvalues;
var i:integer;
begin
for i:=1 to self.StudentTab.ControlCount do
begin
try
if (self.StudentTab.Controls[i-1] is TJvEdit) or
(self.StudentTab.Controls[i-1] is TMemo)then TEdit(self.StudentTab.Controls[i-1]).text:='';
if (self.StudentTab.Controls[i-1] is TjvDatePickerEdit) then TjvDatePickerEdit(self.StudentTab.Controls[i-1]).date:=now;
if (self.StudentTab.Controls[i-1] is TjvCombobox) then TjvCombobox(self.StudentTab.Controls[i-1]).itemindex:=-1;
if (self.StudentTab.Controls[i-1] is TCheckBox) then TCheckBox(self.StudentTab.Controls[i-1]).checked:=false;


except
end;
end;


self.DiscGrid.RowCount:=2;
for i:=1 to self.DiscGrid.ColCount-1 do
begin
self.DiscGrid.Cells[i,1]:='';
if i>1 then self.Discgrid.cells[i,1]:='0';
if i=self.Discgrid.ColCount-1 then self.Discgrid.cells[i,1]:='5';
end;



end;


procedure TStudentsForm.setvalues(st:Tsettings;auto:boolean);
var i,t,cc:integer;
curc:tcontrol;
curval:string;
begin
if (not auto) or (MainForm.MainSettings.Settings.Values['AutoLoadStudent']='1') then
begin
cc:=self.StudentTab.ControlCount;
for i:=1 to cc do
begin
try
curc:=self.StudentTab.Controls[i-1];
if not (curc is TLabel) then
begin
curval:=st.Settings.Values[curc.Name];
if (curval<>'') and not (curc is TCheckBox)  then
begin
if curc is TjvDatePickerEdit then
begin
         //datetimetostr(
TjvDatePickerEdit(curc).Date:=strtodatetime(curval);
end else
begin
Tedit(curc).text:=curval;
end;
end;
if  curc is tjvcombobox then tjvcombobox(self.StudentTab.Controls[i-1]).itemindex:=strtoint(curval);
if st.Settings.Values[curc.Name]<>'' then
begin

if curc is tcombobox then tcombobox(curc).itemindex:=tcombobox(curc).items.indexof(curval);
end;

if  curc is TCheckBox then  TCheckBox(curc).checked:=curval='1';
end;

except

//mainform.caption:='exc';
end;
end;
end;
//exit;





if (not auto) or (MainForm.MainSettings.Settings.Values['AutoDisc']='1') then
begin

try
self.DiscGrid.RowCount:=strtoint(st.Settings.Values['DiscCount'])+1;
for i:=1 to self.DiscGrid.RowCount-1 do
begin
self.DiscGrid.Cells[0,i]:=inttostr(i);
for t:=1 to self.DiscGrid.ColCount-1 do
begin
self.DiscGrid.Cells[t,i]:=st.Settings.Values['Disc_'+inttostr(i)+'_'+inttostr(t)];
end;
end;
if self.DiscGrid.RowCount<2 then
begin
self.DiscGrid.RowCount:=2;
self.DiscGrid.FixedRows:=1;
end;

except
end;
end;

if (not auto) or (MainForm.MainSettings.Settings.Values['AutoPrim']='1') then
begin

try



self.DopSvMemo.clear;
for i:=1 to strtoint(st.Settings.Values['PrimCount']) do
begin
self.DopSvMemo.Lines.Add(st.Settings.Values['Prim_'+inttostr(i)+'_1']);
end;


except
end;
end;


//
end;
procedure TStudentsForm.getvalues(st:tsettings);

begin

end;




procedure TStudentsForm.VKRMemoEnter(Sender: TObject);
begin
if sender is tmemo then Tmemo(sender).Height:=64;
end;

procedure TStudentsForm.VKRMemoExit(Sender: TObject);
begin
if sender is tmemo then Tmemo(sender).Height:=21;

end;

procedure TStudentsForm.edtFIOExit(Sender: TObject);
var i:integer;
s:string;
begin
if sender is TjvEdit then
begin
//if TEdit(sender).Text<>'' then TEdit(sender).Text:=ansiuppercase(copy(TEdit(sender).Text,1,1))+copy(TEdit(sender).Text,2,length(TEdit(sender).Text)-1);
//TEdit(sender).Text:=MakePadeg(TEdit(sender).Text,1,-1);
{s:=TEdit(sender).Text;
for i:=1 to length(s) do if (i=1) or (s[i-1] in [' ','_'])  then s[i]:=AnsiUpperCase(s[i])[1];
TEdit(sender).Text:=s;}
end;

end;

procedure TStudentsForm.edtFIOChange(Sender: TObject);
var sex,i,t:integer;
s:string;
upcases:array[1..1024] of boolean;
begin
sex:=self.edtSex.ItemIndex;
if sex=2 then sex:=-1;
s:=self.edtFIO.Text;
t:=1;
for i:=1 to length(s) do if (i=1) or (s[i-1] in [' ','_'])  then
begin

upcases[t]:=s[i]=AnsiUpperCase(s[i])[1];
inc(t);
end;
self.edtdat_FIO.Text:=MakePadeg(self.edtFIO.Text,3,sex);
s:=self.edtdat_FIO.Text;
t:=1;
for i:=1 to length(s) do if (i=1) or (s[i-1] in [' ','_'])  then
begin

if upcases[t] then s[i]:=AnsiUpperCase(s[i])[1] else s[i]:=AnsiLowerCase(s[i])[1];
inc(t);
end;
self.edtdat_FIO.Text:=s;

i:=GetSex(pchar(self.edtFIO.Text));
if i=0 then self.edtSex.itemindex:=0;
if i=1 then self.edtSex.itemindex:=1;
if i=-1 then self.edtSex.itemindex:=2;

//self.FIOEdit.Text:=MakePadeg(self.FIOEdit.Text,1);
end;

procedure TStudentsForm.DYearEditKeyPress(Sender: TObject; var Key: Char);
begin
if not (((key>='0') and (key<='9')) or (key<#32)) then key:=#0;
end;

procedure TStudentsForm.FormShow(Sender: TObject);
begin
self.AllTab.ActivePageIndex:=0;
self.showhelphint(self.AllTab.Pages[0]);
//self.StudentTab.SetFocus;
if self.edtFIO.Enabled then self.edtFIO.SetFocus;
//self.VKRBallEdit.Items.Assign(mainform.MarksList);
//self.GAKBallEdit.Items.Assign(mainform.MarksList);
//self.InIspGrid.ite
//if self.currentmode=stfStudent then self.Caption:='Карточка учащегося'
end;

procedure TStudentsForm.FormCreate(Sender: TObject);
var i:integer;
begin



self.discheaderaliases:=TStringList.Create;
self.discheaderaliases.Values['name']:='Наименование';
self.discheaderaliases.Values['ball']:='Оценка';
self.discheaderaliases.Values['zach_edinitsy_f']:='Зач. единицы';
self.discheaderaliases.Values['time_all']:='Всего';
self.discheaderaliases.Values['time_aud']:='Ауд.';


Self.stud:=TStudent.Create;


Self.buildlink(self.DiscGrid,self.discadapt,self.stud.disciplines,self.discheaderaliases);


self.buildlink(Self.MarkListGrid,self.marksadapt,self.stud.markslist,nil);


self.notesadapt:=TDPLMemoAdapter.create(self.stud.notes,'note');
self.notesadapt.bindmemo(self.DopSvMemo);



Self.studad:=TDPLControlAdapter.create(Self.stud);
self.studad.prefix:='edt';
self.studad.bindcontrol(self.StudentTab);

try
for i:=1 to self.AllTab.PageCount do
begin
self.AllTab.Pages[i-1].Hint:=GetTextFromCHM(extractfilepath(application.ExeName)+application.HelpFile,self.AllTab.Pages[i-1].HelpKeyword+'.htm');
self.AllTab.Pages[i-1].Hint:=self.AllTab.Pages[i-1].Hint+'|'+GetTextFromCHM(extractfilepath(application.ExeName)+application.HelpFile,self.AllTab.Pages[i-1].HelpKeyword+'_1.htm');
end;
self.MarkListGrid.ColWidths[0]:=40;
self.MarkListGrid.ColWidths[1]:=400;
self.MarkListgrid.Cells[0,0]:='Код';
self.MarkListgrid.Cells[1,0]:='Оценка';


self.discgrid.ColWidths[0]:=40;
self.discgrid.ColWidths[1]:=400;
self.discgrid.ColWidths[2]:=55;
self.discgrid.ColWidths[3]:=75;
self.discgrid.ColWidths[4]:=75;
self.discgrid.Cells[0,0]:='№ п/п';
self.discgrid.Cells[0,1]:='1';
self.discgrid.Cells[1,0]:='Наименование';
self.discgrid.Cells[2,0]:='Итог. оценка';
self.discgrid.Cells[3,0]:='Оценка за посл. год';
self.discgrid.Cells[4,0]:='Оценка (балл) за ЕГЭ';


except
end;

end;

procedure TStudentsForm.AddItemExecute(Sender: TObject);
var i,t:integer;
begin
if (self.kurrentgrid<>nil)  {and (not self.kurrentgrid.EditorMode)} then
begin
if self.kurrentgrid.EditorMode then self.kurrentgrid.EditorMode:=false;

self.kurrentgrid.RowCount:=self.kurrentgrid.RowCount+1;
self.kurrentgrid.Cells[0,self.kurrentgrid.RowCount-1]:=inttostr(self.kurrentgrid.RowCount-1);

for i:=self.kurrentgrid.RowCount-1 downto self.kurrentgrid.Selection.Top+1 do
begin
for t:=1 to self.kurrentgrid.ColCount-1 do
self.kurrentgrid.cells[t,i]:=self.kurrentgrid.cells[t,i-1];
end;

for i:=1 to self.kurrentgrid.ColCount-1 do
begin
self.kurrentgrid.cells[i,self.kurrentgrid.Selection.Top+1]:='';
if i>1 then self.kurrentgrid.cells[i,self.kurrentgrid.Selection.Top+1]:='0';
if (i=self.kurrentgrid.ColCount-1) and (i>1) then self.kurrentgrid.cells[i,self.kurrentgrid.Selection.Top+1]:='5';
end;
self.kurrentgrid.Selection:=TgridRect(rect(self.kurrentgrid.Selection.Left,self.kurrentgrid.Selection.Top+1,self.kurrentgrid.Selection.Right,self.kurrentgrid.Selection.Top+1));

end;

end;

procedure TStudentsForm.DeleteItemExecute(Sender: TObject);
var i,t:integer;
begin
if (self.kurrentgrid<>nil) and (not self.kurrentgrid.EditorMode) then
begin
if messagebox(self.Handle,pchar('Вы действительно хотите удалить данную строку?'),pchar('Удаление'),MB_YESNO or MB_ICONQUESTION )<>IDYES	then exit;

for i:=self.kurrentgrid.Selection.Top+1 to self.kurrentgrid.RowCount-1 do
begin
for t:=1 to self.kurrentgrid.ColCount-1 do
self.kurrentgrid.cells[t,i-1]:=self.kurrentgrid.cells[t,i];

end;
if self.kurrentgrid.RowCount>2 then self.kurrentgrid.RowCount:=self.kurrentgrid.RowCount-1 else for t:=1 to self.kurrentgrid.ColCount-1 do self.kurrentgrid.cells[t,1]:='';

//self.
end;
end;

procedure TStudentsForm.DiscTabShow(Sender: TObject);
begin
self.showhelphint(sender);

kurrentgrid:=discgrid;
discgrid.SetFocus;
end;

procedure TStudentsForm.KursGridSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var val1:string;
begin


end;

procedure TStudentsForm.KursGridKeyPress(Sender: TObject; var Key: Char);
begin

if (TstringGrid(sender).Selection.Left=2) then
begin
if  (not (((key>='2') and (key<='8')) or (key<#32)))  then key:=#0;
if ((key>='2') and (key<='8')) then  TstringGrid(sender).Cells[TstringGrid(sender).Selection.Left,TstringGrid(sender).Selection.Top]:='';
end;


end;

procedure TStudentsForm.DiscGridKeyPress(Sender: TObject; var Key: Char);
begin

{if (TstringGrid(sender).Selection.Left=4) then
begin
if  (not (((key>='1') and (key<='9')) or (key<#32)))  then key:=#0;
if ((key>='1') and (key<='9')) then  TstringGrid(sender).Cells[TstringGrid(sender).Selection.Left,TstringGrid(sender).Selection.Top]:='';
end;}

if (TstringGrid(sender).Selection.Left=2) or (TstringGrid(sender).Selection.Left=3) then
begin
//if  (not (((key>='0') and (key<='9')) or (key<#32)))  then key:=#0;
if  (not (((key>='1') and (key<='9')) or (key<#32)))  then key:=#0;
if ((key>='1') and (key<='9')) then  TstringGrid(sender).Cells[TstringGrid(sender).Selection.Left,TstringGrid(sender).Selection.Top]:='';

end;


end;

procedure TStudentsForm.DiscGridGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
oldvalue:=TStringGrid(sender).Cells[acol,arow];
//self.ActionManager1.State:=asSuspended;
end;

procedure TStudentsForm.DiscGridSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
  var intval:integer;
begin
if (ACol>1) and (ACol<4) then
begin
try
if value<>'' then intval:=strtoint(value);
if (acol=TstringGrid(sender).ColCount-1) and (not ((intval>=0) and (intval<=9)))  then TStringGrid(sender).Cells[acol,arow]:=oldvalue;

except
TStringGrid(sender).Cells[acol,arow]:=oldvalue;
end;
//if ACol=4 then if value='' then TStringGrid(sender).Cells[acol,arow]:=value;

end;
//self.ActionManager1.State:=asNormal;

end;

procedure TStudentsForm.UpItemExecute(Sender: TObject);
var s:string;
i:integer;
begin
if self.kurrentgrid<>nil then
begin
if self.kurrentgrid.Selection.Top>1 then
begin
for i:=1 to self.kurrentgrid.ColCount-1 do
begin
s:=self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top];
self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top]:=self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top-1];
self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top-1]:=s
end;
 self.kurrentgrid.Selection:=TgridRect(rect(self.kurrentgrid.Selection.Left,self.kurrentgrid.Selection.Top-1,self.kurrentgrid.Selection.Right,self.kurrentgrid.Selection.Top-1));

end;
end;
end;

procedure TStudentsForm.DownItemExecute(Sender: TObject);
var s:string;
i:integer;
begin
if self.kurrentgrid<>nil then
begin
if self.kurrentgrid.Selection.Top<self.kurrentgrid.RowCount-1 then
begin
for i:=1 to self.kurrentgrid.ColCount-1 do
begin
s:=self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top];
self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top]:=self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top+1];
self.kurrentgrid.Cells[i,self.kurrentgrid.selection.top+1]:=s
end;
self.kurrentgrid.Selection:=TgridRect(rect(self.kurrentgrid.Selection.Left,self.kurrentgrid.Selection.Top+1,self.kurrentgrid.Selection.Right,self.kurrentgrid.Selection.Top+1));


end;
end;
end;

procedure TStudentsForm.Button3Click(Sender: TObject);
begin
//self.DocMemo.Text:=spravform.getspravinfo('DOCS_D');
//spravform.showmodal;

end;

procedure TStudentsForm.StudentTabShow(Sender: TObject);
begin
self.showhelphint(sender);

self.kurrentgrid:=nil;
self.AddItem.Enabled:=false;
self.DeleteItem.Enabled:=false;

//GetTextFromCHM(extractfilepath(application.ExeName)+'AttestatExpress.chm','General.htm')
end;

procedure TStudentsForm.Timer1Timer(Sender: TObject);
begin
if (self.kurrentgrid<>nil) and self.kurrentgrid.EditorMode then
begin
//self.ActionManager1.State:=asSuspended
self.AddItem.ShortCut:=0;
self.DeleteItem.ShortCut:=0;

end else
begin
//self.ActionManager1.State:=asNormal;
self.AddItem.ShortCut:=TextToShortCut('Ins');
self.DeleteItem.ShortCut:=TextToShortCut('Del');
end;

end;

procedure TStudentsForm.StudentTabHide(Sender: TObject);
begin
self.AddItem.Enabled:=true;
self.DeleteItem.Enabled:=true;


end;

procedure TStudentsForm.Button8Click(Sender: TObject);
var i:integer;
st:tsettings;
begin
{st:=tsettings.Create;
st.LoadFromFile(mainform.MainSettings.Settings.Values[templatepath]+'\'+mainform.FileSettings.Settings.Values['templ']+'.dtmpl','student');
studentsform.setvalues(st,false);
st.Free;
}
self.ApplyTemplate(false);


end;

procedure TStudentsForm.KursGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var texth,textw,cellh,cellw:integer;
begin
texth:=TStringGrid(sender).Canvas.TextHeight(TStringGrid(sender).Cells[ACol,ARow]);
textw:=TStringGrid(sender).Canvas.TextWidth(TStringGrid(sender).Cells[ACol,ARow]);
cellw:=rect.Right-rect.Left;
cellh:=rect.Bottom-rect.Top;
TStringGrid(sender).Canvas.Pen.Style:=psSolid;

if state=[gdFixed] then
begin
TStringGrid(sender).Canvas.Brush.Color:=clBtnFace;
TStringGrid(sender).Canvas.Pen.Color:=clBtnFace;
TStringGrid(sender).Canvas.Rectangle(rect);
TStringGrid(sender).Canvas.TextOut(rect.Left+2,rect.Top+2,TStringGrid(sender).Cells[ACol,ARow]);
end else
begin
TStringGrid(sender).Canvas.Brush.Color:=clWindow;
TStringGrid(sender).Canvas.Pen.Color:=clWindow;
TStringGrid(sender).Canvas.Rectangle(rect);
TStringGrid(sender).Canvas.TextOut(rect.Left+2,rect.Top+2,TStringGrid(sender).Cells[ACol,ARow]);
if gdSelected in state   then
begin
//TStringGrid(sender).Canvas.Pen.Style:=psDot;
//TStringGrid(sender).Canvas.Pen.Color:=clWindowText;
drawfocusrect(TStringGrid(sender).Canvas.Handle,rect);
end;




end;
TStringGrid(sender).Canvas.Pen.Style:=psSolid;


end;

procedure TStudentsForm.AllTabDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
  var dx,dy,i,t:integer;
  s:string;
begin
control.Canvas.Brush.Color:=clBtnFace;
control.Canvas.Pen.Color:=clBtnFace;
control.Canvas.Rectangle(rect);
dx:=2;
dy:=2;
if active then
begin
dx:=6;
dy:=4;
end;
t:=0;
s:='';
for i:=0 to TPageControl(control).PageCount-1 do
begin
if (t=TabIndex) and (s='') and (TPageControl(control).Pages[i].TabVisible) then s:=TPageControl(control).Pages[i].Caption;
if TPageControl(control).Pages[i].TabVisible then inc(t);
end;
control.Canvas.TextOut(rect.Left+dx,rect.Top+dy,s);

end;

procedure TStudentsForm.UzInYearExit(Sender: TObject);
begin
if TEdit(sender).text='' then TEdit(sender).text:='1900';
end;

procedure TStudentsForm.Button10Click(Sender: TObject);
begin
self.setdefaultmarks;
end;

procedure TStudentsForm.Button9Click(Sender: TObject);
begin
self.setdefaultvsti;
end;

procedure TStudentsForm.Button11Click(Sender: TObject);
begin
self.MarkTab.Visible:=not self.MarkTab.Visible;
end;

procedure TStudentsForm.OKActionExecute(Sender: TObject);
begin
self.Button1.Click;
end;

procedure TStudentsForm.edtSexChange(Sender: TObject);
var sex:integer;
begin
sex:=self.edtSex.ItemIndex;
if sex=2 then sex:=-1;
Self.edtdat_FIO.Text:=MakePadeg(self.edtFIO.Text,3,sex);


end;

end.
