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

      def piglatinize(user_input)
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
