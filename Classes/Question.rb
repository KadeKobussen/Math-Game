class Question
  attr_reader :question, :answer

  def initialize
    num1 = rand(1..99)
    num2 = rand(1..99)
    @question = "#{num1} + #{num2}"
    @answer = num1 + num2
  end
end