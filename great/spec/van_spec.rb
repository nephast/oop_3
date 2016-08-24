require 'van'

describe Van do

  subject(:van){ described_class.hire(engine: engine) }
  let(:engine) { double :engine, accelerate: nil }


  context "working components" do
    
    before { allow(engine).to receive(:working?).and_return(true) }

    it "informs engine to accelerate" do
      van.drive
      expect(engine).to have_received(:accelerate)
    end

  end

  context "broken components" do

    before { allow(engine).to receive(:working?).and_return(false) }

    it "raises an error when components are broken" do
      expect{van}.to raise_error("engine broken")
    end
  end

end
