require 'pry'


class Snail

  def initialize(shape)
    @shape   = shape
    @partial = nil
    @path    = []
  end

  def shift_row
    @partial = @shape.shift
  end

  def rotate_shape
    @shape = @shape.transpose.reverse
  end

  def combine
    @path += @partial
  end


  def determine_path
    return @path if @shape.empty?
    shift_row
    combine
    rotate_shape
    determine_path
  end


end
