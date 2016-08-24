# Understands the laundering of clothes
class DryCleaner
  def initialize(van_company = VanCompany.new)
    @van_company = van_company
  end

  def pickup_clothes
    van_company.handle_pickup
  end

  private

  attr_reader :van_company
end