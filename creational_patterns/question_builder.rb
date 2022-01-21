# frozen_string_literal: true

require_relative 'question'

class QuestionBuilder

  def self.build_math_wiz(called_a_friend = false)
    question = Question.new(
      title: 'What percent of American adults think that chocolate milk comes from brown cows?',
      options: %w[0 1 7 12],
      correct: '12',
      points: 10
    )
    question.call_a_friend! if called_a_friend

    [question.to_h]
  end

  def self.build_expert(called_a_friend = false)
    question = Question.new(
      title: '1 + x = 2',
      options: ['x = 1', 'x = 5', 'x = i', 'x = +-7'],
      correct: 'x = 1',
      points: 10
    )
    question.call_a_friend! if called_a_friend

    [question.to_h]
  end

  def self.build_student(called_a_friend)
    build_math_wiz(called_a_friend) + build_expert(called_a_friend)
  end
end
