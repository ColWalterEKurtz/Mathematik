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


// ------
// digits
// ------
/**
 *
 */
int digits(int number)
{
  int count = 1;

  while(number > 9)
  {
    number /= 10;
    count += 1;
  }

  return count;
}

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
// decomposite
// -----------
/**
 *
 */
bool decomposite(int number, vector<int>& decomposition, const vector<int>& primes)
{
  // two is the first prime number
  if (number < 2)
  {
    return false;
  }

  // check all passed prime numbers
  for(unsigned i = 0; i < primes.size(); i++)
  {
    // divisor found
    if ((number % primes[i]) == 0)
    {
      number /= primes[i];
      int n = 1;

      while((number % primes[i]) == 0)
      {
        number /= primes[i];
        n += 1;
      }

      decomposition.push_back(primes[i]);
      decomposition.push_back(n);
    }

    // no more divisors
    if (primes[i] > number)
    {
      break;
    }
  }

  return true;
}

// -----------------
// showDecomposition
// -----------------
/**
 *
 */
void showDecomposition(int number, const vector<int>& decomposition, int width)
{
  cout << right << setw(width) << number << " = ";

  // number is prime
  if ((decomposition.size() == 2) && (decomposition[1] == 1))
  {
    cout << "prime";
  }

  // composite number
  else
  {
    for(unsigned i = 0; i < decomposition.size(); i += 2)
    {
      // show factor
      cout << decomposition[i];

      // show multiplicity
      if (decomposition[i + 1] > 1)
      {
        cout << "^" << decomposition[i+1];
      }

      // more factors to come
      if ((i + 2) < decomposition.size())
      {
        cout << " * ";
      }
    }
  }

  // new line
  cout << endl;
}

// ----------------------
// showLaTeXDecomposition
// ----------------------
/**
 *
 */
void showLaTeXDecomposition(int number, const vector<int>& decomposition)
{
  Box cnbox("2.3em", "r", "", "");
  Box eqbox("1.5em", "c", "", "");

  cout << cnbox(number) << eqbox("=");

  // number is prime
  if ((decomposition.size() == 2) && (decomposition[1] == 1))
  {
    cout << "prim";
  }

  // composite number
  else
  {
    // open math
    cout << "$";

    for(unsigned i = 0; i < decomposition.size(); i += 2)
    {
      // show factor
      cout << decomposition[i];

      // show multiplicity
      if (decomposition[i + 1] > 1)
      {
        cout << "^{" << decomposition[i+1] << "}";
      }

      // more factors to come
      if ((i + 2) < decomposition.size())
      {
        cout << "\\cdot";
      }
    }

    // close math
    cout << "$";
  }
}

// ----
// main
// ----
/**
 *
 */
int main(int argc, char** argv)
{
  int max = 1106;

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

  cout << "% ---------------------------" << endl;
  cout << "\\mysec{Primfaktorzerlegungen}" << endl;
  cout << "% ---------------------------" << endl;
  // open multicols environment
  cout << "\\begin{multicols}{5}\\small" << endl;
  for(int num = 2; num <= max; num++)
  {
    vector<int> primefactors;
    decomposite(num, primefactors, primes);

    showLaTeXDecomposition(num, primefactors);

    // more numbers to come
    if ((num + 1) <= max)
    {
      cout << "\\\\" << endl;
    }

    // last number written
    else
    {
      cout << "%" << endl;
    }
  }
  cout << "\\end{multicols}%" << endl;

  // finished successfully
  return 0;
}

