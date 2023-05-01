class Question
  attr_reader :question, :answer
  MAX_LIVES = 3
  def initialize
    num1 = rand(1..99)
    num2 = rand(1..99)
    @question = "#{num1} + #{num2}"
    @answer = num1 + num2
  end

  def text
    @question
  end

end