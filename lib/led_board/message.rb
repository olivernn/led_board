class LEDBoard
  class Message

    attr_reader :text, :line, :page, :leading, :lagging, :display, :waiting, :color, :font

    def initialize(text, line: 1, page: 'A', leading: Leading::IMMEDIATE, lagging: Lagging::IMMEDIATE, display: Display::FASTEST, waiting: Waiting::FAST, color: Color::RED, font: Font::NORMAL)
      @text = text
      @line = line
      @page = page
      @leading = leading
      @lagging = lagging
      @display = display
      @waiting = waiting
      @color = color
      @font = font
    end
  end
end
