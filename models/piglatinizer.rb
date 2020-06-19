class PigLatinizer

  def piglatinize(phrase)
    @phrase = phrase
    string = @phrase
    words = string.split(" ")
    phrase = words.collect do |word|
    piglatinize_word(word)
    phrase.join(" ")

  end
end
