grammar Kquery;

// Lexer rules

// Literals

WS: [ \t\r\n]+ -> skip;

// Numbers

NUMBER : TRUE | FALSE | SIGNED_CONSTANT;
TRUE: 'true';
FALSE: 'false';
SIGNED_CONSTANT : [+-]? ( DEC_CONSTANT | BIN_CONSTANT | OCT_CONSTANT | HEX_CONSTANT );
DEC_CONSTANT : [0-9_]+;  
BIN_CONSTANT : '0b'[01_]+;
OCT_CONSTANT : '0o'[0-7_]+;
HEX_CONSTANT : '0x'[0-9a-fA-F_]+;

// Types
TYPE: 'w'[0-9]+;

// Arrays

number_list: NUMBER | NUMBER ',' number_list;
array_initializer: 'symbolic' | '[' number_list ']';
array_declaration: 'array' IDENTIFIER '[' NUMBER? ']' ':' TYPE '->' TYPE '=' array_initializer;


// Arithmetic operations

ADD: 'Add';
SUB: 'Sub';
MUL: 'Mul';
UDIV: 'UDiv';
UREM: 'URem';
SDIV: 'SDiv';

arithmetic_expr_kind : ( ADD | SUB | MUL | UDIV | UREM | SDIV );

// Bitwise operations

NOT: 'Not';
AND: 'And';
OR: 'OR';
XOR: 'Xor';
SHL: 'Shl';
LSHR: 'LShr';
ASHR: 'AShr';

bitwise_expr_kind: ( AND | OR | XOR | SHL | LSHR | ASHR ) ;

// Comparisons
EQ: 'Eq';
NE: 'Ne';
ULT: 'Ult';
ULE: 'Ule';
UGT: 'Ugt';
UGE: 'Uge';
SLT: 'Slt';
SLE: 'Sle';
SGT: 'Sgt';
SGE: 'Sge';

comparison_expr_kind: ( EQ | NE | ULT | ULE | UGT | UGE | SLT | SLE | SGT | SGE );

prog: expr+;

IDENTIFIER: [a-zA-Z_][a-zA-Z0-9._]*;

// Expressions
expr 
			: IDENTIFIER 
			| NUMBER 
			| IDENTIFIER ':' expr 
			| '(' TYPE NUMBER ')'
			| array_declaration
			| '(' arithmetic_expr_kind TYPE expr expr ')'
			| '(' bitwise_expr_kind expr expr ')'
			| '(' comparison_expr_kind (TYPE)? expr expr ')'
			| '(' 'Concat' (TYPE)? expr expr ')'							// Bitvector
			| '(' 'Extract' (TYPE)? expr NUMBER ')' 
			| '(' 'ZExt' TYPE expr ')'												// Zero-extend
			| '(' 'SExt' TYPE expr ')'												// Sign-extend
			| '(' 'Read' TYPE expr version ')'								// Read
			| '(' 'Select' TYPE expr expr expr ')'						// Select
			| '(' 'Neg' (TYPE)? expr ')'
			| '(' 'ReadLSB' TYPE expr version ')'							// ReadLSB
			| '(' 'ReadMSB' TYPE expr version ')'							// ReadMSB
		;

// Versions

update_list : expr '=' expr (',' update_list)?;
version: IDENTIFIER | '[' update_list? ']' '@' version;

