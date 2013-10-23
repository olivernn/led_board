require "spec_helper"

describe LEDBoard::DeleteAllSerialiser do
  before { LEDBoard::Checksum.stub(:generate).and_return("XX") }
  let(:message) { LEDBoard::DeleteAll.new }

  subject { LEDBoard::DeleteAllSerialiser.new(message).to_s }

  it { should == "<D*>XX" }
end
