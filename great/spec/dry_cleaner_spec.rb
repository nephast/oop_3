require 'dry_cleaner'

describe DryCleaner do
  subject(:dry_cleaner) { described_class.new(van_company) }
  let(:van_company) { double(:van_company) }
  let(:output) { StringIO.new }

  describe '#pickup_clothes' do
    it 'delegates clothing pickup to the pickup company' do
      expect(van_company).to receive(:handle_pickup)
      
      dry_cleaner.pickup_clothes
    end
  end
end