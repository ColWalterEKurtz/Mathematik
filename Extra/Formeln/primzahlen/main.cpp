// -----------------------------------------------------------------------------
// main.cpp                                                             main.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief this file holds the main() function
 * @author Achim Klein
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


// ---------
// getPrimes
// ---------
/**
 *
 */
void getPrimes(vector<int>& primes, int maxnum)
{
  primes.clear();

  for(int i = 2; i <= maxnum; i++)
  {
    bool isprim = true;

    int mid = (i >> 1) + 1;

    for(int j = 2; j < mid; j++)
    {
      if ((i % j) == 0)
      {
        isprim = false;
        break;
      }
    }

    if (isprim)
    {
      primes.push_back(i);
    }
  }
}

// -----------
// writePrimes
// -----------
/**
 *
 */
void writePrimes(const vector<int>& primes,
                 unsigned           nrows,
                 unsigned           ncols,
                 unsigned           offset)
{
  // put anything into this box
  Box numbox("2.9em", "r", "", "");

  vector<string> boxes;

  // rows
  for(unsigned i = 0; i < nrows; i++)
  {
    // columns
    for(unsigned j = 0; j < ncols; j++)
    {
      // calculate index
      unsigned index = offset + j * nrows + i;

      string box;

      // valid index
      if (index < primes.size())
      {
        // use prime number
        box = numbox(primes[index]);
      }

      // invalid index
      else
      {
        // use dummy
        box = numbox("~");
      }

      // more columns to come
      if ((j + 1) < ncols)
      {
        box += "%";
      }

      // last column reached
      else
      {
        // more rows to come
        if ((i + 1) < nrows)
        {
          box += "\\\\";
        }

        // last row reached
        else
        {
          box += "%";
        }
      }

      // append box
      boxes.push_back(box);
    }
  }

  // open environment
  cout << "\\begin{center}\\small" << endl;

  // show boxes
  for(unsigned n = 0; n < boxes.size(); n++)
  {
    cout << boxes[n] << endl;
  }

  // close environment
  cout << "\\end{center}%" << endl;
}

// ----
// main
// ----
/**
 *
 */
int main(int argc, char** argv)
{
  int max = 6563;

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

  vector<int> primes;
  getPrimes(primes, max);

  cout << "% ----------------" << endl;
  cout << "\\mysec{Primzahlen}" << endl;
  cout << "% ----------------" << endl;

  writePrimes(primes, 53, 16, 0);

  // finished successfully
  return 0;
}

