# frozen_string_literal: true

require_relative 'generate_questions_service'

class Quiz
  attr_accessor :user_type, :call_a_friend
  attr_reader :questions

  def initialize(user_type, call_a_friend = false)
    @user_type = user_type
    validate

    @questions = GenerateQuestionsService.call(user_type_mapping, call_a_friend)
  end

  private

  def validate
    raise 'Invalid user type' unless %w[expert math_wiz student].include?(user_type)
  end

  def user_type_mapping
    {
      expert: '%',
      math_wiz: 'equation',
      student: 'student'
    }[user_type.to_sym]
  end
end
