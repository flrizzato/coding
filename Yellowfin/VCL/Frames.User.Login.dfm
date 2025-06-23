object frameUserLogin: TframeUserLogin
  Left = 0
  Top = 0
  Width = 846
  Height = 608
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  TabOrder = 0
  OnResize = FrameResize
  PixelsPerInch = 192
  object pcUserLogin: TPageControl
    Left = 0
    Top = 0
    Width = 846
    Height = 608
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ActivePage = tabLogin
    Align = alClient
    TabOrder = 0
    object tabLogin: TTabSheet
      Margins.Left = 12
      Margins.Top = 12
      Margins.Right = 12
      Margins.Bottom = 12
      Caption = 'Login'
      DesignSize = (
        838
        578)
      object gbLogin: TGroupBox
        Left = 149
        Top = 132
        Width = 539
        Height = 313
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Anchors = []
        Caption = 'Login'
        TabOrder = 0
        DesignSize = (
          539
          313)
        object edtPassword: TLabeledEdit
          Left = 56
          Top = 144
          Width = 427
          Height = 23
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 50
          EditLabel.Height = 15
          EditLabel.Margins.Left = 12
          EditLabel.Margins.Top = 12
          EditLabel.Margins.Right = 12
          EditLabel.Margins.Bottom = 12
          EditLabel.Caption = 'Password'
          PasswordChar = '*'
          TabOrder = 0
          Text = 'Darkgoldenrod'
        end
        object btnLogIn: TButton
          Left = 162
          Top = 219
          Width = 215
          Height = 51
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akTop]
          Caption = 'Login'
          TabOrder = 1
          OnClick = btnLogInClick
        end
        object edtUserName: TLabeledEdit
          Left = 56
          Top = 80
          Width = 427
          Height = 23
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 58
          EditLabel.Height = 15
          EditLabel.Margins.Left = 12
          EditLabel.Margins.Top = 12
          EditLabel.Margins.Right = 12
          EditLabel.Margins.Bottom = 12
          EditLabel.Caption = 'User Name'
          TabOrder = 2
          Text = 'Bitmap28'
        end
      end
    end
    object tabSettings: TTabSheet
      Margins.Left = 12
      Margins.Top = 12
      Margins.Right = 12
      Margins.Bottom = 12
      Caption = 'Settings'
      ImageIndex = 1
      DesignSize = (
        838
        578)
      object gbSystemDetails: TGroupBox
        Left = 90
        Top = 92
        Width = 658
        Height = 393
        Margins.Left = 12
        Margins.Top = 12
        Margins.Right = 12
        Margins.Bottom = 12
        Anchors = []
        Caption = 'Settings'
        TabOrder = 0
        DesignSize = (
          658
          393)
        object lblSiteID: TLabel
          Left = 56
          Top = 264
          Width = 33
          Height = 15
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Caption = 'Site ID'
        end
        object edtLoginID: TLabeledEdit
          Left = 56
          Top = 141
          Width = 561
          Height = 23
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 85
          EditLabel.Height = 15
          EditLabel.Margins.Left = 12
          EditLabel.Margins.Top = 12
          EditLabel.Margins.Right = 12
          EditLabel.Margins.Bottom = 12
          EditLabel.Caption = 'System Login ID'
          TabOrder = 1
          Text = 'Mark Anderson'
        end
        object LabeledEdit2: TLabeledEdit
          Left = 56
          Top = 210
          Width = 561
          Height = 23
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 91
          EditLabel.Height = 15
          EditLabel.Margins.Left = 12
          EditLabel.Margins.Top = 12
          EditLabel.Margins.Right = 12
          EditLabel.Margins.Bottom = 12
          EditLabel.Caption = 'System Password'
          PasswordChar = '*'
          TabOrder = 2
          Text = 'Darkgoldenrod'
        end
        object seSiteID: TSpinEdit
          Left = 56
          Top = 280
          Width = 561
          Height = 24
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akLeft, akTop, akRight]
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 755384
        end
        object LabeledEdit3: TLabeledEdit
          Left = 56
          Top = 72
          Width = 561
          Height = 23
          Margins.Left = 12
          Margins.Top = 12
          Margins.Right = 12
          Margins.Bottom = 12
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 48
          EditLabel.Height = 15
          EditLabel.Margins.Left = 12
          EditLabel.Margins.Top = 12
          EditLabel.Margins.Right = 12
          EditLabel.Margins.Bottom = 12
          EditLabel.Caption = 'Base URL'
          TabOrder = 0
          Text = 'Software Engineer'
        end
      end
    end
  end
  object pbsDefaults: TPrototypeBindSource
    AutoActivate = True
    AutoPost = False
    FieldDefs = <
      item
        Name = 'loginId'
        Generator = 'ContactNames'
        ReadOnly = False
      end
      item
        Name = 'Loginpassword'
        Generator = 'ColorsNames'
        ReadOnly = False
      end
      item
        Name = 'orgID'
        FieldType = ftUInteger
        Generator = 'Colors'
        ReadOnly = False
      end
      item
        Name = 'person_userId'
        Generator = 'BitmapNames'
        ReadOnly = False
      end
      item
        Name = 'person_password'
        Generator = 'ColorsNames'
        ReadOnly = False
      end
      item
        Name = 'BaseURL'
        Generator = 'ContactTitles'
        ReadOnly = False
      end>
    ScopeMappings = <>
    OnCreateAdapter = pbsDefaultsCreateAdapter
    Left = 20
    Top = 182
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 101
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = pbsDefaults
      FieldName = 'person_password'
      Control = edtPassword
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = pbsDefaults
      FieldName = 'loginId'
      Control = edtLoginID
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = pbsDefaults
      FieldName = 'Loginpassword'
      Control = LabeledEdit2
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = pbsDefaults
      FieldName = 'orgID'
      Control = seSiteID
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = pbsDefaults
      FieldName = 'BaseURL'
      Control = LabeledEdit3
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = pbsDefaults
      FieldName = 'person_userId'
      Control = edtUserName
      Track = True
    end
  end
end
