% team: Robert Sullivan, Cole Vita
-module(p1).
-export([get_numData/0, tfac/1]).

get_numData() ->
        io:format("Enter a number: "),
        case io:read("") of
            {ok, Num} when is_integer(Num) -> 
                case Num of 
                    _ when Num < 0 -> 
                        Exp = round(math:pow(abs(Num), 7)),
                        io:format("~w~n", [Exp]); 
                    0 -> 
                        io:format("~w~n", [Num]);
                    _ when Num > 0 -> 
                        if Num rem 7 == 0 -> 
                            FifthRoot = math:pow(Num, 1/5),
                            io:format("~w~n", [FifthRoot]);
                        true -> 
                            Factorial = tfac(Num),
                            io:format("~w~n", [Factorial])
                        end 
                end;
            {ok, _} -> 
                io:format("Not an integer~n");
            {error, _} -> 
                io:format("Not a valid input~n")
    end.

% In-class tail-recursive factorial function
tfac(N) -> tail_fac(N,1).
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).