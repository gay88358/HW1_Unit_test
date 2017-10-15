#ifndef STRUCT_H
#define STRUCT_H

#include <string>
#include <vector>

#include "./term.h"
#include "./atom.h"
using std::string;
using std::vector;

class Struct : public Term {
public:
    Struct(Atom name, vector<Term*> args);
    Term* args(int index) const;
    string symbol() const;
    string value() const;
    Atom name() const;
    bool match(Term &term);
    int length();        
protected:
    Atom _name;
    vector<Term*> _args;
};

#endif
