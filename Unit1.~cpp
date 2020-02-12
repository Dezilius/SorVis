//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <windows.h>
#include <vector>
#include <time.h>

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

std::vector <TShape*> shapes;
clock_t start, stop;
int j, i, min_idx, x;
int arr[50], arrTemp[50];
int rght, wid, rend, m, t, num, k, left;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
     srand(time(NULL));

    for (int i = 0; i < 50; i++)
    {
        TShape *shape = new TShape(this);
        shape->Parent = this;

        shape->Top = 20;
        shape->Left = 50 + i * 10;
        shape->Height = 100;
        shape->Width = 8;
        shape->Brush->Color = clYellow;

        shapes.push_back(shape);
    }

     ComboBox1->Items->Add("Bubble Sort");
     ComboBox1->Items->Add("Selection Sort");
     ComboBox1->Items->Add("Insertion Sort");
     ComboBox1->Items->Add("Merge Sort");
     //ComboBox1->Items->Add("Quick Sort");

    for (int i = 0; i < 50; i++)
    {
        arr[i] = shapes[i]->Height;
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
     for (int i = 0; i < 50; i++)
     {
         shapes[i]->Height = (rand()%400 + 1);
         arr[i] = shapes[i]->Height;
     }
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
        Timer1->Enabled = false;
        Timer2->Enabled = false;
        Image1->Visible = false;
        Image2->Visible = false;
        Image3->Visible = false;
        Image4->Visible = false;
        Image5->Visible = false;
        Image6->Visible = false;

        if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Bubble Sort")
        {
           j = 0;
           i = 0;
           Timer1->Enabled = true;
           Image1->Visible = true;
           Image2->Visible = true;
           Image1->Picture->LoadFromFile("img\\Red.jpg");
           Image2->Picture->LoadFromFile("img\\Red.jpg");
           Image4->Picture->LoadFromFile("img\\Red.jpg");

           ComboBox1->Visible = false;
        }

        if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Selection Sort")
        {
           j = 0;
           i = 0;
           min_idx = 0;
           Timer1->Enabled = true;
           Image1->Visible = true;
           Image2->Visible = true;
           Image3->Visible = true;
           Image1->Picture->LoadFromFile("img\\Red.jpg");
           Image2->Picture->LoadFromFile("img\\Blue.jpg");
           Image3->Picture->LoadFromFile("img\\Green.jpg");
           ComboBox1->Visible = false;
        }

        if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Insertion Sort")
        {
           j = 1;
           i = 0;
           Timer1->Enabled = true;
           Image2->Visible = true;
           Image3->Visible = true;
           Image3->Visible = true;
           ComboBox1->Visible = false;
        }

        if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Merge Sort")
        {
           num = 50;
           k = 1;
           left = 0;
           Timer2->Enabled = true;
           ComboBox1->Visible = false;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Timer1Timer(TObject *Sender)
{

Timer1->Interval = ScrollBar1->Position;
Label3->Caption = ScrollBar1->Position;
//-------------------------------Bubble Sort---------------------------------

if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Bubble Sort")        // If Buble sort selected do bubble sort
   {
    if ( j < 50)    // Do for the number of numbers in array - 1
     {
         if (shapes[i]->Height > shapes[i+1]->Height )    // If value on the left is larger, swap two values
         {   // Drawing arrows
           Image1->Top = shapes[i]->Top - 20;             // Arrow - larger value
           Image1->Left = shapes[i]->Left + 5;
           Image2->Top = shapes[i+1]->Top - 20;           // Arrow - smaller value
           Image2->Left = shapes[i+1]->Left + 5;
           x = shapes[i+1]->Height;                       //
           shapes[i+1]->Height = shapes[i]->Height;       // Swap two nubmers
           shapes[i]->Height = x;                         //
         }
           if ((i == 48 - j && j < 50) || (j == 49))      // If algo finishes one run, change the color of the last
           {                                              // shape to green
             shapes[49-j]->Brush->Color = clGreen;
           }
         i++;                                             // i incrementation
     }

    if (i >= 49-j && j <= 49)                             // If algo finishes one run, reset i and increment j
    {
     i = 0;
     j++;
     ProgressBar1->Position = j*2;
     Label1->Caption = j;                                 // Show number of finished runs
    }
    if (j == 50)
    {
    ComboBox1->Visible = true;
    Timer1->Enabled = false;                 // if runs = 50, disable Timer
    }
}

//-------------------------------Bubble Sort---------------------------------




//-----------------------------Selection Sort--------------------------------

if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Selection Sort")
{
    if (j < 49)            // Do for the number of numbers in array - 2,
     {
         if (shapes[i+1]->Height <= shapes[min_idx]->Height )   // Compare leftmost number + j with next numbers (i+1)
         {
            min_idx = i + 1;       // If the number is smaller, change min_idx with new smallest number idx
         }
           if (i == 48)            // If it finishes run (48, because there is always i + 1 which means last number 49)
           {
            x = shapes[j]->Height;                           //
            shapes[j]->Height = shapes[min_idx]->Height;     // Swap left most number + j with number in min_idx
            shapes[min_idx]->Height = x;                     //
            shapes[j]->Brush->Color = clGreen;               // Change the color of the left most number + j to green
           }
              // Drawing arrows
         Image1->Top = shapes[i+1]->Top - 20;               // Arrow that follows iterations of i
         Image1->Left = shapes[i+1]->Left;
         Image2->Top = shapes[j]->Top - 20;                 // Arrow that follows left most unsorted number
         Image2->Left = shapes[j]->Left;
         Image3->Top = shapes[min_idx]->Top - 20;           // Arrow that follows min_idx number
         Image3->Left = shapes[min_idx]->Left;

         i++;            // iterations of i
     }

    if (i == 49 && j <= 48)   // If it fnishes run and j is <= 48
    {
     j++;                     // iterations of j
     ProgressBar1->Position = j*2;
     i = j;                   // Set the start of compare run from left most unsorted number
     min_idx = j;             // Set the left most unsorted number as j
     Label1->Caption = j;     // Show numbers sorted
    }
    if (j == 49)              // If there is 1 number left it is considered sorted
    {
     shapes[j]->Brush->Color = clGreen;  // Color it green
     j++;                                // Increment number of sorted numbers
     Label1->Caption = j;                // Show numbers sorted
     ComboBox1->Visible = true;
     Timer1->Enabled = false;            // finish algo
    }
}



//-----------------------------Selection Sort--------------------------------


//-----------------------------Insertion Sort--------------------------------

if (ComboBox1->Items->Strings[ComboBox1->ItemIndex] == "Insertion Sort")
{
int k = 0;
shapes[j-1]->Brush->Color = clGreen;  // Color it green

   if (j < 50)  // Do for the number of numbers in array, j = 1
   {
     i = j - 1;                             // idx of last sorted elemnt
     k = shapes[j]->Height;                 // value of first unsorted element

     Image1->Top = shapes[j]->Top - 30;     // Arrow that follows idx of first unsorted element
     Image1->Left = shapes[j]->Left;

   while (i >= 0 && k < shapes[i]->Height) // If there are still numbers in sorted array
   {                                       // and value k is smaller than i value

         shapes[i+1]->Height = shapes[i]->Height; // then move number from the right slot

         i--;                               // to the left slot
   }
    shapes[i+1]->Height = k;  // and insert k value to the right slot
   }

   j++;                       // Increment number of sorted numbers
   ProgressBar1->Position = j*2;
   Label1->Caption = j;

    if (j == 50)              // If there is 1 number left it is considered sorted
    {
     shapes[j-1]->Brush->Color = clGreen;  // Color it green
     ComboBox1->Visible = true;
     Timer1->Enabled = false;            // finish algo
    }
}


//-----------------------------Insertion Sort--------------------------------

}
//---------------------------------------------------------------------------




void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
Timer2->Interval = ScrollBar1->Position;
     //for (int k = 1; k < num; k*= 2)
     //{
         //for (int left = 0; left + k < num; left += k*2)
         //{
             rght = left + k;
             rend = rght + k;
             if (rend > num) rend = num;
             m = left;
             i = left;
             j = rght;
             while (i < rght && j < rend)
             {
                   if (arr[i] <= arr[j])
                   {
                      arrTemp[m] = arr[i];
                      i++;
                   }
                   else
                   {
                      arrTemp[m] = arr[j];
                      j++;
                   }
                   m++;
             }
             while (i < rght)
             {
                   arrTemp[m] = arr[i];
                   i++;
                   m++;
             }
             while (j < rend)
             {
                   arrTemp[m] = arr[j];
                   j++;
                   m++;
             }
             for (m = left; m < rend; m++)
                 {
                 arr[m] = arrTemp[m];
                 shapes[m]->Height = arr[m];
                 }
         //}
         if (left + k >= num)
         {
            if (k >= num)
               Timer2->Enabled = false;
            else
               {
               k *= 2;
               left = 0;
               }

         }
         else
            left += k*2;



     //}

}
//---------------------------------------------------------------------------


