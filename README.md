# Assignment 3
## Basic Erlang Programming
In this assignment we will get Erlang running on your computers, and then write two simple Erlang programs. The goal is to get familiar with Erlang syntax and with the Erlang functional programming style.

Follow the instructions (see the reading lists) to get Erlang installed on your laptop or other computer. Try the examples we have looked at in class, and get used to making source modules (with the .erl file type). Make sure you move around in the file system using the unix-ish "cd", "pwd", and "ls" commands; make sure you can compile the modules; make sure you can run the functions defined and exported by those modules.

Here is a short new Erlang lesson: getting input from the keyboard. This is a small function that will get a number from the keyboard, and you may use this as you wish in the programs you write:

    get_numData() ->
        {ok, Num} = io:read("Enter a number: "),
        io:format("The number you entered is: ~w~n", [Num]).

This works using pattern matching, where the number typed by the user is bound to "Num" on the left side of the expression using io:read.
Once this all works, write these two Erlang programs:


Write an Erlang program that will take one number as input (you will get the number from the user typing it at the keyboard) and then do this computation:

a) if the input is not an integer, print "not an integer"
    
b) if the input integer is negative (smaller than 0), compute
       the absolute value of that integer raised to the 7th power... 
       and print that.
       
c) if the input integer is 0, simply output the 0
    
d) is the input integer is greater than 0 then decide if it is 
       a multiple of 7 or not; if it is a multiple of 7, print out 
       the 5th root of the integer; if its not a multiple of 7, then 
       print out the factorial of that integer.
       
It ends after doing the correct thing with the input number. You may find math:pow(X,Y) useful... it returns a float, and it computed X raised to the Y power. Factorial is a function we defined in class (in a PPT).


Use the program just written as a "loop" body, and repeat the get-input-then-compute cycle repeatedly. End this repetition when the user gives a 0 as input. Note that you should do the "looping" here with tail recursion.

Since this is group work, the group produces a common solution and one group member submits the entire solution on behalf of all the group members. Put an erlang comment in your module source files naming all the group members, or naming the solo person doing the work. Something like this directive at the top of each module source file:

    -team("bob smith, jane doe, kim kinney").
 or
 
    % team: bob smith, jane doe, kim kinney

Identify the coder(s) even if you are a solo "team".
Make two modules... named "p1" and "p2" . Put your module source files into one zip file, include a README file for any comments you might want to note (as well as put your group member names in that README file), and in Canvas, submit this single zip file.

