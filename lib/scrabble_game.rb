class Scrabble_Game

  # Not allowing user to alter
  attr_reader :alphabet

  # Initialize and pass an argument
  def initialize(alphabet)
    @alphabet = alphabet
  end

  # Method to enable charaterization
  def alphabet_to_char(alphabet)
    split_alphabet = alphabet.split("")
  end

end
