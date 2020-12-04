# Assignment 3

This assignment is worth 18% of the total grade.

#### Deadlines: 

- Part 1: **Dec 7**. This deadline is close but all you need to do is to transfer your solution of Assignment 2 into the new programming language `LambdaFun`.
- Part 2: tba

## Introduction

The purpose of the assignment is to learn how a functional programming languages can be extended to an imperative programming language. 

- Part 1 introduces only a small amount of more convenient syntax: Better notation for lists, pattern matching, separate definitions. Nothing serious, so apart from getting used to the new syntax, you should be able to carry over everything you learned from Assignment 2.

- Part 2 will add sequential composition, assignment, while loops and pointers.


## Instructions

You may form groups of up to 2 students. If you think you have a reason for an exception let me know.

Each group submits their answer by sending me a link to a github repository via [email using this link](mailto:akurz@chapman.edu?subject=CPSC-354-Assignment-3).

**Use the same private github repository as for Assignment 1 and 2. If you think that this is not possible/appropriate get in touch. 

## Part 1

(counts for 6 point out of 18 ... the task is to translate your solution of Assignment 2 into the new programming language ... let me know if there are any problems)

#### Instructions

- Start from [Lab2-Lambda-Calculus/LambdaFun](https://github.com/alexhkurz/programming-languages-2020/tree/master/Lab2-Lambda-Calculus/LambdaFun).

- Build the interpreter (can take a while) and start the REPL as explained in the [README.md](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab2-Lambda-Calculus/LambdaFun/README.md).

- Study the grammar at [README.md](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab2-Lambda-Calculus/LambdaFun/README.md). The syntax is slightly different and there are new features, most prominently, sequential composition, while loops, assignment. (You do not need the new features for Part 1).

- Study the example programs in [test/examples.lc](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab2-Lambda-Calculus/LambdaFun/test/examples.lc).

- Run in a terminal

        stack exec lamfun

    That should open the REPL. Run

        λ :help

    to get an overview of the available commands. There are some built in functions such as

        λ head [2,3];;
        λ tail [2,3];;

    Run 

        λ :load test/examples.lc 

    to load the examples. You can now call the defined functions as in

        λ plusone 4;;
        λ member 2 [3,2,3] ;;


- Experiment with your own examples. 

- Looking at the grammar and the example programs side by side, note the following.

    - `let` and `let rec` are now replaced by a list of definitions introduced by keywords `val` and `rec`. The keyword `in` is not needed anymore.

    - There is now a syntax for pattern matching using `case`.

    - The notation for lists changed. 
- **(worth 6 points)**: Add a file `mergesort.lc` to `test` that contains your solution to Assignment 2, but now runs in `LambdaFun`.

- Let me know if there are any problems, questions, etc

## Part 2

If you want to have a look already how we will use the new features of the language, read the discussion on the [Memory Model](https://hackmd.io/@alexhkurz/HkEBbgGnS) and study the examples in [linked-list.lc](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab2-Lambda-Calculus/LambdaFun/test/linked-list.lc). 

tba
