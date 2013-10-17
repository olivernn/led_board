require "spec_helper"

describe LEDBoard::Packet do
  describe "#to_s" do
    let(:board_id) { 1 }
    let(:data) { "data" }

    subject { LEDBoard::Packet.new(board_id, data).to_s }

    it { should == "<ID01>data<E>" }
  end
end
