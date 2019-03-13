%option
LP              \(
NL              \n
RP              \)
LCBRACE         \{
RCBRACE         \}
LSBRACKET       \[
RSBRACKET       \]
COMMA           \,
COMMENT         \/\/[^\n]*
TRUE            true
FALSE           false
VOID            void
AND             \/\\
OR              \\\/
IMPLIES         \-\>
NEGATION        \~
ADD_OP          \+
SUB_OP          \-
EQUALS          \=\=
MULT_OP         \*
DIV_OP          \/
MOD_OP          \%
GREATER         \>
LESS            \<
GREATER_EQ      \>\=
LESS_EQ         \<\=
NOT_EQ          \~\=
LETTER          [A-Za-z]
ASSIGN          \=
GIVE            give
TAKE            take
BOOL		bool
FUNCTION        function
IF              if
THEN            then
ELSE            else
LOOP            loop
ENDLOOP         endloop
CLOSE		close
STRING          \"(\\.|[^"\\])*\"
DIGIT           [0-9]
POSITIVE_D      \(\+{DIGIT}+\)
NEGATIVE_D      \(\-{DIGIT}+\)
INT             {POSITIVE_D}|{NEGATIVE_D}|{DIGIT}+
RAT             {INT}\.[0-9]+|\.{INT}
IDENTIFIER      {LETTER}+(\_|\-|{DIGIT}|{LETTER})*
WHITE_SPACE     [ \t]+
FINAL           final
INTEGER         int
RATIONAL        rat
STR             string
ARRAY           array
%%
{INTEGER}         { return (INTEGER); }
{RATIONAL}         { return (RATIONAL); }
{STR}         { return (STR); }
{ARRAY}         { return (ARRAY); }
{LP}              { return (LP); }
{NL}              { return (NL); }
{RP}              { return (RP); }
{LCBRACE}         { return (LCBRACE); }
{RCBRACE}         { return (RCBRACE); }
{LSBRACKET}       { return (LSBRACKET); }
{RSBRACKET}       { return (RSBRACKET); }
{COMMA}           { return (COMMA); }
{COMMENT}         { return (COMMENT); }
{TRUE}            { return (TRUE); }
{FALSE}           { return (FALSE); }
{VOID}                     { return (VOID); }
{AND}             { return (AND); }
{OR}              { return (OR); }
{IMPLIES}         { return (IMPLIES); }
{NEGATION}        { return (NEGATION); }
{ADD_OP}          { return (ADD_OP); }
{SUB_OP}          { return (SUB_OP); }
{EQUALS}          { return (EQUALS); }
{MULT_OP}         { return (MULT_OP); }
{DIV_OP}          { return (DIV_OP); }
{MOD_OP}          { return (MOD_OP); }
{GREATER}         { return (GREATER); }
{LESS}            { return (LESS); }
{GREATER_EQ}      { return (GREATER_EQ); }
{LESS_EQ}         { return (LESS_EQ); }
{NOT_EQ}          { return (NOT_EQ); }
{ASSIGN}          { return (ASSIGN); }
{GIVE}            { return (GIVE); }
{TAKE}            { return (TAKE); }
{FUNCTION}        { return (FUNCTION); }
{FINAL}                    { return (FINAL); }
{IF}              { return (IF); }
{THEN}            { return (THEN); }
{ELSE}            { return (ELSE); }
{LOOP}            { return (LOOP); }
{ENDLOOP}         { return (ENDLOOP); }
{STRING}          { return (STRING); }
{INT}             { return (INT); }
{RAT}             { return (RAT); }
{CLOSE}		  { return (END); }
{IDENTIFIER}      { return (IDENTIFIER); }
{WHITE_SPACE}     ;
{BOOL}		  {return BOOL;}
%%
int yywrap(void){ return 1; }
