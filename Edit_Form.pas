unit Edit_Form;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  BusinessLogic,
  ModelNovel,
  datamodule, Vcl.Menus;

type
  TEditForm = class(TForm)
    Panel1: TPanel;
    btnsave: TButton;
    btncancel: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ISBN: TLabel;
    Novel_Name: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormRead;
    procedure FormCreate;
    procedure btnsaveClick(Sender: TObject);

  private
    { Private declarations }
  public
  Fnovel: TNovels;
  end;

  var
   EditForm:TEditForm;


implementation

uses
Queryform;


{$R *.dfm}

{ TEditForm }

procedure TEditForm.FormCreate;
begin
  Fnovel.ISBN:=Edit1.text;
  Fnovel.Novel_name:=Edit2.Text;
  Fnovel.INR:= StrtoInt(Edit3.Text);
  Fnovel.Owner_name:=Edit4.Text;
  FNovel.Buy_Year:=StrtoInt(Edit5.Text);
  Fnovel.ReadStatus:= Edit6.Text;
end;

procedure TEditForm.btnsaveClick(Sender: TObject);
begin
  FormCreate;
  ModalResult:= mrOk;
end;


procedure TEditForm.Formread;
begin
  Edit1.text:=Fnovel.ISBN;
  Edit2.Text:= Fnovel.Novel_name;
  Edit3.Text:= inttostr(Fnovel.INR);
  Edit4.Text:= Fnovel.Owner_name;
  Edit5.Text:= inttostr(FNovel.Buy_Year);
  Edit6.Text:=Fnovel.ReadStatus;
end;


end.
