#
#
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.
#

def prob(max_num):
    mults = []
    sum_mults = 0
    for i in range(max_num - 1):
	num = i+1
        if num % 5 == 0 or num % 3 == 0:
            mults.append(num)
    for x in mults:
        sum_mults += x
    return sum_mults
     
     
    
