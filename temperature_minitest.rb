require 'minitest/autorun'
require_relative 'converter_temperature'

class TemperatureTest < Minitest::Test

  def setup
    @temp_converter = TemperatureConverter.new
  end

  def test_to_celsius_32
    assert_equal 0, @temp_converter.to_celsius(32)
  end

  def test_to_celsius_50
    assert_equal 10, @temp_converter.to_celsius(50)
  end

  def test_to_celsius_212
    assert_equal 100, @temp_converter.to_celsius(212)
  end

  def test_to_celsius_140
    assert_equal 60, @temp_converter.to_celsius(140)
  end

  def test_to_celsius_500
    assert_equal 260, @temp_converter.to_celsius(500)
  end

  def test_to_fahrenheit_0
    assert_equal 32, @temp_converter.to_fahrenheit(0)
  end


end