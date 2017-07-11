require 'scrabble_game'
require 'spec_helper'

describe Scrabble_Game do

    # For Alphabet
    describe 'alphabet' do

      context "given the string car" do
        it "reads the string car" do
          scrabble_game = Scrabble_Game.new('car')
          expect(scrabble_game.alphabet).to eq("car")
        end
      end

      context "given the string cAr" do
        it "reads the string CAR" do
          scrabble_game = Scrabble_Game.new('cAr')
          expect(scrabble_game.alphabet_to_uppercase).to eq("CAR")
        end
      end

      context "given the string car" do
        it "includes the letter 'C', the letter 'A', the letter 'R'" do
          scrabble_game = Scrabble_Game.new('CAR')
          expect(scrabble_game.alphabet_to_char('CAR')).to include('C', 'A', 'R')
        end
      end
    end

    # For Value
    #describe 'value' do

    #end


end
