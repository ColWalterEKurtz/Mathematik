// -----------------------------------------------------------------------------
// Triangle.h                                                         Triangle.h
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Definition of the Triangle class.
 * @author Col. Walter E. Kurtz
 * @version 2014-05-07
 */

// -----------------------------------------------------------------------------
// One-Definition-Rule                                       One-Definition-Rule
// -----------------------------------------------------------------------------
#ifndef TRIANGLE_H_INCLUDE_NO1
#define TRIANGLE_H_INCLUDE_NO1


// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <string>
#include <ostream>


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// --------
// Triangle
// --------
/**
 *
 */
class Triangle
{

public:

  // ---------------------------------------------------------------------------
  // Construction                                                   Construction
  // ---------------------------------------------------------------------------

  // --------
  // Triangle
  // --------
  /**
   * The standard-constructor.
   */
  Triangle();

  // ---------
  // ~Triangle
  // ---------
  /**
   * A virtual destructor.
   */
  virtual ~Triangle();


  // ---------------------------------------------------------------------------
  // Initialization                                               Initialization
  // ---------------------------------------------------------------------------

  // ------------
  // calculateSSS
  // ------------
  /**
   * @param a: length of side a
   * @param b: length of side b
   * @param c: length of side c
   */
  void calculateSSS(double a, double b, double c);

  // ------------
  // calculateSWS
  // ------------
  /**
   * @param sides: targets of side1 and side2: "ab", "ba", "ac", "ca", "bc" or "cb"
   * @param side1: length of side[0]
   * @param side2: length of side[1]
   * @param angle: angle between side1 and side2 (in degrees)
   */
  void calculateSWS(const string& sides, double side1, double side2, double angle);

  // ------------
  // calculateWSW
  // ------------
  /**
   * @param angles: targets of angle1 and angle2: "ab", "ba", "ac", "ca", "bc" or "cb"
   * @param angle1: measure of angles[0] (in degrees)
   * @param angle2: measure of angles[1] (in degrees)
   * @param side: side between angle1 and angle2
   */
  void calculateWSW(const string& angles, double angle1, double angle2, double side);

  // ------------
  // calculateWWS
  // ------------
  /**
   * @param angles: targets of angle1 and angle2: "ab", "ba", "ac", "ca", "bc" or "cb"
   * @param angle1: measure of angles[0] (in degrees)
   * @param angle2: measure of angles[1] (in degrees)
   * @param side: side facing angles[0]
   */
  void calculateWWS(const string& angles, double angle1, double angle2, double side);

  // ------------
  // calculateSsW
  // ------------
  /**
   * @param sides: targets of side1 and side2: "ab", "ba", "ac", "ca", "bc" or "cb"
   * @param side1: length of side[0]
   * @param side2: length of side[1]
   * @param angle: angle facing the longer side
   */
  void calculateSsW(const string& sides, double side1, double side2, double angle);


  // ---------------------------------------------------------------------------
  // Getter methods                                               Getter methods
  // ---------------------------------------------------------------------------

  // -------------
  // getInitMethod
  // -------------
  /**
   *
   */
  string getInitMethod() const;

  // ----
  // getA
  // ----
  /**
   *
   */
  double getA() const;

  // ----
  // getB
  // ----
  /**
   *
   */
  double getB() const;

  // ----
  // getC
  // ----
  /**
   *
   */
  double getC() const;

  // --------
  // getAlpha
  // --------
  /**
   *
   */
  double getAlpha() const;

  // -------
  // getBeta
  // -------
  /**
   *
   */
  double getBeta() const;

  // --------
  // getGamma
  // --------
  /**
   *
   */
  double getGamma() const;

  // -------
  // getTikZ
  // -------
  /**
   *
   */
  void getTikZ(ostream& out, const string& indent) const;

  // -------------
  // getAlignatAll
  // -------------
  /**
   *
   */
  void getAlignatAll(ostream& out, const string& indent) const;

  // --------------
  // getAlignatInit
  // --------------
  /**
   *
   */
  void getAlignatInit(ostream& out, const string& indent) const;


protected:

  // ---------------------------------------------------------------------------
  // Internal methods                                           Internal methods
  // ---------------------------------------------------------------------------

  // -----------
  // getQuantity
  // -----------
  /**
   *
   */
  string getQuantity(double number, const string& unit) const;

  // -------------
  // formatDecimal
  // -------------
  /**
   *
   */
  string formatDecimal(const string& number) const;

  // --------------
  // getScaleFactor
  // --------------
  /**
   *
   */
  double getScaleFactor(double maxWidth, double maxHeight) const;


private:

  // ---------------------------------------------------------------------------
  // Attributes                                                       Attributes
  // ---------------------------------------------------------------------------

  // the initialization flag
  string m_init;

  // sides
  double m_a;
  double m_b;
  double m_c;

  // angles
  double m_alpha;
  double m_beta;
  double m_gamma;

};

#endif /* #ifndef TRIANGLE_H_INCLUDE_NO1 */

