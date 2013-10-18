require 'spec_helper'

describe LEDBoard::PageSerialiser do
  describe "#to_s" do
    subject { LEDBoard::PageSerialiser.new(page).to_s }

    context "default message" do
      before { LEDBoard::Checksum.stub(:generate).and_return("XX") }
      let(:page) { LEDBoard::Page.new("Hello") }

      it { should == "<L1><PA><FE><Ma><WD><FE><AA><CB>HelloXX" }
    end
  end
end
