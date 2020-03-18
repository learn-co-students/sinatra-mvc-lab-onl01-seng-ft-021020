class PigLatinizer
  # attr_accessor :phrase

  # def initialize(phrase)
  #   @phrase = phrase
  # end

  def piglatinize(phrase)
    words = phrase.split(' ') 
    pig_words = []
    words.each do |word|
      if word.index(/[AEIOUaeiou]/) == 0
        pig_words << "#{word}way"
      else
        i = word.index(/[aeiou]/)
        pig_words << "#{word[i..]}#{word[0..i-1]}ay"
      end
    end
    pig_words.join(' ')
  end

end
