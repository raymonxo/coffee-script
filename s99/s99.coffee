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

#------------------------------------------------------------------------------
# P04 (*) Find the number of elements of a list.
# Example:
# scala> length(List(1, 1, 2, 3, 5, 8))
# res0: Int = 6
#------------------------------------------------------------------------------
length = (ls) -> ls.reduce ((a, _) -> a + 1), 0
console.log length [1,2,3,4,5]

#------------------------------------------------------------------------------
# P05 (*) Reverse a list.
# Example:
# scala> reverse(List(1, 1, 2, 3, 5, 8))
# res0: List[Int] = List(8, 5, 3, 2, 1, 1)
#------------------------------------------------------------------------------
reverse = (ls) -> ls.reduce ((rs, x) -> rs.unshift x; rs), []
console.log reverse [1,2,3,4,5]

#------------------------------------------------------------------------------
# P06 (*) Find out whether a list is a palindrome.
# Example:
# scala> isPalindrome(List(1, 2, 3, 2, 1))
# res0: Boolean = true
#------------------------------------------------------------------------------
equals = (ls1, ls2) ->
  return true if ls1.length is 0 and ls2.length is 0
  return false if ls1.length is 0 or ls2.length is 0
  return false if ls1[0] isnt ls2[0]
  return equals ls1[1..], ls2[1..]
isPalindrome = (ls) -> equals ls, reverse ls
console.log isPalindrome [1,2,3,4,5]
console.log isPalindrome [1,2,3,2,1]