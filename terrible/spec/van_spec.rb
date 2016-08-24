require 'van'

describe Van do
  subject(:van) { described_class.hire(driver) }
  let(:driver) { double(:van_driver) }

  describe '.hire' do
    it 'hires a van with wheels and an engine' do
      expect(van.wheels).not_to be_nil
      expect(van.engine).not_to be_nil
    end
  end

  it { is_expected.to respond_to :wheels }
  it { is_expected.to respond_to :engine }
end