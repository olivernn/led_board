class LEDBoard
  class MessageSerialiser

    def self.serialise(message)
      case message
      when LEDBoard::Page
        LEDBoard::PageSerialiser.new(message).to_s
      when LEDBoard::Schedule
        LEDBoard::ScheduleSerialiser.new(message).to_s
      when LEDBoard::DeletePage
        LEDBoard::DeletePageSerialiser.new(message).to_s
      else
        raise ArgumentError
      end
    end

    def initialize(message)
      @message = message
    end

    def to_s
      data + checksum
    end

    private

    attr_reader :message

    def checksum
      LEDBoard::Checksum.generate(data)
    end

    def key_value(key, value)
      "<#{key}#{value}>"
    end
  end
end
