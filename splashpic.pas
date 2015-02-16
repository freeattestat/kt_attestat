unit splashpic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls;

type
  TSplashPicForm = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashPicForm: TSplashPicForm;

implementation

{$R *.dfm}

procedure TSplashPicForm.FormShow(Sender: TObject);
begin
//self.Timer1.Enabled:=true;
end;

procedure TSplashPicForm.Timer1Timer(Sender: TObject);
begin

//self.Timer1.Enabled:=false;
//self.ModalResult:=mrOk;
end;

end.
