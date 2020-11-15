# Extra Credit

If you want to do a project for extra credit, get in touch with me.

Here are some ideas.

The programming language `LambdaNat` has been designed by Sam Balco and myself with the aim to find the fastest route to a simple interpreter such that

- the interpreter is short (the part that operates on abstract syntax has approximately 50 loc)
- all programs can be executed pen and paper as well as by the machine

This gives us full control and a complete understanding of what is going on "under the hood" of `LambdaNat`.

On the other hand, this means that we compromise both efficiency and user experience. The following projects address some of the missing features.

- Binary numbers are much more efficient than successor numbers. Replace successor numbers in `LambdaNat` with Haskell's integer arithmetic.

- Currently, we have only one data type, namely expressions. Add Booleans to LambdaNat. 

- Implement a more efficient substitution function. (That could have a great effect on efficiency since subsitution (= beta reduction) is the computational engine of the interpreter.)

More challenging still would be the following.

- Replace the fixed point combinator by a mechanism that uses a call stack. 

- Currently one always has to use the conditional for case distinctions. Add pattern matching.

- Currently, everything is based on the untyped lambda calculus. Add a type system.

- Currently all functions must be in the same file. Add a module system.

- If you are thinking about adding side effects and memory wait for later in the course.

Alternatively, you could also make things less efficient and even more principled. We have seen that we can encode numbers directly in the lambda calculus. The same is true for conditionals. And lists. 

- Write a `LambadNat5` interpreter that uses beta-reduction as its only computation step.

