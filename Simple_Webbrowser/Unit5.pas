unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls,ShellAPI;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Label1Click(Sender: TObject);
var
  Eml, Subj, Param : String;
begin
  Eml:='adnaner_05@yahoo.fr';
  Subj:='Adnaner';
  Param:='mailto:' + Eml + '?subject=' + Subj;
  ShellExecute(Handle, 'open', PChar(Param), nil, nil, SW_SHOWNORMAL);

end;

procedure TForm5.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 Label1.Font.Color := clRed;
 Label1.Cursor := crHandPoint;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
Label1.Font.Color := clBlue;
end;

procedure TForm5.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label1.Font.Color := clBlue;
end;

end.
