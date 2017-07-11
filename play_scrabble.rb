require_relative 'lib/scrabble_game'

# Prompt player for inputs
puts "Enter your scrabble word"
alphabet = gets.chomp
puts "Is your total scrabble word count for 1X, 2X or 3X?"
additional_count = gets.chomp
puts "The scrabble alphabets for the word #{alphabet} when it is count for #{additional_count} is #{Scrabble_Game.new(alphabet, additional_count).value_alphabet(alphabet).to_s}"
