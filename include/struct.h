#ifndef STRUCT_H
#define STRUCT_H

#include <string>
#include <vector>
#include "./atom.h"
#include "./term.h"
#include "./structIterator.h"
using std::string;
using std::vector;

class Struct : public Term {
public:
    Struct(Atom name, vector<Term*> args);
    int arity();
    Term* args(int index) const;
    string symbol() const;
    string value() const;
    Term* name();    
    int argSize() const;
    vector<Term*> args() const;
    bool match(Term &term);
    Term* find(string symbol);
    Iterator<Term*>* createIterator() {
        return new StructIterator<Term*>(this);
    }
protected:
    Atom _name;
    vector<Term*> _args;
};

#endif
