class Deck

  attr_accessor :contents

  def initialize(cards)
    @contents = cards
  end

  def quiz
  total_questions = 0.0
  correct_answers = 0.0
  until contents.empty?
    contents.shuffle.each do |card|
      puts "Question: #{card.question}"
      user_response = gets.chomp
      if user_response != card.answer
        puts "Incorrect! The correct answer is #{card.answer}."
        puts
        total_questions += 1
      else
        puts "Correct!"
        puts
        contents.delete(card)
        correct_answers += 1
        total_questions += 1
      end
    end
  end
    puts "Good job! You got #{(correct_answers / total_questions) * 100}% correct!"
end

end
