# Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.
# 
# invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
# invert([]) == []
# 
# You can assume that all values are integers. Do not mutate the input array/list.

def invert(lst):
    if len(lst) > 0:
        return [ i * -1 for i in lst] 
    else:
        return []

# Better solution

def invert(lst):
    return [-i for i in lst]