# frozen_string_literal: true

require_relative 'question_builder'

class GenerateQuestionsService
  class << self
    def call(question_type, call_a_friend)
      if question_type == '%'
        QuestionBuilder.build_expert
      elsif question_type == 'equation'
        QuestionBuilder.build_math_wiz
      else
        QuestionBuilder.build_student(call_a_friend)
      end
    end
  end
end
