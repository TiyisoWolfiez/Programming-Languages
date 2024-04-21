# functional-program-in-Scheme
This implementation explores and implements functional programming concepts, including list processing and the use of recursive functions. This practical consists of three tasks, and all three tasks are implemented in a single source code file.


# What you need:
- You will have to use the DrRacket 8.9 IDE using the sicp language collections, which is installed on the Windows computers in the Informatorium. Instructions for installing sicp are available at https://docs.
  racket-lang.org/sicp-manual/Installation.html. You should write your function implementations
  in DrRacket. Note that your program must always start with the line:
  "#lang sicp"
You can then run the source file by clicking on the “Run” icon at the top of the screen. You must include the code to test your functions at the end of your program (see below for some sample inputs).

# Task 1
Write a function named circleArea, which receives one parameter. The parameter is a numeric atom representing the radius of the circle. The function should yield (not print out) the area of a circle with the provided
radius, computed as:

A = πr^2

where r is the radius of the circle. The function should yield zero if r is zero or negative. Use a let (not a define) to bind the name pi to the result of the calculation 22/7.
For example, the function application

(circleArea 3.2)

should yield a result of approximately 32.182857142857145.

# Task 2
Write a function named countDivisors, which receives two parameters. The first parameter is an integer
valued numeric atom, for which you want to find divisors (i.e. you want to find values that divide perfectly into
this parameter). The second parameter is a simple list (i.e. a list containing only atoms). You may assume
that the list contains only integer valued numeric atoms. This list should then be searched for divisors. The
countDivisors function should yield (not print out) a count of the number of divisors found in the list provided
as the second parameter.
For example, the function application

(countDivisors 10 ’())

should yield 0, because the second parameter contains no divisors of 10. As another example, the function
application

(countDivisors 10 ’(20 50 60))

should also yield 0, because 20, 50, and 60 are all not divisors of 10. As a final example, the function application
(countDivisors 10 ’(1 20 30 2 5 40 10 60))

should yield 4 because 1, 2, 5, and 10 are all divisors of 10 (note that 10 is a divisor of itself), while 30, 40 and
60 are not divisors of 10.

To implement the countDivisors function, you will have to recursively traverse the parameter list, and build
an accumulated result.


# Task 3
Write a function named getEveryEvenElement, which receives one parameter. The parameter is a simple list
(i.e. a list containing only atoms), from which you should extract all the values in the list at even numbered
positions (assuming that the first element in the list is at position 1). The function should yield a list containing
all the values extracted from the parameter list.
For example, the function application

(getEveryEvenElement ’())

should yield an empty list, because the parameter list contains no values. As another example, the function
application

(getEveryEvenElement ’(a))

should also yield an empty list, because the only value contained in the list is at position 1, which is not an
even position. As a final example, the function application

(getEveryEvenElement ’(a b c d))

should yield the list (b d) because b is at position 2 in the list, and d is at position 4 in the list.
To implement the getEveryEvenElement function, you will have to recursively traverse the parameter list,
and build up a result list.
