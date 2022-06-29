# lean-challenges
`lean-challenges` is a crowdsourced repository of exercises from popular undergraduate textbooks formalized in Lean. 
We currently have 10 exercises formalized and 40 exercises stated. By the end of the project, we aim to have 500 formalizations.  

We are currently targetting chapters from the following books: 
- Dummit, David S. and Foote, Richard M. *Abstract Algebra*
- Munkres, James R. *Topology*. 
- Rudin, Walter. *Principles of Mathematical Analysis*. 

We think this project is important for at least three reasons
- We want to use these exercises as training data for better machine learning automations in Lean. 
- We think formalizing exercises is a great way for mathematicians to learn Lean. 
- There is often a gap between having proof of the most general forms of theorems and it being convenient to use those theorems 
to solve concrete problems. If there is such a gap in mathlib, we hope that this project might expose it. 

## Contributing
We encourage contributions from beginners and experienced Lean programmers alike. The `src` directory contains many exercises that are stated
but not proved: the fastest way to contribute is open a branch, pick a theorem, and replace the `sorry` with a proof. Once your proof is complete, 
open a pull request and we will review it promptly. 

A good starting point is to structure your proofs around those in these solutions manuals: 
- [Dummit and Foote, Abstract Algebra](https://linearalgebras.com/solution-to-abstract-algebra.html)
- [Munkres, Topology](https://dbfin.com/topology/munkres/)
- [Rudin, Analysis](https://minds.wisconsin.edu/handle/1793/67009) 

## Leaderboard
Contributors are listed alphabetically. 
|Contributor | Number of Proofs|
|------------|-----------------|
|avigad | 1| 
|BartoszPiotrowski | 8 | 
|zhangir-azerbayev | 1| 

## Installation
To install `lean-challenges`, first make sure you have the [leanproject tool](https://leanprover-community.github.io/get_started.html). 
Then, in your terminal type `leanproject get https://github.com/zhangir-azerbayev/lean-challenges.git`. 
