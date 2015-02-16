unit mainunit;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, Menus, ExtCtrls, ComCtrls, XPStyleActnCtrls,
  ActnList, ActnMan, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,studentunit,
   StdCtrls, Grids, DBGrids, JvgDBGrid,inifiles,sharedtypes,
  frxClass, frxDBSet,dateutils, ImgList, ActnColorMaps, ToolWin, ActnCtrls,
  ActnMenus, StdStyleActnCtrls,TBXOfficeXPTheme,TBXThemes, TBXGraphics,
  TB2Item, TBX, TBXSwitcher, TB2Dock, TB2Toolbar,TBXOffice2003Theme,
  frxDesgn, JvComponentBase, JvCSVBaseControls,registry,IdHashMessageDigest,
  JvExComCtrls, JvListView,stohtmlhelp, XPMan, frxExportXLS;
const

templatepath='templatepath';
mcaptions:array[1..5] of string = ('Журнал класса','Журнал группы СПО (академические справки)','Журнал группы СПО (дипломы)','Журнал группы ВПО (академические справки)','Журнал группы ВПО (дипломы)');
months:array [1..12] of string=('января','февраля','марта','апреля','мая','июня','июля','августа','сентября','октября','ноября','декабря');
blanks:array [-1..22] of string=(
'Корректор',
'Титул аттестата',   //1
'pril_spo',   // 2
'pril_vo',      //3
'pril_npo',      //4
'disc_list',     // 5
'akad_sprav_vo',  // 6
'diplom_vo',      //  7
'diplom_nepoln_vo',  //8
'pril_nepoln_vo',     //9
'diplom_so',           //10
'diplom_npo',            //11
'svid_ur_kval',            //12
'pril_svid_ur',              //13
'tabl_disc',                   //14
'akad_sprav_spo',                //15
'Приложение к аттестату обратная сторона',       //16
'Приложение к аттестату лицевая сторона',     //17
'Свидетельство об окончании коррекционного класса',           //18
'Свидетельство об окончании коррекционной школы',           //19
'Контрольный черновик',           //20
'Книга учета и записи выданных аттестатов',
'Список выпускников',
'Справка об обучении в образовательном учреждении'
);

blanknames: array [0..6] of string=(
'Титул аттестата об основном общем и среднем (полном) общем образовании',
'Приложение к аттестату об основном общем и среднем (полном) общем образовании (лицевая сторона)',
'Приложение к аттестату об основном общем и среднем (полном) образовании (обратная сторона)',
'Свидетельство об окончании коррекционного класса',
'Свидетельство об окончании коррекционной школы',
'Контрольный черновик',
'Справка об обучении в образовательном учреждении'
);

blankindexes: array[0..6] of integer=(0,16,15,17,18,19,22);
type
  TMainForm = class(TForm)
    MainConnection: TZConnection;
    ActionManager1: TActionManager;
    ListView1: TListView;
    StatusBar1: TStatusBar;
    FileNew: TAction;
    FileOpen: TAction;
    FileClose: TAction;
    FileExit: TAction;
    StudentCreate: TAction;
    StudentEdit: TAction;
    StudentDelete: TAction;
    SpecEdit: TAction;
    SaveDialog1: TSaveDialog;
    ZQuery1: TZQuery;
    OpenDialog1: TOpenDialog;
    ZQuery2: TZQuery;
    frxReport1: TfrxReport;
    Student: TfrxDBDataset;
    FileProperties: TAction;
    Settings: TAction;
    frxUserDataSet1: TfrxUserDataSet;
    attestat: TAction;
    attestat_pril: TAction;
    frxUserDataSet4: TfrxUserDataSet;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXSwitcher1: TTBXSwitcher;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXSubmenuItem5: TTBXSubmenuItem;
    TBXSubmenuItem6: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem6: TTBXItem;
    TBXItem7: TTBXItem;
    TBXItem20: TTBXItem;
    TBXItem21: TTBXItem;
    TBXItem24: TTBXItem;
    TBXItem25: TTBXItem;
    TBXItem26: TTBXItem;
    TBXItem27: TTBXItem;
    TBXItem28: TTBXItem;
    TBXToolbar2: TTBXToolbar;
    TBXItem29: TTBXItem;
    TBXItem30: TTBXItem;
    TBXItem31: TTBXItem;
    FileSave: TAction;
    FileSaveAs: TAction;
    TBImageList1: TTBImageList;
    TBXItem35: TTBXItem;
    AboutAction: TAction;
    TBXItem36: TTBXItem;
    TBXItem37: TTBXItem;
    TBXItem38: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem32: TTBXItem;
    TBImageList2: TTBImageList;
    TBXImageList1: TTBXImageList;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSubmenuItem7: TTBXSubmenuItem;
    TBXItem51: TTBXItem;
    TBXItem52: TTBXItem;
    Action17: TAction;
    Action18: TAction;
    frxDesigner1: TfrxDesigner;
    TBXDock2: TTBXDock;
    Registry: TAction;
    TBXItem53: TTBXItem;
    TBXPopupMenu1: TTBXPopupMenu;
    TBXItem54: TTBXItem;
    TBXItem55: TTBXItem;
    TBXItem56: TTBXItem;
    frxDBDataset1: TfrxDBDataset;
    TBXSubmenuItem8: TTBXSubmenuItem;
    Export2Dbf: TAction;
    TBXSubmenuItem9: TTBXSubmenuItem;
    TBXItem73: TTBXItem;
    SaveDialog2: TSaveDialog;
    students_list: TAction;
    TBXItem74: TTBXItem;
    frxDBDataset2: TfrxDBDataset;
    CsvExport: TAction;
    SaveDialog3: TSaveDialog;
    ImportCSV: TAction;
    TBXItem75: TTBXItem;
    TBXSubmenuItem10: TTBXSubmenuItem;
    TBXItem76: TTBXItem;
    OpenDialog2: TOpenDialog;
    ExportCSVFio: TAction;
    TBXItem77: TTBXItem;
    attestat_obr: TAction;
    Action13: TAction;
    TBXItem78: TTBXItem;
    TBXItem79: TTBXItem;
    TBXItem63: TTBXItem;
    TBXItem64: TTBXItem;
    TBXItem80: TTBXItem;
    TBXItem81: TTBXItem;
    ImportCSVDF: TAction;
    TBXItem82: TTBXItem;
    TBXItem83: TTBXItem;
    Action15: TAction;
    Action19: TAction;
    Action20: TAction;
    Action21: TAction;
    TBXItem84: TTBXItem;
    TBXItem85: TTBXItem;
    TBXItem86: TTBXItem;
    TBXItem87: TTBXItem;
    TBXItem88: TTBXItem;
    Help: TAction;
    TBXItem89: TTBXItem;
    ZQuery3: TZQuery;
    TBXItem90: TTBXItem;
    Action22: TAction;
    TBXItem91: TTBXItem;
    TBXItem92: TTBXItem;
    Action23: TAction;
    TBXItem93: TTBXItem;
    Action25: TAction;
    TBXItem94: TTBXItem;
    ExportToIni: TAction;
    TBXItem95: TTBXItem;
    Action26: TAction;
    TBXItem96: TTBXItem;
    Action27: TAction;
    TBXItem97: TTBXItem;
    TBXItem98: TTBXItem;
    Action28: TAction;
    TBXItem99: TTBXItem;
    Action29: TAction;
    TBXItem100: TTBXItem;
    KorrectorAction: TAction;
    TBXItem8: TTBXItem;
    XPManifest1: TXPManifest;
    Panel1: TPanel;
    StaticText1: TMemo;
    Action1: TAction;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;

    procedure FileNewExecute(Sender: TObject);
    procedure FileExitExecute(Sender: TObject);
    procedure OpenDatabase(FileName:string);
    procedure FileOpenExecute(Sender: TObject);
    procedure StudentCreateExecute(Sender: TObject);
    procedure _FormCreate(Sender: TObject);
    procedure SpecEditExecute(Sender: TObject);
    procedure ListView1Data(Sender: TObject; Item: TListItem);
    procedure StudentEditExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure FileCloseExecute(Sender: TObject);
    procedure StudentDeleteExecute(Sender: TObject);
    procedure FilePropertiesExecute(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure PrintDVOExecute(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure SettingsExecute(Sender: TObject);
    procedure Pril_voExecute(Sender: TObject);
    procedure frxUserDataSet1First(Sender: TObject);
    procedure frxUserDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure frxUserDataSet1Next(Sender: TObject);
    procedure frxUserDataSet1Prior(Sender: TObject);
    procedure frxUserDataSet1GetValue(const VarName: String;
      var Value: Variant);
    procedure DiscListPrintExecute(Sender: TObject);
    procedure frxUserDataSet4First(Sender: TObject);
    procedure frxUserDataSet4Next(Sender: TObject);
    procedure frxUserDataSet4Prior(Sender: TObject);
    procedure frxUserDataSet4GetValue(const VarName: String;
      var Value: Variant);
    procedure dvo_nepolnExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FileSaveExecute(Sender: TObject);
    procedure FileSaveAsExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AboutActionExecute(Sender: TObject);
    procedure dvo_nepoln_prilExecute(Sender: TObject);
    procedure AkSprVuzExecute(Sender: TObject);
    procedure dipl_spoExecute(Sender: TObject);
    procedure npo_diplExecute(Sender: TObject);
    procedure svid_urkvExecute(Sender: TObject);
    procedure spo_prilExecute(Sender: TObject);
    procedure npo_prilExecute(Sender: TObject);
    procedure svid_urkExecute(Sender: TObject);
    procedure tabl_discExecute(Sender: TObject);
    procedure spavka_spoExecute(Sender: TObject);
    procedure attestat_prilExecute(Sender: TObject);
    procedure attestatExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure RegistryExecute(Sender: TObject);
    procedure Export2DbfExecute(Sender: TObject);
    procedure frxReport1BeginDoc(Sender: TObject);
    procedure students_listExecute(Sender: TObject);
    procedure CsvExportExecute(Sender: TObject);
    procedure ExportCSVFioExecute(Sender: TObject);
    procedure attestat_obrExecute(Sender: TObject);
    procedure ImportCSVExecute(Sender: TObject);
    procedure ImportCSVDFExecute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HelpExecute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
    procedure ExportToIniExecute(Sender: TObject);
    procedure Action26Execute(Sender: TObject);
    procedure frxReport1EndDoc(Sender: TObject);
    procedure ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure ListView1ColumnClick(Sender: TObject; Column: TListColumn);
    procedure Action27Execute(Sender: TObject);
    procedure Action29Execute(Sender: TObject);
    procedure Action30Execute(Sender: TObject);
    procedure KorrectorActionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   // ListSort:string;
    MainSettings,FileSettings:TSettings;
    MarksList,DefMarksList,VstIspList,DefVstIspList:TstringList;
    rn,discpos,kurspos,practpos,primpos,gospos:integer;
    databasepath:string;
    currentmode:integer;
    csvfio,showZ,showZdop:boolean;
    pt:tsettings;
    //rs:TResourceStream;
    function GetBlankName(id:integer):string;
    function GetBackBlankName(id:integer):string;
    procedure refreshtable;
    procedure openStudentIntoForm(var id:string;recno:integer);
    function closedatabase(query:boolean):boolean;
    procedure updatevisibledocs;
    procedure docsvexport;
    procedure updatemarkslist;
    procedure DoImportCSV(filename:string;fiofl:boolean);
    procedure setfileproperties(props:tSettings);
    procedure getfileproperties(props:tSettings);
    procedure PrintDoc(filename:string);
    procedure SaveStudent(id:string;st:tsettings);
    procedure ShowwFrom;
  end;

var
  MainForm: TMainForm;

  procedure getDirectoryList(dir:string;mask:string;list:TStrings);
function MakePadeg(cFIO: String; nPadeg,sex: Integer): String;
function GetTempDir: String;
implementation

uses TemplateUnit, FilePropUnit, SettingsUnit, AboutUnit, FileNewUnit,
  RegUnit, ExportUnit, WizardUnit, SplashForm, HelpUnit, regkeyinst,
  splashpic, SimpleDesigner, KorrectorUnit,CHMUnit, SKERegistrationUnit;//, aspr_api;

{$R *.dfm}
//{$R textres.res}

function quotestring(s:string):string;
var i:integer;
begin
result:='';
for i:=1 to length(s) do
begin
if (s[i]>=#32) and (s[i]<>',') and (s[i]<>'%') then
begin
result:=result+s[i];
end else
begin
result:=result+'%'+format('%.4d',[ord(s[i])]);
end;
end;
end;


function unquotestring(s:string):string;
var i:integer;
begin
result:='';

i:=1;
while i<=length(s) do
begin
if (s[i]<>'%') then
begin
result:=result+s[i];
inc(i);
end else
begin
result:=result+chr(strtoint(copy(s,i+1,4)));
inc(i,5);
end;
end;
end;

function TMainForm.GetBlankName(id:integer):string;
var r:tregistry;
path:string;
begin
r:=TreGistry.Create;
try
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKey('Software',false);
r.OpenKey('ARMRegistr',false);
r.OpenKey('AttestatExpress',false);
path:=r.ReadString('UserDataPath');
except
path:=extractfilepath(application.ExeName);
end;

path:=path+'Blanks\'+blanks[id]+'.fr3';
result:=path;
r.Free;
end;

function TMainForm.GetBackBlankName(id:integer):string;
var r:tregistry;
path:string;
begin
r:=TreGistry.Create;
try
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKey('Software',false);
r.OpenKey('ARMRegistr',false);
r.OpenKey('AttestatExpress',false);
path:=r.ReadString('UserDataPath');
except
path:=extractfilepath(application.ExeName);
end;

path:=path+'Blanks\Defaults\'+blanks[id]+'.fr3';
result:=path;
r.Free;
end;
procedure TMainForm.PrintDoc(filename:string);
var id:string;
i:integer;
clearreport,anypage,already_printed:boolean;
begin
if self.frxReport1.LoadFromFile(filename) then
begin
clearreport:=true;

already_printed:=false;
for i:=1 to self.ListView1.Items.Count do
begin

if self.ListView1.Items[i-1].Checked then
begin
//self.ZQuery1.RecNo:=i;

self.openStudentIntoForm(id,i);

self.frxReport1.ReportOptions.Name:='Предварительный просмотр - '+studentsform.edtFIO.Text;

self.frxReport1.PrepareReport(clearreport);

clearreport:=false;
already_printed:=true;
end;

end;
if not already_printed then
begin
for i:=1 to self.ListView1.Items.Count do
begin

if self.ListView1.Items[i-1].selected then
begin
//self.ZQuery1.RecNo:=i;

self.openStudentIntoForm(id,i);

self.frxReport1.ReportOptions.Name:='Предварительный просмотр - '+studentsform.edtFIO.Text;

self.frxReport1.PrepareReport(clearreport);

clearreport:=false;

end;
end;

end;


if not clearreport then self.frxReport1.ShowPreparedReport();
end else showmessage('Файл "'+filename+'" не найден, переустановите приложение');
end;

function GetFIOPadegFSAS(pFIO: PChar; nPadeg: LongInt; pResult: PChar; var
                         nLen: LongInt):Integer; stdcall; external
                         'padeg.dll' Name 'GetFIOPadegFSAS';
function GetFIOPadegFS(pFIO: PChar; bSex: Boolean; nPadeg: LongInt;
                      pResult: PChar; var nLen: LongInt):Integer; stdcall; external
                         'padeg.dll' Name 'GetFIOPadegFS';



function MakePadeg(cFIO: String; nPadeg,sex: Integer): String;
var
  tmpS   : PChar;
  nLen   : LongInt;
  RetVal : Integer;
  bsex:boolean;
begin
  Result := '';
  nLen := Length(cFIO) + 10; // размер буфера под результат преобразования
  tmpS := StrAlloc(nLen);    // распределение памяти под результат
  try
  if sex=-1 then
  begin
    RetVal := GetFIOPadegFSAS(PChar(cFIO), nPadeg, tmpS, nLen);
    end else
    begin
    RetVal := GetFIOPadegFS(PChar(cFIO),sex=1, nPadeg, tmpS, nLen);

    end;

    // проверим возвращенное значения.
    if RetVal=-1 then
      ShowMessage('Недопустимое значение падежа - ' + IntToStr(nPadeg))
    else
      Result := Copy(tmpS, 1, nLen);
  finally
    StrDispose(tmpS); // освобождение выделенной памяти
  end;
end;


function GetTempDir: String;
var
  Buf: array[0..1023] of Char;
begin
  SetString(Result, Buf, GetTempPath(Sizeof(Buf)-1, Buf));
end;


function md5(s: string): string;
begin
  Result := '';
  with TIdHashMessageDigest5.Create do
  try
    Result := AnsiLowerCase(AsHex(HashValue(s)));
  finally
    Free;
  end;
end;

function escapestring(s:string):string;
const slchars='"';
var i:integer;
begin
result:='';
for i:=1 to length(s) do
begin
if pos(s[i],slchars)>0 then result:=result+s[i];
result:=result+s[i];
end;

end;


procedure tmainform.getfileproperties(props:tSettings);
begin
self.zquery3.Active:=false;
self.zquery3.SQL.Text:='select * from properties;';
self.zquery3.ExecSQL;
self.zquery3.Active:=true;
if self.zquery3.RecordCount>0 then
begin
props.Settings.Values['templ']:=self.zquery3.FieldValues['template_name'];
props.Settings.Values['uz_name']:=self.zquery3.FieldValues['uz_name'];
props.Settings.Values['listtype']:=self.zquery3.FieldValues['listtype'];

try
props.Settings.Values['fio_dir']:=self.zquery3.FieldValues['director_fio'];
except
try
self.ZQuery1.SQL.Text:='alter table properties add director_fio char(100) default ""';
self.ZQuery1.ExecSQL;
except
end;
end;

try
props.Settings.Values['end_year']:=self.zquery3.FieldValues['end_year'];

except
props.Settings.Values['end_year']:='2009';
try
self.ZQuery1.SQL.Text:='alter table properties add end_year int(2) default 2009';
self.ZQuery1.ExecSQL;
except
end;
end;

try
props.Settings.Values['sort']:=self.ZQuery3.FieldValues['sort'];
except
props.Settings.Values['sort']:='FIO';
try
self.ZQuery1.SQL.Text:='Alter table "properties" add column "sort" text default "";';
self.ZQuery1.ExecSQL;
except
end;
end;

try
props.Settings.Values['first_number']:=self.ZQuery3.FieldValues['first_number'];
except

props.Settings.Values['first_number']:='1';
try

self.ZQuery1.SQL.Text:='Alter table "properties" add column "first_number" int default 1;';
self.ZQuery1.ExecSQL;
except
end;

end;
end else
begin
try
self.ZQuery1.SQL.Text:='Alter table "properties" add column "sort" text default "";';
self.ZQuery1.ExecSQL;
except
end;
try
self.ZQuery1.SQL.Text:='Alter table "properties" add column "first_number" int default 1;';
self.ZQuery1.ExecSQL;
except
end;

end;

{self.ZQuery1.SQL.Text:='Alter table "properties" add column "sort" text default "";';
self.ZQuery1.ExecSQL;}


self.zquery3.Active:=false;

end;
procedure tmainform.setfileproperties(props:tSettings);
begin
self.zquery3.Active:=false;
self.zquery3.SQL.Text:='select * from properties;';
self.zquery3.ExecSQL;
self.zquery3.Active:=true;

if self.zquery3.RecordCount>0 then
begin
self.zquery3.Active:=false;

self.zquery3.SQL.Text:='update properties set template_name="'+escapestring(props.Settings.Values['templ'])+'", uz_name="'+escapestring(props.Settings.Values['uz_name'])+'", director_fio="'+escapestring(props.Settings.Values['fio_dir'])+'",end_year='+escapestring(props.Settings.Values['end_year'])+', sort="'+escapestring(props.Settings.Values['sort'])+'" ,first_number='+escapestring(props.Settings.Values['first_number'])+';';
self.zquery3.ExecSQL;
end else
begin
self.zquery3.Active:=false;
self.zquery3.SQL.Text:='insert into properties (template_name,uz_name,director_fio,sort,first_number) values ("'+escapestring(props.Settings.Values['templ'])+'","'+escapestring(props.Settings.Values['uz_name'])+'","'+escapestring(props.Settings.Values['fio_dir'])+'",'+escapestring(props.Settings.Values['end_year'])+',"'+escapestring(props.Settings.Values['sort'])+'",'+escapestring(props.Settings.Values['first_number'])+');';
self.zquery3.ExecSQL;

end;
self.updatemarkslist;
end;

    procedure TmainForm.updatemarkslist;
    var st:tsettings;
    i:integer;
    fl:boolean;
    begin
st:=TSettings.Create;
st.LoadFromFile(mainform.MainSettings.Settings.Values[templatepath]+'\'+self.FileSettings.Settings.Values['templ']+'.dtmpl','student');
fl:=false;
for i:=1 to 8 do
begin
self.MarksList[i-1]:=st.Settings.Values['m'+inttostr(i+1)];
fl:=fl or (self.MarksList[i-1]='');
end;
if fl then self.MarksList.Assign(self.DefMarksList);
fl:=false;
for i:=1 to 3 do
begin
self.VstIspList[i-1]:=st.Settings.Values['ii'+inttostr(i)];
fl:=fl or (self.VstIspList[i-1]='');
end;
if fl then self.VstIspList.Assign(self.DefVstIspList);

st.Free;
end;
procedure TMainForm.updatevisibledocs;
var i:integer;
begin
for i:=1 to self.ActionManager1.ActionCount do
begin
if self.ActionManager1.Actions[i-1].Tag>0 then
begin
if (self.ActionManager1.actions[i-1].Tag and ((1 and (1 shl (currentmode-1)))*32)<>0) then Taction(self.ActionManager1.Actions[i-1]).visible:=true else Taction(self.ActionManager1.Actions[i-1]).visible:=false;

end;
end;
end;

function TMainForm.closedatabase(query:boolean):boolean;
var i,dlgres:integer;
begin

if query then dlgres:=messagebox(self.Handle,pchar('Сохранить файл '+self.databasepath+'?'),pchar('Сохранить'),MB_YESNOCANCEL) else  dlgres:=idYes;
if dlgres=idYes then
begin
self.FileSaveExecute(nil);
result:=true;
end;
if dlgres=idNo then
begin
result:=true;
end;
if dlgres=idCancel then
begin
result:=false;
exit;
end;

self.ListView1.Items.Clear;
self.ListView1.Refresh;
self.ListView1.Hide;
self.MainConnection.Disconnect;
deletefile(mainconnection.Database);
self.databasepath:='';
self.FileSave.Enabled:=false;
self.FileSaveAs.Enabled:=false;
self.FileClose.Enabled:=false;
self.FileProperties.Enabled:=false;
self.StudentCreate.Enabled:=false;
self.Action29.Enabled:=false;

self.StudentEdit.Enabled:=false;
self.StudentDelete.Enabled:=false;
self.TBXSubmenuItem9.Visible:=false;
self.TBXSubmenuItem10.Visible:=false;

//self.PrintDVO.Enabled:=false;
for i:=1 to self.ActionManager1.ActionCount do
if self.ActionManager1.Actions[i-1].Category='Печать' then TAction(self.ActionManager1.Actions[i-1]).enabled:=false;

self.Caption:='Аттестат-Экспресс';



end;


procedure TMainForm.refreshtable;
var i,rn:integer;
item:TListItem;
listsort:string;
begin
self.ZQuery1.Active:=false;
self.ZQuery1.SQL.Text:='select * from students';
listSort:=self.FileSettings.Settings.Values['sort'];
if ListSort<>'' then self.ZQuery1.SQL.Text:=self.ZQuery1.SQL.Text+' order by '+ListSort;
self.ZQuery1.ExecSQL;
self.ZQuery1.Active:=true;

//self.ListView1.Items.Count:=self.ZQuery1.RecordCount;
self.ListView1.Clear;
for i:=1 to self.ZQuery1.RecordCount do
begin
item:=self.ListView1.Items.Add;
item.Caption:=inttostr(i);
//item.Checked:=true;
rn:=self.ZQuery1.RecNo;
self.ZQuery1.RecNo:=i;
try
item.SubItems.Add(self.ZQuery1.FieldValues['FIO']);
item.SubItems.Add(self.ZQuery1.FieldValues['birth_date']);
item.SubItems.Add(self.ZQuery1.FieldValues['diplom_sn']);
//item.SubItems.Add(self.ZQuery1.FieldValues['diplom_regnum']);
item.SubItems.Add(self.ZQuery1.FieldValues['vid_date']);
item.SubItems.Add(self.ZQuery1.FieldValues['resh_date']);
except
end;
self.ZQuery1.RecNo:=rn;
end;

self.ListView1.Refresh;
end;

procedure ConvertSettings(inset,outset,pairset:TSettings;clear:boolean);
var i:integer;
cname,cvalue,cpairvalue:string;
begin
if clear then outset.Settings.Clear;
for i:=1 to inset.Settings.Count do
begin
cname:=inset.Settings.Names[i-1];
if pairset.Settings.Values[cname]<>'' then
begin
cpairvalue:=pairset.Settings.Values[cname];
cvalue:=inset.Settings.ValueFromIndex[i-1];
if (outset.Settings.IndexOfName(cpairvalue)=-1) then
begin
outset.Settings.Add(cpairvalue+'='+cvalue);
end;
if ((cvalue<>'') and (outset.Settings.IndexOfName(cpairvalue)<>-1)) then
begin
outset.Settings.Values[cpairvalue]:=cvalue;
end;

end;

end;


end;

procedure getDirectoryList(dir:string;mask:string;list:TStrings);
var currdir:string;
sr:tsearchrec;
a:integer;
begin
getdir(0,currdir);
chdir(extractfilepath(application.ExeName));
chdir(dir);
a:=findfirst(mask,faanyfile,sr);
while a=0 do
begin
list.Add(sr.Name);
a:=findnext(sr);
end;
findclose(sr);


chdir(currdir);
end;




procedure TMainForm.OpenDatabase(FileName:string);
var tmpfn:string;
i:integer;
st:tsettings;
fl:boolean;
begin
self.ZQuery1.Active:=false;
if MainConnection.Connected then MainConnection.Disconnect;
tmpfn:=GetTempDir+inttostr(gettickcount)+'.tmp';
self.databasepath:=filename;
copyfile(pchar(filename),pchar(tmpfn),false);
self.MainConnection.Database:=tmpfn;
self.MainConnection.Connect;
try
self.ZQuery1.SQL.Text:='alter table disciplines add ege char(100) default ""';
self.ZQuery1.ExecSQL;
except
end;

try
self.ZQuery1.SQL.Text:='alter table students add doctype integer default 0';
self.ZQuery1.ExecSQL;
except
end;

try
self.ZQuery1.SQL.Text:='alter table students add prikaz_num_text char(30) default ""';
self.ZQuery1.ExecSQL;
except
end;

try
self.ZQuery1.SQL.Text:='alter table students add klass char(10) default ""';
self.ZQuery1.ExecSQL;
except
end;

//self.PrintDVO.Enabled:=true;
self.FileSettings.Settings.Clear;
try
self.getfileproperties(self.FileSettings);
except


end;
{FilePropForm.zquery1.Active:=false;
FilePropForm.ZQuery1.SQL.Text:='select * from properties;';
FilePropForm.ZQuery1.ExecSQL;
FilePropForm.ZQuery1.Active:=true;}
try

self.currentmode:=strtoint(self.FileSettings.Settings.Values['listtype']);

//FilePropForm.ZQuery1.FieldValues['listtype'];

except
//self.currentmode:=1;
end;
//FilePropForm.zquery1.Active:=false;

if ((1 shl (self.currentmode-1)) and 1)=0 then
begin
showmessage('Файл не поддерживается данной версией программы');
self.closedatabase(false);
exit;
end;


self.refreshtable;
self.ListView1.Show;
self.FileClose.Enabled:=true;
self.FileSave.Enabled:=true;
self.FileSaveAs.Enabled:=true;

self.FileProperties.Enabled:=true;
self.StudentCreate.Enabled:=true;
self.Action29.Enabled:=true;
self.StudentEdit.Enabled:=true;
self.StudentDelete.Enabled:=true;
for i:=1 to self.ActionManager1.ActionCount do
if self.ActionManager1.Actions[i-1].Category='Печать' then TAction(self.ActionManager1.Actions[i-1]).enabled:=true;



//filepropform.FormShow(nil);
{st:=TSettings.Create;
st.LoadFromFile(mainform.MainSettings.Settings.Values[templatepath]+'\'+FilePropForm.ComboBox1.Text+'.dtmpl','student');
fl:=false;
for i:=1 to 8 do
begin
self.MarksList[i-1]:=st.Settings.Values['m'+inttostr(i+1)];
fl:=fl or (self.MarksList[i-1]='');
end;
if fl then self.MarksList.Assign(self.DefMarksList);
fl:=false;
for i:=1 to 3 do
begin
self.VstIspList[i-1]:=st.Settings.Values['ii'+inttostr(i)];
fl:=fl or (self.VstIspList[i-1]='');
end;
if fl then self.VstIspList.Assign(self.DefVstIspList);

st.Free;   }
self.updatemarkslist;

self.updatevisibledocs;


if self.databasepath<>'' then self.Caption:='Аттестат-Экспресс - ['+extractfilename(self.databasepath)+']' else self.Caption:='Аттестат-Экспресс - [Новый журнал]';

self.TBXSubmenuItem9.Visible:=true;
self.TBXSubmenuItem10.Visible:=true;

if self.currentmode=1 then
begin
settingsform.CheckBox3.Visible:=false;
settingsform.CheckBox4.Visible:=false;
settingsform.CheckBox5.Visible:=false;
settingsform.CheckBox7.Visible:=false;
settingsform.CheckBox8.Visible:=false;
settingsform.CheckBox9.Visible:=false;
self.TBXItem73.Visible:=false;
self.TBXSubmenuItem3.Caption:='Выпускник';
//studentsform.StudentTab.Caption:='Учащийся';
{self.ListView1.Columns[6].Width:=0;
self.ListView1.Columns[4].Width:=0; }
//filepropform.UzMemo.Visible:=false;
//filepropform.Button3.Visible:=false;

end else
begin
settingsform.CheckBox3.Visible:=true;
settingsform.CheckBox4.Visible:=true;
settingsform.CheckBox5.Visible:=true;
settingsform.CheckBox7.Visible:=true;
settingsform.CheckBox8.Visible:=true;
settingsform.CheckBox9.Visible:=true;
self.TBXItem73.Visible:=true;
self.TBXSubmenuItem3.Caption:='Студент';

{self.ListView1.Columns[6].Width:=120;
self.ListView1.Columns[4].Width:=90;  }
//filepropform.UzMemo.Visible:=true;
//filepropform.Button3.Visible:=true;

//studentsform.StudentTab.Caption:='Студент';
//self.TBXSubmenuItem10.Visible:=true;

end;



self.Export2Dbf.Enabled:=true;
self.CsvExport.Enabled:=true;
self.ExportCSVFio.Enabled:=true;
self.ImportCSV.Enabled:=true;
self.ImportCSVDF.Enabled:=true;
self.ExportToIni.Enabled:=true;
self.Action26.Enabled:=true




end;

procedure TMainForm.FileNewExecute(Sender: TObject);
var lt,tmpl:string;
begin
//wizardform.show;
if self.FileClose.Enabled then if not self.closedatabase(true) then exit;


self.currentmode:=1;



if fileexists(extractfilepath(application.ExeName)+'template.db3') then
begin
try
//  copyfile(pchar(extractfilepath(application.ExeName)+'template.db3'),pchar(self.SaveDialog1.filename),false);
  self.OpenDatabase(extractfilepath(application.ExeName)+'template.db3');


FilePropForm.zquery1.Active:=false;
FilePropForm.ZQuery1.SQL.Text:='select * from properties;';
FilePropForm.ZQuery1.ExecSQL;
FilePropForm.ZQuery1.Active:=true;

if FilePropForm.ZQuery1.RecordCount>0 then
begin
FilePropForm.zquery1.Active:=false;
FilePropForm.ZQuery1.SQL.Text:='update properties set listtype='+inttostr(self.currentmode)+';';
FilePropForm.ZQuery1.ExecSQL;
end else
begin
FilePropForm.zquery1.Active:=false;
FilePropForm.ZQuery1.SQL.Text:='insert into properties (template_name,uz_name,listtype) values ("","",'+inttostr(self.currentmode)+');';
FilePropForm.ZQuery1.ExecSQL;

end;


  self.databasepath:='';

 self.Caption:='Аттестат-Экспресс - [Новый журнал группы]';
except
on e:exception do showmessage(e.Message);
end;


end else showmessage('Не найден файл-шаблон. Переустановите приложение');


//end;
//self.FileProperties.Execute;
if WizardForm.ShowModal=mrOk then
begin
lt:=self.FileSettings.Settings.Values['listtype'];
self.FileSettings.Settings.Clear;
self.FileSettings.Settings.Values['listtype']:=lt;
self.FileSettings.Settings.Values['uz_name']:=WizardForm.UzMemo.Text;
self.FileSettings.Settings.Values['fio_dir']:=WizardForm.DirFIOEdit.Text;
tmpl:='';
if WizardForm.JvImageListBox1.itemindex>0 then tmpl:=WizardForm.JvImageListBox1.Items[WizardForm.JvImageListBox1.itemindex].Text;

self.FileSettings.Settings.Values['templ']:=tmpl;
self.FileSettings.Settings.Values['end_year']:=WizardForm.YearEdit.Text;
self.FileSettings.Settings.Values['first_number']:=WizardForm.FnEdit.Text;
self.setfileproperties(self.FileSettings);

if WizardForm.Edit2.Text<>'' then self.DoImportCSV(WizardForm.Edit2.Text,false);

end;

end;

procedure TMainForm.FileExitExecute(Sender: TObject);
begin
self.Close;
end;

procedure TMainForm.FileOpenExecute(Sender: TObject);
begin

if self.FileClose.Enabled then if not self.closedatabase(true) then exit;
if self.OpenDialog1.Execute then
begin
try
//self.FileCloseExecute(sender);

self.OpenDatabase(self.OpenDialog1.FileName);
except
on e:exception do showmessage(e.Message);

end;
end;
end;

procedure TMainForm.StudentCreateExecute(Sender: TObject);
var
st1,st,pt:Tsettings;
n,i:integer;
ID,VAL,typ,s,flds,vals:string;
begin
StudentsForm.clearvalues;
StudentsForm.setmode(stfStudent,mainform.currentmode);
StudentsForm.Caption:='Добавить карточку выпускника';
st:=TSettings.Create;
st.LoadFromFile(mainform.MainSettings.Settings.Values[templatepath]+'\'+self.FileSettings.Settings.Values['templ']+'.dtmpl','student');
st.Settings.Values['SexBox']:='-';
//

studentsform.setvalues(st,true);
//studentsform.setmarkval(st);
st.free;

if StudentsForm.showmodal=mrOk then
begin
st:=TSettings.Create;
st1:=TSettings.Create;
pt:=TSettings.Create;

pt.LoadFromFile(extractfilepath(application.exename)+'sql.ini','main');
StudentsForm.getvalues(st);
self.SaveStudent('',st);
{

ConvertSettings(st,st1,pt,true);

flds:='';
vals:='';
for i:=1 to st1.settings.Count do
begin
if i>1 then
begin
flds:=flds+', ';
vals:=vals+', ';
end;
typ:=copy(st1.Settings.Names[i-1],1,1);
flds:=flds+copy(st1.Settings.Names[i-1],2,length(st1.Settings.Names[i-1])-1);
val:=st1.Settings.ValueFromIndex[i-1];
if typ='T' then val:='"'+escapestring(val)+'"';
if typ='D' then val:='"'+escapestring(copy(val,7,4)+'-'+copy(val,4,2)+'-'+copy(val,1,2))+'"';
if typ='I' then if val='' then val:='0';
//if typ='T' then val:='"'+val+'"';
vals:=vals+val;
end;
s:='insert into students ('+flds+') values ('+vals+');';
self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:=s;
self.ZQuery2.ExecSQL;

//self.ZQuery1.Active:=true;

self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='SELECT last_insert_rowid() as id;';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
ID:=self.ZQuery2.FieldValues['id'];
self.ZQuery2.Active:=false;

n:=strtoint(st.Settings.Values['KursCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into kursovie (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Kurs_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Kurs_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['GosCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into gos_eks (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Gos_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Gos_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['DiscCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into disciplines (name,time_all,time_aud,ball,student_id,ege) values ("'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_1'])+'",'+'0'+','+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_3'])+','+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_2'])+',"'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_4'])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['PractCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into praktika (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Pract_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Pract_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

if self.currentmode<>1 then
begin
n:=strtoint(st.Settings.Values['PrimCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into notes (note,student_id) values ("'+escapestring(st.Settings.Values['Prim_'+inttostr(i)+'_1'])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;
end else
begin
n:=studentsform.DopSvMemo.Lines.Count;
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into notes (note,student_id) values ("'+escapestring(studentsform.DopSvMemo.Lines[i-1])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;


end;
}

self.refreshtable;

pt.Free;
st1.Free;
st.Free;
end;
end;

procedure TMainForm._FormCreate(Sender: TObject);
var i:integer;
r:tregistry;
path,ss,ss1:string;


begin
pt:=TSettings.Create;



pt.LoadFromFile(extractfilepath(application.exename)+'sql.ini','main');


self.MainSettings:=Tsettings.Create;
self.MainSettings.LoadFromFile(extractfilepath(application.ExeName)+'diplom.ini','main');

r:=TRegistry.Create;

try
try
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKey('Software',false);
r.OpenKey('ARMRegistr',false);
r.OpenKey('AttestatExpress',false);
path:=r.ReadString('UserDataPath');
except
path:=extractfilepath(application.ExeName);
end;
finally
r.Free;
end;

self.MainSettings.Settings.Values['templatepath']:=path+'Templates';
//self.StaticText1.ParentColor:=false;
self.StaticText1.Text:=GetTextFromCHM(extractfilepath(application.ExeName)+application.HelpFile,'mainform.htm');
self.Panel1.Color:=$00CFFFFF;
r:=tregistry.Create;
try
r.RootKey:=HKEY_CURRENT_USER;
//sl[0];
r.OpenKey('Software',false);

ss:=r.ReadString('key');

{if ss<>'' then
begin
r.OpenKey('ARMRegistr',true);
r.OpenKey('AttestatExpress',true);

r.WriteString('key',ss);
end;      }

finally
r.Free;
end;

self.Caption:='Аттестат-Экспресс';

 self.StatusBar1.Panels[0].text:='';



{if timelimit and (now>=encodedate(2011,08,01)) then
begin
showmessage('Период использования временной версии истек');

application.Terminate;
end;}

currentmode:=1;
for i:=1 to self.ActionManager1.ActionCount do
begin
if self.ActionManager1.Actions[i-1].Tag>0 then
begin
if (self.ActionManager1.actions[i-1].Tag and ((1 and (1 shl (currentmode-1)))*32)<>0) then Taction(self.ActionManager1.Actions[i-1]).visible:=true else Taction(self.ActionManager1.Actions[i-1]).visible:=false;

end;
end;

self.frxDesigner1.OpenDir:=extractfilepath(application.ExeName);
self.frxDesigner1.SaveDir:=self.frxDesigner1.OpenDir;
self.FileSettings:=TSettings.Create;

r:=TreGistry.Create;
try
r.RootKey:=HKEY_CURRENT_USER;
r.OpenKey('Software',false);
r.OpenKey('ARMRegistr',false);
r.OpenKey('AttestatExpress',false);
path:=r.ReadString('UserDataPath');
self.MainSettings.Settings.Values['templatepath']:=path+'Templates';
except

end;
r.Free;



self.DefMarksList:=TStringList.Create;

self.DefMarksList.Add('2. 2 (неудовлетворительно)');
self.DefMarksList.Add('3. 3 (удовл.)');
self.DefMarksList.Add('4. 4 (хорошо)');
self.DefMarksList.Add('5. 5 (отлично)');
self.DefMarksList.Add('6. зачтено');
self.DefMarksList.Add('7. не выполнял(а)');
self.DefMarksList.Add('8. не защищал(а)');
self.DefMarksList.Add('9. освобожден');

self.MarksList:=TStringList.Create;
self.MarksList.Assign(self.DefMarksList);

self.DefVstIspList:=TStringList.Create;
self.DefVstIspList.Add('1. сдал');
self.DefVstIspList.Add('2. сдала');
self.DefVstIspList.Add('3. не предусмотрены');

self.VstIspList:=TStringList.Create;
self.VstIspList.Assign(self.DefVstIspList);

TBXSettheme('Office2003');


end;

procedure TMainForm.SpecEditExecute(Sender: TObject);
var i:integer;
st:tsettings;
begin
templatesform.showmodal;

st:=TSettings.Create;
st.LoadFromFile(self.MainSettings.Settings.Values[templatepath]+'\'+self.FileSettings.Settings.Values['templ']+'.dtmpl','student');
for i:=1 to 8 do
begin
self.MarksList[i-1]:=st.Settings.Values['m'+inttostr(i+1)];
end;

for i:=1 to 3 do
begin
self.VstIspList[i-1]:=st.Settings.Values['ii'+inttostr(i)];
end;


st.Free;


end;

procedure TMainForm.ListView1Data(Sender: TObject; Item: TListItem);
var rn:integer;
begin
item.Caption:=inttostr(item.Index+1);
item.Checked:=true;
rn:=self.ZQuery1.RecNo;
self.ZQuery1.RecNo:=Item.Index+1;
try
item.SubItems.Add(self.ZQuery1.FieldValues['FIO']);
item.SubItems.Add(self.ZQuery1.FieldValues['birth_date']);
item.SubItems.Add(self.ZQuery1.FieldValues['diplom_sn']);
//item.SubItems.Add(self.ZQuery1.FieldValues['diplom_regnum']);
item.SubItems.Add(self.ZQuery1.FieldValues['vid_date']);
//item.SubItems.Add(self.ZQuery1.FieldValues['resh_date']);
except
end;
self.ZQuery1.RecNo:=rn;
end;



    procedure TMainForm.openstudentintoform(var id:string;recno:integer);
    var i,n:integer;
st,st1,pt1:tsettings;
val,s,sets,typ:string;

    begin
    st:=TSettings.Create;
st1:=TSettings.Create;
pt1:=TSettings.Create;

for i:=1 to pt.Settings.Count do
begin
pt1.Settings.Add(copy(pt.Settings.ValueFromIndex[i-1],2,length(pt.Settings.ValueFromIndex[i-1])-1)+'='+pt.Settings.Names[i-1]);
end;
//pt.Free;
self.ZQuery1.RecNo:=recno;//self.ListView1.ItemIndex+1;
id:=self.ZQuery1.FieldValues['id'];
for i:=1 to self.ZQuery1.FieldCount do
begin
//self.ZQuery1.Fields[i-1].
st.Settings.Add(self.ZQuery1.Fields[i-1].fieldname+'='+self.ZQuery1.Fields[i-1].asString);
end;
ConvertSettings(st,st1,pt1,true);
self.ZQuery2.Active:=false;

self.ZQuery2.SQL.Text:='select * from kursovie where student_id='+id+';';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
self.ZQuery2.First;
st1.Settings.Add('KursCount='+inttostr(self.ZQuery2.RecordCount));

for i:=1 to self.ZQuery2.RecordCount do
begin
st1.Settings.Add('kurs_'+inttostr(i)+'_1='+self.ZQuery2.FieldValues['name']);
st1.Settings.Add('kurs_'+inttostr(i)+'_2='+inttostr(self.ZQuery2.FieldValues['ball']));
self.ZQuery2.Next;
end;


self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='select * from praktika where student_id='+id+';';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
self.ZQuery2.First;
st1.Settings.Add('PractCount='+inttostr(self.ZQuery2.RecordCount));

for i:=1 to self.ZQuery2.RecordCount do
begin
st1.Settings.Add('pract_'+inttostr(i)+'_1='+self.ZQuery2.FieldValues['name']);
st1.Settings.Add('pract_'+inttostr(i)+'_2='+inttostr(self.ZQuery2.FieldValues['ball']));
self.ZQuery2.Next;
end;


self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='select * from disciplines where student_id='+id+';';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
self.ZQuery2.First;
st1.Settings.Add('DiscCount='+inttostr(self.ZQuery2.RecordCount));

for i:=1 to self.ZQuery2.RecordCount do
begin
st1.Settings.Add('Disc_'+inttostr(i)+'_1='+self.ZQuery2.FieldValues['name']);
st1.Settings.Add('Disc_'+inttostr(i)+'_2='+inttostr(self.ZQuery2.FieldValues['ball']));
st1.Settings.Add('Disc_'+inttostr(i)+'_3='+inttostr(self.ZQuery2.FieldValues['time_aud']));
st1.Settings.Add('Disc_'+inttostr(i)+'_4='+self.ZQuery2.FieldValues['ege']);
self.ZQuery2.Next;
end;


self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='select * from gos_eks where student_id='+id+';';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
self.ZQuery2.First;
st1.Settings.Add('GosCount='+inttostr(self.ZQuery2.RecordCount));

for i:=1 to self.ZQuery2.RecordCount do
begin
st1.Settings.Add('Gos_'+inttostr(i)+'_1='+self.ZQuery2.FieldValues['name']);
st1.Settings.Add('Gos_'+inttostr(i)+'_2='+inttostr(self.ZQuery2.FieldValues['ball']));
self.ZQuery2.Next;
end;


self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='select * from notes where student_id='+id+';';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
self.ZQuery2.First;
st1.Settings.Add('PrimCount='+inttostr(self.ZQuery2.RecordCount));
studentsform.DopSvMemo.Clear;
for i:=1 to self.ZQuery2.RecordCount do
begin
st1.Settings.Add('Prim_'+inttostr(i)+'_1='+self.ZQuery2.FieldValues['note']);
studentsform.DopSvMemo.Lines.Add(self.ZQuery2.FieldValues['note']);
self.ZQuery2.Next;
end;
self.ZQuery2.Active:=false;



studentsform.clearvalues;
studentsform.setvalues(st1,false);

st.Free;
st1.Free;
pt1.Free;

//pt.Free;
    end;





procedure TMainForm.StudentEditExecute(Sender: TObject);
var i,n,pos:integer;
st,st1,pt,pt1:tsettings;
val,id,s,sets,typ:string;
ti1,ti2:integer;
begin

//pt:=TSettings.Create;
//pt.LoadFromFile(extractfilepath(application.exename)+'sql.ini','main');
if self.ListView1.ItemIndex<0 then exit;
studentsform.clearvalues;
//ti1:=gettickcount;
self.openstudentintoform(id,self.ListView1.ItemIndex+1);
//ti2:=gettickcount;
//showmessage(inttostr(ti2-ti1));
StudentsForm.setmode(stfStudent,mainform.currentmode);
pos:=self.ListView1.ItemIndex;
if studentsform.edtFIO.Text<>'' then StudentsForm.Caption:='Редактировать карточку выпускника - '+studentsform.edtFIO.Text else StudentsForm.Caption:='Редактировать карточку выпускника';

if studentsform.ShowModal=mrOk then
begin

st:=TSettings.Create;
{st1:=TSettings.Create;
pt:=TSettings.Create;

pt.LoadFromFile(extractfilepath(application.exename)+'sql.ini','main');}
StudentsForm.getvalues(st);
self.SaveStudent(id,st);
self.ZQuery1.Active:=false;

self.ZQuery1.Active:=true;
self.refreshtable;
self.ListView1.ItemIndex:=pos;

st.Free;

end;


end;

procedure TMainForm.frxReport1GetValue(const VarName: String;
  var Value: Variant);
  var i,p:integer;
  s,s1,id:string;
begin
if self.rn<>self.ZQuery1.RecNo then
self.openStudentIntoForm(id,self.ZQuery1.RecNo);
self.rn:=self.ZQuery1.RecNo;


try
if varname='first_line_number' then
begin
value:=strtoint(self.filesettings.Settings.Values['first_number']);
exit;
end;

//value:=studentsform.PrimGrid.Cells[1,self.Primpos];
if copy(varname,1,length('Доп_сведения_'))='Доп_сведения_' then
begin
try
value:='';
if self.MainSettings.Settings.Values['DopsvLineZ']='1' then
begin
value:='Z';
for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
if trim(TFrxMemoView(self.frxReport1.Components[i-1]).text)='['+varname+']' then TFrxMemoView(self.frxReport1.Components[i-1]).HAlign:=haCenter;
end;
end;

end;

{if strtoint(copy(varname,length('Доп_сведения_')+1,length(varname)-length('Доп_сведения_')))<studentsform.PrimGrid.RowCount then
begin
 value:=studentsform.PrimGrid.Cells[1,strtoint(copy(varname,length('Доп_сведения_')+1,length(varname)-length('Доп_сведения_')))];
 for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
if trim(TFrxMemoView(self.frxReport1.Components[i-1]).text)='['+varname+']' then TFrxMemoView(self.frxReport1.Components[i-1]).HAlign:=haLeft;
end;
end;

 end;}
except
value:='';
if self.MainSettings.Settings.Values['DopsvLineZ']='1' then value:='Z';
end;
end;


if copy(varname,1,length('Дисциплина_назв'))='Дисциплина_назв' then
begin
try
value:='';
if self.MainSettings.Settings.Values['DiscLineZ']='1' then
begin
value:='Z';
for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
if trim(TFrxMemoView(self.frxReport1.Components[i-1]).text)='['+varname+']' then TFrxMemoView(self.frxReport1.Components[i-1]).HAlign:=haCenter;
end;
end;

end;
if strtoint(copy(varname,length('Дисциплина_назв_')+1,length(varname)-length('Дисциплина_назв_')))<studentsform.DiscGrid.RowCount then
begin
 value:=studentsform.DiscGrid.Cells[1,strtoint(copy(varname,length('Дисциплина_назв_')+1,length(varname)-length('Дисциплина_назв_')))];
 for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
if trim(TFrxMemoView(self.frxReport1.Components[i-1]).text)='['+varname+']' then TFrxMemoView(self.frxReport1.Components[i-1]).HAlign:=haLeft;
end;
end;

 end;
except
value:='';
if self.MainSettings.Settings.Values['DiscLineZ']='1' then value:='Z';
end;
end;

{if copy(varname,1,length('Дисциплина_назв'))='Дисциплина_назв' then
begin
try
value:='';
if strtoint(copy(varname,length('Дисциплина_назв_')+1,length(varname)-length('Дисциплина_назв_')))<studentsform.DiscGrid.RowCount then
 value:=studentsform.DiscGrid.Cells[1,strtoint(copy(varname,length('Дисциплина_назв_')+1,length(varname)-length('Дисциплина_назв_')))];
except
value:='';
end;
end;}

if copy(varname,1,length('Дисциплина_оценка'))='Дисциплина_оценка' then
begin
try
value:='';
if strtoint(copy(varname,length('Дисциплина_оценка_')+1,length(varname)-length('Дисциплина_оценка_')))<studentsform.DiscGrid.RowCount then
begin
s:=self.MarksList[strtoint(studentsform.DiscGrid.Cells[2,strtoint(copy(varname,length('Дисциплина_оценка_')+1,length(varname)-length('Дисциплина_оценка_')))])-2];
value:=trim(copy(s,pos('.',s)+1,length(s)-pos('.',s)));
end;
except
value:='';
end;
end;

if copy(varname,1,length('Дисциплина_оценка_последний_год'))='Дисциплина_оценка_последний_год' then
begin
try
value:='';
if strtoint(copy(varname,length('Дисциплина_оценка_последний_год_')+1,length(varname)-length('Дисциплина_оценка_последний_год_')))<studentsform.DiscGrid.RowCount then
begin
s:=self.MarksList[strtoint(studentsform.DiscGrid.Cells[3,strtoint(copy(varname,length('Дисциплина_оценка_последний_год_')+1,length(varname)-length('Дисциплина_оценка_последний_год_')))])-2];
value:=trim(copy(s,pos('.',s)+1,length(s)-pos('.',s)));
end;
except
value:='';
end;
end;

if copy(varname,1,length('Дисциплина_оценка_егэ'))='Дисциплина_оценка_егэ' then
begin
try
value:='';
if strtoint(copy(varname,length('Дисциплина_оценка_егэ_')+1,length(varname)-length('Дисциплина_оценка_егэ_')))<studentsform.DiscGrid.RowCount then
begin
//s:=self.MarksList[strtoint(studentsform.DiscGrid.Cells[4,strtoint(copy(varname,length('Дисциплина_оценка_егэ_')+1,length(varname)-length('Дисциплина_оценка_егэ_')))])-2];
value:=studentsform.DiscGrid.Cells[4,strtoint(copy(varname,length('Дисциплина_оценка_егэ_')+1,length(varname)-length('Дисциплина_оценка_егэ_')))];

//trim(copy(s,pos('.',s)+1,length(s)-pos('.',s)));
end;
except
value:='';
end;
end;

if copy(varname,1,length('Дисциплина_номер'))='Дисциплина_номер' then
begin
try
value:='';
if strtoint(copy(varname,length('Дисциплина_номер_')+1,length(varname)-length('Дисциплина_номер_')))<studentsform.DiscGrid.RowCount then
begin
//s:=self.MarksList[strtoint(studentsform.DiscGrid.Cells[4,strtoint(copy(varname,length('Дисциплина_оценка_егэ_')+1,length(varname)-length('Дисциплина_оценка_егэ_')))])-2];
value:=(copy(varname,length('Дисциплина_номер_')+1,length(varname)-length('Дисциплина_номер_')));

//trim(copy(s,pos('.',s)+1,length(s)-pos('.',s)));
end;
except
value:='';
end;
end;


if varname='Дата_решения' then value:=format('%.2d %s %.4d',[DayOf(self.ZQuery1.FieldValues['resh_date']),months[MonthOf(self.ZQuery1.FieldValues['resh_date'])],YearOf(self.ZQuery1.FieldValues['resh_date'])]);
if varname='Дата_выдачи' then value:=format('%.2d %s %.4d',[DayOf(self.ZQuery1.FieldValues['vid_date']),months[MonthOf(self.ZQuery1.FieldValues['vid_date'])],YearOf(self.ZQuery1.FieldValues['vid_date'])]);
if varname='Дата_рождения' then value:=format('%.2d %s %.4d',[DayOf(self.ZQuery1.FieldValues['birth_date']),months[MonthOf(self.ZQuery1.FieldValues['birth_date'])],YearOf(self.ZQuery1.FieldValues['birth_date'])]);

if varname='Дата_выдачи_день' then value:=format('%.2d',[DayOf(self.ZQuery1.FieldValues['vid_date'])]);
if varname='Дата_выдачи_месяц' then value:=format('%s',[months[MonthOf(self.ZQuery1.FieldValues['vid_date'])]]);
if varname='Дата_выдачи_год_кратко' then value:=format('%.2d',[YearOf(self.ZQuery1.FieldValues['vid_date']) mod 100]);
if varname='Завершил_в_кратко' then value:=format('%.2d',[self.ZQuery1.FieldValues['zakonchil_god'] mod 100]);
if varname='Год_окончания_кратко' then value:=format('%.2d',[strtoint(self.FileSettings.Settings.Values['end_year']) mod 100]);
if varname='Год_окончания' then value:=format('%.2d',[strtoint(self.FileSettings.Settings.Values['end_year'])]);
if varname='vuz_full_name' then value:=self.FileSettings.Settings.Values['uz_name']; //GetVuzFullName;
if varname='Учебное_заведение' then value:=self.FileSettings.Settings.Values['uz_name']; //GetVuzFullName;

if varname='ФИО_директора' then value:=self.FileSettings.Settings.Values['fio_dir']; //filepropform.Edit1.Text;

if varname='Класс' then value:=self.ZQuery1.FieldValues['klass'];

if varname='Дата_рождения_день' then value:=format('%.2d',[DayOf(self.ZQuery1.FieldValues['birth_date'])]);
if varname='Дата_рождения_месяц' then value:=format('%s',[months[MonthOf(self.ZQuery1.FieldValues['birth_date'])]]);
if varname='Дата_рождения_год' then value:=format('%.4d',[YearOf(self.ZQuery1.FieldValues['birth_date'])]);
if varname='Пол' then value:=studentsform.edtSex.Text;

s1:=studentsform.edtdat_FIO.Text;
s:='';
for i:=2 to length(s1) do if (s1[i]<>' ') or (s1[i-1]<>' ') then s:=s+s1[i-1];
if length(s1)>0 then s:=s+s1[length(s1)]; 


p:=pos(' ',s);
if varname='Фамилия' then value:=copy(s,1,p-1);
delete(s,1,p);
p:=pos(' ',s);
if p=0 then p:=length(s)+1;
if varname='Имя' then value:=copy(s,1,p-1);
delete(s,1,p);
if varname='Отчество' then value:=s;
s:='';
s1:=studentsform.edtFIO.Text;
for i:=2 to length(s1) do if (s1[i]<>' ') or (s1[i-1]<>' ') then s:=s+s1[i-1];
if length(s1)>0 then s:=s+s1[length(s1)]; 

{if varname='Фамилия_Именительный' then value:=copy(s,1,pos(' ',s)-1);
delete(s,1,pos(' ',s));
if varname='Имя_Именительный' then value:=copy(s,1,pos(' ',s)-1);
delete(s,1,pos(' ',s));
if varname='Отчество_Именительный' then value:=s;}

p:=pos(' ',s);
if varname='Фамилия_Именительный' then value:=copy(s,1,p-1);
delete(s,1,p);
p:=pos(' ',s);
if p=0 then p:=length(s)+1;
if varname='Имя_Именительный' then value:=copy(s,1,p-1);
delete(s,1,p);
if varname='Отчество_Именительный' then value:=s;









if value<>'' then value:=stringreplace(value,'_',' ',[rfReplaceAll]);

except
value:='';
end;
{try
except
end; }
end;

procedure TMainForm.FileCloseExecute(Sender: TObject);
begin
self.closedatabase(true);

end;

procedure TMainForm.StudentDeleteExecute(Sender: TObject);
var id:string;
begin
if self.ListView1.ItemIndex<0 then exit;
if messagebox(self.Handle,pchar('Вы действительно хотите удалить данную карточку выпускника?'),pchar('Удаление'),MB_OKCANCEL or MB_ICONQUESTION or MB_DEFBUTTON2	 )<>IDOK	then exit;

self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
id:=self.ZQuery1.FieldValues['id'];

try
self.ZQuery2.SQL.Text:='BEGIN TRANSACTION;';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from kursovie where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from gos_eks where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from disciplines where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from praktika where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from notes where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete from students where id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='COMMIT TRANSACTION;';
self.ZQuery2.ExecSQL;


except
self.ZQuery2.SQL.Text:='ROLLBACK TRANSACTION;';
self.ZQuery2.ExecSQL;

end;
self.refreshtable;

end;

procedure TMainForm.FilePropertiesExecute(Sender: TObject);
var lt:string;
begin
if FilePropForm.showmodal=mrOk then
begin
lt:=self.FileSettings.Settings.Values['listtype'];
//self.FileSettings.Settings.Clear;
self.FileSettings.Settings.Values['listtype']:=lt;
self.FileSettings.Settings.Values['uz_name']:=filepropform.UzMemo.Text;
self.FileSettings.Settings.Values['fio_dir']:=filepropform.Edit1.Text;
self.FileSettings.Settings.Values['templ']:=filepropform.ComboBox1.Text;
self.FileSettings.Settings.Values['end_year']:=filepropform.SpinEdit1.Text;
self.FileSettings.Settings.Values['first_number']:=filepropform.SpinEdit2.Text;
self.setfileproperties(self.FileSettings);
//self.setfileproperties(filepropform.UzMemo.Text,filepropform.Edit1.Text, filepropform.ComboBox1.Text);
end;
end;

procedure TMainForm.Panel1Click(Sender: TObject);
begin
//self.frxReport1.PrepareReport;
end;

procedure TMainForm.PrintDVOExecute(Sender: TObject);
begin
self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
self.frxReport1.LoadFromFile(extractfilepath(application.ExeName)+'diplom_vo.fr3');

self.frxReport1.ShowReport();

end;

procedure TMainForm.ListView1DblClick(Sender: TObject);
begin
self.StudentEdit.Execute;
end;

procedure TMainForm.SettingsExecute(Sender: TObject);
begin
settingsForm.CheckBox1.Checked:=self.MainSettings.Settings.Values['AutoLoadStudent']='1';
settingsForm.CheckBox2.Checked:=self.MainSettings.Settings.Values['AutoDisc']='1';
settingsForm.CheckBox3.Checked:=self.MainSettings.Settings.Values['AutoKurs']='1';
settingsForm.CheckBox4.Checked:=self.MainSettings.Settings.Values['AutoPract']='1';
settingsForm.CheckBox5.Checked:=self.MainSettings.Settings.Values['AutoGos']='1';
settingsForm.CheckBox6.Checked:=self.MainSettings.Settings.Values['AutoPrim']='1';

settingsForm.CheckBox7.checked:=self.MainSettings.Settings.Values['KursOborot']='1';
settingsForm.CheckBox8.checked:=self.MainSettings.Settings.Values['GosOborot']='1';
settingsForm.CheckBox9.checked:=self.MainSettings.Settings.Values['PractOborot']='1';
settingsForm.CheckBox10.checked:=self.MainSettings.Settings.Values['DiscZLeft']='1';
settingsForm.CheckBox12.checked:=self.MainSettings.Settings.Values['DiscZRight']='1';
settingsForm.CheckBox11.checked:=self.MainSettings.Settings.Values['DopsvZ']='1';

settingsForm.CheckBox14.checked:=self.MainSettings.Settings.Values['DiscLineZ']='1';
settingsForm.CheckBox15.checked:=self.MainSettings.Settings.Values['DopsvLineZ']='1';


try
settingsForm.SpinEdit1.Value:=strtoint(self.MainSettings.Settings.Values['DiscZLW']);
settingsForm.SpinEdit2.Value:=strtoint(self.MainSettings.Settings.Values['DiscZLH']);
settingsForm.SpinEdit3.Value:=strtoint(self.MainSettings.Settings.Values['DiscZLT']);
settingsForm.SpinEdit4.Value:=strtoint(self.MainSettings.Settings.Values['DiscZLL']);

settingsForm.SpinEdit5.Value:=strtoint(self.MainSettings.Settings.Values['DiscZRW']);
settingsForm.SpinEdit6.Value:=strtoint(self.MainSettings.Settings.Values['DiscZRH']);
settingsForm.SpinEdit7.Value:=strtoint(self.MainSettings.Settings.Values['DiscZRT']);
settingsForm.SpinEdit8.Value:=strtoint(self.MainSettings.Settings.Values['DiscZRL']);

settingsForm.SpinEdit9.Value:=strtoint(self.MainSettings.Settings.Values['DopZW']);
settingsForm.SpinEdit10.Value:=strtoint(self.MainSettings.Settings.Values['DopZH']);
settingsForm.SpinEdit11.Value:=strtoint(self.MainSettings.Settings.Values['DopZT']);
settingsForm.SpinEdit12.Value:=strtoint(self.MainSettings.Settings.Values['DopZL']);

except
end;
if settingsForm.showmodal=mrOk then
begin

if settingsForm.CheckBox1.Checked then self.MainSettings.Settings.Values['AutoLoadStudent']:='1' else self.MainSettings.Settings.Values['AutoLoadStudent']:='0';
if settingsForm.CheckBox2.Checked then self.MainSettings.Settings.Values['AutoDisc']:='1' else self.MainSettings.Settings.Values['AutoDisc']:='0';
if settingsForm.CheckBox3.Checked then self.MainSettings.Settings.Values['AutoKurs']:='1' else self.MainSettings.Settings.Values['AutoKurs']:='0';
if settingsForm.CheckBox4.Checked then self.MainSettings.Settings.Values['AutoPract']:='1' else self.MainSettings.Settings.Values['AutoPract']:='0';
if settingsForm.CheckBox5.Checked then self.MainSettings.Settings.Values['AutoGos']:='1' else self.MainSettings.Settings.Values['AutoGos']:='0';
if settingsForm.CheckBox6.Checked then self.MainSettings.Settings.Values['AutoPrim']:='1' else self.MainSettings.Settings.Values['AutoPrim']:='0';

if settingsForm.CheckBox7.Checked then self.MainSettings.Settings.Values['KursOborot']:='1' else self.MainSettings.Settings.Values['KursOborot']:='0';
if settingsForm.CheckBox8.Checked then self.MainSettings.Settings.Values['GosOborot']:='1' else self.MainSettings.Settings.Values['GosOborot']:='0';
if settingsForm.CheckBox9.Checked then self.MainSettings.Settings.Values['PractOborot']:='1' else self.MainSettings.Settings.Values['PractOborot']:='0';

if settingsForm.CheckBox10.Checked then self.MainSettings.Settings.Values['DiscZLeft']:='1' else self.MainSettings.Settings.Values['DiscZLeft']:='0';
if settingsForm.CheckBox11.Checked then self.MainSettings.Settings.Values['DopsvZ']:='1' else self.MainSettings.Settings.Values['DopsvZ']:='0';
if settingsForm.CheckBox12.Checked then self.MainSettings.Settings.Values['DiscZRight']:='1' else self.MainSettings.Settings.Values['DiscZRight']:='0';

if settingsForm.CheckBox14.checked then self.MainSettings.Settings.Values['DiscLineZ']:='1' else self.MainSettings.Settings.Values['DiscLineZ']:='0';
if settingsForm.CheckBox15.checked then self.MainSettings.Settings.Values['DopsvLineZ']:='1' else self.MainSettings.Settings.Values['DopsvLineZ']:='0';


self.MainSettings.Settings.Values['DiscZLW']:=floattostr(settingsForm.SpinEdit1.Value);
self.MainSettings.Settings.Values['DiscZLH']:=floattostr(settingsForm.SpinEdit2.Value);
self.MainSettings.Settings.Values['DiscZLT']:=floattostr(settingsForm.SpinEdit3.Value);
self.MainSettings.Settings.Values['DiscZLL']:=floattostr(settingsForm.SpinEdit4.Value);

self.MainSettings.Settings.Values['DiscZRW']:=floattostr(settingsForm.SpinEdit5.Value);
self.MainSettings.Settings.Values['DiscZRH']:=floattostr(settingsForm.SpinEdit6.Value);
self.MainSettings.Settings.Values['DiscZRT']:=floattostr(settingsForm.SpinEdit7.Value);
self.MainSettings.Settings.Values['DiscZRL']:=floattostr(settingsForm.SpinEdit8.Value);

self.MainSettings.Settings.Values['DopZW']:=floattostr(settingsForm.SpinEdit9.Value);
self.MainSettings.Settings.Values['DopZH']:=floattostr(settingsForm.SpinEdit10.Value);
self.MainSettings.Settings.Values['DopZT']:=floattostr(settingsForm.SpinEdit11.Value);
self.MainSettings.Settings.Values['DopZL']:=floattostr(settingsForm.SpinEdit12.Value);

end;
end;

procedure TMainForm.Pril_voExecute(Sender: TObject);
var id:string;
begin
self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
self.openStudentIntoForm(id,self.ListView1.ItemIndex+1); // print
self.frxReport1.LoadFromFile(extractfilepath(application.ExeName)+'pril_vo.fr3');
self.frxReport1.ShowReport();
end;

procedure TMainForm.frxUserDataSet1First(Sender: TObject);
begin
self.discpos:=1;
//studentsform.DiscGrid.
end;

procedure TMainForm.frxUserDataSet1CheckEOF(Sender: TObject;
  var Eof: Boolean);
  var
  Wline:TFrxLineView;
begin
if (self.discpos>studentsform.DiscGrid.RowCount-1) or ((studentsform.DiscGrid.Cells[1,self.discpos]='') and (self.discpos=1)) then eof:=true;

{if eof then
begin
showmessage(floattostr(self.frxReport1.Pages[1].findobject('memo1').height));
if self.discpos<21 then
begin
wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.top:=self.discpos*self.frxReport1.Pages[1].findobject('memo1').height;
wline.height:=self.frxReport1.Pages[1].height-wline.top;
wline.left:=0;
wline.width:=100;
wline.Visible:=true;
wline.Printable:=true;
end;


end;      }
end;

procedure TMainForm.frxUserDataSet1Next(Sender: TObject);
begin
inc(self.discpos);
end;

procedure TMainForm.frxUserDataSet1Prior(Sender: TObject);
begin
if self.discpos>1 then dec(self.discpos);
end;

procedure TMainForm.frxUserDataSet1GetValue(const VarName: String;
  var Value: Variant);
var  s:string;
begin
//showmessage(varname);
try
if varname='Название_дисциплины_номер' then value:=inttostr(self.discpos)+'. '+studentsform.DiscGrid.Cells[1,self.discpos];
if varname='Название_дисциплины' then value:=studentsform.DiscGrid.Cells[1,self.discpos];
if varname='Часов_всего' then value:=strtoint(studentsform.DiscGrid.Cells[2,self.discpos]);
if varname='Часов_аудиторных' then value:=strtoint(studentsform.DiscGrid.Cells[3,self.discpos]);
if varname='Оценка' then
begin
//value:=strtoint(studentsform.DiscGrid.Cells[4,self.discpos]);
if strtoint(studentsform.DiscGrid.Cells[2,self.discpos])-2>0 then
begin
s:=self.MarksList[strtoint(studentsform.DiscGrid.Cells[2,self.discpos])-2];
value:=trim(copy(s,pos('.',s)+1,length(s)-pos('.',s)));
end else value:='';

end;
except
if varname='Часов_всего' then value:=0;
if varname='Часов_аудиторных' then value:=0;
if varname='Оценка' then  value:=0;

end;
//value:=stringreplace(value,'_',' ',[rfReplaceAll]);
end;

procedure TMainForm.DiscListPrintExecute(Sender: TObject);
var id:string;
begin
{self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
self.openStudentIntoForm(id,self.ListView1.ItemIndex+1); //printt
self.frxReport1.LoadFromFile(extractfilepath(application.ExeName)+'disc_list.fr3');
self.frxReport1.ShowReport();  }

self.PrintDoc(extractfilepath(application.ExeName)+'disc_list.fr3');
end;

procedure TMainForm.frxUserDataSet4First(Sender: TObject);
begin
self.primpos:=1;
end;

procedure TMainForm.frxUserDataSet4Next(Sender: TObject);
begin
inc(self.primpos);
end;

procedure TMainForm.frxUserDataSet4Prior(Sender: TObject);
begin
if self.primpos>1 then dec(self.primpos);
end;

procedure TMainForm.frxUserDataSet4GetValue(const VarName: String;
  var Value: Variant);
var  s:string;
begin
//showmessage(varname);
{try
if self.currentmode=1 then
begin
if varname='Наименование' then value:=studentsform.PrimGrid.Cells[1,self.Primpos];
end
else
begin
if varname='Наименование' then value:=inttostr(self.Primpos)+'. '+studentsform.PrimGrid.Cells[1,self.Primpos];
end;
if varname='Всего' then value:=studentsform.PrimGrid.RowCount-1;
if varname='Оценка' then
begin
//value:=strtoint(studentsform.DiscGrid.Cells[4,self.discpos]);
s:=self.MarksList[strtoint(studentsform.PrimGrid.Cells[2,self.Primpos])-2];
value:=trim(copy(s,pos('.',s)+1,length(s)-pos('.',s)));

end;
except
if varname='Всего' then value:=0;
if varname='Оценка' then  value:=0;
value:='Z';
end;        }
end;



procedure TMainForm.dvo_nepolnExecute(Sender: TObject);
var id:string;
begin
{self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
self.openStudentIntoForm(id,self.ListView1.ItemIndex+1); //printt
self.frxReport1.LoadFromFile(extractfilepath(application.ExeName)+'diplom_nepoln_vo.fr3');
self.frxReport1.ShowReport();    }
self.PrintDoc(extractfilepath(application.ExeName)+'diplom_nepoln_vo.fr3');
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//self.MainSettings.SaveToFile();
Mainform.MainSettings.Settings.Values['MainFormLeft']:=inttostr(self.Left);
Mainform.MainSettings.Settings.Values['MainFormTop']:=inttostr(self.Top);
Mainform.MainSettings.Settings.Values['MainFormWidth']:=inttostr(self.Width);
Mainform.MainSettings.Settings.Values['MainFormHeight']:=inttostr(self.Height);

{Mainform.MainSettings.Settings.Values['HelpFormLeft']:=inttostr(helpform.Left);
Mainform.MainSettings.Settings.Values['HelpFormTop']:=inttostr(helpform.Top);
Mainform.MainSettings.Settings.Values['HelpFormWidth']:=inttostr(helpform.Width);
Mainform.MainSettings.Settings.Values['HelpFormHeight']:=inttostr(helpform.Height);
}

{  MainForm.Left:=strtoint(Mainform.MainSettings.Settings.Values['MainFormLeft']);
  MainForm.Top:=strtoint(Mainform.MainSettings.Settings.Values['MainFormTop']);
  MainForm.Width:=strtoint(Mainform.MainSettings.Settings.Values['MainFormWidth']);
  MainForm.Height:=strtoint(Mainform.MainSettings.Settings.Values['MainFormHeight']);}

self.MainSettings.SaveToFile(extractfilepath(application.ExeName)+'diplom.ini','main');

end;

procedure TMainForm.FileSaveExecute(Sender: TObject);
begin

if self.databasepath='' then self.FileSaveAsExecute(sender) else
begin
  copyfile(pchar(self.MainConnection.Database),pchar(self.databasepath),false);

end;
end;

procedure TMainForm.FileSaveAsExecute(Sender: TObject);
begin
if self.SaveDialog1.Execute then
begin
self.SaveDialog1.FileName:=changefileext(self.SaveDialog1.FileName,'.db3');

  copyfile(pchar(self.MainConnection.Database),pchar(self.SaveDialog1.filename),false);
 self.databasepath:=self.SaveDialog1.filename;

 
if self.databasepath<>'' then self.Caption:='Аттестат-Экспресс - ['+extractfilename(self.databasepath)+']' else self.Caption:='Аттестат-Экспресс - [Новый журнал]';

end;

end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//self.FileCloseExecute(sender);
canclose:=true;
if self.FileClose.Enabled then if not self.closedatabase(true) then canclose:=false;
//exit;

end;

procedure TMainForm.AboutActionExecute(Sender: TObject);
begin
aboutform.ShowModal;
end;

procedure TMainForm.dvo_nepoln_prilExecute(Sender: TObject);
var id:string;
begin
{self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.frxReport1.LoadFromFile(extractfilepath(application.ExeName)+'pril_nepoln_vo.fr3');
self.frxReport1.ShowReport(); }
self.PrintDoc(extractfilepath(application.ExeName)+'pril_nepoln_vo.fr3');

end;

procedure TMainForm.AkSprVuzExecute(Sender: TObject);
var id:string;
begin
{self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.frxReport1.LoadFromFile(extractfilepath(application.ExeName)+'akad_sprav_vo.fr3');
self.frxReport1.ShowReport();    }
self.PrintDoc(extractfilepath(application.ExeName)+'akad_sprav_vo.fr3');
end;

procedure TMainForm.dipl_spoExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'diplom_so.fr3');
//self.frxReport1.ShowReport();

end;

procedure TMainForm.npo_diplExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'diplom_npo.fr3');
//self.frxReport1.ShowReport();

end;

procedure TMainForm.svid_urkvExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'svid_ur_kval.fr3');
//self.frxReport1.ShowReport();


end;

procedure TMainForm.spo_prilExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'pril_spo.fr3');
//self.frxReport1.ShowReport();


end;

procedure TMainForm.npo_prilExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'pril_npo.fr3');
//self.frxReport1.ShowReport();

end;

procedure TMainForm.svid_urkExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'pril_svid_ur.fr3');
//self.frxReport1.ShowReport();
end;

procedure TMainForm.tabl_discExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'tabl_disc.fr3');
//self.frxReport1.ShowReport();
end;


procedure TMainForm.spavka_spoExecute(Sender: TObject);
var id:string;

begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(extractfilepath(application.ExeName)+'akad_sprav_spo.fr3');
//rs:=TResourceStream.Create(hinstance, 'akad_sprav_spo', RT_RCDATA);
//self.frxReport1.LoadFromStream(rs);
//rs.Free;
//self.frxReport1.ShowReport();
end;

         
procedure TMainForm.attestat_prilExecute(Sender: TObject);
var id:string;
begin
self.showZ:=true;
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(self.GetBlankName(15));

//self.frxReport1.ShowReport();
self.showZ:=false;

end;

procedure TMainForm.attestatExecute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(self.GetBlankName(0));
//self.frxReport1.Pages[0].
//self.frxReport1.ShowReport();


end;

procedure TMainForm.Action1Execute(Sender: TObject);
var
s:string;
i:integer;
page:TFrxPage;
wmemo:TFrxMemoView;
begin
self.PrintDoc(self.GetBlankName(22));
{if self.frxReport1.LoadFromFile(self.GetBlankName(TAction(sender).tag and 31)) then
self.frxReport1.DesignReport else showmessage('Файл "'+self.GetBlankName(TAction(sender).tag and 31)+'" не найден, переустановите приложение');
}

end;

procedure TMainForm.frxReport1BeforePrint(Sender: TfrxReportComponent);
var i:integer;
s:string;

begin


if self.MainSettings.Settings.Values['KursOborot']='1' then
begin
if self.frxReport1.FindObject('bndCourseWorks')<>nil then
self.frxReport1.FindObject('bndCourseWorks').visible:=true;
if self.frxReport1.FindObject('bndHeaderCourseWorks')<>nil then
self.frxReport1.FindObject('bndHeaderCourseWorks').visible:=true;
end else
begin
if self.frxReport1.FindObject('bndCourseWorks')<>nil then
self.frxReport1.FindObject('bndCourseWorks').visible:=false;
if self.frxReport1.FindObject('bndHeaderCourseWorks')<>nil then
self.frxReport1.FindObject('bndHeaderCourseWorks').visible:=false;

end;


if self.MainSettings.Settings.Values['GosOborot']='1' then
begin
if self.frxReport1.FindObject('bndExaminations')<>nil then
self.frxReport1.FindObject('bndExaminations').visible:=true;
if self.frxReport1.FindObject('bndHeaderExaminations')<>nil then
self.frxReport1.FindObject('bndHeaderExaminations').visible:=true;
end else
begin
if self.frxReport1.FindObject('bndExaminations')<>nil then
self.frxReport1.FindObject('bndExaminations').visible:=false;
if self.frxReport1.FindObject('bndHeaderExaminations')<>nil then
self.frxReport1.FindObject('bndHeaderExaminations').visible:=false;
end;


if self.MainSettings.Settings.Values['PractOborot']='1' then
begin
if self.frxReport1.FindObject('bndPractics')<>nil then
self.frxReport1.FindObject('bndPractics').visible:=true;
if self.frxReport1.FindObject('bndHeaderPractics')<>nil then
self.frxReport1.FindObject('bndHeaderPractics').visible:=true;
end else
begin
if self.frxReport1.FindObject('bndPractics')<>nil then
self.frxReport1.FindObject('bndPractics').visible:=false;
if self.frxReport1.FindObject('bndHeaderPractics')<>nil then
self.frxReport1.FindObject('bndHeaderPractics').visible:=false;

end;


//self.frxReport1.Pages[0].FindObject('WMMemo').p:=false;
end;






procedure TMainForm.RegistryExecute(Sender: TObject);
begin
regform.showmodal;
end;

procedure TMainForm.Export2DbfExecute(Sender: TObject);
const yn:array[0..1] of string=('НЕТ','ДА');
st:array[0..1] of string=('В','Д');
var i,id:integer;
sc,ss:string;
begin
if self.SaveDialog2.Execute then
begin
{//self.HalcyonDataSet1.DatabaseName:=extractfilepath(self.SaveDialog2.FileName);
//self.HalcyonDataSet1.TableName:=extractfilename(self.SaveDialog2.FileName);
//self.CreateHalcyonDataSet1.Execute;
self.ZQuery1.Active:=false;
self.ZQuery1.ExecSQL;
self.ZQuery1.Active:=true;

self.ZQuery1.First;
ExportForm.CheckBox1.Checked:=false;
while not self.ZQuery1.Eof do
begin
exportform.Memo1.Text:=self.ZQuery1.FieldValues['FIO'];
exportform.Memo2.Text:=self.ZQuery1.FieldValues['specialnost'];
if not ExportForm.CheckBox1.Checked then if exportform.showmodal=mrcancel then exit;
try
sc:=self.ZQuery1.FieldValues['spec_kod'];
ss:=self.ZQuery1.FieldValues['spec_sprav'];
except
end;
self.HalcyonDataSet1.InsertRecord([
exportform.Edit2.Text,
self.ZQuery1.FieldValues['diplom_regnum'],
'',
self.ZQuery1.FieldValues['FIO'],
self.ZQuery1.FieldValues['specialnost'],
sc,
ss,
copy(exportform.ComboBox1.Text,1,1),
exportform.Edit1.Text,
self.ZQuery1.FieldValues['kvalify'],
self.ZQuery1.FieldValues['zakonchil_god'],
yn[strtoint(self.ZQuery1.FieldValues['diplom_otl'])],
copy(self.ZQuery1.FieldValues['diplom_sn'],1,pos(' ',self.ZQuery1.FieldValues['diplom_sn'])-1),
copy(self.ZQuery1.FieldValues['diplom_sn'],pos(' ',self.ZQuery1.FieldValues['diplom_sn'])+1,length(self.ZQuery1.FieldValues['diplom_sn'])-pos(' ',self.ZQuery1.FieldValues['diplom_sn'])),
self.ZQuery1.FieldValues['vid_date'],
self.ZQuery1.FieldValues['resh_date'],
exportform.Edit3.Text,
self.ZQuery1.FieldValues['prikaz_date'],
self.ZQuery1.FieldValues['prikaz_num'],
'',
'',
st[strtoint(self.ZQuery1.FieldValues['diplom_dublikat'])],
'',
'',
'',
'',
'',
'',
''
]);

self.ZQuery1.Next;
end;
self.HalcyonDataSet1.FlushDBF;
self.HalcyonDataSet1.Close;
 }
end;


end;

procedure TMainForm.frxReport1BeginDoc(Sender: TObject);
var c,i,cnt,cntmax:integer;
s:string;

st:tsystemtime;
tmax1,tmax,kh,kw,l,t,mw,hh,mh,ztop,zleft,zheight,zwidth:double;
memn,memn1:string;
wmemo:TFrxMemoView;
wline:TFrxLineView;
begin
self.rn:=-1;
if self.showZdop and (self.MainSettings.Settings.Values['DopsvZ']='1') then
begin
cnt:=studentsform.DopSvMemo.Lines.Count;
//mh:=self.frxReport1.Pages[1].findobject('MasterData1').height;
//if mh<self.frxReport1.Pages[1].findobject('Memo1').height then mh:=self.frxReport1.Pages[1].findobject('Memo1').height;

hh:=mh/2;

//mw:=self.frxReport1.Pages[1].findobject('memo1').width;
//cntmax:=trunc((Tfrxreportpage(self.frxReport1.Pages[1]).paperheight*3.5-(Tfrxreportpage(self.frxReport1.Pages[1]).topMargin+Tfrxreportpage(self.frxReport1.Pages[1]).bottomMargin)*3.5)/mh);


cntmax:=0;
tmax:=0;
memn:='';
for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
memn1:=TFrxMemoView(self.frxReport1.Components[i-1]).text;
memn1:=copy(memn1,1,pos(']',memn1));
c:=-1;
if ansiuppercase(copy(memn1,1,length('[Доп_сведения_')))=ansiuppercase('[Доп_сведения_') then c:= strtoint(copy(memn1,length('[Доп_сведения_')+1,length(memn1)-length('[Доп_сведения_')-1));
{if c=cnt then
begin
tmax1:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
end;  }

if (tmax<=TFrxMemoView(self.frxReport1.Components[i-1]).top) and (c>=0) then
begin
if c<=cnt then
begin
tmax1:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
end;
//mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
tmax:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
memn:=TFrxMemoView(self.frxReport1.Components[i-1]).text;
end;

end;
end;
memn:=copy(memn,1,pos(']',memn));
if ansiuppercase(copy(memn,1,length('[Доп_сведения_')))=ansiuppercase('[Доп_сведения_') then cntmax:= strtoint(copy(memn,length('[Доп_сведения_')+1,length(memn)-length('[Доп_сведения_')-1));


cntmax:=cnt;
if cnt<=cntmax then
begin
kw:=100;
kh:=100;
l:=0;
t:=0;
try
kw:=strtofloat(self.MainSettings.Settings.Values['DopZW']);
kh:=strtofloat(self.MainSettings.Settings.Values['DopZH']);
l:=strtofloat(self.MainSettings.Settings.Values['DopZL']);
t:=strtofloat(self.MainSettings.Settings.Values['DopZT']);
except
end;

{zTop:=((cnt)*mh+hh)+t;
ZHeight:=(self.frxReport1.Pages[1].findobject('DateMemo').top-Ztop-hh)*kh;
zLeft:=self.frxReport1.Pages[1].findobject('memo1').Left+l;
zWidth:=mw*kw;    }

zTop:=mh+tmax1+mh/2+t*3.795;
ZHeight:=(self.frxReport1.Pages[1].findobject('DateMemo').top-zTop-mh)*kh/100;

zLeft:=l;

//self.frxReport1.Pages[1].findobject('memo1').Left+(self.frxReport1.Pages[1].Width-(Tfrxreportpage(self.frxReport1.Pages[1]).leftMargin+Tfrxreportpage(self.frxReport1.Pages[1]).RightMargin)*3.5-70)/2;
zWidth:=kw*3.795;

//(self.frxReport1.Pages[1].Width-(Tfrxreportpage(self.frxReport1.Pages[1]).leftMargin+Tfrxreportpage(self.frxReport1.Pages[1]).RightMargin)*3.5-70)/2;
wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;


wline.Top:=ztop+zheight;
wline.Height:=-zheight;
wline.Left:=zleft;
wline.Width:=zWidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;

wline.Top:=ztop;
wline.Height:=0;
wline.Left:=zleft;
wline.Width:=zwidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.Top:=ztop+zheight;
wline.height:=0;
wline.Left:=zleft;
wline.Width:=zwidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

{wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.Top:=ztop+zheight*0.5;
wline.height:=0;
wline.Left:=zwidth*0.25+zleft;
wline.Width:=zwidth/2;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;   }


end;
end;

if self.showZ and (self.MainSettings.Settings.Values['DiscZLeft']='1') then
begin
cnt:=studentsform.DiscGrid.RowCount-1;
mh:=self.frxReport1.Pages[1].findobject('Memo1').height;
if mh<self.frxReport1.Pages[1].findobject('Memo2').height then mh:=self.frxReport1.Pages[1].findobject('Memo2').height;


hh:=mh/2;

//mw:=self.frxReport1.Pages[1].findobject('memo2').Left-self.frxReport1.Pages[1].findobject('memo1').Left+self.frxReport1.Pages[1].findobject('memo2').Width;
//cntmax:=round((Tfrxreportpage(self.frxReport1.Pages[1]).paperheight*3.795-(Tfrxreportpage(self.frxReport1.Pages[1]).topMargin+Tfrxreportpage(self.frxReport1.Pages[1]).bottomMargin)*3.795)/mh);
cntmax:=0;
tmax:=0;
memn:='';
for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
memn1:=TFrxMemoView(self.frxReport1.Components[i-1]).text;
memn1:=copy(memn1,1,pos(']',memn1));
if ansiuppercase(copy(memn1,1,length('[Дисциплина_назв_')))=ansiuppercase('[Дисциплина_назв_') then c:= strtoint(copy(memn1,length('[Дисциплина_назв_')+1,length(memn1)-length('[Дисциплина_назв_')-1));
if ansiuppercase(copy(memn1,1,length('[Дисциплина_оценка_')))=ansiuppercase('[Дисциплина_оценка_') then c:= strtoint(copy(memn1,length('[Дисциплина_оценка_')+1,length(memn1)-length('[Дисциплина_оценка_')-1));
{if c=cnt then
begin
tmax1:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
end;  }

if tmax<=TFrxMemoView(self.frxReport1.Components[i-1]).top then
begin
if c<=cnt then
begin
tmax1:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
end;
//mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
tmax:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
memn:=TFrxMemoView(self.frxReport1.Components[i-1]).text;
end;

end;
end;
memn:=copy(memn,1,pos(']',memn));
if ansiuppercase(copy(memn,1,length('[Дисциплина_назв_')))=ansiuppercase('[Дисциплина_назв_') then cntmax:= strtoint(copy(memn,length('[Дисциплина_назв_')+1,length(memn)-length('[Дисциплина_назв_')-1));
if ansiuppercase(copy(memn,1,length('[Дисциплина_оценка_')))=ansiuppercase('[Дисциплина_оценка_') then cntmax:= strtoint(copy(memn,length('[Дисциплина_оценка_')+1,length(memn)-length('[Дисциплина_оценка_')-1));

if cnt<cntmax then
begin

 kw:=100;
kh:=100;
l:=0;
t:=0;
try
kw:=strtofloat(self.MainSettings.Settings.Values['DiscZLW']);
kh:=strtofloat(self.MainSettings.Settings.Values['DiscZLH']);
l:=strtofloat(self.MainSettings.Settings.Values['DiscZLL']);
t:=strtofloat(self.MainSettings.Settings.Values['DiscZLT']);
except
end;

{zTop:=(cnt)*mh+hh+t;
ZHeight:=((Tfrxreportpage(self.frxReport1.Pages[1]).paperheight*3.795-zTop-(Tfrxreportpage(self.frxReport1.Pages[1]).topMargin+Tfrxreportpage(self.frxReport1.Pages[1]).bottomMargin)*3.795))*kh;
zLeft:=self.frxReport1.Pages[1].findobject('memo1').Left+l;
zWidth:=mw*kw;

                                            }

zTop:=mh+tmax1+mh/2+t*3.795;
ZHeight:=(((Tfrxreportpage(self.frxReport1.Pages[1]).paperheight*3.795-zTop-(Tfrxreportpage(self.frxReport1.Pages[1]).topMargin+Tfrxreportpage(self.frxReport1.Pages[1]).bottomMargin)*3.795)))*kh/100;

zLeft:=l;

//self.frxReport1.Pages[1].findobject('memo1').Left+(self.frxReport1.Pages[1].Width-(Tfrxreportpage(self.frxReport1.Pages[1]).leftMargin+Tfrxreportpage(self.frxReport1.Pages[1]).RightMargin)*3.5-70)/2;
zWidth:=kw*3.795;

//(self.frxReport1.Pages[1].Width-(Tfrxreportpage(self.frxReport1.Pages[1]).leftMargin+Tfrxreportpage(self.frxReport1.Pages[1]).RightMargin)*3.5-70)/2;
wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;


wline.Top:=ztop+zheight;
wline.Height:=-zheight;
wline.Left:=zleft;
wline.Width:=zWidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;

wline.Top:=ztop;
wline.Height:=0;
wline.Left:=zleft;
wline.Width:=zwidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.Top:=ztop+zheight;
wline.height:=0;
wline.Left:=zleft;
wline.Width:=zwidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

{wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.Top:=ztop+zheight*0.5;
wline.height:=0;
wline.Left:=zwidth*0.25+zleft;
wline.Width:=zwidth/2;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;    }


end;
end;

if self.showZ and (self.MainSettings.Settings.Values['DiscZRight']='1') then
begin
cnt:=studentsform.DiscGrid.RowCount-1;
{mh:=self.frxReport1.Pages[1].findobject('Memo1').height;
if mh<self.frxReport1.Pages[1].findobject('Memo2').height then mh:=self.frxReport1.Pages[1].findobject('Memo2').height;
hh:=mh/2;
mw:=self.frxReport1.Pages[1].findobject('memo2').Left-self.frxReport1.Pages[1].findobject('memo1').Left+self.frxReport1.Pages[1].findobject('memo2').Width;
}
cntmax:=0;
tmax:=0;
tmax1:=0;
memn:='';
mh:=0;
for i:=1 to self.frxReport1.ComponentCount do
begin
if self.frxReport1.Components[i-1] is TFrxMemoView then
begin
memn1:=TFrxMemoView(self.frxReport1.Components[i-1]).text;
memn1:=copy(memn1,1,pos(']',memn1));

if ansiuppercase(copy(memn1,1,length('[Дисциплина_назв_')))=ansiuppercase('[Дисциплина_назв_') then c:= strtoint(copy(memn1,length('[Дисциплина_назв_')+1,length(memn1)-length('[Дисциплина_назв_')-1));
if ansiuppercase(copy(memn1,1,length('[Дисциплина_оценка_')))=ansiuppercase('[Дисциплина_оценка_') then c:= strtoint(copy(memn1,length('[Дисциплина_оценка_')+1,length(memn1)-length('[Дисциплина_оценка_')-1));
{if (c=cnt) and ( TFrxMemoView(self.frxReport1.Components[i-1]).left/3.795>(Tfrxreportpage(self.frxReport1.Pages[1]).paperwidth-Tfrxreportpage(self.frxReport1.Pages[1]).leftmargin-Tfrxreportpage(self.frxReport1.Pages[1]).rightmargin)/2) then
begin
tmax1:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
end;  }


if (tmax<=TFrxMemoView(self.frxReport1.Components[i-1]).top) and ( TFrxMemoView(self.frxReport1.Components[i-1]).left/3.795>(Tfrxreportpage(self.frxReport1.Pages[1]).paperwidth-Tfrxreportpage(self.frxReport1.Pages[1]).leftmargin-Tfrxreportpage(self.frxReport1.Pages[1]).rightmargin)/2) then
begin
if c<=cnt then
begin
tmax1:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
end;
tmax:=TFrxMemoView(self.frxReport1.Components[i-1]).top;
//mh:=TFrxMemoView(self.frxReport1.Components[i-1]).height;
memn:=TFrxMemoView(self.frxReport1.Components[i-1]).text;
end;

end;
end;
memn:=copy(memn,1,pos(']',memn));
if ansiuppercase(copy(memn,1,length('[Дисциплина_назв_')))=ansiuppercase('[Дисциплина_назв_') then cntmax:= strtoint(copy(memn,length('[Дисциплина_назв_')+1,length(memn)-length('[Дисциплина_назв_')-1));
if ansiuppercase(copy(memn,1,length('[Дисциплина_оценка_')))=ansiuppercase('[Дисциплина_оценка_') then cntmax:= strtoint(copy(memn,length('[Дисциплина_оценка_')+1,length(memn)-length('[Дисциплина_оценка_')-1));



// showmessage(floattostr(Tfrxreportpage(self.frxReport1.Pages[1]).paperheight));
if cnt<cntmax then cnt:=0 else cnt:=cnt-cntmax;
if cnt>=0 then
begin



 kw:=100;
kh:=100;
l:=0;
t:=0;
try
kw:=strtofloat(self.MainSettings.Settings.Values['DiscZRW']);
kh:=strtofloat(self.MainSettings.Settings.Values['DiscZRH']);
l:=strtofloat(self.MainSettings.Settings.Values['DiscZRL']);
t:=strtofloat(self.MainSettings.Settings.Values['DiscZRT']);
except
end;


zTop:=mh+tmax1+mh/2+t*3.795;
ZHeight:=(((Tfrxreportpage(self.frxReport1.Pages[1]).paperheight*3.795-zTop-(Tfrxreportpage(self.frxReport1.Pages[1]).topMargin+Tfrxreportpage(self.frxReport1.Pages[1]).bottomMargin)*3.795)))*kh/100;

zLeft:=(Tfrxreportpage(self.frxReport1.Pages[1]).paperwidth-Tfrxreportpage(self.frxReport1.Pages[1]).leftmargin-Tfrxreportpage(self.frxReport1.Pages[1]).rightmargin)*3.795/2+l;

//self.frxReport1.Pages[1].findobject('memo1').Left+(self.frxReport1.Pages[1].Width-(Tfrxreportpage(self.frxReport1.Pages[1]).leftMargin+Tfrxreportpage(self.frxReport1.Pages[1]).RightMargin)*3.5-70)/2;
zWidth:=kw*3.795;
wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;


wline.Top:=ztop+zheight;
wline.Height:=-zheight;
wline.Left:=zleft;
wline.Width:=zWidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;

wline.Top:=ztop;
wline.Height:=0;
wline.Left:=zleft;
wline.Width:=zwidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.Top:=ztop+zheight;
wline.height:=0;
wline.Left:=zleft;
wline.Width:=zwidth;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;

{wline:=TFrxLineView.Create(self.frxReport1.Pages[1]);
wline.CreateUniqueName;
wline.Top:=ztop+zheight*0.5;
wline.height:=0;
wline.Left:=zwidth*0.25+zleft;
wline.Width:=zwidth/2;
wline.Diagonal:=true;
wline.Visible:=true;
wline.Printable:=true;  }

end;

end;


if self.MainSettings.Settings.Values['KursOborot']='1' then
begin
if self.frxReport1.FindObject('bndCourseWorks')<>nil then
self.frxReport1.FindObject('bndCourseWorks').visible:=true;
if self.frxReport1.FindObject('bndHeaderCourseWorks')<>nil then
self.frxReport1.FindObject('bndHeaderCourseWorks').visible:=true;
end else
begin
if self.frxReport1.FindObject('bndCourseWorks')<>nil then
self.frxReport1.FindObject('bndCourseWorks').visible:=false;
if self.frxReport1.FindObject('bndHeaderCourseWorks')<>nil then
self.frxReport1.FindObject('bndHeaderCourseWorks').visible:=false;

end;


if self.MainSettings.Settings.Values['GosOborot']='1' then
begin
if self.frxReport1.FindObject('bndExaminations')<>nil then
self.frxReport1.FindObject('bndExaminations').visible:=true;
if self.frxReport1.FindObject('bndHeaderExaminations')<>nil then
self.frxReport1.FindObject('bndHeaderExaminations').visible:=true;
end else
begin
if self.frxReport1.FindObject('bndExaminations')<>nil then
self.frxReport1.FindObject('bndExaminations').visible:=false;
if self.frxReport1.FindObject('bndHeaderExaminations')<>nil then
self.frxReport1.FindObject('bndHeaderExaminations').visible:=false;
end;


if self.MainSettings.Settings.Values['PractOborot']='1' then
begin
if self.frxReport1.FindObject('bndPractics')<>nil then
self.frxReport1.FindObject('bndPractics').visible:=true;
if self.frxReport1.FindObject('bndHeaderPractics')<>nil then
self.frxReport1.FindObject('bndHeaderPractics').visible:=true;
end else
begin
if self.frxReport1.FindObject('bndPractics')<>nil then
self.frxReport1.FindObject('bndPractics').visible:=false;
if self.frxReport1.FindObject('bndHeaderPractics')<>nil then
self.frxReport1.FindObject('bndHeaderPractics').visible:=false;

end;

//showmessage(floattostr(self.frxReport1.Pages[1].FindObject('Memo1').Height));


end;

procedure TMainForm.students_listExecute(Sender: TObject);
begin
self.ZQuery1.RecNo:=1;
self.frxReport1.LoadFromFile(self.GetBlankName(21));

self.frxReport1.ShowReport();
end;

function arrtostr(arr:array of string;delim:string):string;
var i:integer;
begin
result:='';
for i:=low(arr) to high(arr) do
begin
result:=result+arr[i]+delim;
end;
end;

procedure TMainForm.CsvExportExecute(Sender: TObject);
begin
self.csvfio:=false;
self.docsvexport;
end;

procedure strtostrlist(s:string;sl:tstringlist);
var i,p:integer;
begin
sl.Clear;
while (pos(';',s)>0) or (length(s)>0) do
begin
p:=pos(';',s)-1;
if p=-1 then p:=length(S);
sl.Add(copy(s,1,p));
delete(s,1,p);
if s<>'' then delete(s,1,1);
end;

end;

procedure TMainForm.DoImportCSV(filename:string;fiofl:boolean);
var sl,fnames,fvals:tstringlist;
sex,n,o,i,t:integer;
st,st1,pt:tsettings;
id,val,flds,vals,typ,s:string;
begin


sl:=tstringlist.Create;
fnames:=tstringlist.Create;
fvals:=tstringlist.Create;
sl.LoadFromFile(FileName);
//strtostrlist(sl[0],fnames);
//showmessage(fnames[0]);
if fiofl then
begin
fnames.Add('FIO');
end else
begin
fnames.Add('F');
fnames.Add('I');
fnames.Add('O');
end;
fnames.Add('SEX');
fnames.Add('DFIO');
for t:=1 to sl.Count do
begin
st:=TSettings.Create;
st1:=TSettings.Create;
pt:=TSettings.Create;
//fvals:=tstringlist.Create;
strtostrlist(sl[t-1],fvals);
for o:=1 to fnames.count do
begin
try
st.Settings.Values[fnames[o-1]]:=fvals[o-1];
except
end;

end;



pt.LoadFromFile(extractfilepath(application.exename)+'csv.ini','main');
st.Settings.Values['DIPL_SER_NOM']:=st.Settings.Values['DIPL_SER']+' '+st.Settings.Values['DIPL_NOM'];
StudentsForm.clearvalues;
StudentsForm.Button8.Click;
StudentsForm.getvalues(st);
//studentsform.setvalues(st);

for i:=1 to pt.Settings.Count do
begin
if st.Settings.Values[pt.Settings.Names[i-1]]='' then st.Settings.Add(pt.Settings.Names[i-1]+'=');
end;

if st.Settings.Values['FIO']='' then st.Settings.Values['FIO']:=trim(st.Settings.Values['F'])+' '+trim(st.Settings.Values['I'])+' '+trim(st.Settings.Values['O']);

if st.Settings.Values['SEX']='' then
begin
st.Settings.Values['DFIO']:=MakePadeg(st.Settings.Values['FIO'],3,-1);

i:=GetSex(pchar(st.Settings.Values['FIO']));

if i=0 then st.Settings.Values['SEX']:='Ж';
if i=1 then st.Settings.Values['SEX']:='М';
if i=-1 then st.Settings.Values['SEX']:='-';
end else
begin
sex:=-1;
if st.Settings.Values['SEX']='Ж' then sex:=0;
if st.Settings.Values['SEX']='М' then sex:=1;
st.Settings.Values['DFIO']:=MakePadeg(st.Settings.Values['FIO'],3,sex);


end;

ConvertSettings(st,st1,pt,true);
pt.Settings.Clear;
pt.LoadFromFile(extractfilepath(application.exename)+'sql.ini','main');

ConvertSettings(st,st1,pt,false);

//studentsform.setvalues();


flds:='';
vals:='';
for i:=1 to st1.settings.Count do
begin
if i>1 then
begin
flds:=flds+', ';
vals:=vals+', ';
end;
typ:=copy(st1.Settings.Names[i-1],1,1);
flds:=flds+copy(st1.Settings.Names[i-1],2,length(st1.Settings.Names[i-1])-1);
val:=st1.Settings.ValueFromIndex[i-1];
if typ='T' then val:='"'+escapestring(val)+'"';
if typ='D' then
begin
if val='' then val:='01.01.1900';
val:='"'+escapestring(copy(val,7,4)+'-'+copy(val,4,2)+'-'+copy(val,1,2))+'"';

end;
if typ='I' then if val='' then val:='0';
if typ='B' then if val='НЕТ' then val:='0' else val:='1'; 
if typ='A' then if val='В' then val:='0' else val:='1'; 
//if typ='T' then val:='"'+val+'"';
vals:=vals+val;
end;
s:='insert into students ('+flds+') values ('+vals+');';
self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:=s;
self.ZQuery2.ExecSQL;



self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='SELECT last_insert_rowid() as id;';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
ID:=self.ZQuery2.FieldValues['id'];
self.ZQuery2.Active:=false;

n:=strtoint(st.Settings.Values['KursCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into kursovie (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Kurs_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Kurs_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['GosCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into gos_eks (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Gos_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Gos_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['DiscCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into disciplines (name,time_all,time_aud,ball,student_id) values ("'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_2'])+','+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_3'])+','+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_4'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['PractCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into praktika (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Pract_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Pract_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

if self.currentmode<>1 then
begin
n:=strtoint(st.Settings.Values['PrimCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into notes (note,student_id) values ("'+escapestring(st.Settings.Values['Prim_'+inttostr(i)+'_1'])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;
end else
begin
n:=studentsform.DopSvMemo.Lines.Count;
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into notes (note,student_id) values ("'+escapestring(studentsform.DopSvMemo.Lines[i-1])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;


end;

st.Free;
st1.Free;
pt.Free;

end;

self.refreshtable;


end;






procedure TMainForm.ExportCSVFioExecute(Sender: TObject);
begin
self.csvfio:=true;
self.docsvexport;
end;

procedure TMainForm.docsvexport;
const yn:array[0..1] of string=('НЕТ','ДА');
st:array[0..1] of string=('В','Д');
var i,id:integer;
sF,sI,sO,sFIO,sc,ss,s:string;
sl:tstringlist;
begin
{
if self.SaveDialog3.Execute then
begin
self.SaveDialog3.FileName:=changefileext(self.SaveDialog3.FileName,'.csv');
self.ZQuery1.Active:=false;
self.ZQuery1.ExecSQL;
self.ZQuery1.Active:=true;

self.ZQuery1.First;
{s:='';
for i:=1 to self.CreateHalcyonDataSet1.CreateFields.Count do
begin
if self.csvfio then
begin
if copy(self.CreateHalcyonDataSet1.CreateFields[i-1],1,pos(';',self.CreateHalcyonDataSet1.CreateFields[i-1])-1)<>'FIO'
then s:=s+copy(self.CreateHalcyonDataSet1.CreateFields[i-1],1,pos(';',self.CreateHalcyonDataSet1.CreateFields[i-1])-1)+';'
else begin
s:=s+'F;I;O;'
end;

end else
begin
s:=s+copy(self.CreateHalcyonDataSet1.CreateFields[i-1],1,pos(';',self.CreateHalcyonDataSet1.CreateFields[i-1])-1)+';';
end;
end;
    }
//s:=s+'BIRTHDAY;INTEST;VKR_BALL;GAK_BALL;DFIO;PRED_DOC_NOM;PRED_DOC_YEAR;INYEAR;SROK;NAM_SPECIALIZE;UZ_END;UZ_IN;SCHOOL;PRED_DOC_NAME;GAK;VKR;';

{sl:=TStringList.Create;
//sl.Add(s);
ExportForm.CheckBox1.Checked:=false;
while not self.ZQuery1.Eof do
begin

sFIO:=self.ZQuery1.FieldValues['FIO'];
sF:=copy(SFIO,1,pos(' ',sfio)-1);
if sf='' then sf:=sfio;
delete(sfio,1,pos(' ',sfio));

si:=copy(SFIO,1,pos(' ',sfio)-1);
if si='' then si:=sfio;
delete(sfio,1,pos(' ',sfio));

so:=sfio;


if self.csvfio then
begin
s:=arrtostr(
[
sF,sI,sO,
self.ZQuery1.FieldValues['sex'],
self.ZQuery1.FieldValues['birth_date'],
self.ZQuery1.FieldValues['vid_date'],
self.ZQuery1.FieldValues['diplom_sn'],
studentsform.DocEdit.Items[self.ZQuery1.FieldValues['doctype']],
self.ZQuery1.FieldValues['prikaz_date'],
self.ZQuery1.FieldValues['prikaz_num'],
self.ZQuery1.FieldValues['klass'],
ZQuery1.FieldValues['postupil_god']],';');
end else
begin
 s:=arrtostr(
[
self.ZQuery1.FieldValues['FIO'],
self.ZQuery1.FieldValues['sex'],
self.ZQuery1.FieldValues['birth_date'],
self.ZQuery1.FieldValues['vid_date'],
self.ZQuery1.FieldValues['diplom_sn'],
studentsform.DocEdit.Items[self.ZQuery1.FieldValues['doctype']],
self.ZQuery1.FieldValues['prikaz_date'],
self.ZQuery1.FieldValues['prikaz_num'],
self.ZQuery1.FieldValues['klass'],
ZQuery1.FieldValues['postupil_god']],';');
end;


sl.Add(s);

self.ZQuery1.Next;
end;
sl.SaveToFile(changefileext(self.SaveDialog3.FileName,'.csv'));
sl.Free;

end;
}

end;


procedure TMainForm.attestat_obrExecute(Sender: TObject);
var id:string;
begin
self.showZdop:=true;
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(self.GetBlankName(16));
//self.frxReport1.Pages[0].
//self.frxReport1.ShowReport();
self.showZdop:=false;
end;

procedure TMainForm.ImportCSVExecute(Sender: TObject);
begin
if self.OpenDialog2.Execute then self.DoImportCSV( self.OpenDialog2.FileName, true);


end;

procedure TMainForm.ImportCSVDFExecute(Sender: TObject);
begin
//self.DoImportCSV(false);
if self.OpenDialog2.Execute then self.DoImportCSV( self.OpenDialog2.FileName, false);


end;

procedure TMainForm.Action15Execute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(self.GetBlankName(17));
//self.frxReport1.Pages[0].
//self.frxReport1.ShowReport();
end;

procedure TMainForm.Action19Execute(Sender: TObject);
var id:string;
begin
//self.ZQuery1.RecNo:=self.ListView1.ItemIndex+1;
//self.openStudentIntoForm(id,self.ListView1.ItemIndex+1);//printt
self.PrintDoc(self.GetBlankName(18));
//self.frxReport1.Pages[0].
//self.frxReport1.ShowReport();
end;

procedure TMainForm.ShowwFrom;
var regg:boolean;
begin


if self.databasepath='' then

if splash.showmodal=mrOk then
begin
if splash.JvImageListBox1.ItemIndex=0 then self.FileNew.Execute;
if splash.JvImageListBox1.ItemIndex=1 then self.FileOpen.Execute;
end;
end;

procedure TMainForm.FormShow(Sender: TObject);

begin


//self.Registry.Execute;
//if not demoonly and not regg then self.Registry.Execute;
{self.MainSettings:=Tsettings.Create;
self.MainSettings.LoadFromFile(extractfilepath(application.ExeName)+'diplom.ini','main');}

end;

procedure TMainForm.HelpExecute(Sender: TObject);
var sl:tstringlist;
begin
application.HelpCommand(HELP_CONTENTS,0);
end;

procedure TMainForm.Action22Execute(Sender: TObject);
var id:string;
i:integer;
clearreport:boolean;
begin
self.PrintDoc(self.GetBlankName(19));


end;

procedure TMainForm.Action25Execute(Sender: TObject);
var ini:tinifile;
sl:tstringlist;
ss:string;
r:tregistry;
begin

if regkeyinstform.ShowModal=mrOk then
begin
ini:=tinifile.Create(regkeyinstform.Edit1.Text);
sl:=tstringlist.Create;
//ini.ReadSections(sl);
r:=tregistry.Create;
try
r.RootKey:=HKEY_CURRENT_USER;
//sl[0];
r.OpenKey('Software',false);
r.OpenKey('ARMRegistr',true);
r.OpenKey('AttestatExpress',true);
ss:=ini.ReadString('HKEY_CURRENT_USER\Software\','"key"','');
if ss='' then ss:=ini.ReadString('HKEY_CURRENT_USER\Software','"key"','');
if ss='' then ss:=ini.ReadString('HKEY_CURRENT_USER\Software\ARMRegistr\AttestatExpress','"key"','');
if ss='' then ss:=ini.ReadString('HKEY_CURRENT_USER\Software\ARMRegistr\AttestatExpress\','"key"','');

r.WriteString('key',ss);
showmessage('Ключ установлен, пожалуйста перезапустите приложение');
finally
r.Free;
//showmessage(ini.ReadString(sl[0],'"key"',''));
ini.Free;
end;
end;
{if RegistrationFormSKE.showmodal=mrOk then
begin
if CheckKeyAndDecrypt(pchar(RegistrationFormSKE.edit2.text),pchar(RegistrationFormSKE.edit1.text),true) then
showmessage('Регистрация успешно выполнена. Перезапустите приложение')
else
showmessage('Ошибка при регистрации');
end;}

end;

procedure TMainForm.ExportToIniExecute(Sender: TObject);
var sl:tstringlist;
t,i:integer;
digest,alls,fio,fam,im,otch,s,id:string;
begin
if self.SaveDialog3.Execute then
begin
self.SaveDialog3.FileName:=changefileext(self.SaveDialog3.FileName,'.csv');

sl:=tstringlist.Create;

self.ZQuery1.Active:=false;
//self.ZQuery1.ExecSQL;
self.ZQuery1.Active:=true;
self.ZQuery1.First;
alls:='';
for i:=1 to self.ZQuery1.RecordCount do
begin
id:=self.ZQuery1.FieldValues['id'];
self.ListView1.ItemIndex:=i-1;
self.openstudentintoform(id,self.ListView1.ItemIndex+1);
self.ZQuery1.RecNo:=i;
s:='';
fio:=self.ZQuery1.FieldValues['FIO'];
if pos(' ',fio)>0 then fam:=copy(fio,1,pos(' ',fio)-1) else fam:=fio;
delete(fio,1,pos(' ',fio));
if pos(' ',fio)>0 then im:=copy(fio,1,pos(' ',fio)-1) else im:=fio;
delete(fio,1,pos(' ',fio));
 otch:=fio;

s:=s+fam+','+im+','+otch+','+stringreplace(self.ZQuery1.FieldValues['birth_date'],'.','/',[rfReplaceAll])+',';
s:=s+self.ZQuery1.FieldValues['diplom_sn']+',';
s:=s+stringreplace(self.ZQuery1.FieldValues['vid_date'],'.','/',[rfReplaceAll])+',';
s:=s+inttostr(self.ZQuery1.FieldValues['doctype'])+',';
for t:=1 to studentsform.DiscGrid.RowCount-1 do
begin
s:=s+'"'+studentsform.DiscGrid.Cells[1,t]+'",'+studentsform.DiscGrid.Cells[2,t];
if t<studentsform.DiscGrid.RowCount-1 then s:=s+',';
end;

sl.Add(s);
alls:=alls+s;
//self.ZQuery1.Next;
end;
digest:=md5(alls);
sl.Insert(0,self.FileSettings.Settings.Values['fio_dir']+','+quotestring(self.FileSettings.Settings.Values['uz_name'])+','+self.FileSettings.Settings.Values['end_year']);
sl.Insert(0,digest);
sl.Insert(0,'ISECUB');
sl.SaveToFile(self.SaveDialog3.FileName);
sl.Free;
end;
end;

procedure TMainForm.Action26Execute(Sender: TObject);
var i,ii:integer;
sl:tstringlist;
dtyp,typ,val,flds,vals,s:string;
st,st1,sqlst:tsettings;

fio,datfio,s1,ID,fam,im,otch,birthdate,diplsn,vid_date,disc,mark:string;
begin
if self.OpenDialog2.Execute then
begin
//self.DoImportCSV( self.OpenDialog2.FileName, false);
sl:=tstringlist.Create;
sl.LoadFromFile(self.OpenDialog2.FileName);

s:=sl[0];
if copy(s,1,6)='ISECUB' then
begin
s:=sl[2];
self.FileSettings.Settings.Values['fio_dir']:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
self.FileSettings.Settings.Values['uz_name']:=unquotestring(copy(s,1,pos(',',s)-1));
delete(s,1,pos(',',s));
self.FileSettings.Settings.Values['end_year']:=s;


for i:=3 to sl.Count-1 do
begin
s:=sl[i];
fam:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
im:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
otch:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
birthdate:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
diplsn:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
vid_date:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
dtyp:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));

birthdate:=stringreplace(birthdate,'/','.',[rfReplaceAll]);//copy(birthdate,7,4)+'-'+copy(birthdate,4,2)+'-'+copy(birthdate,1,2);
vid_date:=stringreplace(vid_date,'/','.',[rfReplaceAll]);
fio:=fam+' '+im+' '+otch;
datfio:=makepadeg(fio,3,-1);
st:=tsettings.Create;
st1:=tsettings.Create;
sqlst:=tsettings.Create;

sqlst.LoadFromFile(extractfilepath(application.ExeName)+'sql.ini','main');
st.Settings.Values['FIOEdit']:=fio;
st.Settings.Values['DFIOEdit']:=datfio;
st.Settings.Values['BirthDayEdit']:=birthdate;
st.Settings.Values['DiplomSNEdit']:=diplsn;
st.Settings.Values['VidDateEdit']:=vid_date;
st.Settings.Values['DocEdit']:=dtyp;
st.Settings.Values['PrikazNumEdit']:='';
for ii:=1 to sqlst.Settings.Count do st1.Settings.add(sqlst.Settings.ValueFromIndex[ii-1]+'=');

convertsettings(st,st1,sqlst,false);

{s1:='insert into students (FIO,dat_FIO,birth_date,diplom_sn,vid_date,diplom_work)'+
'values ("'+fio+'","'+datfio+'","'+birthdate+'","'+diplsn+'","'+vid_date+'","");';}
flds:='';
vals:='';
for ii:=1 to st1.settings.Count do
begin
if ii>1 then
begin
flds:=flds+', ';
vals:=vals+', ';
end;
typ:=copy(st1.Settings.Names[ii-1],1,1);
flds:=flds+copy(st1.Settings.Names[ii-1],2,length(st1.Settings.Names[ii-1])-1);
val:=st1.Settings.ValueFromIndex[ii-1];
if typ='T' then val:='"'+escapestring(val)+'"';
if typ='D' then if val='' then val:='"1900-01-01"' else val:='"'+escapestring(copy(val,7,4)+'-'+copy(val,4,2)+'-'+copy(val,1,2))+'"';
if typ='I' then if val='' then val:='0';
//if typ='T' then val:='"'+val+'"';
vals:=vals+val;
end;
s1:='insert into students ('+flds+',prikaz_num) values ('+vals+',0);';

self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:=s1;
self.ZQuery2.ExecSQL;

st.Free;
st1.Free;
sqlst.Free;

self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='SELECT last_insert_rowid() as id;';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
ID:=self.ZQuery2.FieldValues['id'];
self.ZQuery2.Active:=false;
s:=s+',';
repeat
delete(s,1,pos('"',s));
disc:=copy(s,1,pos('"',s)-1);
delete(s,1,pos('"',s));
delete(s,1,pos(',',s));

mark:=copy(s,1,pos(',',s)-1);
delete(s,1,pos(',',s));
//self.ZQuery2.SQL.Text:='insert into last_insert_rowid() as id;';
if (mark<>'') then
begin
self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='insert into disciplines (name,time_all,time_aud,ball,student_id) values ("'+escapestring(disc)+'",0,0,'+escapestring(mark)+','+id+');';
self.ZQuery2.ExecSQL;
end;

until disc='';



end;
end;

self.refreshtable;

sl.Free;
end;
end;

procedure TMainForm.frxReport1EndDoc(Sender: TObject);
begin
//showmessage(floattostr(self.frxReport1.Pages[1].FindObject('ColumnFooter1').top));

end;

procedure TMainForm.ListView1AdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
{if item.Checked then
begin
end;}
end;

procedure TMainForm.ListView1ColumnClick(Sender: TObject;
  Column: TListColumn);
begin
if column.Index=0 then self.FileSettings.Settings.Values['sort']:='';
if column.Index=1 then self.FileSettings.Settings.Values['sort']:='FIO';
if column.Index=2 then self.FileSettings.Settings.Values['sort']:='Birth_date';
if column.Index=3 then self.FileSettings.Settings.Values['sort']:='diplom_sn';
if column.Index=4 then self.FileSettings.Settings.Values['sort']:='vid_date';
self.setfileproperties(self.FileSettings);
self.refreshtable;
end;

procedure TMainForm.Action27Execute(Sender: TObject);
begin
self.ZQuery1.RecNo:=1;
self.frxReport1.LoadFromFile(self.GetBlankName(20));

self.frxReport1.ShowReport();
//self.PrintDoc(extractfilepath(application.ExeName)+'reestr.fr3');
end;

procedure TMainForm.Action29Execute(Sender: TObject);
var i:integer;
id:string;
st:tsettings;
begin
for i:=1 to self.ListView1.Items.Count do
begin
if self.ListView1.Items[i-1].Checked or self.ListView1.Items[i-1].Selected then
begin
//self.ZQuery1.RecNo:=i;

self.openStudentIntoForm(id,i);
studentsform.ApplyTemplate(false);
st:=TSettings.Create;
studentsform.getvalues(st);

self.SaveStudent(id,st);
st.Free;


end;
end;

end;



    procedure TmainForm.SaveStudent(id:string;st:tsettings);
    var i,n,a:integer;
st1,pt,pt1:tsettings;
flds,vals,val,s,sets,typ:string;
    begin

 {   st:=TSettings.Create;

StudentsForm.getvalues(st);}

st1:=TSettings.Create;
pt:=TSettings.Create;
pt.LoadFromFile(extractfilepath(application.exename)+'sql.ini','main');

ConvertSettings(st,st1,pt,true);

if id='' then
begin
flds:='';
vals:='';
for i:=1 to st1.settings.Count do
begin
if i>1 then
begin
flds:=flds+', ';
vals:=vals+', ';
end;
typ:=copy(st1.Settings.Names[i-1],1,1);
flds:=flds+copy(st1.Settings.Names[i-1],2,length(st1.Settings.Names[i-1])-1);
val:=st1.Settings.ValueFromIndex[i-1];
if typ='T' then val:='"'+escapestring(val)+'"';
if typ='D' then val:='"'+escapestring(copy(val,7,4)+'-'+copy(val,4,2)+'-'+copy(val,1,2))+'"';
if typ='I' then if val='' then val:='0';
//if typ='T' then val:='"'+val+'"';
vals:=vals+val;
end;
s:='insert into students ('+flds+',prikaz_num) values ('+vals+',0);';
self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:=s;
self.ZQuery2.ExecSQL;

//self.ZQuery1.Active:=true;

self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:='SELECT last_insert_rowid() as id;';
self.ZQuery2.ExecSQL;
self.ZQuery2.Active:=true;
ID:=self.ZQuery2.FieldValues['id'];
self.ZQuery2.Active:=false;
end else
begin

sets:='';
//vals:='';
for i:=1 to st1.settings.Count do
begin
if i>1 then
begin
sets:=sets+', ';
end;
typ:=copy(st1.Settings.Names[i-1],1,1);
val:=escapestring(st1.Settings.ValueFromIndex[i-1]);
if typ='T' then val:='"'+val+'"';
if typ='D' then val:='"'+copy(val,7,4)+'-'+copy(val,4,2)+'-'+copy(val,1,2)+'"';
if typ='I' then if val='' then val:='0';
sets:=sets+copy(st1.Settings.Names[i-1],2,length(st1.Settings.Names[i-1])-1)+'='+val;

//if typ='T' then val:='"'+val+'"';


//vals:=vals+val;

end;


s:='update students set '+sets+' where id='+id+';';
self.ZQuery2.Active:=false;
self.ZQuery2.SQL.Text:=s;
self.ZQuery2.ExecSQL;
//self.ZQuery1.Active:=true;
end;
try
self.ZQuery2.SQL.Text:='BEGIN TRANSACTION;';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from kursovie where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from gos_eks where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from disciplines where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from praktika where student_id='+id+';';
self.ZQuery2.ExecSQL;

self.ZQuery2.SQL.Text:='delete  from notes where student_id='+id+';';
self.ZQuery2.ExecSQL;


//self.ZQuery2.Active:=false;

n:=strtoint(st.Settings.Values['KursCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into kursovie (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Kurs_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Kurs_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['GosCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into gos_eks (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Gos_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Gos_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

n:=strtoint(st.Settings.Values['DiscCount']);
for i:=1 to n do
begin
try
a:=strtoint(st.Settings.Values['Disc_'+inttostr(i)+'_2'])
except
st.Settings.Values['Disc_'+inttostr(i)+'_2']:='0';
end;
try
a:=strtoint(st.Settings.Values['Disc_'+inttostr(i)+'_3'])
except
st.Settings.Values['Disc_'+inttostr(i)+'_3']:='0';
end;


self.ZQuery2.SQL.Text:='insert into disciplines (name,time_all,time_aud,ball,ege,student_id) values ("'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_2'])+','+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_3'])+','+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_2'])+',"'+escapestring(st.Settings.Values['Disc_'+inttostr(i)+'_4'])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;
//n:=StrToInt('gege');
n:=strtoint(st.Settings.Values['PractCount']);
for i:=1 to n do
begin

self.ZQuery2.SQL.Text:='insert into praktika (name,ball,student_id) values ("'+escapestring(st.Settings.Values['Pract_'+inttostr(i)+'_1'])+'",'+escapestring(st.Settings.Values['Pract_'+inttostr(i)+'_2'])+','+id+');';
self.ZQuery2.ExecSQL;
end;

if self.currentmode<>1 then
begin
n:=strtoint(st.Settings.Values['PrimCount']);
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into notes (note,student_id) values ("'+escapestring(st.Settings.Values['Prim_'+inttostr(i)+'_1'])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;
end else
begin
n:=studentsform.DopSvMemo.Lines.Count;
for i:=1 to n do
begin
self.ZQuery2.SQL.Text:='insert into notes (note,student_id) values ("'+escapestring(studentsform.DopSvMemo.Lines[i-1])+'",'+id+');';
self.ZQuery2.ExecSQL;
end;
end;

self.ZQuery2.SQL.Text:='COMMIT TRANSACTION;';
self.ZQuery2.ExecSQL;

except
self.ZQuery2.SQL.Text:='ROLLBACK TRANSACTION;';
self.ZQuery2.ExecSQL;

end;



pt.Free;
st1.Free;
//st.Free;


    end;


procedure TMainForm.Action30Execute(Sender: TObject);
begin
SimpleDesignerForm.show;
end;

procedure TMainForm.KorrectorActionExecute(Sender: TObject);
begin
KorrectorForm.showmodal;
end;

end.
