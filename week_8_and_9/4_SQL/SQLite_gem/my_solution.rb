# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with: Lienha Carleton]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_some_other_states_reps
  puts "NJ, NY, ME, FL, and AK REPRESENTATIVES "
  other_reps = $db.execute("SELECT name FROM congress_members WHERE location IN ('NJ', 'NY', 'ME', 'FL', 'AK')")
  other_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  
  puts "LONGEST SERVING REPRESENTATIVES"
   $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}").each {|x,y| puts "#{x} - #{y}" }
end

def print_lowest_grade_level_speakers(minimum_grade_level)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{minimum_grade_level})"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < 8")
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_vote_count
  puts "POLITICIANS AND THEIR TOTAL VOTE COUNT"
  $db.execute("SELECT name, SUM(voter_id) FROM congress_members JOIN votes ON (congress_members.id=politician_id) GROUP BY name").each {|x,y| puts "#{x} - #{y}" }
end

print_arizona_reps

print_separator

print_some_other_states_reps

print_separator

print_longest_serving_reps(35)

print_separator

print_lowest_grade_level_speakers(8)

print_separator

print_vote_count


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# sqlite3 gem allows ruby programs to interface with the SQLite3 database engine.
# $db is holding the database that you are calling to access data. 
#
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")` 
# Using the data from congressmen_poll_data database, show the names of congress
# members from the congress members table of those who have been in congress at
# least the amount of years given in the argument of the method.


