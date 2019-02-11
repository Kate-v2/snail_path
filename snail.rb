require 'pry'


class Snail

  def initialize(shape)
    @shape   = shape
    @partial = nil
    @path    = []
    @shift   = 0
  end

  def pop_row
    @partial = @shape.pop
  end

  def shift_row
    @partial = @shape.shift
    @shift += 1
  end

  def trans
    @shape = @shape.transpose
  end

  def combine
    @path += @partial
  end


  def determine_path
    return @path if @shape.empty?
    # binding.pry
    # pop_row
    @shift > 0 ? pop_row : shift_row
    combine
    trans
    determine_path
  end






end
