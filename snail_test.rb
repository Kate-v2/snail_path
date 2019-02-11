
require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './snail'


class SnailTest < Minitest::Test

  def setup
    # @shape = [
    #   [1, 2, 3],
    #   [1, 2, 3],
    #   [1, 2, 3]
    # ]
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
    # expected = [1, 2, 3, 3, 3, 2, 1, 1, 2]
    expected = [11, 12, 13, 23, 33, 32, 31, 21, 22]
    actual   = @snail.determine_path
    assert_equal expected, actual
  end


end
