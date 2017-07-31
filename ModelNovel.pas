unit ModelNovel;

interface

  type
  TNovels=class

    private
    FNovel_Name: String;
    FISBN: String;
    FINR: Integer;
    FOwner_name: String;
    FBuy_Year: Integer;
    FRead_Status: String;
    FAuthor_name: String;
    FGenre: String;

    procedure SetNovel_Name(ANovel_name: String);
    function  GetNovel_name: String;
    procedure SetNovelISBN(ANovelISBN: String);
    function  GetNovelISBN: String;
    procedure SetNovelINR(ANovelINR: Integer);
    function  GetNovelINR: Integer;
    procedure SetOwnerName(AOwnerName: String);
    function  GetOwnerName: String;
    procedure SetBuy_Year(ABuy_Year: Integer);
    function  GetBuy_Year: Integer;
    procedure SetReadStatus(AReadStatus: String);
    function GetReadStatus: String;
    procedure SetAuthor_Name(AAuthor_name: String);
    function GetAuthor_Name: String;
    procedure SetGenre(AGenre: String);
    function GetGenre: String;

    public
    property Novel_name : String read GetNovel_name write SetNovel_name;
    property ISBN: String read GetNovelISBN write SetNovelISBN ;
    property INR: Integer read GetNovelINR write SetNovelINR;
    property Owner_name: String read GetOwnerName write SetOwnerName;
    property Buy_Year: Integer read GetBuy_Year write SetBuy_Year;
    property ReadStatus: String read GetReadStatus write SetReadStatus;
    property Author_name: String read GetAuthor_Name write SetAuthor_Name;
    property Genre: String read GetGenre write SetGenre;
  end;



implementation

{ TNovels }

{ TNovels }

function TNovels.GetAuthor_Name: String;
begin
  Result:= FAuthor_name;
 end;

function TNovels.GetBuy_Year: Integer;
begin
  Result:=FBuy_Year;
end;

function TNovels.GetGenre: String;
begin
  Result:=FGenre;
end;

function TNovels.GetNovelINR: Integer;
begin
  Result:=FINR;
end;

function TNovels.GetNovelISBN: String;
begin
  Result:=FISBN;
end;

function TNovels.GetNovel_name: String;
begin
  Result:=FNovel_Name;
end;

function TNovels.GetOwnerName: String;
begin
  Result:=FOwner_name;
end;

function TNovels.GetReadStatus: String;
begin
  Result:=FRead_Status;
end;

procedure TNovels.SetAuthor_Name(AAuthor_name: String);
begin
  FAuthor_name:=AAuthor_name;
end;

procedure TNovels.SetBuy_Year(ABuy_Year: Integer);
begin
  FBuy_Year:=ABuy_Year;
end;

procedure TNovels.SetGenre(AGenre: String);
begin
  FGenre:=AGenre;
end;

procedure TNovels.SetNovelINR(ANovelINR: Integer);
begin
  FINR:=ANovelINR;
end;

procedure TNovels.SetNovelISBN(ANovelISBN: String);
begin
   FISBN:=ANovelISBN;
end;

procedure TNovels.SetNovel_Name(ANovel_name: String);
begin
  FNovel_name:=ANovel_Name;
end;

procedure TNovels.SetOwnerName(AOwnerName: String);
begin
  FOwner_Name:=AOwnerName;
end;

procedure TNovels.SetReadStatus(AReadStatus: String);
begin
  FRead_Status:=AReadStatus;
end;

end.
