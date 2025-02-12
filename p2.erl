% team: Robert Sullivan, Cole Vita
-module(p2).
-export([loop_get_numData/0, tfac/1]).

loop_get_numData() ->
        io:format("Enter a number: "),
        case io:read("") of
            {ok, Num} when is_integer(Num) -> 
                case Num of 
                    _ when Num < 0 -> 
                        Exp = round(math:pow(abs(Num), 7)),
                        io:format("~w~n", [Exp]),
                        loop_get_numData();
                    0 -> 
                        io:format("Program exiting~n"),
                        ok;
                    _ when Num > 0 -> 
                        if Num rem 7 == 0 -> 
                            FifthRoot = math:pow(Num, 1/5),
                            io:format("~w~n", [FifthRoot]);
                        true -> 
                            Factorial = tfac(Num),
                            io:format("~w~n", [Factorial])
                        end,
                        loop_get_numData() 
                end;
            {ok, _} -> 
                io:format("Not an integer~n"),
                loop_get_numData();
            {error, _} -> % should this catch even inputs not ending in "."
                io:format("Not a valid input~n"),
                loop_get_numData()
    end.

% In-class tail-recursive factorial function
tfac(N) -> tail_fac(N,1).
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).