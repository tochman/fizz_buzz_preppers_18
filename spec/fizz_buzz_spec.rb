require './lib/fizz_buzz.rb'

describe FizzBuzz do

  it 'will return a number if none of the game rules are met' do
    expect(subject.check(4)).to eq 4
  end

  it 'will return "fizz" if number is divisible by 3' do
    expect(subject.check(6)).to eq 'fizz'
  end

  it 'will return "buzz" if number is divisible by 5' do
    expect(subject.check(50)).to eq 'buzz'
  end

  it 'will return "fizz-buzz" if number is divisible by 15' do
    expect(subject.check(30)).to eq 'fizz-buzz'
  end
end
