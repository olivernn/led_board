require 'spec_helper'

describe LEDBoard do
  let(:serial_file) { double(write: true, read: true) }
  let(:id) { 1 }

  let(:board) { LEDBoard.new(id, serial_file) }

  before { LEDBoard::Checksum.stub(:generate).and_return("XX") }

  describe "#send" do
    context "with a string" do
      it "should write to the serial file" do
        serial_file.should_receive(:write).with("<ID01><L1><PA><FA><MA><WA><FA><AA><CB>HelloXX<E>")
        board.send("Hello")
      end
    end

    context "with a message" do
      let(:message) { LEDBoard::Page.new("Hello", color: LEDBoard::Color::GREEN) }

      it "should write to the serial file" do
        serial_file.should_receive(:write).with("<ID01><L1><PA><FA><MA><WA><FA><AA><CE>HelloXX<E>")
        board.send(message)
      end
    end
  end

  describe "#disconnect" do
    let(:serial_file) { double(close: true) }
    let(:id) { 1 }
    let(:board) { LEDBoard.new(id, serial_file) }

    it "should close the serial file" do
      serial_file.should_receive(:close)
      board.disconnect
    end
  end

  describe ".connect" do
    before { PiWire::Serial.stub(:new) }

    it "should setup the serial connection" do
      PiWire::Serial.should_receive(:new).with("/dev/ttyAMA0", 9600)
      LEDBoard.connect(1)
    end
  end
end
