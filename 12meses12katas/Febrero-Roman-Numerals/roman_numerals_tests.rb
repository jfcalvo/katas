#!/usr/bin/env ruby
require 'test/unit'
require_relative 'roman_numerals.rb'

class TestRomanNumerals < Test::Unit::TestCase

# 6 --> VI
# 7 --> VII
# 8 --> VIII
# 9 --> IX
# 11 --> XI
  
  def setup
    @roman_numerals = RomanNumerals.new RomanBaseNumbers.new
  end

  def test_1_we_get_I
    assert_equal "I", @roman_numerals.to_roman(1)
  end
  
  def test_5_we_get_V
    assert_equal "V", @roman_numerals.to_roman(5)
  end
  
  def test_10_we_get_X
    assert_equal "X", @roman_numerals.to_roman(10)
  end
  
  def test_50_we_get_L
    assert_equal "L", @roman_numerals.to_roman(50)
  end
  
  def test_100_we_get_C
    assert_equal "C", @roman_numerals.to_roman(100)
  end
  
  def test_500_we_get_D
    assert_equal "D", @roman_numerals.to_roman(500)
  end
  
  def test_1000_we_get_M
    assert_equal "M", @roman_numerals.to_roman(1000)
  end
  
  def test_2_we_get_II
    assert_equal "II", @roman_numerals.to_roman(2)
  end
  
  def test_3_we_get_III
    assert_equal "III", @roman_numerals.to_roman(3)
  end
  
  def test_4_we_get_IV
    assert_equal "IV", @roman_numerals.to_roman(4)
  end
  
  def test_6_we_get_VI
    assert_equal "VI", @roman_numerals.to_roman(6)
  end
  
end






