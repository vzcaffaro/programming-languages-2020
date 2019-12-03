# programming-languages-2020

This course has been developed by Alexander Kurz and Samuel Balco and will be taught by Alexander Kurz.

The course is divided in a practical and theoretical component. 

Students will learn how to

- build a parser and interpreter for simple functional and imperative programming language. 

Moreover, students will learn the fundamental ideas of

- lambda calculus
- operational and denotational semantics    
- term rewriting   
- invariants and well-founded orders     
- program verification and Hoare logic    
- structural induction, universal algebra, and category theory    

On the way, students will encounter different programming languages such as Dafny and Haskell, theorem provers such as Isabelle, dependently typed programming languages such as Idris as well as programming concepts such as algebraic data types, recursion, variable binding, polymorphism, and more.

Assessment is divided accordingly in programming assignments, presentations, and written examinations, currently planned as follows.

- Assignment 1: Recursive programming over lists and trees in LambdaNat. (10%)   
- Assignment 2: Installing the Haskell Platform. (5%)   
- Assignment 3: Writing an interpreter for LambdaNat. (10%)    
- Assignment 4: Programming with pointers in LambdaFun. (10%)   
- Assignment 5: Writing an interpreter for LambdaFun. (10%)   
- Test 1: Term rewriting. (5%)   
- Test 2: Program verification. (5%)   
- [Presentation](presentation.md) on a programming language of your choice. (15%)   
- Final Exam. (30%)   

#### Acknowledgements

The specific way we intertwine theory and practice may be original, but we build on a long tradition of teaching courses on principles of programming languages. The idea that one cannot teach principles of programming languages without teaching how to write an interpreter goes back at least to ... which is still a worth reading today. Our use of the parser generator BNFC for the language LambdaNat follows [Aarne Ranta](http://www.cse.chalmers.se/~aarne/)'s book Implementing Programming Langugages](http://www.grammaticalframework.org/ipl-book/, which forms the basis for the [Programming Language Technology](http://www.cse.chalmers.se/edu/course/DAT151/) course at Chalmers University. We will hear more about this in our course on Compiler Construction next semester. LambdaNat itself is a lambda calculus with just enough additional syntax (syntactic sugar) so that writing programs in LambdaNat is just like mainstream functional programming. The way we then extend LambdaNat to our second language, LambdaFun, by adding while loops, memory allocation, assignment, and pointers follows Mike Spivak's course "" at Oxford University.

We are also grateful to our friends and colleagues from the mgs ... and it is one of the aims of this course to provide at the undergraduate level the foundations that will equip the interested students with the knowledge needed to study advanced topics in programming languages.

Discussion with ... helped