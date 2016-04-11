unit F_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Gauges;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    dlgOpen1: TOpenDialog;
    btn2: TButton;
    gau1: TGauge;
    edt2: TEdit;
    ud1: TUpDown;
    lbl2: TLabel;
    CheckBox1: TCheckBox;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fl: string;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin

  if dlgOpen1.Execute
  then begin
    fl:= dlgOpen1.FileName;
    edt1.Text:=  fl;
    end
  else ShowMessage('Выбор файла отменен!');
end;

procedure TForm1.btn2Click(Sender: TObject);
  var
    DF: file of Byte;
    size, currentpos, progress, progr, i, count: Integer;
    oneperc: Real;
    rnd: Byte;

begin
  if FileExists(fl)
  then begin
    AssignFile(DF, fl);
    Reset(DF);
    size:=Filesize(DF);
    //ShowMessage('Размер файла='+IntToStr(size)+' б');
    progress:=1;
    progr:=0;
    oneperc:=size/100;
    gau1.Progress:=progress;
    count:= StrToInt(edt2.Text);
    for i:=1 to count do
    begin
      Rewrite(DF);
      currentpos:=1;
      Randomize;
      while currentpos < size do
      begin
        if progr > oneperc
        then
        begin
         progress:=progress+1;
         progr:=0;
          gau1.Progress:=Trunc(progress/count);
        end;
        rnd:= Random(256);
       BlockWrite(DF, rnd, 1);
       currentpos:=currentpos+1;
       progr:=progr+1;
       end;
    end;
    CloseFile(DF);
    if CheckBox1.Checked
    then begin
    if DeleteFile(fl)
    then ShowMessage('Файл полностью удален!')
    else ShowMessage('Произошла ошибка! Файл не был уничтожен!');
    end
    else ShowMessage('Байты файла были перезаписаны без удаления.');
  end
  else ShowMessage('Такого файла не существует!');
end;

end.
