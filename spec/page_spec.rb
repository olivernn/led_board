require 'spec_helper'

describe LEDBoard::Page do
  describe "#initialize" do
    let(:text) { "Hello, World!" }
    subject { LEDBoard::Page.new(text) }

    its(:text) { should == text }
    its(:line) { should == 1 }
    its(:page) { should == 'A' }
    its(:leading) { should == LEDBoard::Leading::IMMEDIATE }
    its(:lagging) { should == LEDBoard::Lagging::IMMEDIATE }
    its(:display) { should == LEDBoard::Display::FASTEST }
    its(:waiting) { should == LEDBoard::Waiting::FAST }
    its(:color) { should == LEDBoard::Color::RED }
    its(:font) { should == LEDBoard::Font::NORMAL }
  end
end
