// -----------------------------------------------------------------------------
// main.cpp                                                             main.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief this file holds the main() function
 * @author Col. Walter E. Kurtz
 * @version 2014-05-07
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <cmath>
#include <cstdlib>
#include <string>
#include <sstream>
#include <iomanip>
#include <iostream>
#include "Triangle.h"
#include "Worksheet.h"


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// ----
//  vs
// ----
/**
 *
 */
void vs(const Triangle& a, const Triangle& b)
{
  unsigned prec = 3;
  unsigned width = 7;

  cout << "init  = " << setw(width) << right                       << a.getInitMethod() << "  vs.  ";
  cout               << setw(width) << right                       << b.getInitMethod() << endl;
  cout << "a     = " << setw(width) << fixed << setprecision(prec) << a.getA()          << "  vs.  ";
  cout               << setw(width) << fixed << setprecision(prec) << b.getA()          << endl;
  cout << "b     = " << setw(width) << fixed << setprecision(prec) << a.getB()          << "  vs.  ";
  cout               << setw(width) << fixed << setprecision(prec) << b.getB()          << endl;
  cout << "c     = " << setw(width) << fixed << setprecision(prec) << a.getC()          << "  vs.  ";
  cout               << setw(width) << fixed << setprecision(prec) << b.getC()          << endl;
  cout << "alpha = " << setw(width) << fixed << setprecision(prec) << a.getAlpha()      << "  vs.  ";
  cout               << setw(width) << fixed << setprecision(prec) << b.getAlpha()      << endl;
  cout << "beta  = " << setw(width) << fixed << setprecision(prec) << a.getBeta()       << "  vs.  ";
  cout               << setw(width) << fixed << setprecision(prec) << b.getBeta()       << endl;
  cout << "gamma = " << setw(width) << fixed << setprecision(prec) << a.getGamma()      << "  vs.  ";
  cout               << setw(width) << fixed << setprecision(prec) << b.getGamma()      << endl;
}


// -------
// compare
// -------
/**
 *
 */
bool compare(const Triangle& ref, const Triangle& test)
{
  const double eps = 1e-9;

  bool ok = true;

  if (fabs(ref.getA()     - test.getA())     > eps) ok = false;
  if (fabs(ref.getB()     - test.getB())     > eps) ok = false;
  if (fabs(ref.getC()     - test.getC())     > eps) ok = false;
  if (fabs(ref.getAlpha() - test.getAlpha()) > eps) ok = false;
  if (fabs(ref.getBeta()  - test.getBeta())  > eps) ok = false;
  if (fabs(ref.getGamma() - test.getGamma()) > eps) ok = false;

  if (!ok)
  {
    vs(ref, test);
    exit(-1);
  }

  return ok;
}


// ----
// test
// ----
/**
 *
 */
void test(double a, double b, double c)
{
  // SSS
  Triangle reference;
  reference.calculateSSS(a, b, c);

  // angles
  const double alpha = reference.getAlpha();
  const double beta  = reference.getBeta();
  const double gamma = reference.getGamma();

  Triangle test;

  // check SWS
  test.calculateSWS("ab", a, b, gamma); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSWS("ba", b, a, gamma); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSWS("ac", a, c, beta);  cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSWS("ca", c, a, beta);  cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSWS("bc", b, c, alpha); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSWS("cb", c, b, alpha); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;

  // check WSW
  test.calculateWSW("ab", alpha, beta,  c); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWSW("ba", beta,  alpha, c); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWSW("ac", alpha, gamma, b); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWSW("ca", gamma, alpha, b); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWSW("bc", beta,  gamma, a); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWSW("cb", gamma, beta,  a); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;

  // check WWS
  test.calculateWWS("ab", alpha, beta,  a); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWWS("ac", alpha, gamma, a); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWWS("ba", beta,  alpha, b); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWWS("bc", beta,  gamma, b); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWWS("ca", gamma, alpha, c); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateWWS("cb", gamma, beta,  c); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;

  // check SsW
  test.calculateSsW("ab", a, b, (a < b ? beta  : alpha)); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSsW("ba", b, a, (a < b ? beta  : alpha)); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSsW("ac", a, c, (a < c ? gamma : alpha)); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSsW("ca", c, a, (a < c ? gamma : alpha)); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSsW("bc", b, c, (b < c ? gamma : beta )); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
  test.calculateSsW("cb", c, b, (b < c ? gamma : beta )); cout << test.getInitMethod() << ": " << (compare(reference, test) ? "ok" : "bad") << endl;
}

// -----
// urand
// -----
/*
 *
 */
unsigned urand(unsigned min, unsigned max)
{
  double range = max - min + 1;

  return min + static_cast<unsigned>(range * rand() / (RAND_MAX + 1.0));
}

// -----------------
// getRandomTriangle
// -----------------
/**
 *
 */
Triangle getRandomTriangle()
{
  const double eps = 0.5;

  double a = urand(1000, 10000) * 0.001;
  double b = urand(1000, 10000) * 0.001;
  double c = urand(1000, 10000) * 0.001;

  bool again = false;
  if ((a + b - c) < eps) again = true;
  if ((a + c - b) < eps) again = true;
  if ((b + c - a) < eps) again = true;

  while (again)
  {
    again = false;

    a = urand(1000, 10000) * 0.001;
    b = urand(1000, 10000) * 0.001;
    c = urand(1000, 10000) * 0.001;

    if ((a + b - c) < eps) again = true;
    if ((a + c - b) < eps) again = true;
    if ((b + c - a) < eps) again = true;
  }

  Triangle t;
  t.calculateSSS(a, b, c);

  return t;
}

// ----
// main
// ----
/**
 *
 */
int main(int argc, char** argv)
{
  // number of worksheets to generate (default: 1)
  int count = 1;

  // get first parameter as number of worksheets
  if (argc > 1)
  {
    std::stringstream convert;
    convert << argv[1];
    convert >> count;
  }

  // create at least one worksheet
  if (count < 1)
  {
    count = 1;
  }

  // generate worksheets
  Worksheet ws;
  ws.srand(argc, argv);
  ws.generate(count);

  return 0;
}

