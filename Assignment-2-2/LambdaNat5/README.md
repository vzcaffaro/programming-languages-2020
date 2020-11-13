# README

## Assignment 1

The purpose of the assignment is to build a simple programming language that has function definitions, function application, numbers, conditionals, recursion and lists.

The assignment starts with [LambdaNat4](), which is our programming language that has function definitions, function application, numbers, conditionals, and recursion.

The grammar [LambdaNat5]() adds to the grammar [LambdaNat4]() the following

    EHd.       Exp6 ::= "hd" Exp ;
    ETl.       Exp6 ::= "tl" Exp ;
    ENil.      Exp9 ::= "#" ; -- EndOfList, aka empty list
    ECons.     Exp9 ::= Exp10 ":" Exp9 ;

According to the rules `ENil` and `ECons` we can build lists such as

    a:b:c:#

`hd` and `tl` are pronounced "head" and "tail", respectively. The first task is to adapt the interpreter of LambdaNat4 in such a way that head and tail compute as 

     hd a:b:c:# --> a
     tl a:b:c:# --> b:c:#

**Remark on the side:** Lists can also be nested in order to form trees as in 

    Plus:(N1:#):(Times:(N2:#):(N3:#):#):#

If you wonder why we need the EndOfList symbol `#` above, then the answer is that in the tree above it is redundant if we have agreed that the `N` symbols are constants (take no arguments) and that `Plus` and `Times` are binary (take exactly 2 arguments). Then we could write the above instead as 

    Plus:N1:(Times:N2:N3)

(which, by the way, is an abstract syntax tree for `1+2*3`.)
The reason we need the EndOfList symbol is that lists are meant to work in situations where we do not know at programming time how long they will be at run time. **End of Remark.**

### Assignment1.A (3 out of 10)

Write an interpreter for [LambdaNat5](). Test it with the programs in [test/test-interpreter5.hs]() as well as your own examples.

### Assignment1.B

Implement and run the following functions in LambdNat5. Save the program answering question Assignment1.B.xyz as `test/xyz.lc`. All programs must be executable by the interpreter for marks. Any program that is not executable will get no marks.

#### Assignment1.B.even (1 out of 10)

`even l` evaluates to `S 0` if `l` is of even length and evaluates to `0` if `l` is not of even length, for example

    even a1:a2:a3:a4:#      --->   S 0    
    even a1:a2:a3:a4:a5:#   --->   0    

#### Assignment1.B.length (1 out of 10)

`length l` evaluates to the length of `l` for any list `l`. For example,

    length a1:a2:a3:a4:a5:#   --->   S S S S S 0


#### Assignment1.B.member (1 out of 10)

`member x l` returns 1 if `x` is a member of the list `l` and 0 if it is not. For example,

    member a a:b:#        --->   S 0
    member S 0  0:S 0:#   --->   0

#### Assignment1.B.append (1 out of 10)

`append l1 l2 ` returns the list obtained from appending `l1` to `l2`. For example, 

    append # #             --->   #
    append 0:S 0:# #       --->   0:S 0:#
    append # a:b:#         --->   a:b:#
    append 0:S 0:# a:b:#   --->   0:S 0:a:b:#

#### Assignment1.B.reverse (1 out of 10)

`reverse l ` returns the list obtained from reversing `l `. For example, 

    reverse #         --->   #
    reverse a:b:c:#   --->   c:b:a:#


#### Assignment1.B.le (1 out of 10)

`le n m ` returns `S 0` if as numbers `n` is smaller or equal to `m` and returns `0` if `n` is bigger than `m`. For example,

    le S 0 S S 0 --> 0
    le S 0 S 0 --> S 0

#### Assignment1.B.sort (1 out of 10)

If `l` is a list of numbers, then `sort l` returns a list that has the same elements as `l` but sorted from smaller to larger. `sort` can be specified mathematically as follows

    sort #  =  #
    sort n:l  =  insert n l

    insert n #  =  n:#
    insert n m:l  =  
        n smaller equal to m -> n:m:l
        otherwise -> m:(insert n l)

Example:

    sort S S 0:S 0:# --> S 0:S S 0:#








    
    
