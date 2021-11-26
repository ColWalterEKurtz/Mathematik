// -----------------------------------------------------------------------------
// main.cpp                                                             main.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief      This file holds the main() function and doxygen's main page.
 * @author     Col. Walter E. Kurtz
 * @version    2016-06-04
 * @copyright  GNU General Public License - Version 3.0
 *
 * @mainpage
 *
 * @section issue What is the issue here?
 *   Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod
 *   tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim
 *   veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid
 *   ex ea commodi consequat. Quis aute iure reprehenderit in voluptate
 *   velit esse cillum dolore eu fugiat nulla pariatur.
 *   Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui
 *   officia deserunt mollit anim id est laborum.
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <vector>
#include <algorithm>
#include <string>
#include <sstream>
#include <iostream>
#include "message.h"
#include "myrand.h"


// -----------------------------------------------------------------------------
// Used namespaces                                               Used namespaces
// -----------------------------------------------------------------------------
using namespace std;


// -------
// Problem
// -------
/**
 * Objects of this type represent one single problem of the worksheet.
 */
struct Problem
{
  // two addends
  int add1;
  int add2;

  // two factors
  int fac1;
  int fac2;

  // standard-constructor
  Problem() { add1 = 0; add2 = 0; fac1 = 0; fac2 = 0; }

  // tex problem as product
  string textProduct() const
  {
    stringstream ss;
    ss << fac1;
    ss << "\\cdot";
    ss << fac2;

    return ss.str();
  }

  // tex problem as sum
  string texSum() const
  {
    if (add1 < (fac1 * fac2))
    {
      stringstream ss;
      ss << add1;
      ss << "+";
      ss << add2;

      return ss.str();
    }

    stringstream ss;
    ss << add1;
    ss << "-";
    ss << add2;

    return ss.str();
  }
};


// ----------------
// generateProblems
// ----------------
/**
 * This function generates all problems for one worksheet.
 */
void generateProblems(vector<Problem>& problems)
{
  // start with empty vector
  problems.clear();

  // initialize problems
  for(int i = 2; i <=9; i++)
  {
    for(int j = 2; j <=9; j++)
    {
      int result = i * j;
      int add1 = 0;
      int add2 = 0;

      while(true)
      {
        // 24 to 81
        if (result > 21)
        {
          // add1 + add2 = result
          add1 = myrand::mmrand(6, result - 6);
          add2 = result - add1;
        }

        // 4 to 21
        else
        {
          // add1 - add2 = result
          add1 = myrand::mmrand(result + 11, 99);
          add2 = add1 - result;
        }

        // no easy exercises
        if ((add1 % 10) == 0) continue;
        if ((add2 % 10) == 0) continue;

        break;
      }

      // create and initialize new problem
      Problem p;
      p.add1 = add1;
      p.add2 = add2;
      p.fac1 = i;
      p.fac2 = j;

      // add problem
      problems.push_back(p);
    }
  }

  // shuffle problems
  while(true)
  {
    // randomly swap all elements
    std::random_shuffle(problems.begin(), problems.end());

    // loop while true
    bool again = false;

    // calculate first result
    int last = problems[0].fac1 * problems[0].fac2;

    // check if two consecutive problems have the same result
    for(unsigned i = 1; i < problems.size(); i++)
    {
      // calculate current result
      int prod = problems[i].fac1 * problems[i].fac2;

      // equal results found
      if (prod == last)
      {
        // update flag
        again = true;

        // exit for loop
        break;
      }

      // update last result
      last = prod;
    }

    // check if flag has been set
    if (again) continue;

    // accept sequence of problems
    break;
  }
}

// --------
// texIntro
// --------
/**
 *
 */
void texIntro()
{
  cout << "%Vorlage und globale Optionen" << endl;
  cout << "\\documentclass" << endl;
  cout << "[" << endl;
  cout << "  draft    = true," << endl;
  cout << "  fontsize = 11pt," << endl;
  cout << "  parskip  = half-" << endl;
  cout << "]" << endl;
  cout << "{scrartcl}" << endl;
  cout << endl;
  cout << "% Seitenraender" << endl;
  cout << "\\usepackage" << endl;
  cout << "[" << endl;
  cout << "  top    = 1.0cm," << endl;
  cout << "  left   = 1.5cm," << endl;
  cout << "  right  = 1.5cm," << endl;
  cout << "  bottom = 1.5cm" << endl;
  cout << "]" << endl;
  cout << "{geometry}" << endl;
  cout << endl;
  cout << "% Standardpakete" << endl;
  cout << "\\usepackage[utf8]{inputenc}" << endl;
  cout << "\\usepackage[T1]{fontenc}" << endl;
  cout << "\\usepackage{lmodern}" << endl;
  cout << "\\usepackage[ngerman]{babel}" << endl;
  cout << "% Zusatzpakete" << endl;
  cout << "\\usepackage{amsmath}" << endl;
  cout << endl;
  cout << "% no headlines and no footlines" << endl;
  cout << "\\pagestyle{empty}" << endl;
  cout << endl;
  cout << "% ------------------------------------------------------------------------------" << endl;
  cout << "\\begin{document}" << endl;
  cout << "% ------------------------------------------------------------------------------" << endl;
  cout << "% problem line" << endl;
  cout << "\\newcommand{\\pline}[1]" << endl;
  cout << "{%" << endl;
  cout << "  \\text{\\makebox[3em][r]{\\ensuremath{#1}}}%" << endl;
  cout << "}%" << endl;
  cout << "% result line" << endl;
  cout << "\\newcommand{\\rline}[1]" << endl;
  cout << "{%" << endl;
  cout << "  \\text" << endl;
  cout << "  {%" << endl;
  cout << "    \\rule[-4pt]{3em}{0.5pt}%" << endl;
  cout << "    \\textsubscript{\\makebox[1em][l]{\\enskip#1}}%" << endl;
  cout << "  }%" << endl;
  cout << "}%" << endl;
}

// ---------
// texSheets
// ---------
/**
 *
 */
void texSheets(unsigned count)
{
  for(unsigned n = 0; n < count; n++)
  {
    vector<Problem> problems;

    // generate all problems for this worksheet
    generateProblems(problems);

    // 4 columns
    unsigned rows = problems.size() / 4;

    // start new page
    if (n > 0) cout << "\\clearpage" << endl;

    cout << "\\begin{align*}" << endl;

    // print sums
    for(unsigned i = 0; i < rows; i++)
    {
      // next problem for each column
      const Problem& p1 = problems[i + 0 * rows];
      const Problem& p2 = problems[i + 1 * rows];
      const Problem& p3 = problems[i + 2 * rows];
      const Problem& p4 = problems[i + 3 * rows];

      // get current letter
      char letter = static_cast<char>(97 + i);

      cout << "    \\pline{" << p1.texSum() << "}&=\\rline{" << letter << "}" << endl;
      cout << "  & \\pline{" << p2.texSum() << "}&=\\rline{" << letter << "}" << endl;
      cout << "  & \\pline{" << p3.texSum() << "}&=\\rline{" << letter << "}" << endl;
      cout << "  & \\pline{" << p4.texSum() << "}&=\\rline{" << letter << "}";

      if ((i + 1) < rows)
      {
        cout << " \\\\[1ex]";
      }

      cout << endl;
    }

    // close align environment
    cout << "\\end{align*}" << endl;

    // create white space in the middle of the worksheet
    cout << "\\par\\vfill\\par" << endl;

    cout << "\\begin{align*}" << endl;

    // print products
    for(unsigned i = 0; i < rows; i++)
    {
      // next problem for each column
      const Problem& p1 = problems[i + 0 * rows];
      const Problem& p2 = problems[i + 1 * rows];
      const Problem& p3 = problems[i + 2 * rows];
      const Problem& p4 = problems[i + 3 * rows];

      // get current letter
      char letter = static_cast<char>(97 + i);

      cout << "    \\pline{" << p1.fac1 << "\\cdot" << p1.fac2 << "}&=\\rline{" << letter << "}" << endl;
      cout << "  & \\pline{" << p2.fac1 << "\\cdot" << p2.fac2 << "}&=\\rline{" << letter << "}" << endl;
      cout << "  & \\pline{" << p3.fac1 << "\\cdot" << p3.fac2 << "}&=\\rline{" << letter << "}" << endl;
      cout << "  & \\pline{" << p4.fac1 << "\\cdot" << p4.fac2 << "}&=\\rline{" << letter << "}";

      if ((i + 1) < rows)
      {
        cout << " \\\\[1ex]";
      }

      cout << endl;
    }

    // close align environment
    cout << "\\end{align*}" << endl;
  }
}

// --------
// texOutro
// --------
/**
 *
 */
void texOutro()
{
  cout << "% ------------------------------------------------------------------------------" << endl;
  cout << "\\end{document}" << endl;
  cout << "% ------------------------------------------------------------------------------" << endl;
}

// ----
// main
// ----
/**
 * @brief  The program starts in this function.
 *
 * @param argc  holds the number of passed command-line arguments.
 * @param argv  holds the list of passed command-line arguments.
 *
 * @return
 * Value | Meaning
 * ----: | :------
 *     0 | The requested operation finished successfully.
 *     1 | The requested operation failed.
 */
int main(int argc, char** argv)
{
  // set default value
  unsigned count = 2;

  // one argument passed by user
  if (argc == 2)
  {
    stringstream conv;
    conv << argv[1];

    if ( !(conv >> count) )
    {
      // notify user
      msg::err( msg::catq("unable to get numeric value: ", argv[1]) );

      // signalize error
      return 1;
    }
  }

  // too many passed arguments
  else if (argc > 2)
  {
    // notify user
    msg::err("only one numeric argument allowed");

    // signalize error
    return 1;
  }

  // start new sequence of pseudo random numbers
  myrand::setSeed();

  // generate TeX code
  texIntro();
  texSheets(count);
  texOutro();

  // signalize success
  return 0;
}
