// -----------------------------------------------------------------------------
// Box.cpp                                                               Box.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Implementation of the Box class.
 * @author Achim Klein
 * @version 2014-08-26
 */
 
// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <sstream>
#include "Box.h"


// -----------------------------------------------------------------------------
// Construction                                                     Construction
// -----------------------------------------------------------------------------

// ---
// Box
// ---
/*
 * The constructor sets the geometry and alignment of the box.
 */
Box::Box(const string& width, const string& align, const string& height, const string& depth)
{
  m_width  = width;
  m_align  = align;
  m_height = height;
  m_depth  = depth;
}

// ---
// Box
// ---
/*
 * A virtual destructor.
 */
Box::~Box()
{
  // nothing
}


// -----------------------------------------------------------------------------
// Handling                                                             Handling
// -----------------------------------------------------------------------------

// ----------------
// operator(string)
// ----------------
/*
 *
 */
string Box::operator()(const string& text) const
{
  stringstream box;

  // start command
  box << "\\makebox";

  // width
  if (!m_width.empty())
  {
    box << "[" << m_width << "]";

    // alignment
    if (!m_align.empty())
    {
      box << "[" << m_align << "]";
    }
  }

  // content
  box << "{";

  // vertical strut
  if (!m_height.empty() || !m_depth.empty())
  {
    string tmph = (m_height.empty() ? "0pt" : m_height);
    string tmpd = (m_depth.empty()  ? "0pt" : m_depth);

    // start command
    box << "{\\dimen0=" << tmph << "\\advance\\dimen0 by " << tmpd;
    box << "\\rule[-" << tmpd << "]";

    // the strut's width
    box << "{0pt}";

    // the strut's height
    box << "{\\dimen0}}";
  }

  // text
  box << text << "}";

  // get command as single string
  return box.str();
}

// --------------
// operator(char)
// --------------
/*
 *
 */
string Box::operator()(char c) const
{
  // convert to string
  stringstream conv;
  conv << c;

  // use string version
  return operator()(conv.str());
}

// ------------------
// operator(unsigned)
// ------------------
/*
 *
 */
string Box::operator()(unsigned u) const
{
  // convert to string
  stringstream conv;
  conv << u;

  // use string version
  return operator()(conv.str());
}

// ----------------
// operator[string]
// ----------------
/*
 *
 */
string Box::operator[](const string& text) const
{
  // convert to string
  stringstream conv;
  conv << "\\ensuremath{" << text << "}";

  // use string version
  return operator()(conv.str());
}

// --------------
// operator[char]
// --------------
/*
 *
 */
string Box::operator[](char c) const
{
  // convert to string
  stringstream conv;
  conv << "\\ensuremath{" << c << "}";

  // use string version
  return operator()(conv.str());
}

// ------------------
// operator[unsigned]
// ------------------
/*
 *
 */
string Box::operator[](unsigned u) const
{
  // convert to string
  stringstream conv;
  conv << "\\ensuremath{" << u << "}";

  // use string version
  return operator()(conv.str());
}

