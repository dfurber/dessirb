my_number = rand(10) + 1

puts "I am thinking of a number between 1 and 10. Can you guess what it is?"

guesses = 0
guesses_allowed = 3

while true

  guesses += 1
  
  guess = gets.chomp
  
  your_guess = guess.to_i

  if your_guess == 0
    if guess == "0"
      puts "0 is definitely not between 1 and 10."
    else
      puts "You do know that #{guess} is not a number, right? Now get me some hot cocoa right now!"
    end
    next
  elsif your_guess < 0
    puts "You sillyhead, I asked for a number higher than 0, not less than 0."
    next
  elsif your_guess > 10
    puts "Doh I asked for a number lower than 10, you sillyhead."
    next
  end
  
  if your_guess == my_number
    puts "You got it right! #{your_guess} is the number I was thinking of. It only took you #{guesses} guesses."
    break
  else
    remaining_guesses = guesses_allowed - guesses
    if remaining_guesses == 0
      puts "#{your_guess} is wrong. Sorry you're out of guesses. The number is #{my_number}."
      break
    else
      if your_guess < my_number
        higher_or_lower = "higher"
      else
        higher_or_lower = "lower"
      end
      puts "Nopes #{your_guess} is wrong. I'm thinking of a #{higher_or_lower} number. You have #{remaining_guesses} more guesses."
    end
  end
  
end

``````