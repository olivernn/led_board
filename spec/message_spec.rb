require 'spec_helper'

describe LEDBoard::Message do
  describe "#initialize" do
    let(:text) { "Hello, World!" }
    subject { LEDBoard::Message.new(text) }

    its(:text) { should == text }
    its(:line) { should == 1 }
    its(:page) { should == 'A' }
    its(:leading) { should == LEDBoard::Leading::IMMEDIATE }
    its(:lagging) { should == LEDBoard::Lagging::IMMEDIATE }
    its(:waiting) { should == LEDBoard::Waiting::FAST }
    its(:color) { should == LEDBoard::Color::RED }
    its(:font) { should == LEDBoard::Font::NORMAL }
  end
end