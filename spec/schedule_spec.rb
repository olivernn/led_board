require "spec_helper"

describe LEDBoard::Schedule do
  describe "#initialize" do
    before { Timecop.freeze }

    let(:now) { Time.now }
    let(:tomorrow) { Time.now + 86_400 }

    subject { LEDBoard::Schedule.new(%w(A B C)) }

    its(:pages) { should == %w(A B C) }
    its(:starts_at) { should == now }
    its(:ends_at) { should == tomorrow }
    its(:id) { should == 'A' }
  end
end
