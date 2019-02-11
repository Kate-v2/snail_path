
require 'pry'

require 'minitest/autorun'
require 'minitest/pride'

require './snail'


class SnailTest < Minitest::Test

  def setup
    @shape = [
      [1, 2, 3],
      [1, 2, 3],
      [1, 2, 3]
    ]
    @snail = Snail.new(@shape)

  end

  def test_it_exists
    assert_instance_of Snail, @snail
  end

  def test_it_determines_path
    expected = [1, 2, 3, 3, 3, 2, 1, 1, 2]
    actual   = @snail.determine_path
    assert_equal expected, actual
  end


end
