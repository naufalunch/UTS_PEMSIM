unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Math;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    grp3: TGroupBox;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    grp4: TGroupBox;
    grp5: TGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    edt9: TEdit;
    edt10: TEdit;
    grp6: TGroupBox;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    edt14: TEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    btn4: TButton;
    edt15: TEdit;
    edt16: TEdit;
    edt17: TEdit;
    edt18: TEdit;
    edt19: TEdit;
    edt20: TEdit;
    edt21: TEdit;
    edt22: TEdit;
    edt23: TEdit;
    edt24: TEdit;
    edt25: TEdit;
    lbl19: TLabel;
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm3.btn4Click(Sender: TObject);
var
  acak,acak1,acak2,acak3,acak4,acak5,acak6,acak7
  ,acak8,acak9,naik,turun: Integer;

begin
 naik := StrToInt(Form2.edt7.Text);
 turun := StrToInt(Form2.edt8.Text);
 acak := RandomRange(naik,turun);
 acak1 := RandomRange(naik,turun);
 acak2 := RandomRange(naik,turun);
 acak3 := RandomRange(naik,turun);
 acak4 := RandomRange(naik,turun);
 acak5 := RandomRange(naik,turun);
 acak6 := RandomRange(naik,turun);
 acak7 := RandomRange(naik,turun);
 acak8 := RandomRange(naik,turun);
 acak9 := RandomRange(naik,turun);

 edt15.Text := IntToStr(acak);
 edt16.Text := IntToStr(acak1);
 edt17.Text := IntToStr(acak2);
 edt18.Text := IntToStr(acak3);
 edt19.Text := IntToStr(acak4);
 edt20.Text := IntToStr(acak5);
 edt21.Text := IntToStr(acak6);
 edt22.Text := IntToStr(acak7);
 edt23.Text := IntToStr(acak8);
 edt24.Text := IntToStr(acak9);
end;

procedure TForm3.btn1Click(Sender: TObject);
var
  Sentroid, Sentroid1, Sentroid2, Sentroid3, Sentroid4, Sentroid5
  , Sentroid6, Sentroid7, Sentroid8, Sentroid9: Integer;
  anaik, aturun, hasil: Single;
begin
  Sentroid := StrToInt(edt15.Text);
  Sentroid1 := StrToInt(edt16.Text);
  Sentroid2 := StrToInt(edt17.Text);
  Sentroid3 := StrToInt(edt18.Text);
  Sentroid4 := StrToInt(edt19.Text);
  Sentroid5 := StrToInt(edt20.Text);
  Sentroid6 := StrToInt(edt21.Text);
  Sentroid7 := StrToInt(edt22.Text);
  Sentroid8 := StrToInt(edt23.Text);
  Sentroid9 := StrToInt(edt24.Text);
  anaik := StrToFloat(edt9.Text);
  aturun := StrToFloat(edt10.Text);

  hasil := Round ((((Sentroid+Sentroid1+Sentroid2+Sentroid3+Sentroid4)*anaik+(Sentroid5+Sentroid6+Sentroid7+Sentroid8+Sentroid9)*
  aturun)/((anaik*5)+(aturun*5))));
  edt25.Text := FloatToStr(hasil);
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
Form3.Hide;
Form2.Show;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
Close;
end;

end.
