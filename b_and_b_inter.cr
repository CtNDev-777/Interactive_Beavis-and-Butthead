# Program written by CtNDev-777
# Beavis and Butt-Head belong to Mike Judge and Paramount Global

WORDS_TO_CHECK = ["anus", "ass", "butt", "dong", "fire", "hard"]

def word_finder(message)

  exit unless message
  
  message = message.downcase.split(/(\w+([-'.]\w+)*)/)
  
  unless message.any? { |word| WORDS_TO_CHECK.includes? word }
    puts "Uhh... this sucks, let's go break stuff!"
    puts "Hehe, yeah yeah! Breakin' the stuff!"
  else
    which_person(message)
  end
end

def which_person(process_message)
  process_message.each do |word|
    if word == "fire"
      puts "Hehe, FIRE!!!"
    elsif word.in? WORDS_TO_CHECK
      puts "Huh huh... he said '#{word}'!"
    end
  end
end

print "Enter a word or sentence: "

input_string = gets

word_finder(input_string)
