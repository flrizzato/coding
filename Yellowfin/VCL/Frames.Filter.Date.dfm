inherited FrameFilterDate: TFrameFilterDate
  PixelsPerInch = 192
  inherited Panel1: TPanel
    ExplicitHeight = 36
    inherited tsEnabled: TToggleSwitch
      ExplicitLeft = 4
      ExplicitTop = 4
    end
  end
  inherited Panel2: TPanel
    ExplicitHeight = 48
    object CalendarPicker1: TCalendarPicker
      Left = 8
      Top = 8
      Width = 463
      Height = 32
      Align = alClient
      CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
      CalendarHeaderInfo.DaysOfWeekFont.Height = -13
      CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      CalendarHeaderInfo.DaysOfWeekFont.Style = []
      CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.Font.Color = clWindowText
      CalendarHeaderInfo.Font.Height = -20
      CalendarHeaderInfo.Font.Name = 'Segoe UI'
      CalendarHeaderInfo.Font.Style = []
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      OnChange = CalendarPicker1Change
      ParentFont = False
      TabOrder = 0
      TextHint = 'select a date'
      ExplicitLeft = 16
      ExplicitTop = 9
      ExplicitWidth = 140
    end
  end
end
