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

- Start the [work cycle](https://github.com/alexhkurz/programming-languages-2020/blob/master/Lab1-Lambda-Calculus/README.md#the-work-cycle-build-a-new-language) from from `LambdaNat2`.

- Create a directory `LambdaNat3` by adding `if-then-else` to the language.

 - Change the grammar, so that 

        if e1 = e2 then e3 else e4

    is legal syntax, given that the expressions `e1, ... e4` are.

- In the interpreter
    -  add a clause to the definition of `evalCBN` evaluating  if-then-else.

    -  add a clause to the definition of `subst` that substitutes into `if e1 = e2 then e3 else e4` by substituting into the sub-terms `e1, ... e4`. 

- You should add programs to the folder `test` for testing.

## Part 2

... to be continued ...