class PigLatinizer

   

    def piglatinize(user_phrase)
        
        words = user_phrase.split(" ")
        piglatin = words.map do |word| 
            
            first_letter = word[0].downcase
            if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"   
                word + "way"
                
            else 
                #need to check 0, 1, 2 index to find out if they are all consonants 
                consonants = []
                consonants << word[0]
                second_letter = word[1].downcase

                if second_letter != "a" && second_letter != "e" && second_letter != "i" && second_letter != "o" && second_letter != "u" 
                    consonants << second_letter
                    if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                        consonants << word[2]
                    end
                 end

           
            word[consonants.length..-1] + consonants.join + "ay"
            end 
        
        end 
        
        piglatin.join(" ")
        
    end 


end 