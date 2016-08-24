require 'dry_cleaner'

describe DryCleaner do
  subject(:dry_cleaner) { described_class.new }
  let(:output) { StringIO.new }

  # As a user
  # So I can get my clothes dry-cleaned
  # I want to phone a dry-cleaner to pick up my clothes
  describe 'picking up clothes' do
    it 'picks up the clothes' do
      expect(output).to receive(:puts).with("Your clothes will be picked up soon!")
      
      dry_cleaner.pick_up_clothes(output)
    end
  end
end