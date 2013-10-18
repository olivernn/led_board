class LEDBoard
  class Page < Message

    attr_reader :text, :line, :page, :leading, :lagging, :display, :waiting, :color, :font

    def initialize(text, line: 1, page: 'A', leading: Leading::SCROLL_LEFT, lagging: Lagging::SCROLL_LEFT, display: Display::MIDDLE_SLOW, waiting: Waiting::MEDIUM, color: Color::RED, font: Font::NORMAL)
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
