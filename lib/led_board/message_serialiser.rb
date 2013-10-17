module LEDBoard
  class MessageSerialiser
    def initialize(message)
      @message = message
    end

    def to_s
      data + checksum
    end

    private

    attr_reader :message

    def data
      @data ||= line + page + leading + waiting + lagging + font + color + text
    end

    def checksum
      LEDBoard::Checksum.generate(data)
    end

    def line
      key_value "L", message.line
    end

    def page
      key_value "P", message.page
    end

    def leading
      key_value "F", message.leading
    end

    def waiting
      key_value "W", message.waiting
    end

    def lagging
      key_value "F", message.lagging
    end

    def font
      key_value "A", message.font
    end

    def color
      key_value "C", message.color
    end

    def text
      message.text
    end

    def key_value(key, value)
      "<#{key}#{value}>"
    end
  end
end
