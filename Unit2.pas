unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls,ShellApi;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    btn_enviar: TButton;
    GroupBox2: TGroupBox;
    username: TEdit;
    GroupBox1: TGroupBox;
    password: TEdit;
    GroupBox3: TGroupBox;
    idpassword: TEdit;
    GroupBox4: TGroupBox;
    idusername: TEdit;
    GroupBox5: TGroupBox;
    idbutton: TEdit;
    GroupBox6: TGroupBox;
    link: TEdit;
    procedure btn_enviarClick(Sender: TObject);
    procedure geraTxt;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn_enviarClick(Sender: TObject);
begin
     geraTxt;
     WinExec('bot.exe',SW_HIDE);
end;

procedure TForm2.geraTxt;
var  arq,arq_msg: TextFile;
     nLinha: integer;
     msg : String;
begin
  try
    AssignFile(arq, 'parametros.txt');
    Rewrite(arq);
    Writeln(arq,username.Text+',,'+password.Text+',,'+idusername.Text+',,'+idpassword.Text+',,'+idbutton.Text+',,'+link.text);
  finally
     CloseFile(arq);
  end;
end;

end.
