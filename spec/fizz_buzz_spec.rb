# frozen_string_literal: true

require './lib/fizz_buzz.rb'

describe FizzBuzz do
  it 'is expected to return a number if none of the game rules are met' do
    expect(subject.check(4)).to eq 4
  end

  it 'is expected to return "fizz" if number is divisible by 3' do
    expect(subject.check(6)).to eq 'fizz'
  end

  it 'is expected to return "buzz" if number is divisible by 5' do
    expect(subject.check(50)).to eq 'buzz'
  end

  it 'is expected to return "fizz-buzz" if number is divisible by 15' do
    expect(subject.check(30)).to eq 'fizz_buzz'
  end
end

describe Integer do
  describe '15' do
    subject { 15 }
    it { is_expected.to be_divisible_by_fifteen }
  end

  describe '5' do
    subject { 5 }
    it { is_expected.to be_divisible_by_five }
  end

  describe '3' do
    subject { 3 }
    it { is_expected.to be_divisible_by_three }
  end
end

describe Object do
  describe 'is_not_suitable_for_fizz_buzz' do
    describe 'string' do
      subject { '10' }
      it {is_expected.to be_not_suitable_for_fizz_buzz}
    end

    describe 'negative integer' do
      subject { -10 }
      it {is_expected.to be_not_suitable_for_fizz_buzz}
    end
  end
end
