require 'minitest/autorun'
require_relative 'raindrops'
require 'minitest/pride'

class RainDropsTest < Minitest::Test
  def test_with_negative_1_return_negative_1_as_string
    assert_equal "-1", Raindrops.number_to_string(-1)
  end

  def test_with_0_return_plingplangplong
    assert_equal "PlingPlangPlong", Raindrops.number_to_string(0)
  end

  def test_with_1_return_1_as_string
    assert_equal "1", Raindrops.number_to_string(1)
  end

  def test_with_3_retun_pling
    assert_equal "Pling", Raindrops.number_to_string(3)
  end

  def test_with_5_return_plang
    assert_equal "Plang", Raindrops.number_to_string(5)
  end

  def test_with_7_return_plong
    assert_equal "Plong", Raindrops.number_to_string(7)
  end

  def test_with_28_return_plong
    assert_equal "Plong", Raindrops.number_to_string(28)
  end

  def test_with_30_return_plingplang
    assert_equal "PlingPlang", Raindrops.number_to_string(30)
  end

  def test_with_34_return_34_as_string
    assert_equal "34", Raindrops.number_to_string(34)
  end
end



