unit uEditBox;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, uDataModule,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit;

type
  Tfrmedit = class(TForm)
    edtvalue: TEdit;
    lbl1: TLabel;
    tlb1: TToolBar;
    btnok: TButton;
    btncancel: TButton;
    procedure edtvalueKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnokClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    text: string;
  end;

var
  frmedit: Tfrmedit;

implementation

{$R *.fmx}

procedure Tfrmedit.btncancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  CloseModal;
end;

procedure Tfrmedit.btnokClick(Sender: TObject);
begin
  text := edtvalue.Text;
  ModalResult := mrOk;
  CloseModal;
end;

procedure Tfrmedit.edtvalueKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key = vkReturn then
    begin
      text := edtvalue.Text;
      ModalResult := mrOk;
      CloseModal;
    end;
end;

end.
