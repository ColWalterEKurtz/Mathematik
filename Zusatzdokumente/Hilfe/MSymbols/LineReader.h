// -----------------------------------------------------------------------------
// LineReader.h                                                     LineReader.h
// -----------------------------------------------------------------------------
/**
 * @file
 * @brief Definition of the LineReader class.
 * @author Achim Klein
 * @version 2014-08-26
 */

// -----------------------------------------------------------------------------
// One-Definition-Rule                                       One-Definition-Rule
// -----------------------------------------------------------------------------
#ifndef LINEREADER_H_INCLUDE_NO1
#define LINEREADER_H_INCLUDE_NO1


// -----------------------------------------------------------------------------
// Includes                                                             Includes
// -----------------------------------------------------------------------------
#include <istream>
#include <string>


// -----------------------------------------------------------------------------
// Namespaces                                                         Namespaces
// -----------------------------------------------------------------------------
using namespace std;


// ----------
// LineReader
// ----------
/**
 * @brief
 * This class extracts a whole line from a given input stream.
 */
class LineReader
{

public:

	// ---------------------------------------------------------------------------
	// Construction                                                   Construction
	// ---------------------------------------------------------------------------

	// ----------
	// LineReader
	// ----------
	/**
	 * The constructor defines the input stream to read from.
	 *
	 * @param source  The input stream to read from.
	 */
	LineReader(istream& source);

	// -----------
	// ~LineReader
	// -----------
	/**
	 * The destructor is virtual.
	 */
	virtual ~LineReader();


	// ---------------------------------------------------------------------------
	// Handling                                                           Handling
	// ---------------------------------------------------------------------------

	// --------
	// readLine
	// --------
	/**
	 * Extracts one line from the related input stream.
	 *
	 * @return true   if a line has been extracted
	 * @return false  if no line has been extracted
	 */
	bool readLine();

	// -------
	// getLine
	// -------
	/**
	 * Returns the extracted line.
	 */
	string getLine() const;

	// ---------------
	// getSqueezedLine
	// ---------------
	/**
	 * Returns the extracted line without leeding or trailing blanks.
	 * Any blank character will be replaced with 'SPACE'.
	 * Succeeding blanks will be reduced to one single 'SPACE'.
	 */
	string getSqueezedLine() const;


private:

	// ---------------------------------------------------------------------------
	// Attributes                                                       Attributes
	// ---------------------------------------------------------------------------

	/// The related input stream.
	istream& m_source;

	/// The last extracted character.
	char m_lastExtracted;

	/// The extracted line.
	string m_line;
};

#endif	// #ifndef LINEREADER_H_INCLUDE_NO1
