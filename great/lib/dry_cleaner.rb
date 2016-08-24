require_relative 'van_company'
# Understands the laundering of clothes
class DryCleaner

  SUCCESS_MESSAGE = "Your clothes will be picked up soon!"

  def initialize(van_company: VanCompany.new)
    @van_company = van_company
  end

  def pick_up_clothes
    van_company.handle_pickup
    puts(SUCCESS_MESSAGE)
  end

  private

  attr_reader :van_company
end
