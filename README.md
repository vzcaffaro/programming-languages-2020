# Programming Languages 2020

This course has been developed by Alexander Kurz and Samuel Balco for the students of Chapman University and will be taught by Alexander Kurz.

**Notes and Materials** for a course on Programming Languages Fall 2020 at Chapman University.

- [Syllabus](syllabus.md)  
- [Overview](overview.md)  
- [Contact](contact.md)  

**Quick links:**

- [Lecture by Lecture](lecture-by-lecture.md)  
- [Discussion Forum](discussion-forum.md)  
- [Assignments](assignments.md)
- [Blog/Tutorial](blog.md)
- [On the Use of Git](git-best-practices.md)


**Acknowledgements:**

The specific way we intertwine theory and practice may be original, but we build on a long tradition of teaching courses on  principles of programming languages. The idea that the best way to understand how programming languages work under the hood is to learn how to build your own, goes back at least to the MIT course/"Wizard Book" by Abelson and Sussman, [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sites/default/files/sicp/index.html), which is still worth reading today. Our use of the parser generator BNFC for the language `LambdaNat` follows Aarne Ranta's book [Implementing Programming Langugages](http://www.grammaticalframework.org/ipl-book), which forms the basis for the [Programming Language Technology](http://www.cse.chalmers.se/edu/course/DAT151/) course at Chalmers University. We will hear more about this in our course on Compiler Construction next semester. `LambdaNat` itself is a lambda calculus with just enough additional syntactic sugar so that writing programs in `LambdaNat` is similar enough to mainstream functional programming. The way we then extend `LambdaNat` to our second language, `LambdaFun`, by adding while loops, memory allocation, assignment, and pointers is inspired by Michael Spivey's course on [Programming Languages](https://spivey.oriel.ox.ac.uk/corner/Welcome_to_Spivey%27s_Corner) at Oxford University.

I am also grateful to my friends and colleagues from the [Midlands Graduate School in the Foundations of Computing Science](http://www.cs.nott.ac.uk/MGS/) who have influenced with their graduate level courses from 2002 onwards the choice of material. In fact, it is one of the aims of this course to provide at the undergraduate level the foundations that will equip interested students with the knowledge needed to study more advanced topics in programming languages. Many of the paragraphs labelled "Further Study'' are meant to provide bridges to such graduate level courses.

Many thanks to all with whom I had the opportunity to discuss the contents of the course, including (but not limited to) Roy Crole,  Peter Jipsen, Drew Moshier, Paula Severi, and Fer-Jan de Vries; to the students of 2018 and 19 for continuing challenge and feedback; to all the colleagues from whom I have been learning over the years.

## The best books on "Programming Languages"

I list some books that stood the test of time and are less technical and of wider interest.


- Hofstadter: [Goedel, Escher, Bach](https://en.wikipedia.org/wiki/G%C3%B6del,_Escher,_Bach). A wide ranging book bringing together history, art, music and computer science. Contains a lot of rewriting and computability theory. The reader ends up with a proof of Goedel's incompleteness theorem, without going through a technical and advanced course of logic.

- Smullyan: [To Mock a Mockingbird](https://en.wikipedia.org/wiki/To_Mock_a_Mockingbird). Presents a deep but playful account of combinatory logic and the lambda-calculus.

- Petzold: [The annotated Turing](https://en.wikipedia.org/wiki/The_Annotated_Turing). Goes through Turing's famous paper line by line. Can be read from a technical point of view, but one can also browse it lightly and pick out the anecdotes.

... I am happy to add your favourites here if you let me know ...

## Some links

These links should go somewhere else in the end but I keep them here for now ...

[Multi-Paradigm Languages: Example Julia](https://arstechnica.com/science/2020/10/the-unreasonable-effectiveness-of-the-julia-programming-language/). Another example is Scala and this [list](https://data-flair.training/blogs/why-scala/) has many items that will be familiar from Haskell after the end of this course.

[Notes on Programming Paradigms](https://tgdwyer.github.io/) A course that shares many aims and methods with this one. I just browsed over the content, but it looks promising ... recommended if you want to have a different point of view on the same topic.

[Bob Martin - "The Future of Programming"](https://www.youtube.com/watch?v=ecIWPzGEbFc)

[Compiling Lisp to JavaScript From Scratch in 350 LOC](https://gilmi.xyz/blog/post/2016/10/14/lisp-to-js) 

[Bjarne Stroustrup - The Essence of C++](https://www.youtube.com/watch?v=86xWVb4XIyE&feature=emb_rel_err)

