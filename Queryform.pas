unit Queryform;

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
  datamodule,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Novel_Dashboard,
  Edit_Form,
  BusinessLogic,
  ModelNovel;

type
  TfrmQuery = class(TForm)
    GroupBox1: TGroupBox;
    btndelete: TButton;
    btnnew: TButton;
    btnupdate: TButton;
    btnread: TButton;
    btnnext: TButton;
    DBGrid1: TDBGrid;
   procedure btnnextClick(Sender: TObject);
   procedure btnnewClick(Sender: TObject);
   procedure btnreadClick(Sender: TObject);
   procedure btnupdateClick(Sender: TObject);
   procedure btndeleteClick(Sender: TObject);
   procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public


    { Public declarations }
  end;

var
  frmQuery: TfrmQuery;
  FNovels: TNovels;
  Editform1:TEditForm;

implementation


{$R *.dfm}

//shows the mainform on click
procedure TfrmQuery.btnnextClick(Sender: TObject);
  begin
    mainform.show;
  end;

  //reads the record from the database
procedure TfrmQuery.btnreadClick(Sender: TObject);
  var
  SelectedISBN: String;
  begin
    Editform1:= TEditForm.Create(nil);
    FNovels:=TNovels.Create;
    try
      SelectedISBN:=DBGrid1.DataSource.DataSet.FieldByName('ISBN').AsString;
      TNovelOperations.read(SelectedISBN, FNovels);
      EditForm1.Fnovel:= FNovels;
      EditForm1.Formread;
      EditForm1.ShowModal;
    finally
      FNovels.free;
      EditForm1.Free;
    end;
  end;

  //Updates the records in database
procedure TfrmQuery.btnupdateClick(Sender: TObject);
var
 SelectedISBN: String;
  begin
    Editform1:= TEditForm.Create(nil);
    FNovels:=TNovels.Create;
    try
      SelectedISBN:=DBGrid1.DataSource.DataSet.FieldByName('ISBN').AsString;
      TNovelOperations.read(SelectedISBN, FNovels);
      EditForm1.Fnovel:= Fnovels;
      EditForm1.Formread;
      Editform1.ShowModal;
      TNovelOperations.novelUpdate(FNovels);
    finally
      FNovels.Free;
      Editform1.Free;
    end;
  end;

procedure TfrmQuery.FormShow(Sender: TObject);
begin
  //(DBGrid1.Columns.Grid.Fields.DataSet
end;


//deletes the record from the database
procedure TfrmQuery.btndeleteClick(Sender: TObject);
  var
  SelectedISBN: String;
  begin
  FNovels:=TNovels.Create;
    try
    SelectedISBN:=DBGrid1.DataSource.DataSet.FieldByName('ISBN').AsString;
      if (MessageDlg('Are you sure you want to delete', mtConfirmation, [mbYes,mbNo], 0, mbYes) = mrYes) then
      TNovelOperations.novelDelete(SelectedISBN);
    finally
      FNovels.Free;
    end;


  end;

//creates a new entry in database
procedure TfrmQuery.btnnewClick(Sender: TObject);
begin
    Editform1:= TEditForm.Create(nil);
    FNovels:=TNovels.Create;
  try
    EditForm1.Fnovel:= FNovels;
    EditForm1.ShowModal;
    TNovelOperations.create(FNovels);
  finally
    Editform1.Free;
    FNovels.Free;
  end;
end;
end.
