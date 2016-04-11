program Deleter;

uses
  Forms,
  F_Main in 'F_Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'File Shredder';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
