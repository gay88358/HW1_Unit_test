#ifndef ANDEXP_H
#define ANDEXP_H

#include "./node.h"

class AndExp : public Node {
public:
    AndExp(Node *left, Node *right);
    bool evaluate();
    string symbol();

private:
    Node *_left;
    Node *_right;
};

#endif