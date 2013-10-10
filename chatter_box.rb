require 'pry'
class ChatterBox

  COMMANDS = [:hi, :how, :why, :when, :who, :where, :what, :bye]

  def hi
    puts "Well hi there! Nice to see you. :)"
  end

  def how(args)
    if args.include?("are") || args.include?("you")
      puts "I'm doing well, thanks, how about you?"
    else
      puts "I'm not too sure how to do that...I'm a computer, after all."
    end
  end

  def why(args)
    if args.include?("does") || args.include?("do")
      puts "You know, that's pretty complicated. It probably works by magic."
    elsif args.include?("is")
      puts "Phew! That's a question for the ages."
    elsif args.include?("are")
      puts "Umm, that's kind of personal, don't you think?"
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
      puts "Probably never, or like way in the future or something."
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
    puts "bye"
  end

  def say_what
    puts "I have no clue what you're talking about."
  end

  def call(sentence)
    sentence.split.each_with_index do |word, i|
      if self.class::COMMANDS.include?(word.downcase.gsub(/[.?!,]/,'').to_sym)
        self.send("#{word.downcase.strip.gsub(/[.?!,]/,'')}", sentence.downcase.gsub(/[.?!,]/,'').split)
        break
      elsif i == sentence.length - 1
        puts "I have no idea what you're talking about."
      end
    end
  end

end

t = ChatterBox.new
t.call("What is your favorite color?")