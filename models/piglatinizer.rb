require 'pry'

class PigLatinizer


  def has_vowel?(c)
   
    if c == nil || c == ''
      c = 'z'
    end
     c = c.downcase
    # binding.pry
    if c == "a" || c == "e" || c == "i" || c == "o" || c == "u"
      return true
    else
      return false
  end
end

  def piglatinize(word)
    # binding.pry
  
    output = ""
    e = []
    e = word.split(' ')
     e.each do |pig|
       
   if has_vowel?(pig[0]) == false && has_vowel?(pig[1]) == true
     c = pig[0]
     pig[0] = ''
     pig += c + "ay"
   elsif has_vowel?(pig[0]) == false && has_vowel?(pig[1]) == false  && has_vowel?(pig[2]) == true
  # binding.pry
     c = pig[0] + pig[1]
     pig[0] = ''
     pig[0] = ''
     pig += c + "ay"
     elsif has_vowel?(pig[0]) == true && has_vowel?(pig[1]) == false # has_vowel?(pig[2]) == false
     pig += "way"
     elsif has_vowel?(pig[0]) == false && has_vowel?(pig[1]) == false  && has_vowel?(pig[2]) == false
      c = pig[0] + pig[1] + pig[2]
     pig[0] = ''
     pig[0] = ''
     pig[0] = ''
     pig += c + "ay"
     elsif has_vowel?(pig[0]) == true && has_vowel?(pig[1]) == true  
    
     pig += "way"
   end
   output += pig + " "
    # binding.pry
 end
   output[output.length-1] = ''
  output
     
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.map! {|word| piglatinize(word)}
    words.join(" ")
  end

  def vowel?(letter)
    letter.downcase
    letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
  end

end 