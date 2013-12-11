def say(words)
  `say -v Zarvox "#{words}"`
end

def say_junior(words)
  `say -v Victoria "#{words}"`
end

def say_with_bells(words)
  `say -v Bells #{words}`
end

def get_two_numbers
  [rand(10) + 1, rand(10) + 1]
end

def get_two_numbers_again
  [rand(7) + 2, rand(7) + 2]
end

counter = 0

say "What is your name"
puts "name>"
name = gets.chomp

say "Welcome #{name}, are you ready to play times tables?"
`say -v Hysterical "It's so fun!"`
say "How many minutes do you want to play"
puts "minutes>"
minutes = gets.chomp.to_i

if minutes == 0
  say "You can't be serious."
  exit
end

say "Let's play for #{minutes} #{minutes == 1 ? "minute" : "minutes"}."

`say -v Whisper "May the force be with you."`

say_with_bells "Doooong"

start_time = Time.now
end_time = Time.at(start_time.to_i + 60 * minutes)
a, b = nil, nil
while Time.now < end_time

  srand
  
  # think of 2 numbers between 1 and 10
  c, d = a, b
  if counter % 4 == 1
    a, b = get_two_numbers
  else
    a, b = get_two_numbers_again
  end
  if (c == a && b == d) or (b == c && a == d)
    a, b = get_two_numbers_again
  end
  
  # calculate the answer
  answer = a * b
  guess = nil
  
  while (Time.now < end_time && guess != answer)

    # ask the user for their answer
    puts "#{a} x #{b} = ?"
    say_junior "#{a} times #{b}"
    guess = gets.chomp
  
    if guess == "q"
      say "Goodbye! You got #{counter} right answers."
      break 
    end
  
    guess = guess.to_i
  
    # tell the user if they are correct
    if guess == answer
      counter += 1  
      puts "Wow! that is correct! #{counter} in total!"
    else
      puts "too bad"
    end
  end
  
  remaining_time = end_time - Time.now
  if remaining_time > 0
    if remaining_time <= 120
      puts "#{remaining_time.floor} seconds left."
    else
      puts "#{(remaining_time / 60).ceil} minutes left."
    end
  end
end

say_with_bells "ding dong"

per_minute = (counter / minutes).ceil

puts "#{counter} correct answers"
puts "#{per_minute} per minute"
say "Times up! You got #{per_minute} correct per minute!"
say_junior "Good job #{name} and goodbye"
