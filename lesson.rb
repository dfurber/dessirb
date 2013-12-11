# STATEMENT
# if .. else .. end
# a = b

# ASSIGNMENT, VARIABLE
a = 1
b = 2
c = a * b
a = 2
d = nil

# CONDITIONAL - Pick the right path
# EVALUATE EXPRESSION, DO ONE THING IF TRUE, ELSE DO ANOTHER THING
if a < b
  # do one thing
else
  # do another thing
end

if b == a * c
  # do something fancy
elsif b > a * c
  # do something fancier
end

puts case b
when 1
  "Yo dawg"
when 2
  "Geez Louise."
when 3
  "Bunny hops."
end


# BOOLEAN - is it TRUE or is it FALSE?
a == b # TRUE
a < b  # FALSE
a <= b # TRUE
a >= b # TRUE
a > b  # FALSE
a == b and a <= b # TRUE
a > b or a == b # TRUE
a && b # TRUE
a && d # FALSE
a || d # TRUE

e = a || d # a!
e = d && a # 2


# LOOPING OR ITERATION
3.times { puts "Boy oh boy!" }

a = 1
while a < 10
  puts a
  a += 1
end
