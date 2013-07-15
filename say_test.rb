require_relative './say'
require 'minitest/autorun'
require 'minitest/pride'

class SayTest < MiniTest::Unit::TestCase
  
  def test_initialize_accepts_a_number
  	assert_not_nil Say.new(31)
  end

  def test_0
    assert_equal 'zero', Say.new(0).in_english
  end

  def test_14
    assert_equal 'fourteen', Say.new(14).in_english
  end

  def test_50
    assert_equal 'fifty', Say.new(50).in_english
  end
  
  def test_98
    assert_equal 'ninety eight', Say.new(98).in_english
  end

  # def test_neg_1
  #   assert_equal 'fourteen', Say.new(-1).in_english
  # end

  # def test_100
  #   assert_equal 'fourteen', Say.new(100).in_english
  # end
  # def test_only_accepts_positive_numbers
  #   assert_raise(ArgumentError){raise ArgumentError.new("Number is out of range ")} 
  # end
end