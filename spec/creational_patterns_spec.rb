# frozen_string_literal: true

require_relative '../creational_patterns/quiz'

RSpec.describe Quiz do
  describe 'validation' do
    context 'when the user is not student' do
      it 'returns invalid for student2 type' do
        expect { Quiz.new('student2') }.to raise_error(RuntimeError, 'Invalid user type')
      end
    end

    context 'when the user is student' do
      it 'does not raise error for student type' do
        expect { Quiz.new('student') }.to_not raise_error
      end
    end
  end

  describe 'questions generation' do
    context 'when the user is a math wiz' do
      subject { Quiz.new('math_wiz') }

      before do
        subject
      end

      it 'returns one question with 10 points' do
        expect(subject.questions.count).to eq(1)
        expect(subject.questions.first[:points]).to eq(10)
      end
    end

    context 'when the user is student and used call a friend' do
      subject { Quiz.new('student', true) }

      before do
        subject
      end

      it 'returns 2 questions with 5 points' do
        expect(subject.questions.count).to eq(2)
        expect(subject.questions.first[:points]).to eq(5)
        expect(subject.questions.last[:points]).to eq(5)
      end
    end

    context 'when the user is student and did not use call a friend' do
      subject { Quiz.new('student') }

      before do
        subject
      end

      it 'returns 2 questions with 5 points' do
        expect(subject.questions.count).to eq(2)
        expect(subject.questions.first[:points]).to eq(10)
        expect(subject.questions.last[:points]).to eq(10)
      end
    end
  end
end
