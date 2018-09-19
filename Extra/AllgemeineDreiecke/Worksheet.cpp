// -----------------------------------------------------------------------------
// Worksheet.cpp                                                   Worksheet.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Implementation of the Worksheet class.
 * @author Col. Walter E. Kurtz
 * @version 2014-03-28
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <cmath>
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
  m_sequence = 0;
}

// ----------
// ~Worksheet
// ----------
/*
 *
 */
Worksheet::~Worksheet()
{
  delete[] m_sequence;
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
  // reset
  m_triangles.clear();

  m_triangles.push_back( randomizeSWS("ab") );
  m_triangles.push_back( randomizeSWS("ba") );
  m_triangles.push_back( randomizeSWS("ac") );
  m_triangles.push_back( randomizeSWS("ca") );
  m_triangles.push_back( randomizeSWS("cb") );

  m_triangles.push_back( randomizeWSW("ab") );
  m_triangles.push_back( randomizeWSW("ba") );
  m_triangles.push_back( randomizeWSW("ac") );
  m_triangles.push_back( randomizeWSW("ca") );
  m_triangles.push_back( randomizeWSW("bc") );
  m_triangles.push_back( randomizeWSW("cb") );

  m_triangles.push_back( randomizeWWS("ab") );
  m_triangles.push_back( randomizeWWS("ba") );
  m_triangles.push_back( randomizeWWS("ac") );
  m_triangles.push_back( randomizeWWS("ca") );
  m_triangles.push_back( randomizeWWS("bc") );
  m_triangles.push_back( randomizeWWS("cb") );

  m_triangles.push_back( randomizeSsW("ab") );
  m_triangles.push_back( randomizeSsW("ba") );
  m_triangles.push_back( randomizeSsW("ac") );
  m_triangles.push_back( randomizeSsW("ca") );
  m_triangles.push_back( randomizeSsW("bc") );
  m_triangles.push_back( randomizeSsW("cb") );

  // new sequence
  delete[] m_sequence;
  m_sequence = permutation( m_triangles.size() );
}

// ------------
// randomizeSSS
// ------------
/*
 *
 */
Triangle Worksheet::randomizeSSS() const
{
  const double eps = 0.5;

  double a = urand(30, 100) * 0.1;
  double b = urand(30, 100) * 0.1;
  double c = urand(30, 100) * 0.1;

  bool again = false;
  if ((a + b - c) < eps) again = true;
  if ((a + c - b) < eps) again = true;
  if ((b + c - a) < eps) again = true;

  while(again)
  {
    again = false;

    a = urand(30, 100) * 0.1;
    b = urand(30, 100) * 0.1;
    c = urand(30, 100) * 0.1;

    if ((a + b - c) < eps) again = true;
    if ((a + c - b) < eps) again = true;
    if ((b + c - a) < eps) again = true;
  }

  Triangle t;
  t.calculateSSS(a, b, c);

  return t;
}

// ------------
// randomizeSWS
// ------------
/*
 *
 */
Triangle Worksheet::randomizeSWS(const string& sides) const
{
  Triangle t;

  while(true)
  {
    double s1 = urand(30, 100) * 0.1;
    double s2 = urand(30, 100) * 0.1;
    double a  = urand(30, 120);

    t.calculateSWS(sides, s1, s2, a);

    if ( checkTriangle(t) ) break;

    cerr << "trouble in randomizeSWS(" << sides << ")" << endl;
  }

  return t;
}

// ------------
// randomizeWSW
// ------------
/*
 *
 */
Triangle Worksheet::randomizeWSW(const string& angles) const
{
  Triangle t;

  while(true)
  {
    double a1 = urand(30, 110);
    double a2 = urand(30, 150 - a1);
    double s  = urand(30, 100) * 0.1;

    t.calculateWSW(angles, a1, a2, s);

    if ( checkTriangle(t) ) break;

    cerr << "trouble in randomizeWSW(" << angles << ")" << endl;
  }

  return t;
}

// ------------
// randomizeWWS
// ------------
/*
 *
 */
Triangle Worksheet::randomizeWWS(const string& angles) const
{
  Triangle t;

  while(true)
  {
    unsigned a1 = urand(30, 110);
    unsigned a2 = urand(30, 150 - a1);
    double   s  = urand(30, 100) * 0.1;

    t.calculateWWS(angles, a1, a2, s);

    if ( checkTriangle(t) ) break;

    cerr << "trouble in randomizeWWS(" << angles << ")" << endl;
  }

  return t;
}

// ------------
// randomizeSsW
// ------------
/*
 *
 */
Triangle Worksheet::randomizeSsW(const string& sides) const
{
  Triangle t;

  while(true)
  {
    double s1 = urand(30, 60) * 0.1;
    double s2 = s1 + urand(20, 40) * 0.1;
    double a  = urand(30, 120);

    t.calculateSsW(sides, s1, s2, a);

    if ( checkTriangle(t) ) break;

    cerr << "trouble in randomizeSsW(" << sides << ")" << endl;
  }

  return t;
}

// -------------
// checkTriangle
// -------------
/*
 *
 */
bool Worksheet::checkTriangle(const Triangle& triangle) const
{
  const double eps       = 1e-9;
  const double minLength = 1.0;
  const double minAngle  = 10.0;

  if (triangle.getA() < minLength) return false;
  if (triangle.getB() < minLength) return false;
  if (triangle.getC() < minLength) return false;

  if (triangle.getAlpha() < minAngle) return false;
  if (triangle.getBeta()  < minAngle) return false;
  if (triangle.getGamma() < minAngle) return false;

  Triangle sss;
  sss.calculateSSS(triangle.getA(), triangle.getB(), triangle.getC());

  if (fabs(triangle.getAlpha() - sss.getAlpha()) > eps) return false;
  if (fabs(triangle.getBeta()  - sss.getBeta())  > eps) return false;
  if (fabs(triangle.getGamma() - sss.getGamma()) > eps) return false;

  return true;
}

// ---------
// calculate
// ---------
/*
 *
 */
bool Worksheet::calculate()
{
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
  cout << "  DIV      = 16" << endl;
  cout << "]" << endl;
  cout << "{scrartcl}" << endl;
  cout << endl;
  cout << "% Standardpakete" << endl;
  cout << "\\usepackage[utf8]{inputenc}" << endl;
  cout << "\\usepackage[T1]{fontenc}" << endl;
  cout << "\\usepackage{lmodern}" << endl;
  cout << "\\usepackage[ngerman]{babel}" << endl;
  cout << "% Zusatzpakete" << endl;
  cout << "\\usepackage{amsmath}" << endl;
  cout << "\\usepackage{amssymb}" << endl;
  cout << "\\usepackage{tikz}" << endl;
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
  cout << "% ---------------------------------------------------" << endl;
  cout << "\\section*{Sinus und Kosinus in allgemeinen Dreiecken}" << endl;
  cout << "% ---------------------------------------------------" << endl;
  cout << "% --------------------------------------------" << endl;
  cout << "\\paragraph{Bestimme die fehlenden Größen}~\\par" << endl;
  cout << "% --------------------------------------------" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[0]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[0]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[1]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[1]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[2]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[2]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}" << endl;
  cout << endl;
  cout << "\\vfill" << endl;
  cout << "\\hrulefill" << endl;
  cout << "\\vfill" << endl;
  cout << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[3]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[3]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[4]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[4]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[5]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[5]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}" << endl;
  cout << endl;
  cout << "\\vfill" << endl;
  cout << "\\hrulefill" << endl;
  cout << "\\vfill" << endl;
  cout << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[6]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[6]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[7]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[7]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[8]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[8]].getAlignatInit(cout, "  ");
  cout << "\\end{minipage}\\par" << endl;
  cout << "\\vspace*{\\fill}" << endl;
  cout << endl;
}

// ----------
// texAnswers
// ----------
/*
 *
 */
void Worksheet::texAnswers(int count)
{
  cout << "\\clearpage" << endl;
  cout << "% ---------------------------------------------------" << endl;
  cout << "\\section*{Sinus und Kosinus in allgemeinen Dreiecken}" << endl;
  cout << "% ---------------------------------------------------" << endl;
  cout << "% ------------------------------------------------" << endl;
  cout << "\\paragraph{Lösungen (auf 3 Stellen gerundet)}~\\par" << endl;
  cout << "% ------------------------------------------------" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[0]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[0]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[1]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[1]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[2]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[2]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}" << endl;
  cout << endl;
  cout << "\\vfill" << endl;
  cout << "\\hrulefill" << endl;
  cout << "\\vfill" << endl;
  cout << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[3]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[3]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[4]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[4]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[5]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[5]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}" << endl;
  cout << endl;
  cout << "\\vfill" << endl;
  cout << "\\hrulefill" << endl;
  cout << "\\vfill" << endl;
  cout << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[6]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[6]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[7]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[7]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}%" << endl;
  cout << "\\hfill" << endl;
  cout << "\\begin{minipage}[b]{0.3\\linewidth}" << endl;
  cout << "  \\center" << endl;
  m_triangles[m_sequence[8]].getTikZ(cout, "  ");
  cout << "  \\small" << endl;
  m_triangles[m_sequence[8]].getAlignatAll(cout, "  ");
  cout << "\\end{minipage}\\par" << endl;
  cout << "\\vspace*{\\fill}" << endl;
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

