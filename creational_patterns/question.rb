# frozen_string_literal: true

class Question
  attr_reader :title, :options, :correct, :points

  def initialize(title: , options: , correct: , points:)
    @title = title
    @options = options
    @correct = correct
    @points = points
  end

  def call_a_friend!
    @points /= 2
  end

  def to_h
    {
      title: title, 
      options: options,
      correct: correct,
      points: points
    }
  end
end
