// -----------------------------------------------------------------------------
// Triangle.cpp                                                     Triangle.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Implementation of the Triangle class.
 * @author Col. Walter E. Kurtz
 * @version 2014-05-07
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <cmath>
#include <sstream>
#include <iomanip>
#include "Triangle.h"


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// ----
//  PI
// ----
/**
 *
 */
const double PI(3.141592653589793238462643);


// -----------------------------------------------------------------------------
// Construction                                                     Construction
// -----------------------------------------------------------------------------

// --------
// Triangle
// --------
/*
 * The standard-constructor.
 */
Triangle::Triangle()
{
  // nothing
}

// ---------
// ~Triangle
// ---------
/*
 * A virtual destructor.
 */
Triangle::~Triangle()
{
  // nothing
}


// -----------------------------------------------------------------------------
// Initialization                                                 Initialization
// -----------------------------------------------------------------------------

// ------------
// calculateSSS
// ------------
/*
 *
 */
void Triangle::calculateSSS(double a, double b, double c)
{
  m_init = "SSS";

  // sides
  m_a = a;
  m_b = b;
  m_c = c;

  // law of cosines
  m_alpha = acos( (a * a - b * b - c * c) / (-2 * b * c) ) * 180 / PI;
  m_beta  = acos( (b * b - a * a - c * c) / (-2 * a * c) ) * 180 / PI;
  m_gamma = acos( (c * c - a * a - b * b) / (-2 * a * b) ) * 180 / PI;
}

// ------------
// calculateSWS
// ------------
/*
 *
 */
void Triangle::calculateSWS(const string& sides, double side1, double side2, double angle)
{
  // set init method
  m_init = "SWS:" + sides;

  if ((sides == "ab") || (sides == "ba"))
  {
    if (sides == "ab")
    {
      m_a = side1;
      m_b = side2;
    }

    else
    {
      m_b = side1;
      m_a = side2;
    }

    // angle is always gamma
    m_gamma = angle;

    // law of cosines
    m_c = sqrt(m_a * m_a + m_b * m_b - 2 * m_a * m_b * cos(m_gamma * PI / 180));
    m_alpha = acos( (m_a * m_a - m_b * m_b - m_c * m_c) / (-2 * m_b * m_c) ) * 180 / PI;

    // the measures of the interior angles always add up to 180 degrees
    m_beta = 180 - m_alpha - m_gamma;
  }

  else if ((sides == "ac") || (sides == "ca"))
  {
    if (sides == "ac")
    {
      m_a = side1;
      m_c = side2;
    }

    else
    {
      m_c = side1;
      m_a = side2;
    }

    // angle is always beta
    m_beta = angle;

    // law of cosines
    m_b = sqrt(m_a * m_a + m_c * m_c - 2 * m_a * m_c * cos(m_beta * PI / 180));
    m_alpha = acos( (m_a * m_a - m_b * m_b - m_c * m_c) / (-2 * m_b * m_c) ) * 180 / PI;

    // the measures of the interior angles always add up to 180 degrees
    m_gamma = 180 - m_alpha - m_beta;
  }

  else if ((sides == "bc") || (sides == "cb"))
  {
    if (sides == "bc")
    {
      m_b = side1;
      m_c = side2;
    }

    else
    {
      m_c = side1;
      m_b = side2;
    }

    // angle is always alpha
    m_alpha = angle;

    // law of cosines
    m_a = sqrt(m_b * m_b + m_c * m_c - 2 * m_b * m_c * cos(m_alpha * PI / 180));
    m_beta = acos( (m_b * m_b - m_a * m_a - m_c * m_c) / (-2 * m_a * m_c) ) * 180 / PI;

    // the measures of the interior angles always add up to 180 degrees
    m_gamma = 180 - m_alpha - m_beta;
  }
}

// ------------
// calculateWSW
// ------------
/*
 *
 */
void Triangle::calculateWSW(const string& angles, double angle1, double angle2, double side)
{
  // set init method
  m_init = "WSW:" + angles;

  if ((angles == "ab") || (angles == "ba"))
  {
    if (angles == "ab")
    {
      m_alpha = angle1;
      m_beta = angle2;
    }

    else
    {
      m_beta = angle1;
      m_alpha = angle2;
    }

    // side is always c
    m_c = side;

    // the measures of the interior angles always add up to 180 degrees
    m_gamma = 180 - m_alpha - m_beta;

    // sin(gamma)
    double sinc = sin(m_gamma * PI / 180);

    // law of sines
    m_a = (m_c * sin(m_alpha * PI / 180)) / sinc;
    m_b = (m_c * sin(m_beta * PI / 180)) / sinc;
  }

  else if ((angles == "ac") || (angles == "ca"))
  {
    if (angles == "ac")
    {
      m_alpha = angle1;
      m_gamma = angle2;
    }

    else
    {
      m_gamma = angle1;
      m_alpha = angle2;
    }

    // side is always b
    m_b = side;

    // the measures of the interior angles always add up to 180 degrees
    m_beta = 180 - m_alpha - m_gamma;

    // sin(beta)
    double sinb = sin(m_beta * PI / 180);

    // law of sines
    m_a = (m_b * sin(m_alpha * PI / 180)) / sinb;
    m_c = (m_b * sin(m_gamma * PI / 180)) / sinb;
  }

  else if ((angles == "bc") || (angles == "cb"))
  {
    if (angles == "bc")
    {
      m_beta = angle1;
      m_gamma = angle2;
    }

    else
    {
      m_gamma = angle1;
      m_beta = angle2;
    }

    // side is always a
    m_a = side;

    // the measures of the interior angles always add up to 180 degrees
    m_alpha = 180 - m_beta - m_gamma;

    // sin(alpha)
    double sina = sin(m_alpha * PI / 180);

    // law of sines
    m_b = (m_a * sin(m_beta * PI / 180)) / sina;
    m_c = (m_a * sin(m_gamma * PI / 180)) / sina;
  }
}

// ------------
// calculateWWS
// ------------
/*
 *
 */
void Triangle::calculateWWS(const string& angles, double angle1, double angle2, double side)
{
  // set init method
  m_init = "WWS:" + angles;

  if (angles[0] == 'a')
  {
    // first angle
    m_alpha = angle1;

    // opposing side
    m_a = side;

    if (angles[1] == 'b')
    {
      // second angle
      m_beta = angle2;

      // the measures of the interior angles always add up to 180 degrees
      m_gamma = 180 - m_alpha - m_beta;
    }

    else if (angles[1] == 'c')
    {
      // second angle
      m_gamma = angle2;

      // the measures of the interior angles always add up to 180 degrees
      m_beta = 180 - m_alpha - m_gamma;
    }

    // sin(alpha)
    double sina = sin(m_alpha * PI / 180);

    // law of sines
    m_b = (m_a * sin(m_beta * PI / 180)) / sina;
    m_c = (m_a * sin(m_gamma * PI / 180)) / sina;
  }

  else if (angles[0] == 'b')
  {
    // first angle
    m_beta = angle1;

    // opposing side
    m_b = side;

    if (angles[1] == 'a')
    {
      // second angle
      m_alpha = angle2;

      // the measures of the interior angles always add up to 180 degrees
      m_gamma = 180 - m_alpha - m_beta;
    }

    else if (angles[1] == 'c')
    {
      // second angle
      m_gamma = angle2;

      // the measures of the interior angles always add up to 180 degrees
      m_alpha = 180 - m_beta - m_gamma;
    }

    // sin(beta)
    double sinb = sin(m_beta * PI / 180);

    // law of sines
    m_a = (m_b * sin(m_alpha * PI / 180)) / sinb;
    m_c = (m_b * sin(m_gamma * PI / 180)) / sinb;
  }

  else if (angles[0] == 'c')
  {
    // first angle
    m_gamma = angle1;

    // opposing side
    m_c = side;

    if (angles[1] == 'a')
    {
      // second angle
      m_alpha = angle2;

      // the measures of the interior angles always add up to 180 degrees
      m_beta = 180 - m_alpha - m_gamma;
    }

    else if (angles[1] == 'b')
    {
      // second angle
      m_beta = angle2;

      // the measures of the interior angles always add up to 180 degrees
      m_alpha = 180 - m_beta - m_gamma;
    }

    // sin(gamma)
    double sinc = sin(m_gamma * PI / 180);

    // law of sines
    m_a = (m_c * sin(m_alpha * PI / 180)) / sinc;
    m_b = (m_c * sin(m_beta * PI / 180)) / sinc;
  }
}

// ------------
// calculateSsW
// ------------
/*
 *
 */
void Triangle::calculateSsW(const string& sides, double side1, double side2, double angle)
{
  // set init method
  m_init = "SsW:" + sides;

  if ((sides == "ab") || (sides == "ba"))
  {
    // set sides
    if (sides == "ab")
    {
      m_a = side1;
      m_b = side2;
    }

    else
    {
      m_b = side1;
      m_a = side2;
    }

    // longer side a
    if (m_a > m_b)
    {
      m_alpha = angle;
      m_beta  = asin( (m_b * sin(m_alpha * PI / 180)) / m_a ) * 180 / PI;
      m_gamma = 180 - m_alpha - m_beta;

      // law of sines
      m_c = (m_a * sin(m_gamma * PI / 180)) / sin(m_alpha * PI / 180);
    }

    // longer side b
    else
    {
      m_beta  = angle;
      m_alpha = asin( (m_a * sin(m_beta * PI / 180)) / m_b ) * 180 / PI;
      m_gamma = 180 - m_alpha - m_beta;

      // law of sines
      m_c = (m_b * sin(m_gamma * PI / 180)) / sin(m_beta * PI / 180);
    }
  }

  else if ((sides == "ac") || (sides == "ca"))
  {
    // set sides
    if (sides == "ac")
    {
      m_a = side1;
      m_c = side2;
    }

    else
    {
      m_c = side1;
      m_a = side2;
    }

    // longer side a
    if (m_a > m_c)
    {
      m_alpha = angle;
      m_gamma = asin( (m_c * sin(m_alpha * PI / 180)) / m_a ) * 180 / PI;
      m_beta  = 180 - m_alpha - m_gamma;

      // law of sines
      m_b = (m_a * sin(m_beta * PI / 180)) / sin(m_alpha * PI / 180);
    }

    // longer side c
    else
    {
      m_gamma = angle;
      m_alpha = asin( (m_a * sin(m_gamma * PI / 180)) / m_c ) * 180 / PI;
      m_beta  = 180 - m_alpha - m_gamma;

      // law of sines
      m_b = (m_c * sin(m_beta * PI / 180)) / sin(m_gamma * PI / 180);
    }
  }

  else if ((sides == "bc") || (sides == "cb"))
  {
    // set sides
    if (sides == "bc")
    {
      m_b = side1;
      m_c = side2;
    }

    else
    {
      m_c = side1;
      m_b = side2;
    }

    // longer side b
    if (m_b > m_c)
    {
      m_beta  = angle;
      m_gamma = asin( (m_c * sin(m_beta * PI / 180)) / m_b ) * 180 / PI;
      m_alpha = 180 - m_beta - m_gamma;

      // law of sines
      m_a = (m_b * sin(m_alpha * PI / 180)) / sin(m_beta * PI / 180);
    }

    // longer side c
    else
    {
      m_gamma = angle;
      m_beta  = asin( (m_b * sin(m_gamma * PI / 180)) / m_c ) * 180 / PI;
      m_alpha = 180 - m_beta - m_gamma;

      // law of sines
      m_a = (m_c * sin(m_alpha * PI / 180)) / sin(m_gamma * PI / 180);
    }
  }
}


// -----------------------------------------------------------------------------
// Getter methods                                                 Getter methods
// -----------------------------------------------------------------------------

// -------------
// getInitMethod
// -------------
/*
 *
 */
string Triangle::getInitMethod() const
{
  return m_init;
}

// ----
// getA
// ----
/*
 *
 */
double Triangle::getA() const
{
  return m_a;
}

// ----
// getB
// ----
/*
 *
 */
double Triangle::getB() const
{
  return m_b;
}

// ----
// getC
// ----
/*
 *
 */
double Triangle::getC() const
{
  return m_c;
}

// --------
// getAlpha
// --------
/*
 *
 */
double Triangle::getAlpha() const
{
  return m_alpha;
}

// -------
// getBeta
// -------
/*
 *
 */
double Triangle::getBeta() const
{
  return m_beta;
}

// --------
// getGamma
// --------
/*
 *
 */
double Triangle::getGamma() const
{
  return m_gamma;
}

// -------
// getTikZ
// -------
/*
 *
 */
void Triangle::getTikZ(ostream& out, const string& indent) const
{
  double scale = getScaleFactor(3.5, 3.0);
  double invscale = 1.0 / scale;

  const double anglerd = 4 * invscale; // radius of angles in [mm]
  const double dotsize = 1 * invscale; // radius of corner marks in [pt]
  const double boldlnw = 1;            // width of bold line in [pt]

  // vertices
  double vAx = 0;
  double vAy = 0;
  double vBx = m_c;
  double vBy = 0;
  double vCx = m_b * cos(m_alpha * PI / 180);
  double vCy = m_b * sin(m_alpha * PI / 180);

  // center points
  double cABx = 0.5 * (vBx + vAx);
  double cABy = 0.5 * (vBy + vAy);
  double cACx = 0.5 * (vCx + vAx);
  double cACy = 0.5 * (vCy + vAy);
  double cBCx = 0.5 * (vCx + vBx);
  double cBCy = 0.5 * (vCy + vBy);

  // orthogonals
  double shifta = ((m_beta > 90) ? (90 - m_beta + 360) : (90 - m_beta));
  double shiftb = m_alpha + 90;
  double shiftc = 270;  

  // shift distance
  double shiftd = 3 * invscale; // text distance in [mm]

  // quantities
  string ar  = getQuantity(anglerd, "mm");
  string ds  = getQuantity(dotsize, "pt");
  string lw  = getQuantity(boldlnw, "pt");
  string ax  = getQuantity(vAx,     "cm");
  string ay  = getQuantity(vAy,     "cm");
  string bx  = getQuantity(vBx,     "cm");
  string by  = getQuantity(vBy,     "cm");
  string cx  = getQuantity(vCx,     "cm");
  string cy  = getQuantity(vCy,     "cm");
  string cax = getQuantity(cBCx,    "cm");
  string cay = getQuantity(cBCy,    "cm");
  string cbx = getQuantity(cACx,    "cm");
  string cby = getQuantity(cACy,    "cm");
  string ccx = getQuantity(cABx,    "cm");
  string ccy = getQuantity(cABy,    "cm");
  string sha = getQuantity(shifta,  "");
  string shb = getQuantity(shiftb,  "");
  string shc = getQuantity(shiftc,  "");  
  string shd = getQuantity(shiftd,  "mm");

  const string anglecolor = "black!15!white";

  out << indent << "\\begin{tikzpicture}[scale=" << scale << "]" << endl;
  out << indent << "  \\coordinate (A) at (" << ax << ", " << ay << ");" << endl;
  out << indent << "  \\coordinate (B) at (" << bx << ", " << by << ");" << endl;
  out << indent << "  \\coordinate (C) at (" << cx << ", " << cy << ");" << endl;
  out << indent << "  \\coordinate (Na) at ([shift={(" << sha << ":" << shd << ")}]" << cax << ", " << cay << ");" << endl;
  out << indent << "  \\coordinate (Nb) at ([shift={(" << shb << ":" << shd << ")}]" << cbx << ", " << cby << ");" << endl;
  out << indent << "  \\coordinate (Nc) at ([shift={(" << shc << ":" << shd << ")}]" << ccx << ", " << ccy << ");" << endl;

  // markup known parts
  if (m_init == "SSS")
  {
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
  }

  // markup known parts
  else if ((m_init == "SWS:ab") || (m_init == "SWS:ba"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
    out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
  }

  // markup known parts
  else if ((m_init == "SWS:ac") || (m_init == "SWS:ca"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
    out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
  }

  // markup known parts
  else if ((m_init == "SWS:bc") || (m_init == "SWS:cb"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
    out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
  }

  // markup known parts
  else if ((m_init == "WSW:ab") || (m_init == "WSW:ba"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
    out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
    out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
  }

  // markup known parts
  else if ((m_init == "WSW:ac") || (m_init == "WSW:ca"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
    out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
    out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
  }

  // markup known parts
  else if ((m_init == "WSW:bc") || (m_init == "WSW:cb"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
    out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
    out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
  }

  // markup known parts
  else if ((m_init == "WWS:ab") || (m_init == "WWS:ba"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
    out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
    out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    if (m_init == "WWS:ab")
    {
      out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    }
    else
    {
      out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
    }
  }

  // markup known parts
  else if ((m_init == "WWS:ac") || (m_init == "WWS:ca"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
    out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
    out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    if (m_init == "WWS:ac")
    {
      out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    }
    else
    {
      out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
    }
  }

  // markup known parts
  else if ((m_init == "WWS:bc") || (m_init == "WWS:cb"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
    out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
    out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    if (m_init == "WWS:bc")
    {
      out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
    }
    else
    {
      out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
    }
  }

  // markup known parts
  else if ((m_init == "SsW:ab") || (m_init == "SsW:ba"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    if (m_a > m_b)
    {
      out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
      out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    }
    else
    {
      out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
      out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    }
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
  }

  // markup known parts
  else if ((m_init == "SsW:ac") || (m_init == "SsW:ca"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    if (m_a > m_c)
    {
      out << indent << "    \\fill[fill=" << anglecolor << "] (A) circle (" << ar << ");" << endl; // alpha
      out << indent << "    \\draw (A) circle (" << ar << ");" << endl;
    }
    else
    {
      out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
      out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    }
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (B) -- (C);" << endl; // a
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
  }

  // markup known parts
  else if ((m_init == "SsW:bc") || (m_init == "SsW:cb"))
  {
    out << indent << "  % bekannte Winkel" << endl;
    out << indent << "  \\begin{scope}" << endl;
    out << indent << "    \\clip (A) -- (B) -- (C) -- cycle;" << endl;
    if (m_b > m_c)
    {
      out << indent << "    \\fill[fill=" << anglecolor << "] (B) circle (" << ar << ");" << endl; // beta
      out << indent << "    \\draw (B) circle (" << ar << ");" << endl;
    }
    else
    {
      out << indent << "    \\fill[fill=" << anglecolor << "] (C) circle (" << ar << ");" << endl; // gamma
      out << indent << "    \\draw (C) circle (" << ar << ");" << endl;
    }
    out << indent << "  \\end{scope}" << endl;
    out << indent << "  % bekannte Seiten" << endl;
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (C);" << endl; // b
    out << indent << "  \\draw[line width=" << lw << "] (A) -- (B);" << endl; // c
  }

  out << indent << "  % Seiten des Dreiecks" << endl;
  out << indent << "  \\draw (A) -- (B) -- (C) -- cycle;" << endl;
  out << indent << "  % Eckpunkte" << endl;
  out << indent << "  \\fill (A) circle (" << ds << ");" << endl;
  out << indent << "  \\fill (B) circle (" << ds << ");" << endl;
  out << indent << "  \\fill (C) circle (" << ds << ");" << endl;
  out << indent << "  % Beschriftung" << endl;
  out << indent << "  \\node[below left]  at (A) {{\\small$A$}};" << endl;
  out << indent << "  \\node[below right] at (B) {{\\small$B$}};" << endl;
  out << indent << "  \\node[above=3pt]   at (C) {{\\small$C$}};" << endl;
  out << indent << "  \\node at (Na) {{\\small$a$}};" << endl;
  out << indent << "  \\node at (Nb) {{\\small$b$}};" << endl;
  out << indent << "  \\node at (Nc) {{\\small$c$}};" << endl;
  out << indent << "\\end{tikzpicture}" << endl;
}

// -------------
// getAlignatAll
// -------------
/*
 *
 */
void Triangle::getAlignatAll(ostream& out, const string& indent) const
{
  stringstream converter;
  converter << fixed << setprecision(3) << m_a     << " ";
  converter << fixed << setprecision(3) << m_b     << " ";
  converter << fixed << setprecision(3) << m_c     << " ";
  converter << fixed << setprecision(3) << m_alpha << " ";
  converter << fixed << setprecision(3) << m_beta  << " ";
  converter << fixed << setprecision(3) << m_gamma;

  string a;
  string b;
  string c;
  string alpha;
  string beta;
  string gamma;

  // read from fifo
  converter >> a >> b >> c >> alpha >> beta >> gamma;

  a = formatDecimal(a) + "\\mathrm{\\,cm}";
  b = formatDecimal(b) + "\\mathrm{\\,cm}";
  c = formatDecimal(c) + "\\mathrm{\\,cm}";
  alpha = formatDecimal(alpha) + "^{\\circ}";
  beta  = formatDecimal(beta)  + "^{\\circ}";
  gamma = formatDecimal(gamma) + "^{\\circ}";

  out << indent << "\\begin{alignat*}{3}" << endl;
  out << indent << "  a&=" << a << " & \\quad&\\; & \\alpha&=" << alpha << " \\\\" << endl;
  out << indent << "  b&=" << b << " & \\quad&\\; &  \\beta&=" << beta  << " \\\\" << endl;
  out << indent << "  c&=" << c << " & \\quad&\\; & \\gamma&=" << gamma << endl;
  out << indent << "\\end{alignat*}" << endl;
}

// --------------
// getAlignatInit
// --------------
/*
 *
 */
void Triangle::getAlignatInit(ostream& out, const string& indent) const
{
  stringstream converter;
  converter << fixed << setprecision(3) << m_a     << " ";
  converter << fixed << setprecision(3) << m_b     << " ";
  converter << fixed << setprecision(3) << m_c     << " ";
  converter << fixed << setprecision(3) << m_alpha << " ";
  converter << fixed << setprecision(3) << m_beta  << " ";
  converter << fixed << setprecision(3) << m_gamma;

  string a;
  string b;
  string c;
  string alpha;
  string beta;
  string gamma;

  // read from fifo
  converter >> a >> b >> c >> alpha >> beta >> gamma;

  a = formatDecimal(a) + "\\mathrm{\\,cm}";
  b = formatDecimal(b) + "\\mathrm{\\,cm}";
  c = formatDecimal(c) + "\\mathrm{\\,cm}";
  alpha = formatDecimal(alpha) + "^{\\circ}";
  beta  = formatDecimal(beta)  + "^{\\circ}";
  gamma = formatDecimal(gamma) + "^{\\circ}";

  if (m_init == "SSS")
  {
    alpha = "";
    beta  = "";
    gamma = "";
  }

  else if ((m_init == "SWS:ab") || (m_init == "SWS:ba"))
  {
    c     = "";
    alpha = "";
    beta  = "";
  }

  else if ((m_init == "SWS:ac") || (m_init == "SWS:ca"))
  {
    b     = "";
    alpha = "";
    gamma = "";
  }

  else if ((m_init == "SWS:bc") || (m_init == "SWS:cb"))
  {
    a     = "";
    beta  = "";
    gamma = "";
  }

  else if ((m_init == "WSW:ab") || (m_init == "WSW:ba"))
  {
    a     = "";
    b     = "";
    gamma = "";
  }

  else if ((m_init == "WSW:ac") || (m_init == "WSW:ca"))
  {
    a    = "";
    c    = "";
    beta = "";
  }

  else if ((m_init == "WSW:bc") || (m_init == "WSW:cb"))
  {
    b     = "";
    c     = "";
    alpha = "";
  }

  else if (m_init == "WWS:ab")
  {
    b     = "";
    c     = "";
    gamma = "";
  }

  else if (m_init == "WWS:ba")
  {
    a     = "";
    c     = "";
    gamma = "";
  }

  else if (m_init == "WWS:ac")
  {
    b    = "";
    c    = "";
    beta = "";
  }

  else if (m_init == "WWS:ca")
  {
    a    = "";
    b    = "";
    beta = "";
  }

  else if (m_init == "WWS:bc")
  {
    a     = "";
    c     = "";
    alpha = "";
  }

  else if (m_init == "WWS:cb")
  {
    a     = "";
    b     = "";
    alpha = "";
  }

  else if ((m_init == "SsW:ab") || (m_init == "SsW:ba"))
  {
    c     = "";
    gamma = "";
    
    if (m_a > m_b)
    {
      beta = "";
    }

    else
    {
      alpha = "";
    }
  }

  else if ((m_init == "SsW:ac") || (m_init == "SsW:ca"))
  {
    b    = "";
    beta = "";
    
    if (m_a > m_c)
    {
      gamma = "";
    }

    else
    {
      alpha = "";
    }
  }

  else if ((m_init == "SsW:bc") || (m_init == "SsW:cb"))
  {
    a     = "";
    alpha = "";
    
    if (m_b > m_c)
    {
      gamma = "";
    }

    else
    {
      beta = "";
    }
  }

  out << indent << "\\begin{alignat*}{3}" << endl;
  out << indent << "  a&=" << a << " & \\quad&\\; & \\alpha&=" << alpha << " \\\\" << endl;
  out << indent << "  b&=" << b << " & \\quad&\\; &  \\beta&=" << beta  << " \\\\" << endl;
  out << indent << "  c&=" << c << " & \\quad&\\; & \\gamma&=" << gamma << endl;
  out << indent << "\\end{alignat*}" << endl;
}


// -----------------------------------------------------------------------------
// Internal methods                                             Internal methods
// -----------------------------------------------------------------------------

// -----------
// getQuantity
// -----------
/*
 *
 */
string Triangle::getQuantity(double number, const string& unit) const
{
  stringstream converter;
  converter << fixed << setprecision(3) << number;
  converter << unit;

  string quantity = converter.str();

  for(unsigned i = 0; i < quantity.size(); i++)
  {
    if (quantity[i] == ',')
    {
      quantity[i] = '.';
    }
  }

  return quantity;
}

// -------------
// formatDecimal
// -------------
/*
 *
 */
string Triangle::formatDecimal(const string& number) const
{
  string formatted;

  bool integer = true;
  string buffer = "";

  for (unsigned i = 0; i < number.size(); i++)
  {
    // get current character
    unsigned char uc = static_cast<unsigned char>(number[i]);

    if (integer)
    {
      if ((uc == '.') || (uc == ','))
      {
        buffer = ",\\!";
        integer = false;
      }

      else
      {
        formatted += uc;
      }
    }

    else
    {
      if (uc != '0')
      {
        formatted.append(buffer);
        formatted += uc;

        buffer = "";
      }

      else
      {
        buffer += uc;
      }
    }
  }

  return formatted;
}

// --------------
// getScaleFactor
// --------------
/*
 *
 */
double Triangle::getScaleFactor(double maxWidth, double maxHeight) const
{
  // get coordinates
  double ax = 0;
  double ay = 0;
  double bx = m_c;
  double by = 0;
  double cx = m_b * cos(m_alpha * PI / 180);
  double cy = m_b * sin(m_alpha * PI / 180);

  // get smallest x
  double xmin = ax;
  if (bx < xmin) xmin = bx;
  if (cx < xmin) xmin = cx;

  // get greatest x
  double xmax = ax;
  if (bx > xmax) xmax = bx;
  if (cx > xmax) xmax = cx;

  // get smallest y
  double ymin = ay;
  if (by < ymin) ymin = by;
  if (cy < ymin) ymin = cy;

  // get greatest y
  double ymax = ay;
  if (by > ymax) ymax = by;
  if (cy > ymax) ymax = cy;

  // get width and height
  double w = (xmax - xmin);
  double h = (ymax - ymin);

  // get scale factors
  double xscale = (maxWidth / w);
  double yscale = (maxHeight / h);

  // return smaller factor
  return ((xscale < yscale) ? xscale : yscale);
}

