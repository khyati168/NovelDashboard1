unit Welcome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    welcome: TImage;
    Label1: TLabel;
    Label2: TLabel;

    procedure welcomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  uses
  QueryForm;
{$R *.dfm}

procedure TForm1.welcomeClick(Sender: TObject);
begin
   Hide;
   frmQuery.ShowModal;
end;
end.
