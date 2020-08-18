evens = [0,2,4,6,8,10]
odds = [1,3,5,7,9,11]

def print_list(xs):
    if xs != []:
        print(xs[0])
        print_list(xs[1:])

def member(x,xs):
    if xs == []:
        return False
    elif x==xs[0]:
        return True
    else:
        return member(x,xs[1:])



