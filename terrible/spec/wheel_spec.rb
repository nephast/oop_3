require 'wheel'

describe Wheel do
  subject(:wheel) { described_class.new }

  describe '#broken' do
    it 'is never broken' do
      expect(wheel.broken?).to be false
    end
  end
end