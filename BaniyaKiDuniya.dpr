program BaniyaKiDuniya;

uses
  Vcl.Forms,
  Novel_Dashboard in 'Novel_Dashboard.pas' {Form34},
  Queryform in 'Queryform.pas' {frmQuery},
  datamodule in 'datamodule.pas' {DataModule2: TDataModule},
  Edit_Form in 'Edit_Form.pas' {EditForm},
  BusinessLogic in 'BusinessLogic.pas',
  ModelNovel in 'ModelNovel.pas',
  Welcome in 'Welcome.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmQuery, frmQuery);
  Application.CreateForm(Tmainform, mainform);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TEditForm, EditForm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
