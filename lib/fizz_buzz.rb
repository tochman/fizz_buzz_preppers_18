class FizzBuzz
  def check(number)

    if number % 15 == 0
      return 'fizz-buzz'
    elsif number % 3 == 0
      return 'fizz'
    elsif number % 5 == 0
      return 'buzz'
    else
      return number
    end
  end
end
