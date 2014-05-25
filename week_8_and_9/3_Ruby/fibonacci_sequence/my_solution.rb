# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

# def is_fibonacci?(number)
# 	arr = [0,1]
#   while arr[-1] < number 
#     arr << arr[-1] + arr[-2]
#   end   
#   arr.include?(number) 
# end

# def is_fibonacci?(number, arr = [0,1])
# 	return arr.include?(number) if arr[-1] >= number
# 	arr << arr[-1] + arr[-2]
# 	is_fibonacci?(number, arr)
# end

# 4. Refactored Solution

def is_fibonacci?(n, arr = [0,1])
	arr[-1] >= n ? arr.include?(n) : is_fibonacci?(n, arr << arr[-1] + arr[-2])
end

# 1. DRIVER TESTS GO BELOW THIS LINE

# def random_fibonacci
#    [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
# end

# def assert(statement = "Assertion failed!")
#   raise statement unless yield
# end

# assert { is_fibonacci?(random_fibonacci) == true }
# assert { is_fibonacci?(random_fibonacci) == true }
# assert { is_fibonacci?(random_fibonacci) == true }
# assert { is_fibonacci?(random_fibonacci) == true }
# assert { is_fibonacci?(90) == false }
# assert { is_fibonacci?(0) == true }
# assert { is_fibonacci?(1) == true }

# 5. Reflection 
# This was the best ruby challenge this week. I really like the challenges where
# there's math logic involved. It was fairly simple to get a working solution 
# after I understood how the fibonacci sequence is generated.  The refactoring
# and recursion logic was actual much more difficult.  I really wanted to make
# this solution a one liner, and it took me quite a while to figure out how.
# Overall, I really enjoyed this exercise. 
