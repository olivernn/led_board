require "spec_helper"

describe LEDBoard::DeletePageSerialiser do
  before { LEDBoard::Checksum.stub(:generate).and_return("XX") }
  let(:message) { LEDBoard::DeletePage.new('A') }

  subject { LEDBoard::DeletePageSerialiser.new(message).to_s }

  it { should == "<DL1PA>XX" }
end
