// -----------------------------------------------------------------------------
// myrand.cpp                                                         myrand.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief This file defines all members of the myrand namespace.
 * @author Col. Walter E. Kurtz
 * @version 2016-03-02
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <ctime>
#include <cstdlib>
#include <climits>
#include "myrand.h"


// -----------------------------------------------------------------------------
// Used namespaces                                               Used namespaces
// -----------------------------------------------------------------------------
using namespace std;


// -----------------------------------------------------------------------------
// Definitions                                                       Definitions
// -----------------------------------------------------------------------------
namespace myrand
{

  // ----
  // RMAX
  // ----
  /*
   *
   */
  const int RMAX = RAND_MAX;

  // -------
  // getSeed
  // -------
  /*
   *
   */
  unsigned getSeed()
  {
    // start with system time
    unsigned seed = static_cast<unsigned>(time(0) | 1);

    // get uninitialized block of memoy
    unsigned memory[500];

    // multiply uninitialized numbers
    for(int i = 0; i < 500; i++)
    {
      // don't multiply with zero
      seed *= (memory[i] | 1);
    }

    // multiply processor time consumed by the program
    seed *= static_cast<unsigned>(clock() | 1);

    // provide this value
    return seed;
  }

  // -------
  // setSeed
  // -------
  /*
   *
   */
  unsigned setSeed()
  {
    // calculate new seed
    unsigned seed = getSeed();

    // update seed
    srand(seed);

    // return new seed
    return seed;
  }

  // ------
  // mmrand
  // ------
  /*
   *
   */
  int mmrand(int min, int max)
  {
    // mark lowest bits (usually 8 bit)
    static const int mask = (1 << CHAR_BIT) - 1;

    // number of (lowest) bits to shift out from rand()
    static const int shiftout = ((sizeof(RAND_MAX) > sizeof(char)) ? CHAR_BIT : 0);

    // get scale factor
    static const double scale = 1.0 / ((double)UINT_MAX + 1.0);

    // get random number from [0, UINT_MAX]
    unsigned int random = ( (rand() >> shiftout) & mask );

// one char (usually 8 bit)
#if (UINT_MAX >> CHAR_BIT) == 0

    // terminate application with error status
    exit(EXIT_FAILURE);

// two times char (usually 16 bit)
#elif (UINT_MAX >> (2 * CHAR_BIT)) == 0

    // number of bits to shift in
    static const int shift1 = CHAR_BIT;  // usually  8 bit

    // complete random number
    random |= ( ((rand() >> shiftout) & mask) << shift1 );

// three times char (usually 24 bit)
#elif (UINT_MAX >> (3 * CHAR_BIT)) == 0

    // terminate application with error status
    exit(EXIT_FAILURE);

// four times char (usually 32 bit)
#elif UINT_MAX >> (4 * CHAR_BIT) == 0

    // number of bits to shift in
    static const int shift1 = CHAR_BIT;           // usually  8 bit
    static const int shift2 = CHAR_BIT + shift1;  // usually 16 bit
    static const int shift3 = CHAR_BIT + shift2;  // usually 24 bit

    // complete random number
    random |= ( ((rand() >> shiftout) & mask) << shift1 );
    random |= ( ((rand() >> shiftout) & mask) << shift2 );
    random |= ( ((rand() >> shiftout) & mask) << shift3 );

// five times char (usually 40 bit)
#elif (UINT_MAX >> (5 * CHAR_BIT)) == 0

    // terminate application with error status
    exit(EXIT_FAILURE);

// six times char (usually 48 bit)
#elif (UINT_MAX >> (6 * CHAR_BIT)) == 0

    // terminate application with error status
    exit(EXIT_FAILURE);

// seven times char (usually 56 bit)
#elif (UINT_MAX >> (7 * CHAR_BIT)) == 0

    // terminate application with error status
    exit(EXIT_FAILURE);

// eight times char (usually 64 bit)
#elif UINT_MAX >> (8 * CHAR_BIT) == 0

    // number of bits to shift in
    static const int shift1 = CHAR_BIT;           // usually  8 bit
    static const int shift2 = CHAR_BIT + shift1;  // usually 16 bit
    static const int shift3 = CHAR_BIT + shift2;  // usually 24 bit
    static const int shift4 = CHAR_BIT + shift3;  // usually 32 bit
    static const int shift5 = CHAR_BIT + shift4;  // usually 40 bit
    static const int shift6 = CHAR_BIT + shift5;  // usually 48 bit
    static const int shift7 = CHAR_BIT + shift6;  // usually 56 bit

    // complete random number
    random |= ( ((rand() >> shiftout) & mask) << shift1 );
    random |= ( ((rand() >> shiftout) & mask) << shift2 );
    random |= ( ((rand() >> shiftout) & mask) << shift3 );
    random |= ( ((rand() >> shiftout) & mask) << shift4 );
    random |= ( ((rand() >> shiftout) & mask) << shift5 );
    random |= ( ((rand() >> shiftout) & mask) << shift6 );
    random |= ( ((rand() >> shiftout) & mask) << shift7 );

// unknown number of bits per integer
#else

    // terminate application with error status
    exit(EXIT_FAILURE);

#endif

    // get current difference from [0, UINT_MAX]
    double diff = (double)max - (double)min;

    // get value from [0, diff) since random * scale is from [0, 1)
    double offset = random * scale * diff;

    // cut off decimal places what is pretty much like floor(offset)
    unsigned int addend = static_cast<unsigned int>(offset);

    // round up to nearest integer so addend will be from [0, diff]
    addend += ((offset - addend) >= 0.5);

    // return this random number from [min, max]
    return min + addend;
  }

}

