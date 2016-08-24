require 'van_company'

describe VanCompany do
  subject(:van_company) { described_class.new(driver_class: driver_class) }

  let(:driver_class){ double :driver_class, new: driver }
  let(:driver){ double :driver, pick_up_clothes: nil }

  describe '#handle_pickup' do
    it 'picks a driver' do
      van_company.handle_pick_up
      expect(driver).to have_received(:pick_up_clothes)
    end

  end
end
