require 'minitest/autorun'

class TestNucleo < Minitest::Test

  def test_1
    assert_equal "2 0 0 0", Nucleo.new("AA").symb_count 
  end

  def test_2
    assert_equal "1 1 0 0", Nucleo.new("AC").symb_count 
  end

  def test_3
    assert_equal "0 0 1 1", Nucleo.new("GT").symb_count 
  end

  def test_4
    assert_equal "1 1 1 1", Nucleo.new("ACGT").symb_count 
  end

  def test_5
    assert_equal "2 2 2 3", Nucleo.new("ACTTGACGT").symb_count 
  end

  def test_6
    assert_equal "4 2 2 4", Nucleo.new("ATTGCTAGCTAA").symb_count 
  end

  def test_7
    assert_equal "7 4 6 4", Nucleo.new("ATGCTTCAGAAAAGGTCAGCG").symb_count 
  end

end