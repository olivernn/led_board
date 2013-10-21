require "spec_helper"

describe LEDBoard::DeletePage do
  describe "initialize" do
    subject { LEDBoard::DeletePage.new('A') }
    its(:page) { should == 'A' }
    its(:line) { should == 1 }
  end
end
