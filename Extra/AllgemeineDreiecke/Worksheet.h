// -----------------------------------------------------------------------------
// Worksheet.h                                                       Worksheet.h
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Definition of the Worksheet class.
 * @author Col. Walter E. Kurtz
 * @version 2014-01-29
 */

// -----------------------------------------------------------------------------
// One-Definition-Rule                                       One-Definition-Rule
// -----------------------------------------------------------------------------
#ifndef WORKSHEET_H_INCLUDE_NO1
#define WORKSHEET_H_INCLUDE_NO1


// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <vector>
#include <string>
#include "Triangle.h"


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// ---------
// Worksheet
// ---------
/**
 *
 */
class Worksheet
{

public:

  // ---------------------------------------------------------------------------
  // Construction                                                   Construction
  // ---------------------------------------------------------------------------

  // ---------
  // Worksheet
  // ---------
  /**
   * The standard-constructor.
   */
  Worksheet();

  // ----------
  // ~Worksheet
  // ----------
  /**
   * A virtual destructor.
   */
  virtual ~Worksheet();


  // ---------------------------------------------------------------------------
  // Handling                                                           Handling
  // ---------------------------------------------------------------------------

  // -----
  // srand
  // -----
  /**
   *
   */
  void srand(int argc, char** argv) const;

  // -----
  // urand
  // -----
  /**
   * @return [min, max]
   */
  unsigned urand(unsigned min, unsigned max) const;

  // -----------
  // permutation
  // -----------
  /**
   * @return [0, size)
   */
  unsigned* permutation(unsigned size) const;

  // --------
  // generate
  // --------
  /**
   *
   */
  void generate(int count = 1);


protected:

  // ---------------------------------------------------------------------------
  // Internal methods                                           Internal methods
  // ---------------------------------------------------------------------------

  // ---------
  // randomize
  // ---------
  /**
   *
   */
  void randomize();

  // ------------
  // randomizeSSS
  // ------------
  /**
   *
   */
  Triangle randomizeSSS() const;

  // ------------
  // randomizeSWS
  // ------------
  /**
   *
   */
  Triangle randomizeSWS(const string& sides) const;

  // ------------
  // randomizeWSW
  // ------------
  /**
   *
   */
  Triangle randomizeWSW(const string& angles) const;

  // ------------
  // randomizeWWS
  // ------------
  /**
   *
   */
  Triangle randomizeWWS(const string& angles) const;

  // ------------
  // randomizeSsW
  // ------------
  /**
   *
   */
  Triangle randomizeSsW(const string& sides) const;

  // -------------
  // checkTriangle
  // -------------
  /**
   *
   */
  bool checkTriangle(const Triangle& triangle) const;

  // ---------
  // calculate
  // ---------
  /**
   *
   */
  bool calculate();

  // --------
  // texIntro
  // --------
  /**
   *
   */
  void texIntro() const;

  // ------------
  // texExercises
  // ------------
  /**
   *
   */
  void texExercises(int count);

  // ----------
  // texAnswers
  // ----------
  /**
   *
   */
  void texAnswers(int count);

  // --------
  // texOutro
  // --------
  /**
   *
   */
  void texOutro() const;


private:

  // ---------------------------------------------------------------------------
  // Attributes                                                       Attributes
  // ---------------------------------------------------------------------------

  /// all different triangles
  vector<Triangle> m_triangles;

  /// path through the vector
  unsigned* m_sequence;

};

#endif /* #ifndef WORKSHEET_H_INCLUDE_NO1 */

