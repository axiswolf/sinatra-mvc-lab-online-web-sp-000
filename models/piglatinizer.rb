    class PigLatinizer
      attr_reader :user_phrase

      def vowel?(word)
          vowel = 'aeiouAEIOU'
          vowel.include?(word[0])
      end

      def piglatinize(user_phrase)
        words = user_input.split
        pl_words = words.map do |word|
          if vowel?(word[0])
            word + "way"
          else
            prefix = word[/^([^aeiouAEIOU]+)/]
            suffix = word[prefix.length..word.length]
            suffix + prefix + "ay"
          end
        end
        pl_words.join(" ")
      end
    end
