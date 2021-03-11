class Cage
  attr_accessor :animal

  def initialize
    @animal
  end

  def empty?
    # if @animal
    #   return false
    # else
    #   return true
    # end
    !(@animal)
  end

end