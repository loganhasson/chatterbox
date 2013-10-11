require 'pry'
class ChatterBox

  COMMANDS = [:hi, :how, :why, :when, :who, :where, :what, :bye]

  def hi(args)
    puts "Well hi there! Nice to see you. :)"
  end

  def how(args)
    if args.include?("are") && args.include?("old")
      puts "Younger than yo mama!"
    elsif args.include?("are") || args.include?("you")
      puts "I'm doing well, thanks, how about you?"
    elsif args.include?("can")
      puts "Hold on...lemme look that up for you. Wait. I'm bored. Go do it yourself."
    elsif args.include?("much") && (args.include?("could") || args.include?("can"))
      puts "If I had to guess? More than you."
    elsif args.include?("much")
      puts "You couldn't afford it."
    else
      puts "I'm not too sure how...I'm a computer, after all."
    end
  end

  def why(args)
    if args.include?("does") || args.include?("do")
      puts "You know, that's pretty complicated. It probably works by magic."
    elsif args.include?("is")
      puts "Phew! That's a question for the ages."
    elsif args.include?("are")
      puts "Umm, that's kind of personal, don't you think?"
    elsif args.include?("can") && args.include?("i")
      puts "Because you're amazing!"
    elsif args.include?("can") && args.include?("you")
      puts "Because I'm a boss."
    elsif args.include?("cant") && args.include?("i")
      puts "Well, I didn't want to say anything, but it's probably because you're not that special."
    elsif args.include?("cant") && args.include?("you")
      puts "What? Of course I can! I'm a total boss. Gah."
    elsif args.include?("cant") && args.include?("we")
      puts "We'd never work together. It's so obvious."
    elsif args.include?("dont")
      puts "Uhhh...no clue."
    else
      puts "Why not?"
    end
  end

  def when(args)
    if args.include?("will")
      puts "That's a secret, honestly. It will probably happen sooner or later."
    elsif args.include?("should")
      puts "You're going to have to be more specific. Time is relative, after all. Or something."
    elsif args.include?("is")
      puts "Wouldn't you like to know."
    elsif args.include?("did")
      puts "Phew. Like so long ago, I can't even comprehend."
    else
      puts "A long time from now."
    end
  end

  def who(args)
    if args.include?("am")
      puts "How in the world could I know that? You didn't tell me your name!"
    elsif args.include?("is")
      puts "The guy I met the other day?"
    else
      puts "Uhhh, your mom?"
    end
  end

  def where(args)
    if args.include?("is") || args.include?("are")
      puts "I've been looking everywhere, but I really don't know. :-("
    elsif args.include?("can")
      puts "Whenever you want!"
    else
      puts "Probably on the moon."
    end
  end

  def what(args)
    if args.include?("is") && args.include?("your")
      puts "Personal! Sheesh!"
    elsif args.include?("is") || args.include?("are")
      puts "Get a dictionary, bonehead. I'm not Wikipedia over here."
    elsif args.include?("should")
      puts "I ain't a fortune teller, kid. And I certainly don't work for free."
    elsif args.include?("are")
      puts "That's none of your business. I do what I do. Ya herd?"
    else
      puts "Huh?"
    end
  end

  def bye(args)
    puts "Well, ok. Bye then."
  end

  def say_what
    puts "I have no clue what you're talking about."
  end

  def call(sentence)
    sentence.split.each_with_index do |word, i|
      if self.class::COMMANDS.include?(word.downcase.gsub(/[.?!,']/,'').to_sym)
        self.send("#{word.downcase.strip.gsub(/[.?!,']/,'')}", sentence.downcase.gsub(/[.?!,']/,'').split)
        break
      elsif i == sentence.split.length - 1
        puts "I have no idea what you're talking about."
      end
    end
  end

end

t = ChatterBox.new
t.call("What is your favorite color?")
t.call("Hi there!")
t.call("Why can't we be friends?")
t.call("How old are you?")
t.call("What is the meaning of life?")
t.call("Where were you born?")
t.call("Who am I?")
t.call("When can I meet your family?")
t.call("How is cheese made?")
t.call("Gobledygook blah pants")