unit uNameChange;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tfrmnamechange = class(TForm)
    StyleBook1: TStyleBook;
    Label1: TLabel;
    edtname: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    name: string[20];
  end;

var
  frmnamechange: Tfrmnamechange;

implementation

{$R *.fmx}

procedure Tfrmnamechange.Button1Click(Sender: TObject);
begin
  name := edtname.Text;
  edtname.Text := '';
  Close;
end;

procedure Tfrmnamechange.FormShow(Sender: TObject);
begin
  edtname.SetFocus;
end;

end.
