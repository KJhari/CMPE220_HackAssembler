// CMPE 220: SYSTEM SOFTWARE
// TEAM 1
// HACK ASSEMBLER
#include "Utility.h"
#include <algorithm>
#include <cctype>
#include <locale>

// Trim from start (in place)
 void ltrim(std::string &s) {
    s.erase(s.begin(), std::find_if(s.begin(), s.end(), [](unsigned char ch) {
        return !std::isspace(ch);
    }));
}

// Trim from end (in place)
void rtrim(std::string &s) {
    s.erase(std::find_if(s.rbegin(), s.rend(), [](unsigned char ch) {
        return !std::isspace(ch);
    }).base(), s.end());
}

// Trim from both ends (in place)
void trim(std::string &s) {
    ltrim(s);
    rtrim(s);
}