require 'engine'

describe Engine do
  subject(:engine) { described_class.new }

  describe '#broken?' do
    it 'is never broken' do
      expect(engine.broken?).to be false
    end
  end
end