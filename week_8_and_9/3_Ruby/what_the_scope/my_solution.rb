# U3.W8-9: What the Scope


# I worked on this challenge [by myself, with: ].

# 1. What are the problems in the error messages?
# There are no error messages to start with.
# it would be really nice to have an rspec here.


# 2. Original Code

# $var_1 = 22
 
# class Person
#   @@var_2
#   VAR_6 = "Ruby"
 
#   attr_reader :var_3, :var_4
 
#   def initialize(var_5 = VAR_6)
#     @var_3="Law of Demeter"  
#   end
 
#   def do_stuff(var_7=[1,2,3])
#     var_7.each do |var_8|
#       var_9 += var_8 + 2
#     end
#   end
# end

# 3. Modified Code (with scope identified as comments)

$var_1 = 22  #var_1 is assigned as a global variable.
 
class Person
  @@var_2  #Class variable that will be the same in each new instance of the class.
  VAR_6 = "Ruby"  #Constant Variable assigned a string of "Ruby"
 
  attr_reader :var_3, :var_4 #allows the access of instance variables outside of the class.
 
  def initialize(var_5 = VAR_6) #sets var_5 to a default value of VAR_6 if no argument is given.
    @var_3="Law of Demeter"  #set the instance variable var_3 equal to a string.
  end
 
  def do_stuff(var_7=[1,2,3]) #var_7 is a default array of integers limited to this intance method
    var_9 = 0 #var_9 sets a local variable equal to zero so that we can begin to sum the array
    var_7.each do |var_8| #var_8 is being used to define the value inside of the array at each element.
      var_9 += var_8 + 2
    end
    return var_9
  end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

martin = Person.new()
martin.do_stuff()

def assert(statement = "Assertion failed!")
  raise statement unless yield
end

assert { martin.var_3 == "Law of Demeter" }
assert { martin.var_4 == nil }
assert { martin.do_stuff == 12 }
assert { martin.do_stuff([4,5,6]) == 21 }

# 5. Reflection 
