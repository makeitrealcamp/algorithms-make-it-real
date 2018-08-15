require 'minitest/autorun'
require_relative 'raindrops'

class RaindropsTest < Minitest::Test
  def test_for_3_is_pling
    assert_equal "Pling", Raindrops.to_string(3)
  end

  def test_for_5_is_plang
    assert_equal "Plang", Raindrops.to_string(5)
  end

  def test_for_7_is_plong
    assert_equal "Plong", Raindrops.to_string(7)
  end

  def test_for_30_is_pling_plang
    assert_equal "PlingPlang", Raindrops.to_string(30)
  end

  def test_for_21_is_pling_plong
    assert_equal "PlingPlong", Raindrops.to_string(21)
  end

  def test_for_35_is_plang_plong
    assert_equal "PlangPlong", Raindrops.to_string(35)
  end

  def test_for_105_is_pling_plang_plong
    assert_equal "PlingPlangPlong", Raindrops.to_string(105)
  end

  def test_for_text_is_argument_error
    assert_equal "Argumento inválido", Raindrops.to_string("text")
  end

  def test_for_nil_is_argument_error
    assert_equal "Argumento inválido", Raindrops.to_string(nil)
  end

end
