# understands how to use an engine
class Van
  def self.hire(engine: Engine.new)
    raise "engine broken" unless engine.working?
    new(engine)
  end

  def initialize(engine)
    @engine = engine
  end

  def drive
    engine.accelerate
  end

  private
  attr_reader :engine
end

class Engine
  def working?
    true
  end

  def accelerate
  end

end
