# frozen_string_literal: true

class GenerateQuestionsService
  class << self
    def call(param)
      questions = []

      if param == '%'
        questions << {
          title: 'What percent of American adults think that chocolate milk comes from brown cows?',
          options: %w[0 1 7 12],
          correct: '12',
          points: 10
        }
      elsif param == 'equation'
        questions << {
          title: '1 + x = 2',
          options: ['x = 1', 'x = 5', 'x = i', 'x = +-7'],
          correct: 'x = 1',
          points: 10
        }
      end

      questions
    end
  end
end
