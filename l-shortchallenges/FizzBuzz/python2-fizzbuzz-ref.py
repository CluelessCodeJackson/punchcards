#!/usr/bin/env python
""" Simple Loop

1) Write a program that prints the integers from 1 to 100.
2) For multiples of three print "Fizz" instead of the number, and for the 
   multiples of five print "Buzz".
3) For numbers which are multiples of both three and five print "FizzBuzz". 

Note: Differences between Py2 & Py3
    xrange -> range
    print "" -> print ("")

"""

for i in xrange(1, 101):
    if i % 15 == 0:
        print  "FizzBuzz"
    elif i % 3 == 0:
        print "Fizz"
    elif i % 5 == 0:
        print "Buzz"
    else:
        print i
