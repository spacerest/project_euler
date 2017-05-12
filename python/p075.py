##
#
#It turns out that 12 cm is the smallest length of wire that can be bent to form an integer sided right angle triangle in exactly one way, but there are many more examples.
#
#12 cm: (3,4,5)
#24 cm: (6,8,10)
#30 cm: (5,12,13)
#36 cm: (9,12,15)
#40 cm: (8,15,17)
#48 cm: (12,16,20)
#
def prob(max_length):
    l = 0
    #l = [False]*max_length
    rng = range(3, max_length+1)
    for p in rng:
        if num_right_triangles(p) == 1:
            l += 1
    print l
    return l 

def num_right_triangles(perimeter):
    p = range(1,perimeter-1)
    num = 0
    combos = set() 
    for side_one in p:
        other_sides = perimeter - side_one
        for side_two in range(1, other_sides):
            side_three = other_sides - side_two
            if (side_one**2 + side_two**2)==(side_three**2) and [side_one, side_two, side_three].sort() not in combos:
                num += 1
		combos.add([side_one, side_two, side_three].sort())
    return num

prob(1500000)
         
#a**2 + b**2 = c**2
