#------------------------------------------------------------------------------
# P01 (*) Find the last element of a list.
#   Example:
#     scala> last(List(1, 1, 2, 3, 5, 8))
#   res0: Int = 8
#------------------------------------------------------------------------------
last = (ls) -> ls.reduce (_, x) -> x
console.log last [1,2,3,4,5]

#------------------------------------------------------------------------------
# P02 (*) Find the last but one element of a list.
#   Example:
#     scala> penultimate(List(1, 1, 2, 3, 5, 8))
#   res0: Int = 5
#------------------------------------------------------------------------------
penultimate = (ls) -> (ls.reduce ([_, x], y) -> [x, y])[0]
console.log penultimate [1,2,3,4,5]

#------------------------------------------------------------------------------
# P03 (*) Find the Kth element of a list.
# By convention, the first element in the list is element 0.
#   Example:
#     scala> nth(2, List(1, 1, 2, 3, 5, 8))
#   res0: Int = 2
#------------------------------------------------------------------------------
nth = (ls, n) -> if n is 0 then ls[0] else nth ls[1..], n - 1
console.log nth [1,2,3,4,5], 2