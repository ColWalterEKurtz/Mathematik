// -----------------------------------------------------------------------------
// Worksheet.cpp                                                   Worksheet.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Implementation of the Worksheet class.
 * @author Col. Walter E. Kurtz
 * @version 2018-09-20
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <cstdlib>
#include <sstream>
#include <iomanip>
#include <iostream>
#include "Worksheet.h"


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// -----------------------------------------------------------------------------
// Construction                                                     Construction
// -----------------------------------------------------------------------------

// ---------
// Worksheet
// ---------
/*
 *
 */
Worksheet::Worksheet()
{
  // create result matrix
  for(int i = 0; i < 8; i++)
  {
    // add row
    m_results.push_back( vector<int>() );

    for(int j = 0; j < 8; j++)
    {
      // initialize with zero
      m_results[i].push_back( 0 );
    }
  }
}

// ----------
// ~Worksheet
// ----------
/*
 *
 */
Worksheet::~Worksheet()
{
  // nothing
}


// -----------------------------------------------------------------------------
// Handling                                                             Handling
// -----------------------------------------------------------------------------

// -----
// srand
// -----
/*
 *
 */
void Worksheet::srand(int argc, char** argv) const
{
	// calculate seed
	int seed1( reinterpret_cast<long int>(argv)    );
	int seed2( reinterpret_cast<long int>(argv[0]) );
	int seed( time(0) + ((seed1 ^ seed2) ^ ((seed1 << 16) ^ (seed2 >> 16))) );

	// set seed
	std::srand(seed);
}

// -----
// urand
// -----
/*
 *
 */
unsigned Worksheet::urand(unsigned min, unsigned max) const
{
  double range = max - min + 1;

  return min + static_cast<unsigned>(range * rand() / (RAND_MAX + 1.0));
}

// -----------
// permutation
// -----------
/*
 *
 */
unsigned* Worksheet::permutation(unsigned size) const
{
  // empty array
  if (size == 0) return 0;

  // create array
  unsigned* numbers = new unsigned[size];

  // create permutation
  for(unsigned i = 0; i < size; i++)
  {
    unsigned j = urand(0, i);

    numbers[i] = numbers[j];
    numbers[j] = i;
  }

  // must be deleted by delete[]
  return numbers;
}

// --------
// generate
// --------
/*
 *
 */
void Worksheet::generate(int count)
{
  if (count > 0)
  {
    texIntro();

    for(int i = 0; i < count; i++)
    {
      do
      {
        randomize();
      }
      while( !calculate() );

      texExercises(i + 1);
      texAnswers(i + 1);
    }

    texOutro();
  }
}


// -----------------------------------------------------------------------------
// Internal methods                                             Internal methods
// -----------------------------------------------------------------------------

// ---------
// randomize
// ---------
/*
 *
 */
void Worksheet::randomize()
{
  // reset numbers
  m_left.clear();
  m_top.clear();
  m_right.clear();
  m_bottom.clear();

  // get permutation of [0..7]
  unsigned* l = permutation(8);
  unsigned* t = permutation(8);
  unsigned* r = permutation(8);
  unsigned* b = permutation(8);

  // addends and subtrahends
  unsigned add[] = {2, 4, 6, 8, 12, 14, 16, 18};
  unsigned sub[] = {3, 5, 7, 9, 11, 13, 15, 17};

  // set numbers [2..9]
  for(int i = 0; i < 8; i++)
  {
    m_left   . push_back(l[i] + 2);
    m_top    . push_back(t[i] + 2);
    m_right  . push_back(add[ r[i] ]);
    m_bottom . push_back(sub[ b[i] ]);
  }

  // free memory
  delete[] l;
  delete[] t;
  delete[] r;
  delete[] b;  
}

// ---------
// calculate
// ---------
/*
 *
 */
bool Worksheet::calculate()
{
  for(int i = 0; i < 8; i++)
  {
    for(int j = 0; j < 8; j++)
    {
      // calculate result
      m_results[i][j] = (m_left[i] * m_top[j]) + m_right[i] - m_bottom[j];

      // check sign
      if (m_results[i][j] < 0)
      {
        return false;
      }
    }
  }

  // no negative value found
  return true;
}

// --------
// texIntro
// --------
/*
 *
 */
void Worksheet::texIntro() const
{
  cout << "\\documentclass" << endl;
  cout << "[" << endl;
  cout << "  draft    = true," << endl;
  cout << "  fontsize = 11pt," << endl;
  cout << "  parskip  = half-," << endl;
  cout << "  BCOR     = 0pt," << endl;
  cout << "  DIV      = 14" << endl;
  cout << "]" << endl;
  cout << "{scrreprt}" << endl;
  cout << endl;
  cout << "\\usepackage[utf8]{inputenc}" << endl;
  cout << "\\usepackage[T1]{fontenc}" << endl;
  cout << "\\usepackage{lmodern}" << endl;
  cout << "\\usepackage[ngerman]{babel}" << endl;
  cout << "\\usepackage{amsmath}" << endl;
  cout << "\\usepackage{amssymb}" << endl;
  cout << endl;
  cout << "% ------------------------------------------------------------------------------" << endl;
  cout << "\\begin{document}" << endl;
  cout << "% ------------------------------------------------------------------------------" << endl;
  cout << endl;
}

// ------------
// texExercises
// ------------
/*
 *
 */
void Worksheet::texExercises(int count)
{
  cout << "\\clearpage" << endl;
  cout << "% --------------------" << endl;
  cout << "\\section*{Kopfrechnen}" << endl;
  cout << "% --------------------" << endl;
  cout << "\\begin{center}" << endl;
  cout << "  \\newcommand{\\bx}[1]{\\makebox[1cm][c]{\\rule[-2ex]{0pt}{5.5ex}#1}}" << endl;
  cout << "  \\begin{tabular}{|c||c|c|c|c|c|c|c|c||c|}" << endl;
  cout << "    \\hline" << endl;

  // Kopfzeile
  cout << "    \\bx{$\\cdot$}";
  for(int j = 0; j < 8; j++)
  {
    cout << " & \\bx{" << m_top[j] << "}";
  }
  cout << " & \\bx{$+$} \\\\" << endl;

  // Trennlinie oben
  cout << "    \\hline" << endl;
  cout << "    \\hline" << endl;

  // Zeilen
  for(int i = 0; i < 8; i++)
  {
    cout << "    \\bx{" << m_left[i] << "} & & & & & & & & & \\bx{" << m_right[i] << "} \\\\" << endl;
    cout << "    \\hline" << endl;
  }
  cout << "    \\hline" << endl;

  // Fusszeile
  cout << "    \\bx{~}";
  for(int j = 0; j < 8; j++)
  {
    cout << " & \\bx{" << m_bottom[j] << "}";
  }
  cout << " & \\bx{$-$} \\\\" << endl;

  cout << "    \\hline" << endl;
  cout << "  \\end{tabular}" << endl;
  cout << "\\end{center}" << endl;
}

// ----------
// texAnswers
// ----------
/*
 *
 */
void Worksheet::texAnswers(int count)
{
  cout << "\\vspace*{\\fill}" << endl;
  cout << "\\begin{center}" << endl;
  cout << "  \\newcommand{\\bx}[1]{\\makebox[1cm][c]{\\rule[-2ex]{0pt}{5.5ex}#1}}" << endl;
  cout << "  \\begin{tabular}{|c||c|c|c|c|c|c|c|c||c|}" << endl;
  cout << "    \\hline" << endl;

  // Kopfzeile
  cout << "    \\bx{$\\cdot$}";
  for(int j = 0; j < 8; j++)
  {
    cout << " & \\bx{" << m_top[j] << "}";
  }
  cout << " & \\bx{$+$} \\\\" << endl;

  // Trennlinie oben
  cout << "    \\hline" << endl;
  cout << "    \\hline" << endl;

  // Zeilen
  for(int i = 0; i < 8; i++)
  {
    cout << "    \\bx{" << m_left[i] << "}";

    for(int j = 0; j < 8; j++)
    {
      cout << " & \\bx{" << m_results[i][j] << "}";
    }

    cout << " & \\bx{" << m_right[i] << "} \\\\" << endl;
    cout << "    \\hline" << endl;
  }
  cout << "    \\hline" << endl;

  // Fusszeile
  cout << "    \\bx{~}";
  for(int j = 0; j < 8; j++)
  {
    cout << " & \\bx{" << m_bottom[j] << "}";
  }
  cout << " & \\bx{$-$} \\\\" << endl;

  cout << "    \\hline" << endl;
  cout << "  \\end{tabular}" << endl;
  cout << "\\end{center}" << endl;
  cout << endl;
}

// --------
// texOutro
// --------
/*
 *
 */
void Worksheet::texOutro() const
{
  cout << "% ------------------------------------------------------------------------------" << endl;
  cout << "\\end{document}" << endl;
  cout << "% ------------------------------------------------------------------------------" << endl;
}

