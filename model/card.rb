class Card
  attr_accessor :correct
  attr_reader :question, :answer

  def initialize(args = {})
    @question = args.fetch(:question, '')
    @answer= args.fetch(:answer, '')
    @correct = false
  end

end
