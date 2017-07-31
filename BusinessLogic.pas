unit BusinessLogic;

interface

uses
datamodule,
Vcl.Dialogs,
ModelNovel,
Winapi.Windows,
Winapi.Messages,
System.SysUtils,
System.Variants,
System.Classes,
Vcl.Graphics,
Vcl.Controls,
Vcl.Forms,
Vcl.StdCtrls,
Data.DB,
Vcl.Grids,
Vcl.DBGrids;

 type
  TNovelOperations=class(TObject)
  public
  class procedure read(AISBN: String ; ANovels: TNovels);
  class procedure create(ANovels: TNovels);
  class procedure novelUpdate(ANovels: TNovels);
  class procedure novelDelete(AISBN: String );

  end;


implementation

{ TNovelOperations }

  uses ComObj;

//deleting novels in database
class procedure TNovelOperations.novelDelete(AISBN: String);
var
ANovels: TNovels;
begin
  with DataModule2.ADOQuery2 do
  begin
    Active:=False;
    SqL.Clear;
    SQL.Add('DELETE FROM MoneyWasted WHERE ISBN='''+AISBN+'''');
    ExecSQl;
    DataModule2.ADOQuery1.Active:=false;
    DataModule2.ADOQuery1.Active:=true;
  end;
end;

//updating records in database
class procedure TNovelOperations.novelUpdate(ANovels: TNovels);
begin
  with DataModule2.ADOQuery2 do
    begin
    Active:=False;
    SQL.Clear;
    SQL.Add('UPDATE Moneywasted');
    SQL.Add('SET Novel_Name='''+Anovels.Novel_name+''',INR ='+inttostr(ANovels.INR)+', Owner_name='''+Anovels.Owner_name+''',Buy_Year='+inttostr(Anovels.Buy_Year)+',Read_Status='''+Anovels.ReadStatus+'''');
    SQL.Add ('WHERE ISBN='''+ANovels.ISBN+'''');
    ExecSql;
    DataModule2.ADOQuery1.Active:=false;
    DataModule2.ADOQuery1.Active:=true;
    end;
end;

//reading novels from database
class procedure TNovelOperations.read(AISBN: String ; ANovels: TNovels);
begin
  with DataModule2.ADOQuery2 do
    begin
    Active:=False;
    SQL.Clear;
    SQL.Add('Select * From MoneyWasted where ISBN='''+AISBN+'''');
    open;
    if RecordCount = 1 then
     begin
     ANovels.ISBN:= FieldByName('ISBN').AsString;
     ANovels.Novel_name:= FieldByName('Novel_Name').AsString;
     ANovels.INR:= FieldByName('INR').AsInteger;
     ANovels.Owner_name:= FieldByName('Owner_name').AsString;
     ANovels.Buy_Year:= FieldByName('Buy_Year').AsInteger;
     ANovels.ReadStatus:= FieldByName('Read_Status').AsString;
     end
     else
     raise Exception.create('Multiple Records present');
     DataModule2.ADOQuery1.Active:=false;
     DataModule2.ADOQuery1.Active:=true;
     end;
    end;

//creating novels in database
class procedure TNovelOperations.create(ANovels: TNovels);
var
s: string;
i: Integer;
begin
   with DataModule2.ADOQuery2 do
   begin
   if (trim(ANovels.ISBN)='')=false then
    begin
      try
      Active:=False;
      SQL.Clear;
      SQL.Add('INSERT INTO MoneyWasted(ISBN, Novel_Name, INR, Owner_name, Buy_Year, Read_Status)');
      SQL.Add('VALUES (:ISBN,:Novel_name,:INR,:Owner_name,:Buy_Year,:Read_Status)');
      Parameters.ParamByName('ISBN').Value:=Anovels.ISBN;
      Parameters.ParamByName('Novel_Name').Value:=Anovels.Novel_name;
      Parameters.ParamByName('INR').Value:=ANovels.INR;
      Parameters.ParamByName('Owner_name').Value:=Anovels.Owner_name;
      Parameters.ParamByName('Buy_Year').Value:=Anovels.Buy_Year;
      Parameters.ParamByName('Read_Status').Value:=Anovels.ReadStatus;
      ExecSQL;
      except
      on E:EOleException do
        begin
        i:=pos('PRIMARY KEY',E.message);
        if(i>0) then
        begin
        ShowMessage('please enter a unique isbn');
        end
        else
        raise E;
        end;
      end;
    DataModule2.ADOQuery1.Active:=false;
    DataModule2.ADOQuery1.Active:=true;
    end
    else
    begin
    ShowMessage('ISBN equals to ""  not recognised. Please enter a valid string');
    end;
   end;
end;

end.

