# understands how to pick up clothes with a van
class Driver

  def initialize(name:, van_class: Van)
    @name = name
    @van_class = van_class
  end

  def pick_up_clothes
    van.drive
  end

  private

  attr_reader :name, :van_class

  def van
    van_class.hire
  end
end
