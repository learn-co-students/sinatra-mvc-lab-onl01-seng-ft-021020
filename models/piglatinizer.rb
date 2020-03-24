class PigLatinizer
  attr_reader :piglatin

  def piglatinize_word(word) 
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front_end = word.slice!(0..vowel_index-1)
      word + front_end +"ay"
    end
  end
  
  def piglatinize(phrase)
    word_array = phrase.split(" ")
    @piglatin = word_array.collect {|word| piglatinize_word(word)}.join(" ")
  end
end