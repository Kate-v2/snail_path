
require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './snail'


class SnailTest < Minitest::Test

  def setup
    @shape = [
      [11, 12, 13],
      [21, 22, 23],
      [31, 32, 33]
    ]
    @snail = Snail.new(@shape)

  end

  def test_it_exists
    assert_instance_of Snail, @snail
  end

  def test_it_determines_path
    expected = [11, 12, 13, 23, 33, 32, 31, 21, 22]
    actual   = @snail.determine_path
    assert_equal expected, actual
  end


end
