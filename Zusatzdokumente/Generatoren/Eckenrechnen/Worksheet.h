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

  // numbers at the related side
  vector<int> m_left;
  vector<int> m_top;
  vector<int> m_right;
  vector<int> m_bottom;

  // calculated results
  vector< vector<int> > m_results;

};

#endif /* #ifndef WORKSHEET_H_INCLUDE_NO1 */

