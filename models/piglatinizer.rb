    # first letter ends up at the end
    # latin = word.split(//).first
    # pig.split(//) => ["p", "o", "r", "k"]
    # pig.each_char.first
    #word = words.split
    # word.each do |w|
    #     if w.length == 1
    #       pig = w[0]
    #       piglatin = "#{w}" + "way"
    #     elsif w.length == 2
    #       pig = w[0]
    #       pig2 = w[1]
    #       piglatin = "#{pig2}" + "#{pig}" + "ay"
    #     elsif w.length > 2
    #       pig = w[0] # first letter
    #       pig2 = w[1] # second letter
    #       if pig.match(/[^aeiou]/) && pig2.match(/[aeiou]/)
    #         sp1 = w.split(0)
    #         piglatin = "#{w}" + "#{pig}" + "ay"
    #       elsif pig.match(/[^aeiou]/) && pig2.match(/[^aeiou]/)
    #         sp1 = w.split(0)
    #         sp2 = w.split(0)
    #         piglatin = "#{w}" + "#{pig}" + "#{pig2}" + "ay"
    #       elsif pig.match(/[aeiou]/)
    #         piglatin = "#{w}" + "way"
    #       end
    #     sentence << piglatin
    #   end
    #   sentence
    # end
    class PigLatinizer
      attr_accessor :user_input

      def vowel?(word)
          vowel = 'aeiouAEIOU'
          vowel.include?(word[0])
      end

      def const?(word)
        const = '/[^aeiouAEIOU]/'
        const.include?(word[0])
      end

      # def split_phrase(phrase)
      #   array_of_words = phrase.split
      # end

      def piglatinize(user_input)
        words = user_input.split
        words.map do |word|
          if vowel?(word[0])
            piglatin = word + "way"
          elsif vowel?(word[1])
            piglatin = word[1, 0] + word[0] + "ay"
          else 
            piglatin = word[/^([^aeiouAEIOU]+)/]
        end
      end
      #   return word if %w[and an in].include?(word) #one syllable exceptions
      #   letters = word.split("")
      #   letters.keep_if {|letter| letter != "."}
      #   if letters.size > 1
      #     until vowel?(letters[0])
      #       letters << letters.shift
      #     end
      #     letters  << "ay"
      #   end
      #   letters.join
      # end
      #
      # def to_pig_latin(text)
      #   words = text.split(" ")
      #   words.map! {|word| piglatinize(word)}
      #   words.join(" ")
      # end
      #
      # def vowel?(letter)
      #   letter.downcase
      #   letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
      # end

    end
