# Assignment 2

This assignment is worth 9% of the total grade.

It comes in several parts.

#### Deadlines: 

- Part 1: **Nov 4**.

Let me know if there are any questions ... I list some resources that may be helpful:

## Introduction

The purpose of the assignment is to build a simple programming language that has function definitions, function application, numbers, conditionals, recursion and lists.


## Instructions

You may form groups of up to 2 students. If you think you have a reason for an exception let me know.

Each group submits their answer by sending me a link to a github repository via [email using this link](mailto:akurz@chapman.edu?subject=CPSC-354-Assignment-2).

**Use the same private github repository as for Assignment 1. If you think that this is not possible/appropriate get in touch.**

## Part 1

(counts for 1 point out of 9 ... if you followed and implemented what we discussed in lecture/lab 9.2, I estimate that this should not take you more than one hour of work ... let me know if that is not the case)

Your repository needs to contain a folder `Assignment-2-1` which must be identical which the one [here](https://github.com/alexhkurz/programming-languages-2020/tree/master/Assignment-2-1), with the exeption of the following:

- You can ignore `LambdaNat1`.

- Start the [work cycle](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab1-Lambda-Calculus/README.md#the-work-cycle-build-a-new-language) with `LambdaNat2` as `LambdaNatOld`.

- Create a directory `LambdaNat3` (`LambdaNatNew`) by adding `if-then-else` to the language.

 - Change the grammar, so that 

        if e1 = e2 then e3 else e4

    is legal syntax, given that the expressions `e1, ... e4` are.

- In the interpreter
    -  add a clause to the definition of `evalCBN` evaluating  if-then-else. [Hint: Use Haskell's native if-then-else to interpret your own if-then-else.]

    -  add a clause to the definition of `subst` that substitutes into `if e1 = e2 then e3 else e4` by substituting into the sub-terms `e1, ... e4`. 

- You should add programs to the folder `test` for testing.

## Part 2

This is essentially the [homework from the Tuesday lecture](https://hackmd.io/Mt3etYA-QPe3vQGD-bBkLw?both#Homework). There are no points, but in case you will ask for an extension of the final deadline, I will make this dependent on whether you finished Part 2 by **Friday, Nov 13**.

Your repository needs to contain a folder `Assignment-2-2` which must be identical which the one [here](https://github.com/alexhkurz/programming-languages-2020/tree/master/Assignment-2-2), with the exeption of the following:

Add the following programs to `LambdaNat4/test`.

- `multiplication.lc`
- `factorial.lc`

Before writing these programs, I recommend to study the examples in [test](https://github.com/alexhkurz/programming-languages-2020/blob/master/Assignment-2-2/LambdaNat4/test/).

These are all programs we have written before in Haskell, so that should not take you more than 1 hour. If you can run and test these programs you should be ready to start Part 3 on Friday.


## Part 3

Deadline: **Friday, Nov 20**.

The purpose of the assignment is to build a simple programming language that has function definitions, function application, numbers, conditionals, recursion and lists.

The assignment continues from `LambdaNat4`, which is our programming language that has function definitions, function application, numbers, conditionals, and recursion. I already started the work cycle by providing you with the grammar for `LambdaNat5`.

This assignment divides into 2 further parts.

- Finish the workcycle from `LambdaNat4` to `LambdaNat5` by completing the interpreter for `LambdaNat5`. 

- Implement functions in `LambdaNat5` as specified below.

### The Interpreter for `LambdaNat5`

(4 points)

The [grammar for LambdaNat5](https://github.com/alexhkurz/programming-languages-2020/blob/master/Assignment-2-2/LambdaNat5/grammar/LambdaNat5.cf) adds to the grammar `LambdaNat4.cf` the following

    EHd.       Exp6 ::= "hd" Exp ;
    ETl.       Exp6 ::= "tl" Exp ;
    ENil.      Exp9 ::= "#" ; -- EndOfList, aka empty list
    ECons.     Exp9 ::= Exp10 ":" Exp9 ;

According to the rules `ENil` and `ECons` we can build lists such as

    a:b:c:#

The precedence levels of the grammar are engineered in such a way that `a:b:c:#` is parsed as `a:(b:(c:#))`.

For the exercise below, recall that abstract syntax is defined in `AbsLambdaNat.hs`, which in turn is generated automatically (by bnfc) from the grammar `LambdaNat5.cf`.

**Exercise:** (not necessary to hand this in, but should help to implement the computation rules for `hd` and `tl` in the interpreter) What is the abstract syntax tree of `a:b:c:#`? Write the answer down on paper. Run `a:b:c:#` in the parser and compare with your pen-and-paper answer.

`hd` and `tl` are pronounced "head" and "tail", respectively. The first task is to adapt the interpreter of `LambdaNat4` in such a way that head and tail compute as 

     hd a:b:c:#   --->   a
     tl a:b:c:#   --->   b:c:#

Note that this does not specify what will happen if your computation reaches `hd #` or `tl #`. In my implementation the computation will just get stuck at `hd #` or `tl #`, in more sophisticated implementations, you would probably want to have something like a runtime exception.

**Hint:** Recall the `case` expressions for `EApp` or `EMinusOne`.  The code in the interpreter for `EHd e` needs to 
- evaluate `e`
- in case `evalCBN e` is of the form `ECons e1 e2` the result obtained by evaluating the head of the list represented by `ECons e1 e2`.


**Exercise:** (not necessary to hand this in, but should help to see how to implement the two rules above in `Interpreter.hs`) Translate the computation rule `hd a:b:c:#   --->   a` from concrete syntax to abstract syntax. Also run `hd a:b:c:#` in the parser and compare.

**Task:** Implement the computation rules for `EHd`, `ETl`, `ENil`, `ECons` by adding 4 cases to the definition of `evalCBN` in [`Interpreter.hs`](https://github.com/alexhkurz/programming-languages-2020/blob/master/Assignment-2-2/LambdaNat5/src/Interpreter.hs). There is no need to adapt the definition of `subst` due to some Haskell trickery.

**Remark on the side:** Lists can also be nested in order to form trees as in 

    Plus:(N1:#):(Times:(N2:#):(N3:#):#):#

If you wonder why we need the EndOfList symbol `#` above, then the answer is that in the tree above it is redundant if we have agreed that the `N` symbols are constants (take no arguments) and that `Plus` and `Times` are binary (take exactly 2 arguments). Then we could write the above instead as 

    Plus:N1:(Times:N2:N3)

(which, by the way, is an abstract syntax tree for `1+2*3`.) The reason we need the EndOfList symbol is that lists are meant to work in situations where we do not know at *programming time* (aka compile time) how long the lists will be at *run time*. 

**Remark:** The previous remark hides a deeper duality between two different readings of `#`, one as the empty list (often written as "nil") and the other has the EndOfList symbol. This duality is known as the duality of **algebras** and **co-algebras**. In the algebraic view, we *build* or *construct* finite data from smallest data (here `ENil` with concrete syntax `#`) by inductively applying a finite number of rules (here `ECons` with concrete syntax `:`). In the co-algebraic view, data is potentially infinite and we *observe* or *deconstruct* this data (here using `hd` and `tl`) until we get to the end symbol (here `#`).

### Test `LambdaNat5`

When you start writing your own `LambdaNat5` programs don't forget that unexpected results obtained from running your programs could be due to errors in the interpreter. Here are some test cases I found useful, but you need to create your own in order to gain confidence in your interpreter. Put them in a file `test/mytests.lc`.

| Program | Result |
|---|---|
| `hd one:two:#` | `one` |
| `hd (one:two):#` | `one : two` |
| `hd (one:two:#):#` | `one : two : #` |
| `(hd one:two:#):#` | `one : #` |

As common in functional programming I designed the grammar so that you can drop many parentheses. But this also means that you need to watch out carefully where parentheses are needed. In case of doubt you can always put them in, for example `(hd one:two:#):#` abbreviates `(hd (one:(two:#))):#`. A good way to learn where parentheses go is 
- to look at the precedence levels in the grammar,
- to put in enough parentheses so that the program runs in the expected way and then to eliminate all unnecessary parentheses two by two.

### Write `LambdaNat5` programs

(4 points)

- You will provide in the folder `solutions` the following programs

        le.lc
        makeLists.lc
        merge.lc
        mergeLists.lc

    Running these programs with 
                
        stack exec LambdaNat-exe solutions/NameOfTheProgram.lc 
    
    should produce the correct outputs as described in the examples below. Add further test cases in the comments.

I ask you to keep to these rules because I will run a script that automatically tests your interpreter on your solutions (and possibly runs further tests). 

**I cannot give you credit for programs that do not execute.**

**Hint:** For example, addition can be described mathematically by the equations

    plus 0 y = y
    plus (S x) y = S (plus x y)

and in Haskell by

    plus 0 y = y
    plus x y = 1 + plus (x-1) y

To solve the exercises below, I recommended to first write down similar equational definitions before attempting to implement them in `LambdaNat5`. 

#### `le`

`le` (for less or equal) is smilar to the `less` function of the calculator, but we want "less or equal" here. Examples:

    le S 0 S 0 ---> S 0
    le S 0 S S 0 ---> S 0
    le S 0 0 = 0 ---> 0

`--->` is used here for the input/output relation. Following a common convention in C-like programming languages `S 0` stands for true and `0` for false.

####  `makeLists`

`makeLists` takes a list and turns it into a list of lists of length 1. For example:

    makeLists one:two:three:# ---> (one:#):(two:#):(three:#):#

#### `merge`

`merge` merges two ordered lists of numbers into one ordered list of numbers. For example,

    merge (0 : S S 0 : S S S S 0 : #) (S 0 : S S S 0 : #) 
    ---> 0 : S 0 : S S 0 : S S S 0 : S S S S 0 : #

Hint: `merge` needs to use `le`.

#### `mergeLists`

Provided with a list of ordered lists of numbers, `mergeLists` merges all these "inner" lists recursively until the "outer" list contains only one remaining list (which is now ordered). For example, 

    mergeLists (makeLists (S S S S 0:S S S 0:S S 0:S 0: 0: #))
    ---> (0 : S 0 : S S 0 : S S S 0 : S S S S 0 : #) : #

Hints: 
- The definition of `mergeLists` will include the definitions of the three other functions above.
- Note that `makeLists` makes a list of lists, all of which are in ascending order (just because the all contain one and only one element).




    
    





