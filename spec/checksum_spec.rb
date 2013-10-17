require 'spec_helper'

describe LEDBoard::Checksum do
  describe ".generate" do
    let(:message) { "oliver" }
    subject { LEDBoard::Checksum.generate(message) }
    it { should == "0B" }
  end
end
