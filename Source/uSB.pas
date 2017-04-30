unit uSB;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, uNameChange, inifiles;

type
  TForm1 = class(TForm)
    StyleBook1: TStyleBook;
    Panel1: TPanel;
    Label1: TLabel;
    EditMode: TSwitch;
    Label2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnreset: TButton;
    Label3: TLabel;
    lblscore: TLabel;
    Label4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnresetClick(Sender: TObject);
    function NameChange: string;
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    score: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.Macintosh.fmx MACOS}
{$R *.Windows.fmx MSWINDOWS}
{$R *.XLgXhdpiTb.fmx ANDROID}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn1.Text := NameChange
  else
    begin
      btn1.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn2.Text := NameChange
  else
    begin
      btn2.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn3.Text := NameChange
  else
    begin
      btn3.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn4.Text := NameChange
  else
    begin
      btn4.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn5.Text := NameChange
  else
    begin
      btn5.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn6.Text := NameChange
  else
    begin
      btn6.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn7.Text := NameChange
  else
    begin
      btn7.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn8.Text := NameChange
  else
    begin
      btn8.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  if EditMode.IsChecked then
    btn9.Text := NameChange
  else
    begin
      btn9.Enabled := False;
      Inc(score);
      lblscore.Text := IntToStr(score) + ' / 9';
    end;
end;

procedure TForm1.btnresetClick(Sender: TObject);
begin
  score := 0;
  lblscore.Text := '0 / 9';
  btn1.Enabled := True;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
  btn6.Enabled := True;
  btn7.Enabled := True;
  btn8.Enabled := True;
  btn9.Enabled := True;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ini: TIniFile;
begin
  if DirectoryExists(GetHomePath + '\ScammerBingoFMX') then
  begin
  ini := TIniFile.Create(GetHomePath + '\ScammerBingoFMX\settings.ini');
  try
    ini.WriteString('Buttons', 'Button1', btn1.Text);
    ini.WriteString('Buttons', 'Button2', btn2.Text);
    ini.WriteString('Buttons', 'Button3', btn3.Text);
    ini.WriteString('Buttons', 'Button4', btn4.Text);
    ini.WriteString('Buttons', 'Button5', btn5.Text);
    ini.WriteString('Buttons', 'Button6', btn6.Text);
    ini.WriteString('Buttons', 'Button7', btn7.Text);
    ini.WriteString('Buttons', 'Button8', btn8.Text);
    ini.WriteString('Buttons', 'Button9', btn9.Text);
  finally
    ini.Free;
    ShowMessage('Saved all buttons!');
  end;
  end
  else
  begin
    MkDir(GetHomePath + '\ScammerBingoFMX');

    ini := TIniFile.Create(GetHomePath + '\ScammerBingoFMX\settings.ini');
  try
    ini.WriteString('Buttons', 'Button1', 'Button1');
    ini.WriteString('Buttons', 'Button2', 'Button2');
    ini.WriteString('Buttons', 'Button3', 'Button3');
    ini.WriteString('Buttons', 'Button4', 'Button4');
    ini.WriteString('Buttons', 'Button5', 'Button5');
    ini.WriteString('Buttons', 'Button6', 'Button6');
    ini.WriteString('Buttons', 'Button7', 'Button7');
    ini.WriteString('Buttons', 'Button8', 'Button8');
    ini.WriteString('Buttons', 'Button9', 'Button9');
  finally
    ini.Free;
    ShowMessage('Saved all buttons!');
  end;

  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ini: TIniFile;
  res: string;
begin
  Application.Title := 'Scammer Bingo FMX';
  if DirectoryExists(GetHomePath + '\ScammerBingoFMX') then
  begin
  ini := TIniFile.Create(GetHomePath + '\ScammerBingoFMX\settings.ini');
  try
    btn1.Text := ini.ReadString('Buttons', 'Button1', '');
    btn2.Text := ini.ReadString('Buttons', 'Button2', '');
    btn3.Text := ini.ReadString('Buttons', 'Button3', '');
    btn4.Text := ini.ReadString('Buttons', 'Button4', '');
    btn5.Text := ini.ReadString('Buttons', 'Button5', '');
    btn6.Text := ini.ReadString('Buttons', 'Button6', '');
    btn7.Text := ini.ReadString('Buttons', 'Button7', '');
    btn8.Text := ini.ReadString('Buttons', 'Button8', '');
    btn9.Text := ini.ReadString('Buttons', 'Button9', '');
  finally
    ini.Free;
    ShowMessage('Buttons Loaded!');
  end;
  end
  else
  begin
    MkDir(GetHomePath + '\ScammerBingoFMX');

    ini := TIniFile.Create(GetHomePath + '\ScammerBingoFMX\settings.ini');
  try
    ini.WriteString('Buttons', 'Button1', 'Button1');
    ini.WriteString('Buttons', 'Button2', 'Button2');
    ini.WriteString('Buttons', 'Button3', 'Button3');
    ini.WriteString('Buttons', 'Button4', 'Button4');
    ini.WriteString('Buttons', 'Button5', 'Button5');
    ini.WriteString('Buttons', 'Button6', 'Button6');
    ini.WriteString('Buttons', 'Button7', 'Button7');
    ini.WriteString('Buttons', 'Button8', 'Button8');
    ini.WriteString('Buttons', 'Button9', 'Button9');
  finally
    ini.Free;
    ShowMessage('All ready for first time use!');
  end;
  end;
end;

function TForm1.NameChange: string;
var
  name: string;
begin
  frmnamechange.ShowModal;
  Result := frmnamechange.name;
end;

end.
