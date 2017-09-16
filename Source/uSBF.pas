unit uSBF;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, uDataModule,
  FMX.StdCtrls, FMX.Controls.Presentation, IniFiles, FMX.TabControl, uEditBox,
  FMX.ListBox;

type
  Tfrmmain = class(TForm)
    tlbtop: TToolBar;
    lbl1: TLabel;
    tbc1: TTabControl;
    tbtmbingo: TTabItem;
    tbtmsettings: TTabItem;
    tlbbottom: TToolBar;
    lblscore: TLabel;
    grpstyle: TGroupBox;
    cbbstyle: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl2: TLabel;
    swtcheditmode: TSwitch;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnreset: TButton;
    procedure FormCreate(Sender: TObject);
    procedure SaveSetting(Section, Name, Value: string);
    function LoadSetting(Section, Name, Value: string): string;
    procedure EditBox(Value: string; button: TButton);
    procedure btn1Click(Sender: TObject);
    procedure LoadAllSettings;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnresetClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure cbbstyleChange(Sender: TObject);
  private
    { Private declarations }
    ini_settings: string;
    score: Integer;
  public
    { Public declarations }
  end;

var
  frmmain: Tfrmmain;

implementation

{$R *.fmx}

procedure Tfrmmain.btn1Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn2Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn3Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn4Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn5Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn6Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn7Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn8Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btn9Click(Sender: TObject);
begin
  if swtcheditmode.IsChecked = True then
    EditBox((Sender as TButton).Text, (Sender as TButton))
  else
    begin
      Inc(score);
      lblscore.Text := 'Score: ' + IntToStr(score);
    end;
end;

procedure Tfrmmain.btnresetClick(Sender: TObject);
begin
  score := 0;
  lblscore.Text := 'Score: 0';
end;

procedure Tfrmmain.cbbstyleChange(Sender: TObject);
begin
  case cbbstyle.ItemIndex of
    0 : StyleBook := DataModule1.stylbkcopperdark;
    1 : StyleBook := DataModule1.stylbkjet;
    2 : StyleBook := DataModule1.stylbkvapor;
  end;

  SaveSetting('App Settings', 'theme', IntToStr(cbbstyle.ItemIndex));
end;

procedure Tfrmmain.EditBox(Value: string; button: TButton);
var
  ini: TIniFile;
begin
  frmedit.edtvalue.Text :=  button.Text;
  frmedit.StyleBook := StyleBook;
  frmedit.ShowModal;
  if frmedit.ModalResult = mrOk then
    begin
      button.Text := frmedit.text;
      SaveSetting('Values', button.Name, button.Text);
    end;
end;

procedure Tfrmmain.FormCreate(Sender: TObject);
begin
  Application.Title := 'Scammer Bingo FMX';
  ini_settings := '.\SBfmx-settings.ini';
  LoadAllSettings;
end;

procedure Tfrmmain.LoadAllSettings;
begin
  cbbstyle.ItemIndex := StrToInt(LoadSetting('App Settings', 'theme', '0'));
  btn1.Text := LoadSetting('Values', 'btn1', 'Edit Me');
  btn2.Text := LoadSetting('Values', 'btn2', 'Edit Me');
  btn3.Text := LoadSetting('Values', 'btn3', 'Edit Me');
  btn4.Text := LoadSetting('Values', 'btn4', 'Edit Me');
  btn5.Text := LoadSetting('Values', 'btn5', 'Edit Me');
  btn6.Text := LoadSetting('Values', 'btn6', 'Edit Me');
  btn7.Text := LoadSetting('Values', 'btn7', 'Edit Me');
  btn8.Text := LoadSetting('Values', 'btn8', 'Edit Me');
  btn9.Text := LoadSetting('Values', 'btn9', 'Edit Me');
end;

function Tfrmmain.LoadSetting(Section, Name, Value: string): string;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ini_settings);
  with ini do
    begin
      try
        Result := ReadString(Section, Name, Value);
      finally
        Free;
      end;
    end;
end;

procedure Tfrmmain.SaveSetting(Section, Name, Value: string);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ini_settings);
  with ini do
    begin
      try
        WriteString(Section, Name, Value);
      finally
        Free;
      end;
    end;
end;

end.
