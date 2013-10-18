require "spec_helper"

describe LEDBoard::MessageSerialiser do
  describe ".serialise" do
    let(:dummy_serialiser) { double(to_s: "serialised") }

    context "Page" do
      let(:page) { LEDBoard::Page.new("Hello") }
      before { LEDBoard::PageSerialiser.stub(:new).and_return(dummy_serialiser) }

      it "should choose the right serialiser" do
        LEDBoard::PageSerialiser.should_receive(:new).with(page)
        dummy_serialiser.should_receive(:to_s)
        LEDBoard::MessageSerialiser.serialise(page)
      end
    end

    context "Schedule" do
      let(:schedule) { LEDBoard::Schedule.new(%w(A B C)) }
      before { LEDBoard::ScheduleSerialiser.stub(:new).and_return(dummy_serialiser) }

      it "should choose the right serialiser" do
        LEDBoard::ScheduleSerialiser.should_receive(:new).with(schedule)
        dummy_serialiser.should_receive(:to_s)
        LEDBoard::MessageSerialiser.serialise(schedule)
      end
    end
  end
end
