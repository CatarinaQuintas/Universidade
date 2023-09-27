import ply.yacc as yacc
import sys
from mistas_lex import tokens


def p_mistas_grammar(p):
    """
    EXPR   : LP ATOMS RP
    ATOMS  : ATOM
           | ATOMS ATOM
    ATOM   : WORD
           | NUMBER
    NUMBER : INT
           | REAL
    """

def p_error(p):
    print("Syntax error", p)
    parser.exito = False


parser = yacc.yacc()

parser.exito = True

# fonte = ""
# for linha in sys.stdin:
#     fonte += linha
# parser.parse(fonte)

if __name__ == "__main__":
    for line in sys.stdin:
        parser.parse(line)
        tok = parser.token()
        while tok:
            print(tok)
            tok = parser.token()


if parser.exito:
    print("Parsing finished successfully!")
