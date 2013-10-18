require "spec_helper"

describe LEDBoard::ScheduleSerialiser do
  let(:start_time) { Time.new(2013, 1, 1, 1, 1) }
  let(:end_time) { Time.new(2014, 2, 2, 2, 2) }
  let(:schedule) { LEDBoard::Schedule.new(%w(A B C), starts_at: start_time, ends_at: end_time) }

  before { LEDBoard::Checksum.stub(:generate).and_return("XX") }

  subject { LEDBoard::ScheduleSerialiser.new(schedule).to_s }

  it { should == "<TA>13010101011402020202ABCXX" }
end
