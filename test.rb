require 'minitest/autorun'

class TestNucleo < Minitest::Test

  def test_1
    assert_equal Nucleo.new("AA").symb_count, "2 0 0 0"
  end

  def test_2
    assert_equal Nucleo.new("AC").symb_count, "1 1 0 0"
  end

  def test_3
    assert_equal Nucleo.new("GT").symb_count, "0 0 1 1"
  end

  def test_4
    assert_equal Nucleo.new("ACGT").symb_count, "1 1 1 1"
  end

  def test_5
    assert_equal Nucleo.new("ACTTGACGT").symb_count, "2 2 2 3"
  end

  def test_6
    assert_equal Nucleo.new("ATTGCTAGCTAA").symb_count, "4 2 2 4"
  end

  def test_7
    assert_equal Nucleo.new("ATGCTTCAGAAAAGGTCAGCG").symb_count, "7 3 6 4"
  end

end