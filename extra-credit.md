# Extra Credit

If you want to do a project for extra credit, get in touch with me.

Here are some ideas.

## Making `LambdaNat` more efficient and user friendly

The programming language `LambdaNat` has been designed by Sam Balco and myself with the aim to find the fastest route to a simple interpreter such that

- the interpreter is short (the part that operates on abstract syntax has approximately 50 loc)
- all programs can be executed pen and paper as well as by the machine

This gives us full control and a complete understanding of what is going on "under the hood" of `LambdaNat`.

On the other hand, this means that we compromise both efficiency and user experience. The following projects address some of the missing features.

- Binary numbers are much more efficient than successor numbers. Replace successor numbers in `LambdaNat` with Haskell's integer arithmetic.

- Currently, we have only one data type, namely expressions. Add Booleans to LambdaNat. 

- Implement a more efficient substitution function. (That could have a great effect on efficiency since subsitution (= beta reduction) is the computational engine of the interpreter.) Here are some [notes](https://hackmd.io/@alexhkurz/SyoTUBxoP).

- Add a module system so that not all programs must be in the file.

Later in the course we will add variables, assignment and pointers.

- Add input and output.

- Replace the fixed point combinator by a mechanism that uses a call stack. 

- Add pattern matching.

- Add a type system.

## Encoding all computation in lambda-calculus

Alternatively, you could also make things less efficient and even more principled. We have seen that we can encode numbers directly in the lambda calculus. The same is true for conditionals. And lists. 

- Write a `LambadNat5` interpreter that uses beta-reduction as its only computation step.

