-module(bs01).
-export([first_word/1]).

first_word(Bin) -> 
    first_word(Bin, <<>>).

first_word(<<" ", Rest/binary>>, Acc) ->
    Acc;
first_word(<<X, Rest/binary>>, Acc) ->
    first_word(Rest, <<Acc/binary, X>>);
first_word(<<>>, Acc) ->
    Acc.

%%BS01: Извлечь из строки первое слово:
%%Пример:
%%1> BinText = <<"Some text">>.
%%<<"Some Text">>
%%2> bs01:first_word(BinText).
%%<<”Some”>>
