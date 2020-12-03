# Blog    

## Introduction

This course can only scratch the surface of so many topics in programming languages, ranging from very practical (which programming language is best suited for what type of application) to purely mathematical (algorithmic complexity theory, algebra, logic, category theory, proof theory, ...). The blog is an opportunity to dig a bit deeper in what interests you most.

Learning a new programming language is always a challenge, in particular if it is the first functional programming language you are going to learn. You only know that you understand something if you can explain it to somebody else. So a good way to start the blog is to write a Haskell tutorial for beginners.

For more detailed ideas and suggestions see below.

## Setting up a blog

The minimal way to set up a blog is as follows:

- Create a public github repository.
- Add a `README.md`.
- Make `.md` files for each blog entry. Link them from the README.

To learn markdown, google "markdown cheat sheet" ... it is easy. And it is what I use for this course. Btw, you can use all of html in markdown. It makes the writing more cumbersome, but also gives you additional options. 

Personally, I am more interested in content than in form. So if you take my github repo for this course as a guideline this is fine. But I don't want to discourage more sophisticated design of a webpage. If you like to design a fancy webpage, that will gain you points as well.


## Organisation

There are currently no fixed deadlines. The expectation is that you write the blog like a diary, as you go on in the course. Write it with beginning Haskeller's in mind. 

**Drop me an email when you made a new entry.**

Your blog should 
- approximately/on average has one entry/page per week (10 in total should suffice);
- be organised by time or topic;
- start at the beginning (for example, on what hardware/operating system are you working, how did you install Haskell, ... but what is the right beginning for you depends on what you have to say overall);
- make sense to readers who do not take this course ... don't talk from student to professor but rather from professional to professional;
- make you own examples, observations;
- interleave narrative with code (all code must be tested and run, make sure the reader knows how to run your code);
- finish each blog with list of references and recommendations for further reading;
- ...

***I don't want to limit your creativity, so let me know if you have your own ideas.***


## General remarks on content

Make the blog interesting to your readers including myself. Do not repeat material that is already in the lecture notes.  Explore on your own. If you write about material we have covered in the lectures, make your own examples and add your own angle. Do not post answers to homework and assignments.

For example, wrt to Haskell tutorial, here are some things I would like to learn from you:
- How do newcomers learn functional programming?
- Which external sources (videos, blogs, tutorials, etc) do you find most useful?
- How does Haskell compare to your favourite programming language? Give examples of the same algorithm written in your favourite language and in Haskell. What are the respectives strengths and weaknesses of the two programming paradigms?
- What are, in your opinion, the major stumbling blocks in learning Haskell?
- Are there any projects you implemented in Haskell that go beyond what we do in class?

## Grading Guidelines

- **D:** Demonstrates basic familiarity with Haskell.  
- **C:** Demonstrates adequate familiarity with Haskell. Develops own examples along the lines of the homework.
- **B:** Demonstrates good understanding of Haskell. Makes interesting observations that do not merely repeat points made in the lectures.  Develops material that goes beyond what has been treated in class. Can be recommended to a beginning Haskeller as a first introduction. Makes connections between the practical and theoretical parts of the course. 
- **A:** Demonstrates a very good understanding of Haskell. Makes interesting observations and contains material that goes significantly beyond what has been treated in class. Will be of substantial interest to a beginning Haskeller. Makes interesting connections between the practical and theoretical parts of the course. Typically would discuss some of the advanced features of Haskell such as type classes or monads and/or develop their own project (but there are many possibilities here ... get in touch to discuss more.)

Again, if you have your own ideas, let me know. I am happy to adapt these guidelines if they do not fit what you have in mind.

## Ideas for the blog:

These are just suggestions, explore on your own. 

Some items require more work than others. Feel free to expand interesting topics into a series of blog posts.

#### Haskell

-  Write a Haskell tutorial. Make your own examples that you think would help a beginning Haskeller to understand Haskell better.
- Benchmark the same algorithms in Python and Haskell. You can use [gnomon](https://github.com/paypal/gnomon) to measure the time that programs take to run.
- Explain how to use docker to setup Haskell and bnfc. Make a dockerfile that we could use to run Haskell, bnfc and the assignments.
-  I collected some ideas for [Haskell projects](haskell-projects.md) you might want to try.
- Haskell and $\lambda$-calculus: 
  - Write the same program in both languages and compare.
  - Study Church numerals. Make examples. Implement Church numberals and run them in Haskell.
-  If you know C and have experience in programming with pointers, you will be interested to learn that all of this is still in Haskell, but hidden in the compiler. Study how the Haskell compiler makes working with lists efficient. (This is a big topic and would be worth a whole series of blog posts.)
- Haskell is lazy, which is interesting for programming with infinite data structures such as streams.
- Do one (or more) of the [exercises](https://hackmd.io/@alexhkurz/BJ23jmpIw) labelled "Optional (but interesting)". (Essential exercises are not suitable for the blog.)

#### Theory

- Why is lambda-calculus Turing complete?
- What is the halting problem? Why is it undecidable? What are other undecidable problem?
- What is combinatory logic? Is combinatory logic Turing complete? 
- Beta-reduction is an important computational mechanism. Explore how to efficiently implement it using de Bruin indices.
- Can we prove confluence automatically? What is the Knuth-Bendix algorithm?
- Not all terminating programs can be proved terminating with a termination measure that takes values in natural numbers. How can we go beyond this?
- Some modern programming languages such as [Dafny](https://hackmd.io/@alexhkurz/SJyBbDQjv) implement verification of termination and Hoare triples. Eplore.
- [Reversible computing](https://hackmd.io/@alexhkurz/H1PIwnSqw).
- Interactive theorem provers (Isabelle, Coq, Agda, Lean, ...) are functional programming languages in which one can prove mathematical theorems. Explore.

#### General Programming Languages Topics

- Multi-paradigm languages:
  - Haskell is close to what one calls "pure functional programming" but there are also multi-paradigm languages such as OCaml and, more recently, Scala and Julia. You can pick Julia or Scala and write one or more blogs about how they integrate FP and OO. What are the benefits (apart from just having both FP and OO)?
  - In case you have an interest in logic programming (eg PROLOG), there is some interesting literature on building multi-paradigm languages that combine functional and logic programming. 

#### Interpreters

- Improve the `LambdaNat5` interpreter. See also my suggestions for [extra credit](extra-credit.md). Some of these may be more difficult than others, get in touch before you spend a huge amount of time on this.
  - Efficiency:
    - binary numbers instead of successor numbers
    - call by value instead of call by name
    - better substitution/beta-reduction
    - call stack
    - ...
  - Usability
    - Booleans
    - error messages
    - binary numbers
    - pattern matching
    - ...

#### Other Topics

- ... let me know if you have your own ideas ... the blog is a space where you can be creative ...
