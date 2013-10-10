class ChatterBox

  COMMANDS = [:hi, :how, :why, :when, :who, :where, :what, :bye]

  def hi
    puts "hi"
  end

  def how(*args)
    puts "how"
  end

  def why(*args)
    puts "why"
  end

  def when(*args)
    puts "when"
  end

  def who(*args)
    puts "who"
  end

  def where(*args)
    puts "where"
  end

  def what(*args)
    puts "what"
  end

  def bye(*args)
    puts "bye"
  end

  def say_what
    puts "I have no clue what you're talking about."
  end

  def call(sentence)
    sentence.split.each_with_index do |word, i|
      if self.class::COMMANDS.include?(word.downcase.gsub(/\W/,'').to_sym)
        self.send("#{word.downcase.gsub(/\W/,'')}", sentence)
        break
      elsif i == sentence.length - 1
        puts "I have no idea what you're talking about."
      end
    end
  end

end

t = ChatterBox.new
t.call("How?")