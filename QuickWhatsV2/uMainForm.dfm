object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 582
  ClientWidth = 875
  Color = clBtnFace
  CustomTitleBar.Control = TitleBarPanel1
  CustomTitleBar.Enabled = True
  CustomTitleBar.Height = 40
  CustomTitleBar.SystemHeight = False
  CustomTitleBar.ShowCaption = False
  CustomTitleBar.ShowIcon = False
  CustomTitleBar.StyleColors = True
  CustomTitleBar.SystemColors = False
  CustomTitleBar.SystemButtons = False
  CustomTitleBar.BackgroundColor = clWhite
  CustomTitleBar.ForegroundColor = 65793
  CustomTitleBar.InactiveBackgroundColor = clWhite
  CustomTitleBar.InactiveForegroundColor = 10066329
  CustomTitleBar.ButtonForegroundColor = 65793
  CustomTitleBar.ButtonBackgroundColor = clWhite
  CustomTitleBar.ButtonHoverForegroundColor = 65793
  CustomTitleBar.ButtonHoverBackgroundColor = 16053492
  CustomTitleBar.ButtonPressedForegroundColor = 65793
  CustomTitleBar.ButtonPressedBackgroundColor = 15395562
  CustomTitleBar.ButtonInactiveForegroundColor = 10066329
  CustomTitleBar.ButtonInactiveBackgroundColor = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  VisualManager = FormTabsBar1
  GlassFrame.Enabled = True
  GlassFrame.Top = 50
  KeyPreview = True
  StyleElements = [seFont, seClient]
  ShowInTaskBar = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object TitleBarPanel1: TTitleBarPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 39
    CustomButtons = <
      item
        ButtonType = sbCustom
        Hint = 'Print Screen'
        Width = 24
        ShowHint = True
        OnPaint = TitleBarPanel1CustomButtons3Paint
        OnClick = actPrintExecute
      end
      item
        ButtonType = sbCustom
        Hint = 'New Message'
        Width = 25
        ShowHint = True
        OnPaint = TitleBarPanel1CustomButtons2Paint
        OnClick = actionNewMessageExecute
      end
      item
        ButtonType = sbCustom
        Hint = 'Remove Account'
        Width = 24
        ShowHint = True
        OnPaint = TitleBarPanel1CustomButtons1Paint
        OnClick = actionRemAccountExecute
      end
      item
        ButtonType = sbCustom
        Hint = 'New Account'
        Width = 24
        ShowHint = True
        OnPaint = TitleBarPanel1CustomButtons0Paint
        OnClick = actionNewAccountExecute
      end
      item
        ButtonType = sbCustom
        Hint = 'Organize'
        Width = 25
        ShowHint = True
        OnPaint = TitleBarPanel1CustomButtons4Paint
        OnClick = TitleBarPanel1CustomButtons4Click
      end>
    DesignSize = (
      875
      39)
    object FormTabsBar1: TFormTabsBar
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 500
      Height = 39
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 375
      Margins.Bottom = 0
      Align = alClient
      ParentColor = False
      ParentShowHint = False
      ShowHint = False
      TabOptions.Draggable = False
      TabOptions.ShowCloseButton = True
      TabMinWidth = 155
      Transparent = True
      ShowTabsMenuButton = True
    end
  end
  object ImageCollection: TImageCollection
    Images = <
      item
        Name = 'icons8_Plus_32'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA7930000027D494441545809ED963B
              6F13411446772D4BA1012385F7B3020B219117A22754E9829C5F14094411254A
              43116AA8404820149CA44B7E03459A20E5218C480188571186F3AD679C99785F
              C04A14C4BA67EEDDB9DFBD331EDBBB8EA2FFFD15973D00634C136D0B26E0140C
              826C97A1038BF02C8EE3757C75C6C2A3B00C65AD8D70F8AF7740933ACCC31EC8
              3A0C0B3009D7E1A445F15DE247F01E64AA9925A8FFD146283C0E4B20FBCE701F
              8E163543730C1E806A7046A7D128AA0BF2540DC01AC8368C31370241890B6A86
              60C3745FABB88112655D09E205906D325CE8CEFEFE48ED45D806D9C3521D50DE
              829FF00546F28AC82756A0B989E82BA8E7589E36C9215C01D974329133482472
              24490ACD3D90B59389AC014513641F18CA7CE1901993D5CFCD236AC02EC8AEB8
              79E76B2EC04F814C3793CF0AAA801BD347FA3C07594B838FBF81719B78657D95
              CEF5BC73B069CD9BB864E337D657E95C4FB746AFB77FA73A6367DF599F387D70
              49903164E5397AFF39B363CBCF5ADF73FE09B882C22F56AFBA82C0DF80DBE539
              BFAFDE491A4E9396D39CCB5B7FDEFA6DEB7BCEDFC0A69DBD667D95CEF5DC3AD8
              D4DFC06B9B9CB4BE4AE77AEA3F437A5FBE4CFFE44614EC864D2C836C3A48A45C
              48245252C1141A3DCA71C69D70900F2E508DC01E54F930FA463FF51C0A16CBBA
              403C07B22A1FC73359EBF5CDB3720D5E824C0FA6DB7DA282090AC741B538F382
              A1565012A62968C012C8F4F76A86603054F55FA13901B3F003646D8646BFB2C4
              0C857598077D7E38F389E131B4E02A1CB1289E227E02D2E08C6AE608EA2596CA
              97D06414DCAF83B0D0F4AE87F3BBEE67E3FD303F62D9268A164CC065380DB20E
              C3DB288AF4337BCA6D789DF8D00E4FA0F409FC02B487B748A69BDE7D00000000
              49454E44AE426082}
          end>
      end
      item
        Name = 'icons8_Minus_32'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000267494441545809ED964D
              4F13511486679A26B8D19A805FA0B2928698C88786BDB0628729BF8804E38240
              D8B880B5AE342610A30577FA1B58B0C1848F50230B357EB0C0CBF3CEDCDBDC32
              763AA5135848739E734EEF3DE7BDB777DA9906C1FFFE0AB31E8031A64C6D0526
              E13A7483EC00578377F03A0CC34D627EC6C2A3B00E59AD4AE170C73B40A4088B
              7004B21A6E09A6E03E5CB3287F42BE0C5F40A69E7992E2A93642E3555803D91F
              DC53B8DC4A8C9A2BF00CD443303A8D52ABBE8679BABAE013C8B68C310F1A0A32
              BCA16708B64CFCFA48E8CAD0169750BC04B26DDCED78B47D4FEF1DD805D9F34C
              0A548EC15FF80923999A528AD07804BF409A0F534AE3290A3F806C261EE9DC23
              360BB26AAA1A1565907DC5B5FCC2A58A79936895E00064F7BCA9282D443E76D3
              71087433F961F38E0337A66F88BC015945CEC7DFC0B89D786B639EC1694E9C14
              2D7803776DBE61639EC169BA35EADAFE9DEAA61DDDB7310ABA7051D2A6E3E8FD
              E7CC9E6DBF65633DF827E01A4C7DF60C127F036E97BDFEBAFA24A7C1D720EF03
              D9AE9C8FBF816D3B3168639EC169EE9C14F537F0DE4E4ED99867709AFACFF06F
              5DBE6CE772236AD80D9B5807D94CC344076F10D3A39C60DC093757A36A048E20
              CF87D16FF4A439D47C656F86E20590E5F9389EF396484F59B900AB20D383E971
              7A477296C671502FC1ACE00AC9AA94111A4AB00632FDBD9A23E94E6989A6A8E9
              817938045915578A26DB753416611174FD08E63BEE055460002E59944F93BF04
              D5108C7A16488AEDAE9BA8476414DCAF83B4A5E9530F27849A0C844DC613C32C
              5B66B00293D00F374056C37D0E82403FB357DCB637C92FECE204329FC0316A3E
              8384071D66A90000000049454E44AE426082}
          end>
      end
      item
        Name = 'icons8_New_Message_32'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000002FE494441545809ED96CB
              4B54511CC7672A034DA52883162D8C3228085A949B20105468616DA4FFA06DCB
              56A1063D5C866D826AD722CB5A06BD4021AC45B50C85A045428E8F86AC087B9C
              3EDF33E738E7DE3B33F78E622BE5FBF9BDCFEF8E77EE8CE6721B3F1B77C0DD01
              63CC56B80A1F61BDA4DD5758DEE02E5B7614AFC1FFD2E5F2955DC4956740FA8D
              D18B6970AD353BF635C14DF80BD2A7C452551D7F9C1FC7B72706EB2CB0E310BC
              01C9EF368935EA3A3AF1D320FDC05C804D89032905CE6C86415806690AD30956
              89E3B68A5103D708D7C1DFB2A7C47BD5CB02B307601224EDD0AE469D5541288E
              A0A2088BE4BD30035211732EEC578A99390FDF41D2D9DE704E4511D66CACA2B0
              4960A8B5C143F0BA4FB02B18B121B53DF018BC74A6CD3603E39B41A914566D94
              DA39FAFDB008D2674C9F6BA97786BC009266FA7D2FEE3520E2752D513DF97406
              930C74C06B90FC7B3B42A218675E613A82238990BE55F6466C92D35B60C018F3
              0BBC140F18634EC11D98867987E25BC43D5A85B7521CC1563191628D84D1C3F0
              0EDE421F4C429A5EFA81C4EAAA8DC464B9C09926E8852248B398413806BB1D8A
              87880BB0A2F21617F98E4B3339CEE899F88297EE62B6553B48AF19EE81B48CD9
              1F99A5601529A6241C18076914930FC7C9AD62B53CC531909E87BD9C2A2252AC
              9130DB0D5201D31A1FA56655A1BE9DC63C485D757FC7070BCFBA78249FCF7F75
              71AA63B6C8D00D90FC8EDC6AEEC0947E0538A24D71A85BC5EBCA691C05E9FDCA
              FBA64C4D5EE14A4D7935985FA2D70C2D9CF9465EF34B8C392B66F51CB490E8AE
              2D856FC12C45DD8913F219C8F44233EC298DF01B0CC36AB4A6B720BC03177929
              C33007F5E8743DC36ED69F997079FD8E5BE53F8673C4ADF10DD4AC2AD4F5315C
              B04D63BAE2FDBA72964C80348A893C13E456E1420A7A00C7F0D28BB0B7AA982D
              07C17F153F20DE516D11BD9DF008A4054CF4ABB8DAC1B43A8B4E1A63B41067FD
              1081FE0035E1C571FC255804691E93F5939676F9529F85FBE019A4E90903EDA5
              53EB6059DE03FA87E403FEA743F16DE2EE4A97FC07B325449283F5F215000000
              0049454E44AE426082}
          end>
      end
      item
        Name = 'icons8_Screenshot_32'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA79300000213494441545809ED94CB
              6AD550148613E9402DED0BE851F409EADCBE8C3E94F802A238D58248D9A71674
              DE2728B4820E2AE28576D22EBF3FDDBBAC93BD9393843A504E587FD6F55FFB9A
              54D5EA893B6066C1CC76A35B6107BB463FF56DEB3517907DF1177DD77A651676
              80F30EE6CEBC50322A44AF6003FAE9DC5363D9FE0EA4F8547DDDFDA6CEE35FE1
              715EC1069C995F0FF5DBE0009C83B65C10F8051E7B4EA74DE13ED8EB2C6825A8
              5D075FC132F942C1ED167DBC4B937B60179C012F1FBBBA51F4097839C5790F66
              5D9CCE38A477A0244FBA48143F0525D9C9385405EBB903E4347B946D64E48101
              C89B40F23B51F4AD7ABBEF3F705385755DFF949E88C4BD359AAF690B252271DD
              8F57E8C308D9D93993AB81A46FA1A521AA4A2CA19D25A6C1BFA1DB7242606112
              F8DD132019ACFF0E90362B4CE06593307B837E001E82B740F2C2D713A88124DF
              01A2FBA0F33F40AE11DF5036C1CF4072B55A9CFB76F91CAB2681503681B594E4
              726D277BA4BE11EBFDAA929D72B124574B0B724A16995797CF73567847C07D06
              24F36AE8033198BB03D8C1167DDCE21D9891D085432D886277FDF864B323F03B
              A0E3101247B690FCA2E6E88E483C02AFC14984EC2D72C7F8BD52F7665D92D937
              5F004D07731CBD31E921AEEE87D1A7597CF36AB2CB5F672AA1C986F4446C46DE
              69D4D598097C88A41F4C6292C0FF0E247B7A8D0223EA8F37479F83A9226E30B3
              D9A8C157C5FFF50EFC010677D9CC72E19BD50000000049454E44AE426082}
          end>
      end
      item
        Name = 'Closed Window_32px'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F400000006624B474400FF00FF00FFA0BDA793000000D2494441545809ED568B
              0984300C6D0FC7701107F1F6B849DCC31BE416718FDE7B8701233120B41C6224
              A16DF2FAE135BC9AD2DDBFBC27A09432EE6335C739E7F7763DEB00650BA8DDC7
              01D49E8FDA1B9C5DAF73267C909BE0473620F182D388239E7DCB8923DECAE918
              6A406CD6193D0268848BB97503D00CFF995E25A5BF5F411C201850A2C00A65A9
              B26DE59712A2052C78E2D2232FE2421CF10899461CF16652057905AB87102966
              5A0D42078281602018E81C81E921C9DEBF1EF55DA60FC04ADF6A0FDF81788EAD
              2B785A1C46AC15035FF8D96B3CDBDB72570000000049454E44AE426082}
          end>
      end>
    Left = 70
    Top = 220
  end
  object VirtualImageList: TVirtualImageList
    AutoFill = True
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'icons8_Plus_32'
        Name = 'icons8_Plus_32'
      end
      item
        CollectionIndex = 1
        CollectionName = 'icons8_Minus_32'
        Name = 'icons8_Minus_32'
      end
      item
        CollectionIndex = 2
        CollectionName = 'icons8_New_Message_32'
        Name = 'icons8_New_Message_32'
      end
      item
        CollectionIndex = 3
        CollectionName = 'icons8_Screenshot_32'
        Name = 'icons8_Screenshot_32'
      end
      item
        CollectionIndex = 4
        CollectionName = 'Closed Window_32px'
        Name = 'Closed Window_32px'
      end>
    ImageCollection = ImageCollection
    Left = 70
    Top = 290
  end
  object ActionManager: TActionManager
    ActionBars = <
      item
        ChangesAllowed = []
        Items = <
          item
            Action = actNewAcc
            Caption = '&New Account'
            ImageIndex = 0
            ImageName = 'icons8_Plus_32'
          end
          item
            Action = actRemAcc
            Caption = '&Remove Account'
            ImageIndex = 1
            ImageName = 'icons8_Minus_32'
          end
          item
            Action = actNewMsg
            Caption = 'N&ew Message'
            ImageIndex = 2
            ImageName = 'icons8_New_Message_32'
          end
          item
            Action = actPrint
            Caption = '&Print Screen'
            ImageIndex = 3
            ImageName = 'icons8_Screenshot_32'
          end>
        AutoSize = False
      end>
    Images = VirtualImageList
    Left = 70
    Top = 150
    StyleName = 'Platform Default'
    object actNewAcc: TAction
      Caption = 'New Account'
      Hint = 'New Account'
      ImageIndex = 0
      ImageName = 'icons8_Plus_32'
      OnExecute = actionNewAccountExecute
    end
    object actRemAcc: TAction
      Caption = 'Remove Account'
      Hint = 'Remove Account'
      ImageIndex = 1
      ImageName = 'icons8_Minus_32'
      OnExecute = actionRemAccountExecute
    end
    object actNewMsg: TAction
      Caption = 'New Message'
      Hint = 'New Message'
      ImageIndex = 2
      ImageName = 'icons8_New_Message_32'
      OnExecute = actionNewMessageExecute
    end
    object actPrint: TAction
      Caption = 'Print Screen'
      Hint = 'Print Screen'
      ImageIndex = 3
      ImageName = 'icons8_Screenshot_32'
      OnExecute = actPrintExecute
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 4
      ImageName = 'Closed Window_32px'
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 4
      ImageName = 'Closed Window_32px'
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 4
      ImageName = 'Closed Window_32px'
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
      Enabled = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 70
    Top = 70
    object Arrange1: TMenuItem
      Action = WindowArrange1
    end
    object Cascade1: TMenuItem
      Action = WindowCascade1
    end
    object MinimizeAll1: TMenuItem
      Action = WindowMinimizeAll1
    end
    object ileVertically1: TMenuItem
      Action = WindowTileVertical1
    end
    object ileHorizontally1: TMenuItem
      Action = WindowTileHorizontal1
    end
  end
end
