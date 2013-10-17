class LEDBoard
  class Message

    attr_reader :text, :line, :page, :leading, :lagging, :waiting, :color, :font

    def initialize(text, line: 1, page: 'A', leading: Leading::IMMEDIATE, lagging: Lagging::IMMEDIATE, waiting: Waiting::FAST, color: Color::RED, font: Font::NORMAL)
      @text = text
      @line = line
      @page = page
      @leading = leading
      @lagging = lagging
      @waiting = waiting
      @color = color
      @font = font
    end
  end
end
