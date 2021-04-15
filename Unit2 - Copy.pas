unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, Math, ExtCtrls;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    pnl2: TPanel;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    grp2: TGroupBox;
    grp3: TGroupBox;
    grp4: TGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   ptambah, pkurang, pbanyak, psedikit, jnaik, jturun, HProduksi, PKonsumen:Real;
  Form2: TForm2;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm2.btn2Click(Sender: TObject);
var
  ptambah, pkurang: Single;
  unaik, uturun, ubanyak, usedikit: Single;
  R1, R2, R3, R4: Single;
begin
Form2.Hide;
Form3.Show;

//Input
ptambah := StrToFloat(edt3.Text);
pkurang := StrToFloat(edt4.Text);
pbanyak := StrToFloat(edt5.Text);
psedikit := StrToFloat(edt6.Text);
jnaik := StrToFloat(edt7.Text);
jturun := StrToFloat(edt8.Text);
HProduksi := StrToFloat(edt1.Text);
PKonsumen := StrToFloat(edt2.Text);

//Fuzzyfikasi
Form3.edt11.Text := FloatToStr((-(HProduksi-ptambah))/(ptambah-pkurang));
Form3.edt12.Text := FloatToStr(((HProduksi-pkurang))/(ptambah-pkurang));
Form3.edt13.Text := FloatToStr((-(PKonsumen-pbanyak))/(pbanyak-psedikit));
Form3.edt14.Text := FloatToStr(((PKonsumen-psedikit))/(pbanyak-psedikit));

uturun := StrToFloat(Form3.edt11.Text);
unaik := StrToFloat(Form3.edt12.Text);
usedikit := StrToFloat(Form3.edt13.Text);
ubanyak := StrToFloat(Form3.edt14.Text);

//Operasi Fuzzy
 R1 := Min(uturun,ubanyak);
 R2 := Min(uturun,usedikit);
 R3 := Min(unaik,ubanyak);
 R4 := Min(unaik,usedikit);

 Form3.edt1.Text := FloatToStr(R1);
 Form3.edt1.Text := FormatFloat('0.##',R1);
 Form3.edt2.Text := FloatToStr(R2);
 Form3.edt2.Text := FormatFloat('0.##',R2);
 Form3.edt3.Text := FloatToStr(R3);
 Form3.edt3.Text := FormatFloat('0.##',R3);
 Form3.edt4.Text := FloatToStr(R4);
 Form3.edt4.Text := FormatFloat('0.##',R4);

//Implikasi
 Form3.edt5.Text := FloatToStr(R1);
 Form3.edt5.Text := FormatFloat('0.##',R1);
 Form3.edt6.Text := FloatToStr(R2);
 Form3.edt6.Text := FormatFloat('0.##',R2);
 Form3.edt7.Text := FloatToStr(R3);
 Form3.edt7.Text := FormatFloat('0.##',R3);
 Form3.edt8.Text := FloatToStr(R4);
 Form3.edt8.Text := FormatFloat('0.##',R4);

//Aturan
 ptambah := Max(R3, R4);
 pkurang := Max(R1, R2);
 Form3.edt9.Text := FloatToStr(ptambah);
 Form3.edt9.Text := FormatFloat('0.##',ptambah);
 Form3.edt10.Text := FloatToStr(pkurang);
 Form3.edt10.Text := FormatFloat('0.##',pkurang);

end;

procedure TForm2.btn1Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
end;

end.
