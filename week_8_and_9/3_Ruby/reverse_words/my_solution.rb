# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: Martin Lear].

# 2. Pseudocode
# Split the string input into an array at each space found.
# Use the string reverse method to reverse each string.
# Join the resulting array back into a single string with spaces.
# Return the string.


# 3. Initial Solution

def reverse_words(string)
  array_of_strings = string.split(' ').to_a
  array_of_strings.map! { |string| string.reverse }
  array_of_strings.join(' ')
end

# 4. Refactored Solution

def reverse_words(string)
    string.split(' ').map! { |word| word.reverse }.join(' ')
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert(statement = "Assertion failed!")
  raise statement unless yield
end

assert { reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB" }
assert { reverse_words("") == "" }
assert { reverse_words("word") == "word".reverse }
word1 = "word"
word2 = "drow"
assert { reverse_words("#{word1} #{word2}") == "#{word1.reverse} #{word2.reverse}" }

# 5. Reflection 
# This was another simple exercise. The logic was very intuitive, just had to get 
# the proper methods chained in the right order.  I'm kind of disappointed at how
# easy the assigments for ruby were for this third unit. It would be nice, if we 
# could have gotten more brain teasers. The javascript exercises were levels harder
# than the ruby ones. THe most tedious part was doing the driver test.  I had
# fun pairing with my partner Martin at least.
