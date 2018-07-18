class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    # @name =  name
    # @weight = weight
    # @height = height
    @name =  params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end
