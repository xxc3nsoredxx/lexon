#ifndef LEXON_H_20200108_145105
#define LEXON_H_20200108_145105

/* JSON object tokens */
#define OBJECT  0
#define LBRACE  1
#define WS      2
#define RBRACE  3
#define STRING  4
#define COLON   5
#define VALUE   6
#define COMMA   7

/* From here, only tokens not defined earlier are defined */
/* JSON array tokens */
#define ARRAY   8
#define LBRACK  9
#define RBRACK  10

/* JSON value tokens */
#define NUMBER  11
#define TRUE    12
#define FALSE   13
#define NULL    14

/* JSON string tokens */
#define QUOTE   15
#define CHAR    16
#define ESCAPE  17

/* JSON string escape tokens */
#define BSLASH  18
#define FSLASH  19
#define BACKSP  20
#define FORMFD  21
#define LINEFD  22
#define CRET    23
#define HTAB    24
#define UCODE   25

/* JSON unicode escape sequene tokens */
#define UMARK   26
#define HEXES   27

/* JSON number tokens */
#define ZERO    28
#define FRAC    29
#define EXP     30
#define NEG     31
#define NONZ    32
#define DIGIT   33

/* JSON fraction tokens */
#define DOT     34

/* JSON exponent tokens */
#define LOWERE  35
#define UPPERE  36
#define POS     37

#endif /* LEXON_H_20200108_145105 */
