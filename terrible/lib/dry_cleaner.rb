class DryCleaner
  def pick_up_clothes(output = STDOUT)
    driver_name =  [ "James", "Maria", "Tyrrel" ].sample
    van_driver = phone_van_driver(driver_name)
    van = hire_unbroken_van(van_driver)
    output.puts "Your clothes will be picked up soon!"
  end

  private

  def phone_van_driver(driver_name)
    VanDriver.new(driver_name)
  end

  def hire_unbroken_van(van_driver)
    raise "No driver!" unless van_driver
    van = Van.hire(van_driver)
    if van.wheels.broken?
      raise "Van wheels are broken"
    elsif van.engine.broken?
      raise "Van engine is broken"
    end
    van
  end
end