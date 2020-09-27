# Assignment 1

The assignment comes in 2 parts. Both parts are exercises in Haskell. This is important since we will use Haskell throughout this course and also next semester in Compiler Construction. (As a footnote, I want to add that Haskell is only a (very good) tool for us, one could use any other programming language for the same purpose in principle, even if it was infeasible in practice. In fact, if you want to compare Haskell to another programming language you already know, this would be a great idea for your blog to implement this assignment also in, say, one of Java, Python, C++, etc and then to compare the two implementations.)

**Proper use of git will be taken into account for grading.**

In your repo, make a folder called Assignment1. You can keep your version of the file `fractions.hs` there, as well as your version of the folder `Calculator`. Build up your version of `fractions.hs` step by step as the template will not compile. Do not change my names of the functions (they are part of the specification).

## Part 1: Recursion (5 points)

In the first part you can show your skills in programming recursively over algebraic data types. 

Download the [template `fraction.hs`](src/templates/fractions.hs).

The overall idea is to explore how to extend our implementation of natural numbers to fractions. To keep the coding shorter, we only consider non-negative fractions (but we could use the same ideas to also deal with negative numbers). 

The main idea is that a fraction is a pair `(numerator,denominator)` of two numbers, the second of which must be positive (to exclude division by zero). So we first define the natural numbers as before

    data NN = O | S NN

then the positive numbers (positive numbers start at 1, not 0)

    data PN = I | T PN

then the fractions as tuples, or pairs, `(numerator, denominator)` of type `(NN,PN)`

    type Frac = (NN,PN)

To program with fractions you need to know that if `p` is a pair in Haskell, then you can access the components with `fst p` and `snd p`. 

The programming techniques follow closely the lectures and the homework. Start from the the [template `fractions.hs`](src/templates/fractions.hs). Here are some remarks:

- First you develop a "library" of functions to compute with natural numbers and with positive numbers. In this part you will mostly use recursion.
- Then you implement arithmetic of fractions. This implements the way you computed with fractions at school using the library functions. You will not have to directly use "O,S,I,T" in this part.
- Writing and reading larger successor numbers is tedious. Therefore it is convenient to have functions that convert our numbers of type `NN`, `PN`, `Frac` to Haskell numbers and back. Use these functions only for testing, not to implement the arithmetic on `NN`, `PN`, `Frac`.

Hint: Spend some time on thinking about the logic behind each function. Once you have the idea, the solution will be short. Most of the functions are two-liners.

Hint: While mathematically each line below represents the same number

| `NN` | `PN` | `Int`
|:---:|:---:|:---:|
| O | | 0
| S O | I | 1
| S (S O) | T I | 2
| S (S (S O)) | T(T I) | 3

in Haskell these data types are disjoint. For example, if you input a `I` or a `1` to a function that expects data of type `NN`, you will get an error message.

## Part 2: A Calculator (4 points)

In the first part, we have seen how to define fractions from scratch, and how to implement the mathematical definitions using recursion on algebraic data types. The host language (Haskell) was only used to execute the equational reasoning based on the recursive mathematical equations.

In the second part, we will now allow ourselves to use the built-in arithmetic of the host language. One of the reasons is that this built-in arithmetic uses binary numbers instead of successor numbers and, therefore, is much more efficient (but also much more difficult to implement). Another reason is that using the rich arithmetic of the host language makes it much easier to add features to the calculator.

### An interpreter for abstract syntax (2 points)

Download the [template `numbers3.hs`](src/Haskell/numbers3.hs). It contains the definition of a language for arithmetic expressions and an interpreter evaluating these expressions into the Haskell integers:

    data Exp = Num Int | Plus Exp Exp | Times Exp Exp 

    eval :: Exp -> Int
    eval (Num n) = n
    eval (Plus n m) = (eval n) + (eval m)
    eval (Times n m) = (eval n) * (eval m)



**Task**: Extend the definition of `Exp` and `eval` by 5 other operations on the integers. Use the native Haskell operations on Int.

### An interpreter for concrete syntax (2 points)

Have a look at the [directory `Calculator3`](src/Calculator3). The file `Interpreter.hs` contains the function `eval`. The data type `Exp` will be generated automatically by `bnfc`  (see the lecture) from the grammar in `numbers.cf`:

    Plus. Exp ::= Exp "+" Exp1 ;
    Times. Exp1 ::= Exp1 "*" Exp2 ;
    Num. Exp2 ::= Integer ;

    coercions Exp 2 ;

Compiling `numbers.cf` with `bnfcc` generates a number of files, in particular `AbsNumbers.hs`, which contains the definition of `Exp` (check for yourself).

**Task**: 
- Extend the grammar with syntax for the 5 operations from the previous task. 
- Compile the grammar with `bnfc`.
- Extend the interpreter as you have done in the previous task.
- Run and test the calculator.




