// -----------------------------------------------------------------------------
// myrand.h                                                             myrand.h
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief This file declares 'public' members of the myrand namespace.
 * @author Col. Walter E. Kurtz
 * @version 2015-10-22
 */

// -----------------------------------------------------------------------------
// One-Definition-Rule                                       One-Definition-Rule
// -----------------------------------------------------------------------------
#ifndef MYRAND_H_INCLUDE_NO1
#define MYRAND_H_INCLUDE_NO1


// -----------------------------------------------------------------------------
// Declarations                                                     Declarations
// -----------------------------------------------------------------------------
namespace myrand
{

  // ----
  // RMAX
  // ----
  /**
   * Maximum random value.
   */
  extern const int RMAX;

  // -------
  // getSeed
  // -------
  /**
   * calculate new seed that can be passed to srand()
   */
  unsigned getSeed();

  // -------
  // setSeed
  // -------
  /**
   * calculate new seed and pass it to srand()
   */
  unsigned setSeed();

  // ------
  // mmrand
  // ------
  /**
   * get random number from [min, max]
   */
  int mmrand(int min, int max);

}

#endif /* #ifndef MYRAND_H_INCLUDE_NO1 */

