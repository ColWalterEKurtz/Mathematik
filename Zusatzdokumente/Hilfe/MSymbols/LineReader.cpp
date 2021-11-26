// -----------------------------------------------------------------------------
// LineReader.cpp                                                 LineReader.cpp
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Implementation of the LineReader class.
 * @author Achim Klein
 * @version 2014-08-04
 */

// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include "LineReader.h"


// -----------------------------------------------------------------------------
// Construction                                                     Construction
// -----------------------------------------------------------------------------

// ----------
// LineReader
// ----------
/*
 *
 */
LineReader::LineReader(istream& source)
: m_source(source)
{
	m_lastExtracted = 0;
}

// -----------
// ~LineReader
// -----------
/*
 *
 */
LineReader::~LineReader()
{
	// nothing
}


// -----------------------------------------------------------------------------
// Handling                                                             Handling
// -----------------------------------------------------------------------------

// --------
// readLine
// --------
/*
 *
 */
bool LineReader::readLine()
{
	// reset buffer
	m_line = "";

	bool extracted(false);
	bool completed(false);

	char c(0);

	while((!completed) && m_source.get(c))
	{
	  // get(c) was successful
	  extracted = true;

		// always stop at CR
		if (c == 13)
		{
			completed = true;
		}

		// chek LF
		else if (c == 10)
		{
			// stop at LF only if it's not a CR+LF
			if (m_lastExtracted != 13)
			{
				completed = true;
			}
		}

		// extract all characters besides CR and LF
		else
		{
			m_line += c;
		}

		// always keep last extracted character
		m_lastExtracted = c;
	}

	return extracted;
}

// -------
// getLine
// -------
/*
 *
 */
string LineReader::getLine() const
{
	return m_line;
}

// ---------------
// getSqueezedLine
// ---------------
/*
 *
 */
string LineReader::getSqueezedLine() const
{
  // resulting string
  string squeezed("");

  // separator flag
  bool blank = false;

  // handle all characters
  for(string::size_type i = 0; i < m_line.size(); i++)
  {
    // get next character
    unsigned char uc = static_cast<unsigned char>(m_line[i]);

    // 'blank' characters
    if ((uc ==  9)  // TAB
    ||  (uc == 10)  // LF
    ||  (uc == 13)  // CR
    ||  (uc == 32)) // SPACE
    {
      // don't start with blank character
      if (squeezed.empty()) continue;

      // insert separator before next visible character
      blank = true;
    }

    // visible character
    else
    {
      // check flag
      if (blank)
      {
        // append separator
        squeezed += ' ';

        // reset flag
        blank = false;
      }

      // append current character
      squeezed += uc;
    }
  }

  return squeezed;
}

