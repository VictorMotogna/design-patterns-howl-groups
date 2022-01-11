# Creational design patterns

## Problem statement

We are creating a program that builds quizzes depending on user type. Right now, the user can be either `expert` or `math_wiz`.

When the user is `expert`, we are sending `%` to the quiz generating service, so the user gets a percentage related question.

When the user is a `math_wiz`, we are sending `equation` to the quiz generating service, so the user gets an equation related question.

## New feature

Our quiz night will also start having events for students. We need to handle a new user type, called `student`. 

For students, we need to send both questions from the service & we will also have a `call a friend feature`, that halves his points.

## Acceptance criteria

1. All tests should pass
```ruby
bundle exec rspec spec/creational_patterns_spec.rb
```
2. Use a creational design pattern when implementing the new feature, consider refactoring existing classes to adapt to the new feature.
