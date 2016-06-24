require 'pry'

class DataParser

  def initialize(file)
    @file = file
  end

  def parse
    pre_list = File.readlines(@file).map do |line|
      line.split("\n")
    end
    pre_list.delete_if {|array| array.empty?}
    pre_list.flatten!
    q_a_array = []
    pre_list.each_with_index do |item, index|
      if index.even?
        q_a_array << [item, pre_list[index + 1]]
        end
      end
    end
    q_a_array
  end

  def make_deck
    deck_array = []
    parse.each do |sub_array|
      deck_array << Card.new(sub_array[0], sub_array[1])
    end
    Deck.new(deck_array)
  end


end


parser = DataParser.new('otter_flashcard_data.txt')
parser.make_deck



