class LEDBoard
  class PageSerialiser < MessageSerialiser

    private

    def data
      @data ||= line + page + leading + display + waiting + lagging + font + color + text
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

    def display
      key_value "M", message.display
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
  end
end
