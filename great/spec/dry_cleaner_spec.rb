require 'dry_cleaner'

describe DryCleaner do
  subject(:dry_cleaner) { described_class.new(van_company: van_company) }
  let(:van_company) { double(:van_company) }

  describe '#pickup_clothes' do
    it 'delegates clothing pickup to the pickup company' do
      expect(van_company).to receive(:handle_pickup)
      
      dry_cleaner.pick_up_clothes
    end

    it 'returns a message to the terminal' do
      allow(van_company).to receive(:handle_pickup)
      expect(STDOUT).to receive(:puts).with(DryCleaner::SUCCESS_MESSAGE)
      dry_cleaner.pick_up_clothes
    end
  end
end
