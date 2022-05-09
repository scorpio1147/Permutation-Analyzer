# Permutation-Analyzer
A program that analyzes elements of permutation groups written using Ruby. Written by Danesh Sivakumar for Professor Niranjan Ramachandran's MATH403 (Introduction to Abstract Algebra) Spring 2022 class.


## Table of contents
* [Background Information](#background-information)
* [Implementation](#implementation)
* [Setup](#setup)

## Background Information
In our MATH403 (Introduction to Abstract Algebra) class, we learned about [symmetric groups](https://mathworld.wolfram.com/SymmetricGroup.html) and their properties. In particular, we examined permutation groups. A permutation is, formally speaking, a bijective function from a discrete set onto itself. Simply put, it is a rearranging of the elements of a set. There are many forms of notation for permutations. For example, the permutation `2 3 4 5 6 7 0 1` operates on the set `[0, 1, 2, 3, 4, 5, 6, 7]`, taking 0 to 2, 1 to 3, 2 to 4 and so on. An interesting property of permutations is that they can be decomposed into a product of disjoint cycles. A cycle is best explained through an example: in the previously mentioned permutation, consider the path that 0 takes. 0 first goes to 2, which goes to 4, which goes to 6, which finally comes back to 0. All other elements in the set are inaccessible from this cycle. We can take an element not in this cycle, and construct another cycle whose members do not show up in previously constructed cycles. Continuing in this manner yields a product of disjoint cycles. Our previous example decomposes into `(0 2 4 6) (1 3 5 7)`.
	
## Implementation
This project was implemented using Ruby, which I learned in my CMSC330 (Organization of Programming Languages) class. The program takes in a permutation as an input, and outputs the disjoint cycle decomposition of the permutation. It also outputs the [order](https://en.wikipedia.org/wiki/Order_(group_theory)) of the element and the particular symmetric group it is a member of. 

<img width="1022" alt="image" src="https://user-images.githubusercontent.com/25085195/167344004-5445e841-c3a2-47e9-8c54-69816ba8db92.png">
	
## Setup
To run this project, first get the repository on your local machine by running `git clone`. After this, make sure that you have Ruby installed. If you do not, download it [here](https://www.ruby-lang.org/en/downloads/). Finally, navigate to the project directory and run `ruby permutation.rb`. The program should be up and running now! 
