require 'pry'
require_relative 'model/card'
require_relative 'model/deck'
class Controller

  def initialize(file)
    @file = file
  end

  def grab_txt
    File.readlines(@file).map do |line|
      line.split("\n")
    end
  end

  def parse
    list = grab_txt.delete_if {|array| array.empty?}
    # binding.pry
    list.flatten!
    q_a_array = []
    list.each_with_index do |item, index|
      if index.even?
        q_a_array << [item, list[index + 1]]
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
