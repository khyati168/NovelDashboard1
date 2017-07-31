unit Novel_Dashboard;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  datamodule;

type
  TMainform = class(TForm)
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainform:  TMainform;
implementation

{$R *.dfm}

end.
