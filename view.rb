require 'pry'
require_relative 'model/card'
require_relative 'model/deck'
require_relative 'flashcard_controller'

valid_answer = false
until valid_answer == true

  puts "What animal quiz are we running?   (nighthawk, otter, raccoon)"
  response = gets.chomp.downcase

  case response

  when  "otter"
    deck_to_load = 'otter_flashcard_data.txt'
    valid_answer = true
  when "nighthawk"
    deck_to_load = 'nighthawk_flashcard_data.txt'
    valid_answer = true
  when "raccoon"
    deck_to_load = 'raccoon_flashcard_data.txt'
    valid_answer = true
  else
    puts "Sorry, we don't have that one."
    puts
  end
end

parser = Controller.new(deck_to_load)
deck = parser.make_deck
deck.quiz
