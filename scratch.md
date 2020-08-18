scratch.md

## Course Learning Outcomes

See also the [Fowler School of Engineering Program Learning Outcomes](https://docs.google.com/document/d/1OESCtPUolnWFV_qRFuRzNrzxmUtYr5H-dFaYVmPUKY0/edit?usp=sharing).


**Creating our own toy programming language** will be an important part of the course. This will involve using a parser generator as well as learning some of the functional programming language Haskell. 

**BNFC**: BNFC is a parser that helps creating your own programming language. A more in depth study of the tool will be part of the Compiler Construction Course. For this course, for most of the exercises you will get template files. But later, or if you want to conduct your own developments and experiments, you will have to have BNFC installed, so why not start right now. Here are the instructions to follow:

- [BNFC: basic installation instructions](https://github.com/alexhkurz/programming-languages-2020/blob/master/BNFC-installation.md)  

**Haskell** is a leading functional programming language and will be of interest to the course for a number of reasons:

 - Haskell, even though a powerful general purpose language, has been  called a domain specific language for creating programming languages for a good reason.
 
 - Haskell is the langauge in which many tools (such as BNFC) in the area of Programming Languages are implemented.
 
 - Haskell is a lazy functional programming language and, thus, a prime example of an important paradigm in Programming Languages.
 
 - Haskell is an elaboration of the lambda calculus, which also forms the basis for our own small programming language that we will consider in the exercises of this course.
 
 - Haskell is the language in which we will write the interpeter used to execute our programming language.
 
 - Haskell's semantics is based on rewriting, which forms one of the central theoretical concept of the course.
 
 - Last but not least, Haskell is gaining popularity in industry applications for a number of important reasons, such as self-documenting code, a strong type system, side-effect free parallelizable code, ... so some of you may be interested in adding Haskell to the portfolio of your programming languages.
 
 **Lambda Calculus** is the smallest practical [Turing complete](https://en.wikipedia.org/wiki/Turing_completeness) programming language. This is suprising because at first sight it is not obvious how to implement any meaningful computation if one only has abstraction and application, but no data types, no if-then-else, no while or recursion ... we will come back to this later. 
  
 The Lambda Calculus is important to this course for a number of reasons:
 
 - Because it is small it is easily explained and a good starting point for experimentation.
 
 - Lambda Calculus is minimal in that all it has is
   - abstraction, that is, the ability to declare a formal parameter and 
   - application, that is, a mechanims to substitute an argument for a formal parameter.
 
 - Lambda Calculus can be evaluated according to different strategies, in particular call by value and call by name.
 
 - Lambda Calculus can be extended in various ways: types, addresses, references, ...
 
 - Lambda Calculus is the basis for many fully fledged programming languages such as Lisp, Scheme, ML, Haskell, Ocaml, ...
 
 **Homework:** Install the [Haskell Platform](https://www.haskell.org/downloads/#platform) available at [Haskell](https://www.haskell.org/) on your machine.

Finally, students will learn to appreciate that mathematics is not only important for developers who create the tools used in everyday engineering practice, but also that the knowledge of the mathematical concepts and results underpinning these engineering tools impact everyday engineering practice (and increase your chances to pass a coding interview). I discuss some aspects of this in a these notes on [mathematics as a programming language](https://hackmd.io/s/ByGLTvFDE).
