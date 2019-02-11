require 'pry'


class Snail

  def initialize(shape)
    @shape   = shape
    @partial = nil
    @path    = []
  end

  def pop_row
    @partial = @shape.pop
  end

  def trans
    @shape = @shape.transpose
  end

  def combine
    @path += @partial
  end


  def determine_path
    return @path if @shape.empty?
    pop_row
    combine
    trans
    determine_path
  end






end
