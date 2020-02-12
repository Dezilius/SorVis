//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
    TButton *Button1;
    TButton *Button2;
    TComboBox *ComboBox1;
    TTimer *Timer1;
    TImage *Image1;
    TImage *Image2;
    TImage *Image3;
    TScrollBar *ScrollBar1;
    TLabel *Label3;
    TTimer *Timer2;
    TPanel *Panel1;
    TLabel *Label4;
    TLabel *Label5;
    TLabel *Label6;
    TPanel *Panel2;
    TLabel *Label7;
    TLabel *Label1;
    TImage *Image4;
    TImage *Image5;
    TImage *Image6;
    TProgressBar *ProgressBar1;
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall Button1Click(TObject *Sender);
    void __fastcall Button2Click(TObject *Sender);
    void __fastcall Timer1Timer(TObject *Sender);
    void __fastcall Timer2Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
