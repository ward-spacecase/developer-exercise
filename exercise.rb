class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)

    words = str.split
    new_sentence = ""

    for word in words
      punctuation = ""

      # handle puctuation
      if word[-1].match?(/[[:punct:]]/)
        punctuation = word[-1]
        word.chop!
      end

      if word.length > 4
        # handle capital
        if word =~ /[A-Z]/
          new_sentence << "Marklar"
        else
          new_sentence << "marklar"
        end

      else
        new_sentence << word
      end

      if punctuation.length >= 1
        new_sentence << punctuation
      end

      new_sentence << " "
    end

    return new_sentence.chop
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
  end

end
