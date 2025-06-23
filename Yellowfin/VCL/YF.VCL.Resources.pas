unit YF.VCL.Resources;

interface

uses
  System.SysUtils, System.Classes, YF.Resources, Vcl.BaseImageCollection,
  Vcl.ImageCollection, System.ImageList, Vcl.ImgList, Vcl.VirtualImageList;

type
  TYF_VCLResources = class(TDataModule, IFavourateImages)
    FavImages: TImageCollection;
    icLogo: TImageCollection;
    vilLogo: TVirtualImageList;
    vilFavImages: TVirtualImageList;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetFavourateImage(const IsFavourate : Boolean; MSImage : TMemoryStream);
  end;

var
  YF_VCLResources: TYF_VCLResources;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses VCL.Graphics;

{ TDataModule1 }

procedure TYF_VCLResources.GetFavourateImage(const IsFavourate: Boolean;
  MSImage: TMemoryStream);
begin
  var Image : TWICImage;

  if IsFavourate then
    Image := FavImages.GetSourceImage(FavImages.GetIndexByName('Star Filled'), 40, 40)
  else
    Image := FavImages.GetSourceImage(FavImages.GetIndexByName('Star'), 40, 40);

  if Assigned(Image) then
    Image.SaveToStream(MSImage);
end;

end.
