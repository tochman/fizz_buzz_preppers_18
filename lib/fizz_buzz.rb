require 'numbers_in_words'
require 'numbers_in_words/duck_punch'
require 'pry'

module FizzBuzz
  class << self
    def check(number)
      if number.is_divisible_by_fifteen?; say_fizz_buzz
      elsif number.is_divisible_by_three?; say_fizz
      elsif number.is_divisible_by_five?; say_buzz
      else
        number
      end unless number.is_not_suitable_for_fizz_buzz
    end

    protected

    def say_something
      method_source = __callee__
      method_source.to_s.sub('say_', '')
    end

    ['fizz_buzz', 'fizz', 'buzz'].each do |message|
      alias_method "say_#{message}", :say_something
    end
  end
end

class Integer
  def method_missing(method, *args, &block)
    if method.to_s.include? 'is_divisible'
      new_method = method.to_s.sub('is_', '').to_sym
      self.class.send(:define_method, new_method) do
        divider = method.to_s.split('_').last.chomp('?').in_numbers
        self % divider == 0
      end
      self.send(new_method)
    end
  end
end

class Object
  def is_not_suitable_for_fizz_buzz
    !self.is_a? Integer or self < 0
  end
end
