unit AboutUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TBXControls, StdCtrls, ExtCtrls;

type
  TAboutForm = class(TForm)
    Button1: TButton;
    StaticText1: TStaticText;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    StaticText2: TStaticText;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

  LocalHardwareID : PChar;
  LocalUserName:Pchar;
implementation
uses mainunit;
{$R *.dfm}






procedure GetHardwareID(HardwareID : PChar);stdcall;
begin
  LocalHardwareID := HardwareID;
end;


procedure GetRegistrationInformation(NewUserName : PChar);stdcall;
begin
  LocalUserName := NewUserName;
end;
exports GetHardWareID;
exports GetRegistrationInformation;

procedure TAboutForm.FormShow(Sender: TObject);
var a:array[1..1000] of char;
i:integer;
begin
self.Label1.Caption:='Аттестат-Экспресс версия 1.9 (051)';


self.StaticText1.Caption:=stringreplace(self.StaticText1.Caption,'%username%',strpas(LocalUserName),[]);
self.StaticText1.Caption:=stringreplace(self.StaticText1.Caption,'%hardwareid%',strpas(LocalHardwareID),[]);

// self.Edit1.Text:=StrPas(LocalHardWareID);
end;

end.
