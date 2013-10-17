require 'spec_helper'

describe LEDBoard::MessageSerialiser do
  describe "#to_s" do
    subject { LEDBoard::MessageSerialiser.new(message).to_s }

    context "default message" do
      before { LEDBoard::Checksum.stub(:generate).and_return("XX") }
      let(:message) { LEDBoard::Message.new("Hello") }

      it { should == "<L1><PA><FA><MA><WA><FA><AA><CB>HelloXX" }
    end
  end
end
