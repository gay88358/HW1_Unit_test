#ifndef TERMEXP_H
#define TERMEXP_H

#include "./node.h"
#include "./term.h"

class TermExp : public Node {
public:
    TermExp(Term* term);
    bool evaluate();
    string symbol();

private:    
    Term *_term;
};

#endif