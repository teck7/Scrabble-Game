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
          expect(scrabble_game.alphabet.upcase).to eq("CAR")
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
    describe 'value' do

      context "given the char C" do
        it "expect to return 3" do
          scrabble_game = Scrabble_Game.new("C")
          expect(scrabble_game.value('C')).to eq(3)
        end
      end

      context "given the string CAR" do
        it "expect to obtain value of each alphabet" do
          scrabble_game = Scrabble_Game.new("CAR")
          expect(scrabble_game.value_alphabet("CAR")).to eq(5)
        end
      end

      context "given an empty string" do
        it "expect to return 0" do
          scrabble_game = Scrabble_Game.new("")
          expect(scrabble_game.value_alphabet("")).to eq(0)
        end
      end

      context "given nil" do
        it "expect to return 0" do
          scrabble_game = Scrabble_Game.new(nil)
          expect(scrabble_game.value_alphabet(nil)).to eq(0)
        end
      end

    end


end
