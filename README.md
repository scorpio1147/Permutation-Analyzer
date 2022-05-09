# Permutation-Analyzer
A program that analyzes elements of permutation groups written using Ruby. Written by Danesh Sivakumar for Professor Niranjan Ramachandran's MATH403 (Introduction to Abstract Algebra) Spring 2022 class.


## Table of contents
* [Background Information](#background-information)
* [Implementation](#implementation)
* [Setup](#setup)
* [Further Reading](#further-reading)

## Background Information
In our MATH403 (Introduction to Abstract Algebra) class, we learned about [symmetric groups](https://mathworld.wolfram.com/SymmetricGroup.html) and their properties. In particular, we examined permutation groups. A permutation is, formally speaking, a bijective function from a discrete set onto itself. Simply put, it is a rearranging of the elements of a set. There are many forms of notation for permutations. For example, the permutation `2 3 4 5 6 7 0 1` operates on the set `[0, 1, 2, 3, 4, 5, 6, 7]`, taking 0 to 2, 1 to 3, 2 to 4 and so on. An interesting property of permutations is that they can be decomposed into a product of disjoint cycles. A cycle is best explained through an example: in the previously mentioned permutation, consider the path that 0 takes. 0 first goes to 2, which goes to 4, which goes to 6, which finally comes back to 0. All other elements in the set are inaccessible from this cycle. We can take an element not in this cycle, and construct another cycle whose members do not show up in previously constructed cycles. Continuing in this manner yields a product of disjoint cycles. Our previous example decomposes into `(0 2 4 6) (1 3 5 7)`.
	
## Implementation
This project was implemented using Ruby, which I learned in my CMSC330 (Organization of Programming Languages) class. The program takes in a permutation as an input, and outputs the disjoint cycle decomposition of the permutation. It also outputs the [order](https://en.wikipedia.org/wiki/Order_(group_theory)) of the element and the particular symmetric group it is a member of. 

<img width="1022" alt="image" src="https://user-images.githubusercontent.com/25085195/167344004-5445e841-c3a2-47e9-8c54-69816ba8db92.png">
	
## Setup
To run this project, first get the repository on your local machine by running `git clone https://github.com/scorpio1147/Permutation-Analyzer.git` in whichever directory you would like the program to be. After this, make sure that you have Ruby installed. If you do not, download it [here](https://www.ruby-lang.org/en/downloads/). Finally, navigate to the project directory by typing `cd Permutation-Analyzer` in the terminal and run `ruby permutation.rb`. The program should be up and running now! 

## Further Reading
This is a very shallow exposition of the enormous rabbithole that is Abstract Algebra and group (or ring/field) theory. There are a plethora of great resources to get better at this stuff. A few are listed here:
* [A very brief overview of the subject](https://brilliant.org/wiki/abstract-algebra/)
* [Contemporary Abstract Algebra 9th Edition, by Joseph Gallian](https://www.amazon.com/Contemporary-Abstract-Algebra-Joseph-Gallian/dp/1305657969/ref=pd_lpo_2?pd_rd_i=1305657969&psc=1) (our class textbook)
* [Michael Penn's YouTube playlist on Abstract Algebra](https://www.youtube.com/watch?v=Ol5BoUV6SjA&list=PL22w63XsKjqxaZ-v5N4AprggFkQXgkNoP) (a personal favorite)

By no means is this an exhaustive list; these are just resources that I think are cool. Do your own research, and explore the vast (integral) domain that is Abstract Algebra :)
