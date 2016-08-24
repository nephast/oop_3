class Van
  attr_accessor :wheels, :engine

  def initialize(wheels, engine)
    @wheels = wheels
    @engine = engine
  end

  def self.hire(van_driver)
    wheels = Wheel.new
    engine = Engine.new
    new(wheels, engine)
  end
end