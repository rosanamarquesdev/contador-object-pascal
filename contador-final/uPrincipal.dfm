object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Contador'
  ClientHeight = 442
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 104
    Top = 216
    Width = 77
    Height = 15
    Caption = 'Vamos contar?'
    Color = 13395456
    ParentColor = False
  end
  object Button1: TButton
    Left = 104
    Top = 80
    Width = 185
    Height = 73
    Caption = 'Crescente'
    TabOrder = 0
    OnClick = Button1Click
  end
  object TrackBar1: TTrackBar
    Left = 104
    Top = 248
    Width = 400
    Height = 45
    Max = 5000
    Min = 500
    Position = 500
    TabOrder = 1
    ThumbLength = 30
    TickStyle = tsNone
    StyleName = 'Windows'
    OnChange = TrackBar1Change
  end
  object Button2: TButton
    Left = 319
    Top = 80
    Width = 185
    Height = 73
    Caption = 'Decrescente'
    TabOrder = 2
    OnClick = Button2Click
  end
end
