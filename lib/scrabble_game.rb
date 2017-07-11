class Scrabble_Game

  # Not allowing user to alter
  attr_reader :alphabet

  # Initialize and pass an argument
  def initialize(alphabet)
    @alphabet = alphabet
  end

  def alphabet_to_uppercase
    insensitive_alphabet = @alphabet.upcase
  end

end
