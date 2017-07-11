class Scrabble_Game

  # Not allowing user to alter
  attr_reader :alphabet, :additional_count

  # Initialize and pass an argument
  def initialize(alphabet, additional_count)
    @alphabet = alphabet
    @additional_count = additional_count
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

  # Method to enable charaterization
  def alphabet_to_char(alphabet)

    # Add if else statement to pass NIL test case
    if alphabet == nil
      split_alphabet = ''
    else
      split_alphabet = alphabet.upcase.split("")
    end

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

  # Method to enable valuesx2 to pass into alphabet
  #def value_alphabet_on2X(alphabet)

  #  alphabet_value_double = value_alphabet(alphabet) * 2

  #end

  # Method to enable valuesx3 to pass into alphabet
  #def value_alphabet_on3X(alphabet)

  #  alphabet_value_triple = value_alphabet(alphabet) * 3

  #end

  # Refactor
  def alphabet_values_addition(alphabet)
    case @additional_count
    when '1X'
      value_alphabet(alphabet) * 1
    when '2X'
      value_alphabet(alphabet) * 2
    when '3X'
      value_alphabet(alphabet) * 3
    else
      puts "You must play the game properly"
    end
  end

end
