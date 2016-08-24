# Understands the selection of drivers
class VanCompany

  KNOWN_DRIVERS = [ "James", "Maria", "Tyrrel" ]

  def initialize(driver_class: Driver)
    @driver_class = driver_class
  end

  def handle_pick_up
    driver.pick_up_clothes
  end

  private

  attr_reader :driver_class

  def driver
    driver_class.new(name: KNOWN_DRIVERS.sample)
  end
end
