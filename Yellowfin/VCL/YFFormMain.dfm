object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Yellow Fin VCL Example'
  ClientHeight = 698
  ClientWidth = 1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  inline frameLogin: TframeUserLogin
    Left = 0
    Top = 0
    Width = 1099
    Height = 698
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1099
    ExplicitHeight = 698
    inherited pcUserLogin: TPageControl
      Width = 1099
      Height = 698
      ActivePage = frameLogin.tabSettings
      ExplicitWidth = 1095
      ExplicitHeight = 697
      inherited tabLogin: TTabSheet
        ExplicitWidth = 1091
        ExplicitHeight = 668
        DesignSize = (
          1091
          668)
        inherited gbLogin: TGroupBox
          Left = 276
          Top = 177
          ExplicitLeft = 276
          ExplicitTop = 177
          inherited edtUserName: TLabeledEdit
            EditLabel.ExplicitLeft = 56
            EditLabel.ExplicitTop = 62
            EditLabel.ExplicitWidth = 58
            ExplicitWidth = 427
          end
        end
      end
      inherited tabSettings: TTabSheet
        ExplicitWidth = 1091
        ExplicitHeight = 668
        DesignSize = (
          1091
          668)
        inherited gbSystemDetails: TGroupBox
          Left = 217
          Top = 137
          inherited edtLoginID: TLabeledEdit
            ExplicitWidth = 561
          end
          inherited LabeledEdit2: TLabeledEdit
            EditLabel.ExplicitLeft = 56
            EditLabel.ExplicitTop = 192
            EditLabel.ExplicitWidth = 91
            ExplicitWidth = 561
          end
          inherited seSiteID: TSpinEdit
            ExplicitWidth = 561
          end
          inherited LabeledEdit3: TLabeledEdit
            EditLabel.ExplicitLeft = 56
            EditLabel.ExplicitTop = 54
            EditLabel.ExplicitWidth = 48
            ExplicitWidth = 561
          end
        end
      end
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrHourGlass
    Left = 232
    Top = 72
  end
end
