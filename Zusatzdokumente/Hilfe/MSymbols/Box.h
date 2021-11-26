// -----------------------------------------------------------------------------
// Box.h                                                                   Box.h
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Definition of the Box class.
 * @author Achim Klein
 * @version 2014-08-26
 */

// -----------------------------------------------------------------------------
// One-Definition-Rule                                       One-Definition-Rule
// -----------------------------------------------------------------------------
#ifndef BOX_H_INCLUDE_NO1
#define BOX_H_INCLUDE_NO1


// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <string>


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// ---
// Box
// ---
/**
 * LaTeX: \makebox[width][align]{\rule[voff]{0pt}{height}...}
 */
class Box
{

public:

	// ---------------------------------------------------------------------------
	// Construction                                                   Construction
	// ---------------------------------------------------------------------------

  // ---
  // Box
  // ---
  /**
   * The constructor sets the geometry and alignment of the box:
   *
   *   Box box("120pt", "c", "123pt", "77pt");
   */
  Box(const string& width,
      const string& align,
      const string& height,
      const string& depth);

  // ---
  // Box
  // ---
  /**
   * A virtual destructor.
   */
  virtual ~Box();


	// ---------------------------------------------------------------------------
	// Handling                                                           Handling
	// ---------------------------------------------------------------------------

  // ----------------
  // operator(string)
  // ----------------
  /**
   *
   */
  string operator()(const string& text) const;

  // --------------
  // operator(char)
  // --------------
  /**
   *
   */
  string operator()(char c) const;

  // ------------------
  // operator(unsigned)
  // ------------------
  /**
   *
   */
  string operator()(unsigned u) const;

  // ----------------
  // operator[string]
  // ----------------
  /**
   *
   */
  string operator[](const string& text) const;

  // --------------
  // operator[char]
  // --------------
  /**
   *
   */
  string operator[](char c) const;

  // ------------------
  // operator[unsigned]
  // ------------------
  /**
   *
   */
  string operator[](unsigned u) const;


private:

	// ---------------------------------------------------------------------------
	// Attributes                                                       Attributes
	// ---------------------------------------------------------------------------

  /// the width of the box
  string m_width;

  /// the alignment character
  string m_align;

  /// the height of the box
  string m_height;

  /// the depth of the offset
  string m_depth;

};

#endif /* BOX_H_INCLUDE_NO1 */

