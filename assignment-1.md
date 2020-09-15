# Assignment 1

The assignment comes in 2 parts. Both parts are exercises in Haskell. This is important since we will use Haskell throughout this course and also next semester in Compiler Construction. 

But I want to emphasize that Haskell is only a (very good) tool for us, one could use any other programming language for the same purpose. In fact, if you want to compare Haskell to another programming language you already know, it would be a great idea for your blog to implement this assignment also in, say, one of Java, Python, C++, etc and then to compare the two implementations.

## Part 1: Recursion

In the first part you can show your skills in programming recursively over algebraic data types. 

Download the [template `fraction.hs`](src/templates/fractions.hs).

The overall idea is to explore how to extend our implementation of natural numbers to fractions. To keep the coding shorter, we only consider non-negative fractions (but we could use the same ideas to also deal with negative numbers). 

The main idea is that a fraction is a pair `(numerator,denominator)` of two numbers, the second of which must be positive (to exclude division by zero). So we first define the natural numbers as before

    data NN = O | S NN

then the positive numbers

    data PN = I | T PN

then the fractions as tuples, or pairs, `(numerator, denominator)` of type `(NN,PN)`

    type Frac = (NN,PN)

To program with fractions you need to know that if `p` is a pair in Haskell, then you can access the components with `fst p` and `snd p`. 

The programming techniques follow closely the lectures and the homework. Start from the the [template `fractions.hs`](src/templates/fractions.hs). Here are some remarks:

- First you develop a library of functions to compute with natural numbers and with positive numbers. In this part you will mostly use recursion.
- Then you implement arithmetic of fractions. This implements the way you computed with fractions at school using the library functions.
- Finally, for testing, it is convenient to have functions that convert our numbers of type `NN`, `PN`, `Frac` to Haskell numbers and back. Use these functions only for testing, not to implement the arithmetic on `NN`, `PN`, `Frac`.

Hint: Spend some time on thinking about the logic behind each function. Once you have the idea, the solution will be short. Most of the functions are two-liners.

## Part 2: A Calculator

In the first part, we have seen how to define fractions from scratch, and how to implement the mathematical definitions using recursion on algebraic data types. The host language (Haskell) was only used to execute the equational reasoning based on the recursive mathematical equations.

In the second part, we will now allow ourselves to use the built-in arithmetic of the host language. One of the reasons is that this built-in arithmetic uses binary numbers instead of successor numbers and, therefore, is much more efficient (but also much more difficult to implement). Another reason is that using the rich arithmetic of the host language makes it much easier to add features to the calculator.

... to be continued ...





