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

    end

    # For Value
    #describe 'value' do

    #end


end