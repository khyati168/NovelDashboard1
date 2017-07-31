unit datamodule;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Datasnap.Provider,
  Datasnap.DBClient,
  Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
