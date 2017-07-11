class Scrabble_Game

  # Not allowing user to alter
  attr_reader :alphabet

  # Initialize and pass an argument
  def initialize(alphabet)
    @alphabet = alphabet
  end

  # Method to enable charaterization
  def alphabet_to_char(alphabet)

    # Add if else statement to pass NIL test case
    if alphabet == nil
      split_alphabet = ''
    else
      split_alphabet = alphabet.split("")
    end

  end

  def scrabble_directory
    {
      "A" => 1, "B" => 3, "C" => 3, "D" => 2,
      "E" => 1, "F" => 4, "G" => 2, "H" => 4,
      "I" => 1, "J" => 8, "K" => 5, "L" => 1,
      "M" => 3, "N" => 1, "O" => 1, "P" => 3,
      "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
      "U" => 1, "V" => 4, "W" => 4, "X" => 8,
      "Y" => 4, "Z" => 10
    }
  end

  # Method to enable charactor to obtain value
  def value(char)
    value = scrabble_directory[char]
  end

  # Method to enable values to pass into alphabet
  def value_alphabet(alphabet)

    # Starting Value
    total = 0

    # Add if else statement to pass NIL test case

    if alphabet != nil

      # Loop thru each char
      alphabet_to_char(alphabet).each do |char|

        # Summation using directory
        total += scrabble_directory[char]
      end

    end

    return total

  end

end
