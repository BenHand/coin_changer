require "minitest/autorun"
require_relative 'coin'

class CoinChangerTest < Minitest::Test

  def test_which_coins_returns_amt_99
    assert_equal([25, 25, 25, 10, 10, 1, 1, 1, 1], CoinChanger.new.which_coins?(99))
  end

  def test_which_coins_returns_amt_75
    assert_equal([25, 25, 25], CoinChanger.new.which_coins?(75))
  end

  def test_which_coins_returns_amt_95
    assert_equal([25, 25, 25, 10, 10], CoinChanger.new.which_coins?(95))
  end

end
