class PigLatinizer

  def piglatinize(phrase)
    @phrase = phrase
    string = @phrase
    words = string.split(" ")
    phrase = words.collect do |word|
    piglatinize_word(word)
    phrase.join(" ")
  end

  def piglatinize_the_word(word)
    first_letter = word[0].downcase

    if ["a", "e", "i", "o", "u"].include?(first_letter)
      "#{word}way"
end
