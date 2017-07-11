require_relative 'lib/scrabble_game'

# Prompt player for inputs
puts "Enter your scrabble word"
alphabet = gets.chomp

puts "The scrabble alphabets for the word #{alphabet} is #{Scrabble_Game.new(alphabet).value_alphabet(alphabet).to_s}"
