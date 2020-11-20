-module(bs02).
-export([words/1]).

words(Bin) ->
    lists:reverse(words(Bin, <<>>, [])).
words(<<" ", Rest/binary>>, Accbin, Acc) ->
    words(Rest, <<>>, [Accbin | Acc]);
words(<<X, Rest/binary>>, Accbin, Acc) -> 
    words(Rest, <<Accbin/binary, X>>, Acc);
words(<<>>, Accbin, Acc) ->
    [Accbin | Acc].



%%BS02: Разделить строку на слова:
%%Пример:
%%1> BinText = <<"Text with four words">>.
%%<<"Text with four words">>
%%2> bs02:words(BinText).
%%[<<"Text">>, <<"with">>, <<"four">>, <<"words">>]
