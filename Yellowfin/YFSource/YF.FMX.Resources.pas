unit YF.FMX.Resources;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, FMX.ImgList, YF.Resources;

type
  TYF_FMXResources = class(TDataModule, IFavourateImages)
    FavImages: TImageList;
  private
    { Private declarations }
  public
    procedure GetFavourateImage(const IsFavourate : Boolean; MSImage : TMemoryStream);
  end;

var
  YF_FMXResources: TYF_FMXResources;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TYF_FMXResources }

procedure TYF_FMXResources.GetFavourateImage(const IsFavourate: Boolean;
  MSImage: TMemoryStream);
begin
  if IsFavourate then
    FavImages.Source[1].MultiResBitmap[0].Bitmap.SaveToStream(MSImage)
  else
    FavImages.Source[0].MultiResBitmap[0].Bitmap.SaveToStream(MSImage);
end;

end.
