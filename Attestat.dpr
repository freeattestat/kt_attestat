program Attestat;

uses
  Forms,
  windows,
  sysutils,
  mainunit in 'mainunit.pas' {MainForm},
  studentunit in 'studentunit.pas' {StudentsForm},

  JvgStringGrid in '..\distrib\Programming\jvcl\run\JvgStringGrid.pas',
  TemplateUnit in 'TemplateUnit.pas' {TemplatesForm},
  SharedTypes in 'SharedTypes.pas',
  FilePropUnit in 'FilePropUnit.pas' {FilePropForm},
  SettingsUnit in 'SettingsUnit.pas' {SettingsForm},

  AboutUnit in 'AboutUnit.pas' {AboutForm},
  FileNewUnit in 'FileNewUnit.pas' {FileNewForm},
  RegUnit in 'RegUnit.pas' {RegForm},
  ExportUnit in 'ExportUnit.pas' {ExportForm},
  WizardUnit in 'WizardUnit.pas' {WizardForm},
  SplashForm in 'SplashForm.pas' {Splash},
  HelpUnit in 'HelpUnit.pas' {HelpForm},
  HelpPrint in 'HelpPrint.pas' {HelpPrintForm},
  regkeyinst in 'regkeyinst.pas' {RegKeyInstForm},
  splashpic in 'splashpic.pas' {SplashPicForm},
  SimpleDesigner in 'SimpleDesigner.pas' {SimpleDesignerForm},
  StoHtmlHelp in 'StoHtmlHelp.pas',
  KorrectorUnit in 'KorrectorUnit.pas' {KorrectorForm},
  CHMUnit in 'CHMUnit.pas',
  SKERegistrationUnit in 'SKERegistrationUnit.pas' {RegistrationFormSKE};

{$R *.res}
var
curdir,pfilename:string;
begin
SetThreadLocale(1049);
//showmessage( paramstr(1));
if paramcount>0 then
begin
pfilename:=paramstr(1);
getdir(0,curdir);
if extractfilepath(pfilename)='' then pfilename:=curdir+'\'+pfilename;
end;
  Application.Initialize;

   Application.Title := 'јттестат-Ёкспресс';
  Application.HelpFile := 'AttestatExpress.chm';
 SplashPicForm:=  TSplashPicForm.Create(Application);
 Splash:=TSplash.Create(Application);
 RegForm:=TRegForm.Create(Application);
//SettingsForm:=TSettingsForm(Application);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRegistrationFormSKE, RegistrationFormSKE);
  mainform.Hide;

//   sleep(1000);

  Application.CreateForm(TKorrectorForm, KorrectorForm);


 // Application.CreateForm(TSplashPicForm, SplashPicForm);

  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TFileNewForm, FileNewForm);
  //Application.CreateForm(TRegForm, RegForm);
  Application.CreateForm(TExportForm, ExportForm);
  Application.CreateForm(TWizardForm, WizardForm);
 // Application.CreateForm(TSplash, Splash);
 Application.CreateForm(TSettingsForm, SettingsForm);
  Application.CreateForm(THelpPrintForm, HelpPrintForm);
  Application.CreateForm(TRegKeyInstForm, RegKeyInstForm);
  Application.CreateForm(TSimpleDesignerForm, SimpleDesignerForm);


  Application.CreateForm(TTemplatesForm, TemplatesForm);
  Application.CreateForm(TFilePropForm, FilePropForm);

  MainForm._FormCreate(nil);
  try
    MainForm.Left:=strtoint(Mainform.MainSettings.Settings.Values['MainFormLeft']);
    MainForm.Top:=strtoint(Mainform.MainSettings.Settings.Values['MainFormTop']);
    MainForm.Width:=strtoint(Mainform.MainSettings.Settings.Values['MainFormWidth']);
    MainForm.Height:=strtoint(Mainform.MainSettings.Settings.Values['MainFormHeight']);

  except
  end;

   SplashPicForm.Show;
   application.ProcessMessages;
  Application.CreateForm(TStudentsForm, StudentsForm);

//    sleep(3000);
    SplashPicForm.Hide;

  if paramcount>0 then MainForm.OpenDatabase(pfilename);

    MainForm.ShowwFrom;



  Application.Run;
end.
