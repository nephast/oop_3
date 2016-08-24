require 'van_driver'

describe VanDriver do
  subject(:van_driver) { described_class.new("James") }

  it { is_expected.to respond_to :name }
end