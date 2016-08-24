require 'driver'

describe Driver do

  let(:driver_name){ "bob" }
  subject(:driver){ described_class.new(name: driver_name, van_class: van_class) }

  let(:van){ double :van, drive: nil }
  let(:van_class){ double :van_class, hire: van}

  it "picks up clothes" do
    driver.pick_up_clothes

    expect(van).to have_received(:drive)
  end

  it 'delegates van hire to the hire company' do
    driver.pick_up_clothes

    expect(van_class).to have_received(:hire)
  end
end
