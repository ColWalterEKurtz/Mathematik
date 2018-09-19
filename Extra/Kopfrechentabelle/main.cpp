// -----------------------------------------------------------------------------
// main.cpp                                                             main.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief this file holds the main() function
 * @author Col. Walter E. Kurtz
 * @version 2014-03-20
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <sstream>
#include "Worksheet.h"

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

