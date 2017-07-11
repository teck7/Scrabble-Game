class Scrabble_Game

  # Not allowing user to alter
  attr_reader :alphabet

  # Initialize and pass an argument
  def initialize(alphabet)
    @alphabet = alphabet
  end

end
