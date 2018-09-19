// -----------------------------------------------------------------------------
// main.cpp                                                             main.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief this file holds the main() function
 * @author Col. Walter E. Kurtz
 * @version 2013-01-14
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <vector>
#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>
#include "Box.h"


// -----------------------------------------------------------------------------
// Used namespaces                                               Used namespaces
// -----------------------------------------------------------------------------
using namespace std;


// ----
// main
// ----
/**
 *
 */
int main(int argc, char** argv)
{
  int max = 250;

  if (argc > 1)
  {
    stringstream converter;
    converter << argv[1];
    converter >> max;

    if (max < 2)
    {
      return (-1);
    }
  }

  Box numbox("4em", "r", "", "");

  cout << "% ---------------------" << endl;
  cout << "\\mysec{Viertelquadrate}" << endl;
  cout << "% ---------------------" << endl;

  // explanation
  cout << "\\begin{center}" << endl;
  cout << "  \\begin{minipage}[c]{4cm}" << endl;
  cout << "    \\centering" << endl;
  cout << "    \\begin{tikzpicture}[scale=0.50]" << endl;
  cout << "      \\draw (0, 0) rectangle (5, 5);" << endl;
  cout << "      \\draw (2, 0) -- (2, 3);" << endl;
  cout << "      \\draw (5, 2) -- (2, 2);" << endl;
  cout << "      \\draw (3, 5) -- (3, 2);" << endl;
  cout << "      \\draw (0, 3) -- (3, 3);" << endl;
  cout << "    \\end{tikzpicture}" << endl;
  cout << "  \\end{minipage}" << endl;
  cout << "  \\begin{minipage}[c]{14em}" << endl;
  cout << "    \\vspace*{-\\abovedisplayskip}" << endl;
  cout << "    \\begin{equation*}" << endl;
  cout << "      \\begin{split}" << endl;
  cout << "        4\\cdot ab&=(a+b)^{2}-(a-b)^{2}\\\\[2ex]" << endl;
  cout << "        \\Rightarrow\\quad ab&=\\frac{(a+b)^{2}-(a-b)^{2}}{4}" << endl;
  cout << "      \\end{split}" << endl;
  cout << "    \\end{equation*}" << endl;
  cout << "  \\end{minipage}" << endl;
  cout << "\\end{center}" << endl;
  cout << "\\vfill" << endl;

  // numbers
  cout << "\\begin{center}\\small" << endl;

  // top left corner
  cout << numbox("~") << "%" << endl;

  // headings
  for(int i = 0; i < 10; i++)
  {
    cout << numbox(i) << ((i < 9) ? ("%") : ("\\\\[1ex]")) << endl;
  }

  // calculate quaters
  for(int i = 0; i <= max; i++)
  {
    // first column
    if ((i % 10) == 0)
    {
      cout << numbox(i) << "%" << endl;
    }

    // calculate
    cout << numbox((i * i) >> 2);

    // more numbers to come
    if ((i + 1) <= max)
    {
      // last column
      if (((i + 1) % 10) == 0)
      {
        cout << "\\\\" << endl;
      }

      else
      {
        cout << "%" << endl;
      }
    }

    // last number written
    else
    {
      cout << "%" << endl;
    }
  }

  cout << "\\end{center}" << endl;

  // finished successfully
  return 0;
}

