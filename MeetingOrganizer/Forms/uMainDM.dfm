object MainDM: TMainDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 214
  Width = 275
  object SQLConnection: TFDConnection
    ConnectionName = 'MO'
    Params.Strings = (
      
        'Database=C:\Users\ferna\Documents\Embarcadero\Studio\Projects\Me' +
        'etingOrganizer\MEETINGORGANIZER.IB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=IBLite')
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    LoginPrompt = False
    BeforeConnect = SQLConnectionBeforeConnect
    Left = 40
    Top = 24
  end
end
