require 'minitest/autorun'
require 'minitest/pride'
require_relative './say'

class SayTest < MiniTest::Unit::TestCase
  def test_0
    assert_equal 'zero', Say.new(0).in_english
  end
  
  def test_initialize_accepts_a_number
  	assert Say.new(31)
  end

  def test_0
    assert_equal 'zero ', Say.new(0).in_english
  end

  def test_14
    assert_equal 'fourteen ', Say.new(14).in_english
  end

  def test_50
    assert_equal 'fifty ', Say.new(50).in_english
  end
  
  def test_98
    assert_equal 'ninety eight ', Say.new(98).in_english
  end

  def test_1001
    assert_equal 'one thousand one ', Say.new(1001).in_english
  end

  def test_9999
    assert_equal 'nine thousand nine hundred ninety nine ', Say.new(9999).in_english
  end

  def test_999999
    assert_equal 'nine hundred ninety nine thousand nine hundred ninety nine ', Say.new(999999).in_english
  end
  
  def test_999999999
    assert_equal 'nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine ', Say.new(999999999).in_english
  end
  
  def test_range
    tyler = Say.new("-1")
    assert_raises ArgumentError do
      tyler.in_english
    end
  end
end