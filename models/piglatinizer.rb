class PigLatinizer
    def initialize

    end

    
    def piglatinize(phrase)
        list = phrase.split(' ').map do |word|
            piglatinize_word(word)
        end

        return list.join(" ")

    end
    def piglatinize_word(word)
        
        if is_vowel?(word[0])
            ending = "way"
        else
            ending = "ay"
        end

        blends = [
        'pl',
        'th',
        'spr',
        'pr',
        'wh',
        'sk',
        'th',
        'st',
        'Str'




        ]
        first = nil
        blends.each do |b|
            if word.start_with?(b)
                first = b
                b.split('').each { |l|
                    word[0] = ''
                }
                word << first
                

            end
        end
        if first == nil
            if(is_vowel?(word[0]))
            else
                first = word[0]
                word[0] = ''
                word << first
            end
            
        end
        
       
        word << ending
        word



    end

    def is_vowel?(letter)
        down = letter.downcase
        if(down == 'a' || down == 'o' || down == 'e' || down == 'i' || down == 'u' )
            return true
        else
            return false
        end
    end
end



#"eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay treamSay andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
#"eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"

#"eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay reamStay andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
#"eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"