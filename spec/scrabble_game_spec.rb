require 'scrabble_game'
require 'spec_helper'

describe Scrabble_Game do

    # For Alphabet
    describe 'alphabet' do

      context "given the string car" do
        it "reads the string car" do
          scrabble_game = Scrabble_Game.new('car', '1X')
          expect(scrabble_game.alphabet).to eq("car")
        end
      end

      context "given the string cAr" do
        it "reads the string CAR" do
          scrabble_game = Scrabble_Game.new('cAr', '1X')
          expect(scrabble_game.alphabet.upcase).to eq("CAR")
        end
      end

      context "given the string car" do
        it "includes the letter 'C', the letter 'A', the letter 'R'" do
          scrabble_game = Scrabble_Game.new('CAR', '1X')
          expect(scrabble_game.alphabet_to_char('CAR')).to include('C', 'A', 'R')
        end
      end
    end

    # For Value
    describe 'value' do

      context "given the char C" do
        it "expect to return 3" do
          scrabble_game = Scrabble_Game.new("C", '1X')
          expect(scrabble_game.value('C')).to eq(3)
        end
      end

      context "given the string CAR" do
        it "expect to obtain value of each alphabet" do
          scrabble_game = Scrabble_Game.new("CAR", '1X')
          expect(scrabble_game.value_alphabet("CAR")).to eq(5)
        end
      end

      context "given an empty string" do
        it "expect to return 0" do
          scrabble_game = Scrabble_Game.new("", '1X')
          expect(scrabble_game.value_alphabet("")).to eq(0)
        end
      end

      context "given nil" do
        it "expect to return 0" do
          scrabble_game = Scrabble_Game.new(nil, '1X')
          expect(scrabble_game.value_alphabet(nil)).to eq(0)
        end
      end

    end

    # For Multi word
    describe "multi word cases" do

      context "given the word CAR and word counts for double" do
        it "expects to return 10" do
          scrabble_game = Scrabble_Game.new('CAR', '2X')
          expect(scrabble_game.alphabet_values_addition('CAR')).to eq(10)
        end
      end

      context "given the word CAR and word counts for triple" do
        it "expects to return 15" do
          scrabble_game = Scrabble_Game.new('CAR', '3X')
          expect(scrabble_game.alphabet_values_addition('CAR')).to eq(15)
        end
      end

    end



end
