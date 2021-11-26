// -----------------------------------------------------------------------------
// main.cpp                                                             main.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief this file holds the main() function
 * @author Achim Klein
 * @version 2014-08-04
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <vector>
#include <string>
#include <sstream>
#include <iostream>
#include "LineReader.h"
#include "Box.h"


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// -----------
// getVerbChar
// -----------
/**
 *
 */
char getVerbChar(const string& text)
{
  // possible delimiters
  const string vchars = "@%#&|!+-~=:/><?";

  // check all delimiters
  for(unsigned i = 0; i < vchars.size(); i++)
  {
    // search delimiters
    if (text.find(vchars[i]) == string::npos)
    {
      // unused delimiters found
      return vchars[i];
    }
  }

  // no delimiter found
  return 0;
}

// ------------
// getSymbolBox
// ------------
/**
 * To get equal settings in each sub.
 */
Box getSymbolBox()
{
  return Box("3.1em", "c", "3.3938ex", "1.0606ex");
}

// -------------
// printHeadline
// -------------
/**
 * A ... ncol
 */
void printHeadline(unsigned ncol)
{
  // put anything in these boxes
  Box box = getSymbolBox();

  // empty corner (top left)
  cout << box("~") << "%" << endl;

  // print headline characters
  for(unsigned i = 1; i < ncol; i++)
  {
    // use ASCII-code
    cout << box(static_cast<char>(i + 64));

    // further columns
    if ((i + 1) < ncol)
    {
      cout << "%" << endl;
    }

    // last column
    else
    {
      cout << "\\\\[2ex]" << endl;
    }
  }
}

// -------------
// printOverview
// -------------
/**
 *
 */
void printOverview(const vector<string>& symbols, unsigned ncol)
{
  // check number of symbols
  if (symbols.empty())
  {
    // don't print anything
    return;
  }

  // put anything in these boxes
  Box box = getSymbolBox();

  // center on page
  cout << "\\begin{center}" << endl;

  // row and column index
  unsigned r = 1;
  unsigned c = 0;

  // print symbols
  for(unsigned i = 0; i < symbols.size(); i++)
  {
    // first column
    if (c == 0)
    {
      // insert headlines
      if ((r == 1) || (r == 27))
      {
        printHeadline(ncol);
      }

      // start with row index
      cout << box(r) << "%" << endl;

      // step column counter
      c += 1;
    }

    // print math symbol
    cout << box[symbols[i]];

    // step column counter
    c += 1;

    // check counter
    if (c == ncol)
    {
      // more symbols to come
      if ((i + 1) < symbols.size())
      {
        // break LaTeX line
        cout << "\\\\";
      }

      else
      {
        // last row finished
        cout << "%";
      }

      // step row counter
      r += 1;

      // reset column counter
      c = 0;
    }

    else
    {
      // more columns in this row
      cout << "%";
    }

    // each symbol gets its own row
    cout << endl;
  }

  // fill last row
  while (c % ncol)
  {
    cout << box("~") << "%" << endl;

    c += 1;
  }

  // center on page
  cout << "\\end{center}" << endl;
}

// ----------
// printCodes
// ----------
/**
 *
 */
void printCodes(const vector<string>& symbols, unsigned ncol)
{
  // check number of symbols
  if (symbols.empty())
  {
    // don't print anything
    return;
  }

  // put row coordinates in these boxes
  Box rbox("1.5em", "r", "3.3938ex", "1.0606ex");

  // put column coordinates in these boxes
  Box cbox("1em", "c", "3.3938ex", "1.0606ex");

  // put symbols in these boxes
  Box sbox = getSymbolBox();

  cout << "\\clearpage" << endl;
  cout << "\\begin{multicols}{2}" << endl;
  cout << "\\small" << endl;

  // print symbols
  for(unsigned i = 0; i < symbols.size(); i++)
  {
    // calculate indices
    unsigned r = (i / (ncol - 1)) + 1;
    unsigned c = (i % (ncol - 1)) + 65;

    // get verbatim character
    char v = getVerbChar(symbols[i]);

    // no character found
    if (v == 0)
    {
      // notify user
      cerr << "no verbatim character found for: " << symbols[i] << endl;

      // next symbol
      continue;
    }

    // print triplet
    cout << rbox(r) << cbox(static_cast<char>(c))
         << "\\enskip"
         << sbox[symbols[i]]
         << "\\enskip"
         << "\\verb" << v << symbols[i] << v;

    // more symbols to come
    if ((i + 1) < symbols.size())
    {
      cout << "\\\\";
    }

    // last symbol printed
    else
    {
      cout << "\\par";
    }

    // put each triple in its own row
    cout << endl;
  }

  cout << "\\end{multicols}" << endl;
}

// ----
// main
// ----
/**
 *
 */
int main(int argc, char** argv)
{
  // math symbols
  vector<string> msym;

  // connect LineReader with stdin
  LineReader reader(cin);

  // read lines from stdin
  while(reader.readLine())
  {
    // get and squeeze extracted line
    string line = reader.getSqueezedLine();

    // skip empty lines
    if (line.empty()) continue;

    // skip comments
    if (line[0] == '#') continue;

    // add extracted math symbol
    msym.push_back(line);
  }

  printOverview(msym, 13);
  printCodes(msym, 13);

  return 0;
}

