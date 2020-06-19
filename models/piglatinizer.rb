class PigLatinizer

  def piglatinize(phrase)
    @phrase = phrase
    string = @phrase
    words = string.split(" ")
    said_phrase = words.collect  {|word| piglatinize_the_word(word)}
    said_phrase.join(" ")
  end


  def piglatinize_the_word(word)
    first_letter = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
    else
      consonants = []
      consonants << word[0]
      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consonants << word[1]
        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
          consonants << word[2]
        end
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end
end
