pub const TokenTag = enum {
    tok_eof,
    tok_lparen,
    tok_rparen,
    tok_lbrace, // {
    tok_rbrace, // }
    tok_lbracket, //[
    tok_rbracket, //]
    tok_comma,
    tok_plus,
    tok_minus,
    tok_star,
    tok_slash,
    tok_equal, // =
    tok_plus_equal, // +=
    tok_minus_equal, // -=
    tok_star_equal, // *=
    tok_slash_equal, // /=
    tok_equality, // ==
    tok_inequality, // !=
    tok_lessthan,
    tok_lessthan_equal, // <=
    tok_greaterthan,
    tok_greaterthan_equal, // >=
    tok_return,
    tok_type,
    tok_string,
    tok_identifier,
    tok_number,
    tok_colon,
    tok_if,
    tok_else,
    tok_while,
    tok_mod,
    tok_func,
    tok_semicolon,
    tok_true,
    tok_false,
};

pub const TokenPayload = union(TokenTag) {
    tok_eof: void,
    tok_lparen: void,
    tok_rparen: void,
    tok_lbrace: void, // {
    tok_rbrace: void, // }
    tok_lbracket: void, //[
    tok_rbracket: void, //]
    tok_comma: void,
    tok_plus: void,
    tok_minus: void,
    tok_star: void,
    tok_slash: void,
    tok_equal: void, // =
    tok_plus_equal: void, // +=
    tok_minus_equal: void, // -=
    tok_equality: void, // ==
    tok_inequality: void, // !=
    tok_lessthan: void,
    tok_lessthan_equal: void, // <=
    tok_greaterthan: void,
    tok_greaterthan_equal: void, // >=
    tok_return: void,
    tok_type: []const u8, //this can be inefficient we could have an integer which acts as flag like 1=int 2=string 3=bool .... etc
    tok_string: []const u8,
    tok_identifier: []const u8,
    tok_number: i64,
    tok_colon: void,
    tok_if: void,
    tok_else: void,
    tok_while: void,
    tok_mod: void,
    tok_func: void,
    tok_semicolon: void,
    tok_true: void,
    tok_false: void,
};
pub const Token = struct {
    payload: TokenPayload,
    line: usize,
    column: usize,
};
