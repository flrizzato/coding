unit YF.Resources;

interface

uses System.Classes;

type
  IFavourateImages = interface
    procedure GetFavourateImage(const IsFavourate : Boolean; MSImage : TMemoryStream);
  end;

implementation

end.
