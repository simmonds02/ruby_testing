# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess
    (( max + min ) / 2 ).floor
  end

  def game_over?
    if answer == guess
      return true
    end
    return false
  end

  def update_range
    if guess < answer
      # self.min = guess + 1
      @min = guess + 1
    elsif guess >= answer
      # self.max = guess - 1
      @max = guess - 1
    end
  end


end
